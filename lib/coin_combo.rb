class String

  define_method(:coin_combo) do
    total_quarters = 0
    counter = self.to_i()
    total_quarters = counter./(25).to_s()
    counter = counter.%(25).to_s()
  end
end
