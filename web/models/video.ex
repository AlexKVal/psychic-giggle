defmodule VideoStream.Video do
  use VideoStream.Web, :model

  schema "videos" do
    field :title, :string
    field :video_file, :any, virtual: true
    field :filename, :string
    field :content_type, :string
    field :path, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :video_file])
    |> validate_required([:title, :video_file])
  end
end
