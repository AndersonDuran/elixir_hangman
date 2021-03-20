defmodule HangmanClient do

  defdelegate start(), to: TextClient.Interact

end
