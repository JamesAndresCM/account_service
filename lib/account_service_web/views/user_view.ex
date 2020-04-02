defmodule AccountServiceWeb.UserView do
  use AccountServiceWeb, :view
  use JaSerializer.PhoenixView

  attributes [:id,
  :username,
  :email,
  :old_encrypted_password,
  :salt,
  :reset_token,
  :activation_token,
  :active,
  :created_at,
  :updated_at,
  :account_id,
  :type,
  :account_user,
  :role,
  :name,
  :lastname,
  :holding_id,
  :can_create_users,
  :binary_authorization,
  :can_modify,
  :profile_picture,
  :last_seen,
  :new_layout,
  :reset_password_token,
  :reset_password_sent_at,
  :remember_created_at,
  :sign_in_count,
  :current_sign_in_at,
  :last_sign_in_at,
  :current_sign_in_ip,
  :last_sign_in_ip,
  :failed_attempts,
  :locked_at,
  :password_changed_at,
  :change_password,
  :level,
  :can_modify_data,
  :confirmation_token,
  :confirmed_at,
  :support,
  :show_chat,
  :theme,
  :phone,
  :enable_summary_report,
  :binary_permissions,
  :encrypted_password]

  has_one :account,
    serializer: AccountServiceWeb.AccountView,
    include: true,
    identifiers: :when_included
  
  has_many :linked_users,
    serializer: AccountServiceWeb.LinkedUserView,
    include: true,
    type: :linked_user
end