defmodule AbsintheWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :absinthe_web

  # Code reloading can be explicitly enabled under the
  # :code_reloader configuration of your endpoint.
  if code_reloading? do
    plug Phoenix.CodeReloader
  end

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json, Absinthe.Plug.Parser],
    pass: ["*/*"],
    json_decoder: Phoenix.json_library()

  plug Plug.MethodOverride
  plug Plug.Head

  plug Absinthe.Plug,
    schema: AbsintheWeb.Schema
end
