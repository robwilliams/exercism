class Bob
  def hey(msg)
    message = Message.new(msg)

    if message.blank?
      'Fine. Be that way!'
    elsif message.shouting?
      'Woah, chill out!'
    elsif message.question?
      'Sure.'
    else
      'Whatever.'
    end
  end

  private
    class Message

      def initialize(message)
        @message = strip_new_lines(message.to_s)
      end

      def blank?
        message.strip.empty?
      end

      def shouting?
        message == message.upcase
      end

      def question?
        message.end_with?("?")
      end

      private
      attr_reader :message
      def strip_new_lines(string)
        string.split("\n").join
      end
    end
end
