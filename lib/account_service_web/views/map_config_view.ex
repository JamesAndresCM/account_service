defmodule AccountServiceWeb.MapConfigView do
  use AccountServiceWeb, :view
  use JaSerializer.PhoenixView

  attributes [:id, :tile_server, :geocoding_service, :route_service, :account_id, :created_at, :updated_at]
end