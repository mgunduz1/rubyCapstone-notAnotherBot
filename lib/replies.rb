class ReplyOptions
  attr_reader :first_base, :second_base

  def initialize
    @first_base = [['Who are you?'], ['Thanks for talking with me.'], ['What is the secret of life?'],
                   ["Why don't you get a job?"], ['Give me a book recommedation.']]
    @second_base = [['Good'], ['Too Good'], ['Way Too Good'], ['Give me the best of all time']]
  end

  def keyboard(array)
    Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: array, one_time_keyboard: true)
  end
end
