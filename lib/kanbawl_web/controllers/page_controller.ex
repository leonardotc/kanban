defmodule KanbawlWeb.PageController do
  use KanbawlWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
