defmodule RecipxApi.Recipes.Recipe do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "recipes" do
    field :description, :string
    field :instructions, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(recipe, attrs) do
    recipe
    |> cast(attrs, [:name, :description, :instructions])
    |> validate_required([:name, :description, :instructions])
  end
end
