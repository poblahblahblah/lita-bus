require "lita"

module Lita
  module Handlers
    class Bus < Handler
      route(/^(?:throw|toss)\s+(.+)\s+under (the|a) bus/i, :toss, command: true, help: {
        "throw @user under a bus" => "I will throw someone under a bus for you."
      })

      def toss(response)
	tossee = /^(?:throw|toss)\s+(.+)\s+under (the|a) bus/i.match(response.message.body)[1]
        response.reply(render_template("bus", tosser: response.message.source.user.name, tossee: tossee))
      end
    end

    Lita.register_handler(Bus)
  end
end
