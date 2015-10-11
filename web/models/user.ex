defmodule Sandbox.User do
  use Ecto.Model

  schema "users" do
    field :name
    embeds_one :permalink, Permalink
  end

  def changeset(model, params \\ :empty) do
    cast(model, params, ~w(name permalink), [])
  end
end
