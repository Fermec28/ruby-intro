def leap_year?(year)
 if (year % 4 == 0 && year / 100 != 0) || year % 400 == 0
   true
 else
   false
 end
end

def leap_year?(a)
  if a % 400 == 0
   true
  elsif a % 4 == 0 && a % 100 != 0
   true
  else
   false
  end
end

def welcome(str)
  if str.include? "CA"
    return "Welcome to California"
  else
    return "You should move to California"
  end
end


def shortest_string(array)
  return nil if array.empty?
  array.sort_by! {|x| x.length}
  array.first
end

def shortest_string(array)
  array.min({|a,b| a.length <=> b.length})
end


def count_between(arr, upper, lower)
 arr.count {|x| (x >= lower) && (x<= upper)}
end

def count_between(arr, lower, upper)
 count = 0
 arr.each do |x|
   if (x >= lower) && (x<= upper)
     count = count + 1
   end
 end
 count
end


def print_triangle(arg)
  array = (1..arg).to_a
  dot = []
  array.map do |num|
    dot.push("*" *  num)
  end
  puts dot.join(',')
end



def factorial(number)
  result = 1
  while number>=1
    result = result*number
    number = number1
  end
  return result
end


def factorial(number)
  if number <= 1
    1
  else
    (1..number).inject(:*)
  end
end

def factorial(n)
  if n == 0
    n = 1
  else
   n * factorial(n1)
  end
end


class Array
  # NO destructiva
  def pad (array, value = nil)
   copy = .clone
    if copy.length >= array.size
      return copy
    else
      until copy.length == array.size
      copy.push(value)
    end
      copy
    end
  end

  # Destructiva
  def pad! (min_size, value = nil)
    if self.length >= min_size
      return self
    else
      until self.length == min_size
        self.push(value)
      end
      self
    end
  end

end


        def has_ssn?(string)    +
           !!(string =~ (/\d{3}\d{2}\d{4}/))    +# Tu codigo de has_ssn? va aca:
         end    +

         puts "has_ssn? returns true if it has what looks like a SSN"      puts "has_ssn? returns true if it has what looks like a SSN"
         puts has_ssn?("please don't share this: 234601422") == true

         def has_ssn?(string)    +
             !!(string =~ (/\d{3}\d{2}\d{4}/))    +# Tu codigo de has_ssn? va aca:
           end    +

           puts "has_ssn? returns true if it has what looks like a SSN"      puts "has_ssn? returns true if it has what looks like a SSN"
           puts has_ssn?("please don't share this: 234601422") == true


            # Devuelve todos los SSN dentro de un string. Si no hay ninguno devuelve un arreglo Vacio.      # Devuelve todos los SSN dentro de un string. Si no hay ninguno devuelve un arreglo Vacio.
            def grab_all_ssns(string)    +
               string.scan(/\d{3}\d{2}\d{4}/)     +# Tu codigo de grab_all_ssns va aca
             end


             puts "grab_all_ssns returns all SSNs if the string has any SSNs"


              # Ofusca todos los SSN dentro de un string, por ejmplo 123554430 se convierte en  XXXXX4430. Deuvuele el string con los SSB ofuscados.      # Ofusca todos los SSN dentro de un string, por ejmplo 123554430 se convierte en  XXXXX4430. Deuvuele el string con los SSB ofuscados.
              def hide_all_ssns(string)     +
                string.gsub(/\d{3}\d{2}/, 'XXXXX' )     +# Tu codigo de hide_all_ssns va aca
              end

              # Asegura que todos los SSN usen guiones () como separador de los numeros.     # Asegura que todos los SSN usen guiones () como separador de los numeros.
               # Ejemplo: 480.01.4430 y 480014430 se convierten en 480014430.     # Ejemplo: 480.01.4430 y 480014430 se convierten en 480014430.
               def format_ssns(string)     +
                string.gsub(/(\d{3})\D?(\d{2})\D?(\d{4})/, '\1\2\3')    +# Tu codigo de format_ssns va aca
              end



              def mode(array)
               freq = array.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
               array.max_by {|v| freq[v]}
             end



             def most_common_words (filename,number)     +end
              hash = Hash.new     +#
              file = File.open(filename, "r")
              finalResult = []
              compare = ["The","the", "his",'by','was', 'for', 'Set', 'or', "pp.", "with", "that", "of", "and", "in", "to", "a", "is", "as"]
              file.each_line do  |line|
                words = line.split
                words.each do |word|
                  if hash.has_key?(word)
                    hash[word] = hash[word] + 1
                  else
                    hash[word] = 1
                  end
                end
              end

              hash.each do |key, value|
                if compare.include?(key)
                  hash.delete(key)
                end
              end

              hash = hash.to_a
              hash.sort_by! do |item|
                item[1]
              end
              hash = hash.reverse.to_h
              hash.each do |key, value|
                if finalResult.length < number
                  finalResult << "la palabra '#{key}' tiene '#{value}' ocurrencias"
                end
              end
              puts finalResult
            end
            most_common_words(filename, 4)

            def make_address(street,city,state,zip)
             "You live at #{street}, in the beautiful city of #{city}, #{state}. Your zip is #{zip}."
           end

           def good_guess?(a)    +
            if a == 42
              true
            else
              false
            end
          end


          def get_grade(a,b,c, *)
           average = (a + b + c) / 3
           if average < 60
             "F"
           elsif average >= 60 && < 70
             "D"
           elsif average >= 70 && average < 80
             "C"
           elsif average >= 80 && average < 90
             "B"
           else
             "A"
           end
         end

         def get_grade(note)
           if note >= 90
             "A"
           elsif note >= 80
             "B"
           elsif note >= 70
             "C"
           elsif note >= 60
             "D"
           elsif note < 60
             "F"
           end
         end


         def valid_triangle?(x,y,z)
          if x <= 0 && y <= 0 && z <= 0
            false
          elsif (x + y) <= z || (x + z) <= y || (y + z) <= x
            false
          else
            true
          end
        end


        def valid_triangle?(a, b, c)
          if (a+b>c) && (a+c>b) && (b+c>a)
            true
          else
            false
          end
        end


