require_relative '../lib/replies'
require_relative '../lib/book'
require 'telegram/bot'
require 'dotenv/load'



keyboard = ReplyOptions.new
recommedation = BookRec.new

Telegram::Bot::Client.run(ENV['TOKEN']) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
      bot.api.send_message(chat_id: message.chat.id, text: "I have to tell you #{message.from.first_name}, that I'm not an ordinary bot. I'm a 5 star bot.. Ask me 'why?'.")
      bot.api.send_message(chat_id: message.chat.id, text: "FYI, that means type 'why?'")
      bot.api.send_message(chat_id: message.chat.id, text: "My bad.. FYI means 'for your information'.. And just touch to the buttons that has w, h and y letters on it, one by one. Forget the question mark, I don't want to confuse you.")

    when 'why'
      bot.api.send_message(chat_id: message.chat.id, text: "Depends.. Also congrats, #{message.from.first_name}!! You did it. Now tell me, what do you want to say to me?")
      bot.api.send_message(chat_id: message.chat.id, text: "Oh by the way, I made it a lot easier for you. You don't need to type anymore.",
         reply_markup: keyboard.keyboard(keyboard.first_base))

    when 'Who are you?'
      bot.api.send_message(chat_id: message.chat.id, text: "People always asking who is notanotherbot, they never ask how is notanotherbot..",
         reply_markup: keyboard.keyboard(keyboard.first_base))

    when 'Thanks for talking with me.'
      bot.api.send_message(chat_id: message.chat.id, text: "Well, I have to, so, yeah..",
         reply_markup: keyboard.keyboard(keyboard.first_base))

    when 'What is the secret of life?'
      bot.api.send_message(chat_id: message.chat.id, text: "Breathe and eat. Separately. And drink some non-alcoholic vodka everyday.",
         reply_markup: keyboard.keyboard(keyboard.first_base))

    when "Why don't you get a job?"
      bot.api.send_message(chat_id: message.chat.id, text: "Get a job? Okay why don’t I strap on my job helmet and squeeze down into a job cannon and fire off into Jobland, where jobs grow on jobbies",
         reply_markup: keyboard.keyboard(keyboard.first_base))

    when 'Give me a book recommedation.'
      bot.api.send_message(chat_id: message.chat.id, text: "How good should it be?",
         reply_markup: keyboard.keyboard(keyboard.second_base))

    when 'Good'
      bot.api.send_message(chat_id: message.chat.id, text: recommedation.randomgood,
      reply_markup: keyboard.keyboard(keyboard.second_base))
    when 'Too Good'
      bot.api.send_message(chat_id: message.chat.id, text: recommedation.randomtgood,
      reply_markup: keyboard.keyboard(keyboard.second_base))
    when 'Way Too Good'
      bot.api.send_message(chat_id: message.chat.id, text: recommedation.randomwtgood,
        reply_markup: keyboard.keyboard(keyboard.second_base))
    when 'Give me the best of all time'
      bot.api.send_message(chat_id: message.chat.id, text: recommedation.best,
        reply_markup: keyboard.keyboard(keyboard.second_base))

    when '/stop'
      bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
    end
  end
end
