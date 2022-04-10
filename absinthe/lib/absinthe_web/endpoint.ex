defmodule AbsintheWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :absinthe_web

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Phoenix.json_library()

  plug Absinthe.Plug,
    schema: AbsintheWeb.Schema
end
