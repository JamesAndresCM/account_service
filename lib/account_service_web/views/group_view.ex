defmodule AccountServiceWeb.GroupView do
  use AccountServiceWeb, :view
  use JaSerializer.PhoenixView

  attributes [:id,:created_at, :updated_at, :name, :category_id]
end