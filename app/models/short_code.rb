class ShortCode
  ALPHABET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".freeze
  BASE = ALPHABET.length

  def self.encode(number)
    return ALPHABET[0] if number.zero? || number.nil?

    result = ""
    while number > 0
      result = ALPHABET[number % BASE] + result
      number /= BASE
    end
    result
  end

  def self.decode(string)
    number = 0

    string.reverse.each_char.with_index do |char, index|
      power = BASE ** index
      index = ALPHABET.index(char)
      number += index * power
    end
    number
  end
end
