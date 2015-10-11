defmodule Permalink do
  use Ecto.Model

  embedded_schema do
    field :url
  end

  def changeset(model, params \\ :empty) do
    cast(model, params, ~w(url), [])
  end
end
