defmodule AccountService.Accounts do

  import Ecto.Query, warn: false
  alias AccountService.Repo

  alias AccountService.Accounts.Account

  def list_accounts do
    Repo.all(from(a in Account, limit: 10, order_by: [asc: a.updated_at]))
  end

  def get_account!(id), do: Repo.get!(Account, id)

  defp paginate(query, page) do
    from query,
      limit: 10,
      offset: ^((page-1) * 10)
  end
end