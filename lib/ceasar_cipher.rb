# frozen_string_literal: false

# Ceasar cipher is an encryption method that shift letter in thee alpahbet.
# Will shift all letters in a string.
class CeasarCipher
  def initialize
    @message = ''
  end

  def ceasar_cipher(string, num)
    arr_string = string.split('')
    arr_string.map! { |letter| shift_letter(letter.ord, num).chr }
    arr_string.join('')
  end

  def shift_letter(ascii, shift_num)
    # filters letter only
    if ascii > 64 && ascii < 91 || ascii > 96 && ascii < 123
      # Find the starting number where the small and capital letter starts
      base = ascii < 90 ? 65 : 97
      # Get the postion on the letter in the 26 letter by subtracting base
      # shift letter in that range then add base again
      ascii = ((ascii - base + shift_num) % 26) + base
    end
    ascii
  end
end

# CeasarCipher.new.ceasar_cipher('What a string!', 5)
