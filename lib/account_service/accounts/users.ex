defmodule AccountService.Users do

  import Ecto.Query, warn: false
  alias AccountService.Repo

  alias AccountService.Accounts.User
  alias AccountService.Accounts.Account
  alias AccountService.Accounts.LinkedUser

  def get_user!(id) do
    user = Repo.get(User, id) 
    user |> Repo.preload(account: from(u in Account))
    |> Repo.preload(linked_users: from(l in LinkedUser, where: ^id == l.parent_id and l.active == true))
    
    # query string
    #from(u in User,join: a in assoc(u, :account), 
    #      where: u.id == ^id,join: l in assoc(u, :linked_users),
    #      where: u.id == l.parent_id,
    #      where: l.active == true,
    #      preload: [:account, :linked_users]) |> Repo.one
  end
end