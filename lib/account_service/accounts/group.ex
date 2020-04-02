defmodule AccountService.Accounts.Group do
  use Ecto.Schema

  @primary_key {:id, :id, autogenerate: true}
  
  schema "groups" do
    field :name, :string
    field :group_category_id, :integer
    field :created_at, :utc_datetime
    field :updated_at, :utc_datetime
  end
end