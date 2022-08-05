defmodule LinkarApi.Guardian.AuthPipeline do
  use Guardian.Plug.Pipeline, otp_app: :LinkarApi,
  module: LinkarApi.Guardian,
  error_handler: LinkarApi.AuthErrorHandler

  plug Guardian.Plug.VerifyHeader, realm: "Bearer"
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end
