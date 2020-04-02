defmodule AccountService.Accounts.UserGroup do
  use Ecto.Schema

  @primary_key {:id, :id, autogenerate: true}
  
  schema "user_groups" do
    field :owner_id, :integer
    field :created_at, :utc_datetime
    field :updated_at, :utc_datetime
    field :owner_type, :string
    belongs_to :group, AccountService.Accounts.Group, foreign_key: :group_id
  end
end