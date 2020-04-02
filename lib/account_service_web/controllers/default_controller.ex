defmodule AccountServiceWeb.DefaultController do
  use AccountServiceWeb, :controller

  def index(conn, _params) do
    json(conn, %{msg: "Root Api!"})
  end
end