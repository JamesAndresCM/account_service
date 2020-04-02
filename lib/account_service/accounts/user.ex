defmodule AccountService.Accounts.User do
  use Ecto.Schema

  @primary_key {:id, :id, autogenerate: true}
  
  schema "users" do
    belongs_to :account, AccountService.Accounts.Account, foreign_key: :account_id
    has_many :linked_users, AccountService.Accounts.LinkedUser, foreign_key: :parent_id
    has_many :user_groups, AccountService.Accounts.UserGroup, foreign_key: :owner_id
    has_many :groups, through: [:user_groups, :group]
    field :username, :string
    field :email, :string
    field :old_encrypted_password, :string
    field :salt, :string
    field :reset_token, :string
    field :activation_token, :string
    field :active, :boolean
    field :created_at, :utc_datetime
    field :updated_at, :utc_datetime
    field :type, :string
    field :role, :string
    field :name, :string
    field :lastname, :string
    field :holding_id, :integer
    field :can_create_users, :boolean
    field :binary_authorization, :integer
    field :can_modify, :boolean
    field :profile_picture, :string
    field :last_seen, :utc_datetime
    field :new_layout, :boolean
    field :reset_password_token, :string
    field :remember_created_at, :utc_datetime
    field :sign_in_count, :integer
    field :current_sign_in_at, :utc_datetime
    field :last_sign_in_at, :utc_datetime
    field :current_sign_in_ip, :string
    field :last_sign_in_ip, :string
    field :failed_attempts, :integer
    field :locked_at, :utc_datetime
    field :password_changed_at, :utc_datetime
    field :change_password, :boolean
    field :level, :integer
    field :can_modify_data, :boolean
    field :confirmation_token, :string
    field :confirmed_at, :utc_datetime
    field :support, :integer
    field :show_chat, :boolean
    field :theme, :integer
    field :phone, :string
    field :enable_summary_report, :boolean
    field :binary_permissions, :integer
    field :encrypted_password, :string
  end
end