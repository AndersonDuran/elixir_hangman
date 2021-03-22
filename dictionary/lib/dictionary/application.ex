defmodule Dictionary.Application do

  use Application

  def start(_type, _args) do
    children = [
      %{
        id: Dictionary.WordList,
        start: { Dictionary.WordList, :start_link, []}
      }
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end

end
