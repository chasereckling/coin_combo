require('rspec')
require('coin_combo')

describe('String#coin_combo') do
  it('takes a value and returns the amount of change remaining') do
    expect(("50").coin_combo()).to(eq("0"))
  end
  it('divides the counter value by the value of a quarter to return amount of change remaining') do
    expect(("50").coin_combo()).to(eq("0"))
  end
  it('divides the counter value by the value of a quarter and then a dime to return the amount of change remaining') do
    expect(("60").coin_combo()).to(eq('0'))
  end
end
