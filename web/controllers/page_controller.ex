defmodule Sandbox.PageController do
  use Sandbox.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def form(conn, _params) do
    render conn, "form.html"
  end
end
