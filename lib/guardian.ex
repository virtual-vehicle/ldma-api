defmodule AegisApi.Guardian do
  use Guardian, otp_app: :aegis_api

  def subject_for_token(driver, _claims) do
    sub = to_string(driver.driver_id)
    {:ok, sub}
  end

  def subject_for_token(_, _) do
    {:error, :reason_for_error}
  end

  def resource_from_claims(claims) do
    id = claims["sub"]
    resource = AegisApiWeb.Driver |> AegisApi.Repo.get_by(driver_id: id)
    {:ok, resource}
  end

  def resource_from_claims(_claims) do
    {:error, :reason_for_error}
  end
end
