defmodule AegisApi.Guardian.AuthPipeline do
  use Guardian.Plug.Pipeline,
    otp_app: :aegis_api,
    module: AegisApi.Guardian,
    error_handler: AegisApi.AuthErrorHandler

  plug Guardian.Plug.VerifyHeader, realm: "Bearer"
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end
