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
    if ascii > 64 && ascii < 91 || ascii > 96 && ascii < 123
      base = ascii < 90 ? 65 : 97
      ascii = ((ascii - base + shift_num) % 26).abs + base
    end
    ascii
  end
end

p CeasarCipher.new.ceasar_cipher('What a string!', 5)
