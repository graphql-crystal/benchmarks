defmodule AbsintheWeb.Schema do
  use Absinthe.Schema
  query do
    field :hello, non_null(:string) do
      resolve fn _, _ ->
        {:ok, "world"}
      end
    end
  end
end