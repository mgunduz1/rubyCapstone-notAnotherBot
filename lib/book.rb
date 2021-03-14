class BookRec
  attr_reader :good, :too_good, :way_too_good, :best

  # rubocop:disable Metrics/MethodLength
  def initialize
    @good = [
      'The Most Beautiful Woman in Town by Charles Bukowski',
      'Notes from Underground by Fyodor Dostoevsky',
      'The Time of Your Life by William Saroyan',
      'Snuff by Chuck Palahniuk',
      'Skagboys by Irvine Welsh',
      'Replay by Ken Grimwood',
      'Down and Out in Paris and London by George Orwell',
      'The Grapes of Wrath by John Steinbeck'
    ]
    @too_good = [
      'Filth by Irvine Welsh',
      'Dreams from Bunker Hill by John Fante',
      'Invisible Monsters by Chuck Palahniuk',
      'God and the State by Mikhail Bakunin',
      'The Doors of Perception by Aldous Huxley',
      'Letter from an Unknown Woman by Stefan Zweig'
    ]
    @way_too_good = [
      'The Abortion: An Historical Romance 1966 - Richard Brautigan',
      'Brave New World by Aldous Huxley',
      'The Unbearable Lightness of Being by Milan Kundera',
      'Writings of Leon Trotsky by Leon Trotsky',
      'Wait Until Spring, Bandini by John Fante',
      'The Loiterer by Yusuf Atılgan'
    ]
    @best = ['Ask the Dust by John Fante']
  end

  def randomgood
    @good.sample
  end

  def randomtgood
    @too_good.sample
  end

  def randomwtgood
    @way_too_good.sample
  end

  def certainbest
    @best.sample
  end
end
# rubocop:enable Metrics/MethodLength
