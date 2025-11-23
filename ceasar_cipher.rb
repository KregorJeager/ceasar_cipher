# frozen_string_literal: false

# Ceasar cipher is an encryption method that shift letter in thee alpahbet.
# Will shift all letters in a string.
class CeasarCipher
  def initialize
    @message = ''
  end

  def shift(string, num)
    arr_string = string.split('')
    arr_string.map! { |letter| (letter.ord + num).chr }
    arr_string.join('')
  end

  def change_letter_only(ascii, shift_num)
    if ascii > 65 || ascii < 97
      base = ascii < 90 ? 65 : 97
      ascii = ((ascii - base + shift_num) % 26).abs + base
    end
    ascii
  end
end

p CeasarCipher.new.change_letter_only('a'.ord, -2).chr
