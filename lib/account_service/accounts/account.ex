defmodule AccountService.Accounts.Account do
  use Ecto.Schema

  @primary_key {:id, :id, autogenerate: true}
  
  schema "accounts" do
    field :name, :string
    field :email, :string
    field :created_at, :utc_datetime
    field :updated_at, :utc_datetime
    field :type, :string
    field :timezone, :string
    field :api_key, :string
    field :chat_enabled, :boolean
    field :language, :string
    field :country, :string
    field :active, :boolean
    field :account_picture, :string
    field :confirmation_token, :string
    field :confirmed_at, :utc_datetime
    field :binary_enabled_channels, :integer
    field :binary_default_channels, :integer
    field :importer_config, :boolean
    field :alias, :string
    field :domain, :string
    field :enable_locks, :boolean
    field :auto_geocoding, :boolean
    field :encoded_bounds, :string
    field :sector, :integer
    field :invoiceable, :boolean
    field :auto_optimization, :boolean
    field :routing_mode, :integer
    field :planning_mode, :integer
    field :planning_trial, :boolean
    field :planner_max_number_vehicles, :integer
    field :force_substatus, :boolean
    field :validates_phone, :integer
    field :minutes_between, :integer
    has_many :users, AccountService.Accounts.User
    has_one :map_config, AccountService.Accounts.MapConfig
  end
end
