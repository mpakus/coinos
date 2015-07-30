defmodule Coinos.Router do
  use Coinos.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Coinos do
    pipe_through :browser # Use the default browser stack

    get "/", CoinsController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Coinos do
  #   pipe_through :api
  # end
end
