# frozen_string_literal: true

require './caesar_cipher'

describe '#caesar_cipher' do
  it 'returns correct modified string with shift factor of 5' do
    expect(caesar_cipher('what a string!', 5)).to eql('bmfy f xywnsl!')
  end

  it 'returns correct modified string with mixed upper and lower case' do
    expect(caesar_cipher('wHat a string!', 5)).to eql('bMfy f xywnsl!')
  end

  it 'returns correct modified string with mix of non-letters' do
    expect(caesar_cipher('w?hat a string!', 5)).to eql('b?mfy f xywnsl!')
  end

  it 'returns the exact same string with shift factor of 26' do
    expect(caesar_cipher('what a string!', 26)).to eql('what a string!')
  end
end
