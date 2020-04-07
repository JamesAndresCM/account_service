defmodule AccountServiceWeb.DefaultController do
  use AccountServiceWeb, :controller

  def index(conn, _params) do
    json(conn, %{msg: "Root Api!"})
  end

  def alive(conn, _params) do
    json(conn, %{msg: "Alive Path"})
  end
end