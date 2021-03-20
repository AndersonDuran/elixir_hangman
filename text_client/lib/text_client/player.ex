defmodule TextClient.Player do

  alias TextClient.{State, Summary, Prompter, Mover}

  def play(%State{ tally: %{ game_state: :won }}) do
    IO.puts("You WON!")
    exit(:normal)
  end

  def play(%State{ tally: %{ game_state: :lost }}) do
    IO.puts("Sorry, you lost!")
    exit(:normal)
  end

  def play(game = %State{ tally: %{ game_state: :good_guess }}) do
    IO.puts("Good guess!")
    continue(game)
  end

  def play(game = %State{ tally: %{ game_state: :bad_guess }}) do
    IO.puts("Sorry, that isnt't in the word!")
    continue(game)
  end

  def play(game = %State{ tally: %{ game_state: :already_used }}) do
    IO.puts("You've already used that letter!")
    continue(game)
  end

  def play(game) do
    continue(game)
  end

  defp continue(game) do
    game
    |> Summary.display()
    |> Prompter.accept_move()
    |> Mover.move()
    |> play()
  end

  defp make_move(game) do
    game
  end


end
