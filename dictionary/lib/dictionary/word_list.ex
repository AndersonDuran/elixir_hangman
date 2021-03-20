defmodule Dictionary.WordList do

  #__MODULE__ is a shortcut for the module name
  @me __MODULE__

  def start_link() do
    Agent.start_link(&word_list/0, name: @me)
  end

  def random_word() do

    # code to force the agent to stop when studying supervision
    # if :rand.uniform < 0.33 do
    #   Agent.get(@me, fn _ -> exit(:boon) end)
    # end

    Agent.get(@me, &Enum.random/1)
  end

  def word_list do
    "../../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split("\n")
  end

end
