require_relative '../models/token'

RSpec.describe Token do
  it 'should double @bet tokens'
    token = Token.new
    expect(token.double_tokens).to eq(@bet*2)
  end
end