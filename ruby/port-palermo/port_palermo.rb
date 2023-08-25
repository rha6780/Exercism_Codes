module Port
  Port::IDENTIFIER = :PALE
  # TODO: define the 'IDENTIFIER' constant

  def self.get_identifier(city)
    return city[0..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    if ship_identifier[(0..2)].upcase == "OIL" or ship_identifier[0..2].upcase == "GAS"
      return :A
    else
      return :B
    end
  end
end
