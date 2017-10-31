class House
  attr_reader :square_feet, :num_bedrooms, :num_baths, :cost

  def initialize(options)
    @address = options[:address]
    @name = options[:name]
    @num_bedrooms = num_bedrooms
    @num_baths = num_baths
    @cost = cost
    @down_payment = down_payment
    @sold = sold
    @short_sale = short_sale
    @has_tenants = has_tenants
  end

  def obscure_address
    @address.sub(/\A\d*/, '****')
  end

  def buy!(money, good_credit)
    @sold = true if money >= down_payment && good_credit
  end

  def down_payment
    cost * @down_payment
  end

  def to_s
    "#{obscure_address} : #{square_feet} sq. ft., #{num_bedrooms} bed, #{num_baths} bath. $#{cost}"
  end
end


# Pon driver code aca para probar que todo este funcionando.
###### DRIVER CODE ########
myHouse = House.new({
   address: "Kr 54B # 128-39" ,
   square_feet: "bla",
   num_bedrooms: 4 ,
   cost: 15000000000,
   down_payment: 160000000,
   short_sale: "NO",
   has_tenants: false,
  })
  
p myHouse.square_feet
p myHouse.num_bedrooms
p myHouse.num_baths
p myHouse.cost
p myHouse.to_s
p myHouse.sold
p myHouse.obscure_address
