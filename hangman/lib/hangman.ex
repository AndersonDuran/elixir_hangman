defmodule Hangman do

  alias Hangman.Game

  defdelegate new_game(), to: Game

  defdelegate tally(game), to: Game

  def make_move(game, guess) do
    game = Game.make_move(game, guess)
    { game, tally(game) }
  end

  # Another way to define a delegate
  # defdelegate new_game(), to: Game, as :nuevo_juego
end
