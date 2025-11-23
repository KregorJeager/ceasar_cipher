# frozen_string_literal: false

require './lib/ceasar_cipher'

describe CeasarCipher do
  subject(:cipher) { described_class.new }

  describe '#ceaser_ciper' do
    before do
      allow(cipher).to receive(:shift_letter).and_return(66, 109, 102, 121)
    end

    context 'When given postive numbers' do
      it 'When shifted by 5' do
        message = 'What'
        encrypted = cipher.ceasar_cipher(message, 5)
        expect(encrypted).to eq('Bmfy')
      end
    end
  end
end
