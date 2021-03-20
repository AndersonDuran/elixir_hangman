defmodule Hangman.Application do

  use Application

  def start(_type, _args) do

    # children = [
    #   %{
    #     id: Hangman.Server,
    #     start: { Hangman.Server, :start_link, []}
    #   }
    # ]

    # options = [
    #   name: Hangman.Supervisor,
    #   strategy: :one_for_one
    # ]

    # Supervisor.start_link(name: __MODULE__)

    Hangman.Supervisor.start_link(name: Hangman.Supervisor)
  end
end
