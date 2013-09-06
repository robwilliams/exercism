defmodule Teenager do

  import String

  def hey(""), do: "Fine. Be that way!"
  def hey("  "), do: "Fine. Be that way!"

  def hey(msg) do
    response = "Whatever."

    if upcase(msg) == msg do
      response = "Woah, chill out!"
    end

    if ends_with?(msg, "?") do
      response = "Sure."
    end

    response
  end
end
