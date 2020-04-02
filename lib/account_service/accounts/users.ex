defmodule AccountService.Users do

  import Ecto.Query, warn: false
  alias AccountService.Repo

  alias AccountService.Accounts.User
  alias AccountService.Accounts.LinkedUser
  alias AccountService.Accounts.Group
  alias AccountService.Accounts.UserGroup

  def get_user!(id) do
    Repo.preload(Repo.get(User, id), [{:account, :map_config}])
    |> Repo.preload(linked_users: from(l in LinkedUser, where: ^id == l.parent_id and l.active == true))
    |> Repo.preload(groups: from(ug in Group, join: g in UserGroup, on: g.group_id == ug.id, where: g.owner_id == ^id))
    
    # query string
    #from(u in User,join: a in assoc(u, :account), 
    #      where: u.id == ^id,join: l in assoc(u, :linked_users),
    #      where: u.id == l.parent_id,
    #      where: l.active == true,
    #      preload: [:account, :linked_users]) |> Repo.one
  end
end