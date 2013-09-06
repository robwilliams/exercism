defmodule Teenager do

  import String

  def hey(msg) do
    cond do
      empty?(msg)    -> "Fine. Be that way!"
      shouting?(msg) -> "Woah, chill out!"
      question?(msg) -> "Sure."
      true           -> "Whatever."
    end
  end

  defp shouting?(msg), do: msg == upcase(msg)
  defp question?(msg), do: ends_with?(msg, "?")
  defp empty?(msg),    do: strip(msg) == ""
end
