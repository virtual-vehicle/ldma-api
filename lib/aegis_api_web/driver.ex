defmodule AegisApiWeb.Driver do
  use Ecto.Schema
  import Ecto.Changeset
  import Comeonin.Bcrypt, only: [hashpwsalt: 1, checkpw: 2, dummy_checkpw: 0]
  alias AegisApi.Guardian

  # choose data to be encoded
  @derive {Poison.Encoder, only: [:username, :password]}
  @schema_prefix "trip_data"

  @primary_key {:driver_id, :integer, autogenerate: false}
  schema "driver_t" do
    field :username, :string
    field :password_hash, :string
    field :password, :string, virtual: true
    # field :password_confirmation, :string, virtual: true
  end

  @doc false
  def changeset(%AegisApiWeb.Driver{} = driver, attrs) do
    driver
    |> cast(attrs, [:username, :password])
    |> validate_required([:username, :password])
    |> validate_length(:password, min: 8)
    |> unique_constraint(:username)
    |> put_password_hash
  end

  defp put_password_hash(changeset) do
    case changeset do
      %Ecto.Changeset{valid?: true, changes: %{password: pass}} ->
        put_change(changeset, :password_hash, hashpwsalt(pass))

      _ ->
        changeset
    end
  end

  def token_sign_in(username, password) do
    case driver_password_auth(username, password) do
      {:ok, driver} ->
        Guardian.encode_and_sign(driver)

      _ ->
        {:error, :unauthorized}
    end
  end

  defp driver_password_auth(username, password)
       when is_binary(username) and is_binary(password) do
    with {:ok, driver} <- get_by_username(username),
         do: verify_password(password, driver)
  end

  defp get_by_username(username) when is_binary(username) do
    case AegisApiWeb.Driver |> AegisApi.Repo.get_by(username: username) do
      nil ->
        dummy_checkpw()
        {:error, "Login error."}

      driver ->
        {:ok, driver}
    end
  end

  defp verify_password(password, %AegisApiWeb.Driver{} = driver) when is_binary(password) do
    if checkpw(password, driver.password_hash) do
      {:ok, driver}
    else
      {:error, :invalid_password}
    end
  end
end
