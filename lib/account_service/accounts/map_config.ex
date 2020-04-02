defmodule AccountService.Accounts.MapConfig do
  use Ecto.Schema

  @primary_key {:id, :id, autogenerate: true}
  
  schema "map_configs" do
    belongs_to :account, AccountService.Accounts.Account, foreign_key: :account_id
    field :tile_server, :integer
    field :geocoding_service, :integer
    field :route_service, :integer
    field :created_at, :utc_datetime
    field :updated_at, :utc_datetime
  end
end