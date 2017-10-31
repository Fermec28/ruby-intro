
class CreditCard

 def initialize (num)
   raise ArgumentError.new("Tarjeta no Contiene 16 digitos") if num.to_s.size != 16
   @arr=[]1
   @num=num
 end

 def splitnum (num)
   auxnum = num
   auxarr=[]
   while(auxnum>=10)
     auxarr.unshift((auxnum%10).to_i)
     auxnum /= 10
   end
     auxarr.unshift((auxnum).to_i)
  end
def multiplyby2
  aux =[]
  @arr.each_with_index do |element, index|
    aux<< (index % 2 == 0 ?  element*2  : element)
  end
  aux
end

def suma
  @arr.reduce (0) { |count, num| count += num}
end
def check_card
  @arr=self.splitnum(@num)
  @arr=self.multiplyby2
  @arr.each { |num|  @arr =  @arr.concat(self.splitnum(num)) if num>=10}
  @arr=@arr.reduce([]) do |accu,num|
     num<10 ? accu<<num : accu
  end
  suma() % 10 == 0
end

end
# 2. Solucion con Refactor



###### DRIVER CODE #########
