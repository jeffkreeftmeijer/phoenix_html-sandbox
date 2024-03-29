defmodule Sandbox.PageController do
  use Sandbox.Web, :controller
  alias Sandbox.User

  def index(conn, _params) do
    render conn, "index.html"
  end

  def form(conn, params = %{"user" => user_params}) do
    changeset = User.changeset(%User{}, user_params)
    render conn, "form.html", changeset: changeset, params: params
  end
  def form(conn, params) do
    changeset = User.changeset(%User{})
    render conn, "form.html", changeset: changeset, params: params
  end
end
