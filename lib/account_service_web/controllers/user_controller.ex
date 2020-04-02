defmodule AccountServiceWeb.UserController do
  use AccountServiceWeb, :controller

  alias AccountService.Users

  action_fallback AccountService.FallbackController

  def show(conn, %{"id" => id}) do
    user = Users.get_user!(id)
    render(conn, "show.json-api", data: user)
  end
end