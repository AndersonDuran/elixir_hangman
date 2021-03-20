defmodule Hangman.Supervisor do

  use Supervisor

  def start_link(opts) do
    Supervisor.start_link(__MODULE__, :ok, opts)
  end

  def init(:ok) do
    children =  [
      { DynamicSupervisor, name: Hangman.GameSupervisor, strategy: :one_for_one }
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end
end
