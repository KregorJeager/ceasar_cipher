# frozen_string_literal: false

require './lib/ceasar_cipher'

describe CeasarCipher do
  subject(:cipher) { described_class.new }

  describe '#ceaser_ciper' do
    context 'When encrypting one word' do
      it 'Works with small positive shift' do
        message = 'What'
        encrypted = cipher.ceasar_cipher(message, 5)
        expect(encrypted).to eq('Bmfy')
      end

      it 'Works with small negative shift' do
        message = 'bcd'
        encrypted = cipher.ceasar_cipher(message, -1)
        expect(encrypted).to eq('abc')
      end

      it 'Works with large positive shift' do
        message = 'bcd'
        encrypted = cipher.ceasar_cipher(message, 27)
        expect(encrypted).to eq('cde')
      end

      it 'Works with large negative shift' do
        message = 'bcd'
        encrypted = cipher.ceasar_cipher(message, -27)
        expect(encrypted).to eq('abc')
      end
    end

    context 'When encrypting with puntuations' do
      it 'Works with small positive shift' do
        message = 'abc de!'
        encrypted = cipher.ceasar_cipher(message, 5)
        expect(encrypted).to eq('fgh ij!')
      end

      it 'Works with small negative shift' do
        message = 'abc de!'
        encrypted = cipher.ceasar_cipher(message, -5)
        expect(encrypted).to eq('vwx yz!')
      end

      it 'Works with large positive shift' do
        message = 'abc de!'
        encrypted = cipher.ceasar_cipher(message, 31)
        expect(encrypted).to eq('fgh ij!')
      end

      it 'Works with large negative shift' do
        message = 'abc de!'
        encrypted = cipher.ceasar_cipher(message, -31)
        expect(encrypted).to eq('vwx yz!')
      end
    end
  end
end
