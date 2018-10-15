defmodule ContentoWeb.Router do
  use ContentoWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", ContentoWeb do
    pipe_through :browser

    get "/", PageController, :index
  end
end
