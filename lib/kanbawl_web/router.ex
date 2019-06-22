defmodule KanbawlWeb.Router do
  use KanbawlWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", KanbawlWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    scope "/api" do
      resources "/kanbans", KanbanController, only: [:index, :show] do
        resources "/columns", ColumnsController, only: [:index, :create, :update, :delete] do
          post "/move", PageController, :move
        end
        resources "/cards", CardsController, only: [:index, :create, :update, :delete] do
          post "/move", PageController, :move
        end
      end
    end
  end

  # Other scopes may use custom stacks.
  # scope "/api", KanbawlWeb do
  #   pipe_through :api
  # end
end
