defmodule AccountServiceWeb.LinkedUserView do
  use AccountServiceWeb, :view
  use JaSerializer.PhoenixView

  attributes [:id,:created_at, :updated_at, :active, :parent_id, :child_id]
end