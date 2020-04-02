defmodule AccountServiceWeb.Router do
  use AccountServiceWeb, :router

  pipeline :api do
    plug :accepts, ["json-api"]
    plug JaSerializer.ContentTypeNegotiation
    plug JaSerializer.Deserializer
  end

  scope "/api/v1", AccountServiceWeb do
    pipe_through :api
    #get("/accounts/page/:size", AccountController, :index)
    resources "/accounts", AccountController, only: [:show, :index]
    get("/users/:id", UserController, :show)
  end

  scope "/", AccountServiceWeb do
    pipe_through :api
    get "/", DefaultController, :index
  end
end
