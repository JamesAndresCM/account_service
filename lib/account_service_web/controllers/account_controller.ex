defmodule AccountServiceWeb.AccountController do
  use AccountServiceWeb, :controller

  alias AccountService.Accounts

  action_fallback AccountService.FallbackController

  def index(conn, _params) do
    accounts = Accounts.list_accounts()
    render(conn, "index.json", accounts: accounts)
  end

  def show(conn, %{"id" => id}) do
    account = Accounts.get_account!(id)
    render(conn, "show.json", account: account)
  end
end