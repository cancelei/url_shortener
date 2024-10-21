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
    string.chars.reduce(0) do |result, char|
      result * BASE + ALPHABET.index(char)
    end
  end
end
