defmodule SocketGallowsWeb.UserSocket do
  use Phoenix.Socket

  ## Channels
  channel "hangman:*", SocketGallowsWeb.HangmanChannel

  @impl true
  def connect(_params, socket, _connect_info) do
    {:ok, socket}
  end

  @impl true
  def id(_socket), do: nil
end
