require('rspec')
require('coin_combo')

describe('String#coin_combo') do
  it('takes a Fixnum value and returns the amount of change remaining') do
    expect((50).coin_combo()).to(eq(50))
  end
end
