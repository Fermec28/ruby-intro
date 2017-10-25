

def is_plate? (placa)
  placa =~ /^[A-Z]{3}[0-9]{3}/ ? true : false
end
p is_plate? ("AaA555")
