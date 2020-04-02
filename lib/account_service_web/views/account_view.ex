defmodule AccountServiceWeb.AccountView do
  use AccountServiceWeb, :view
  use JaSerializer.PhoenixView

  attributes [
      :id,
      :name,
      :email,
      :created_at,
      :updated_at,
      :type,
      :timezone,
      :api_key,
      :chat_enabled,
      :language,
      :country,
      :active,
      :account_picture,
      :confirmation_token,
      :confirmed_at,
      :binary_enabled_channels,
      :binary_default_channels,
      :importer_config,
      :alias,
      :domain,
      :enable_locks,
      :auto_geocoding,
      :encoded_bounds,
      :sector,
      :invoiceable,
      :auto_optimization,
      :routing_mode,
      :planning_mode,
      :planning_trial,
      :planner_max_number_vehicles,
      :force_substatus,
      :validates_phone,
      :minutes_between]
end