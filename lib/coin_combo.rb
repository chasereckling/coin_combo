class String

  define_method(:coin_combo) do
    total_quarters = 0
    counter = self.to_i()
    until counter == 0
      counter = counter.-(25)
      total_quarters = total_quarters.+(1)
    end
    counter = counter.to_s()
  end
end
