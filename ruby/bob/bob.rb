class Bob
  def hey(msg)
    return 'Fine. Be that way!' if msg.delete(" ") == ""
    case msg.split("\n").join
    when msg.upcase
      'Woah, chill out!'
    when /\?$/
      'Sure.'
    else
      'Whatever.'
    end
  end

  private
    class Message < Struct

    end
end
