defmodule AccountService.Accounts.LinkedUser do
  use Ecto.Schema

  @primary_key {:id, :id, autogenerate: true}
  
  schema "linked_users" do
    belongs_to :parent, AccountService.Accounts.User, foreign_key: :parent_id
    belongs_to :child, AccountService.Accounts.User, foreign_key: :child_id
    field :created_at, :utc_datetime
    field :updated_at, :utc_datetime
    field :active, :boolean
  end
end