# frozen_string_literal: true

require './lib/caesar_cipher'

describe '#caesar_cipher' do
  it 'returns an encrypted message of a given string' do
    expect(caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
  end

  it 'wraps the key correctly' do
    expect(caesar_cipher('abcdefghijklmnopqrstuvwxyz', 27)).to eql('bcdefghijklmnopqrstuvwxyza')
  end

  it 'doesn\'t affect digits' do
    expect(caesar_cipher('1  684 44 0', 4)).to eql('1  684 44 0')
  end

  it 'doesn\'t affect symbols' do
    expect(caesar_cipher('>?@ - ab=cde|fgh-56qij,,kl.mn`n//o+p;qr~s\'tuvw{_}xyz', 1)).to eql('>?@ - bc=def|ghi-56rjk,,lm.no`o//p+q;rs~t\'uvwx{_}yza')
  end

  it 'works with capitlized letters and wraps the key correctly with them' do
    expect(caesar_cipher('ABCDEFGHIJKLMNOPQRSTUVWXYZ', 27)).to eql('BCDEFGHIJKLMNOPQRSTUVWXYZA')
  end

  it 'have the same shift for capitalized and uncapitalized letters' do
    expect(caesar_cipher('Z', 7).downcase).to eql(caesar_cipher('z', 7))
  end
end
