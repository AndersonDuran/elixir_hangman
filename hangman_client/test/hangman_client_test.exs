defmodule HangmanClientTest do
  use ExUnit.Case
  doctest HangmanClient

  test "greets the world" do
    assert HangmanClient.hello() == :world
  end
end
