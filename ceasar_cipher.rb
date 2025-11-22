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
end

CeasarCipher.new.shift('hello', 4)
