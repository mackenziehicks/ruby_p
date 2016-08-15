def fizz_buzz
  100.times do |x|
  if (x+1)%3==0 && (x+1)%5 ==0
    puts "FizzBuzz"
    next
    end
  if (x+1)%3 ==0
    puts "Fizz"
    next
  end
  if (x+1)%5 ==0
    puts "Buzz"

  else puts (x +1)
  end
end
end

#--------------------------------------------------------------

def sum_these_numbers(a,b)
  puts a + b
end

#--------------------------------------------------------------

def is_even (a)
  if a% 2 == 0
    puts "true"
  else puts "false"
  end
end

#--------------------------------------------------------------

m = ["cat", "dog", "pig", "cow"]
m.each() {|a| puts a.upcase}
#or
m.each() do |a|
  puts a.upcase
end

#--------------------------------------------------------------

def meth(a,b)
  sum_these_numbers(a,b).to_s
end

#--------------------------------------------------------------

def valid_date
  puts "Please enter month with a number 1-12"
  month = gets.chomp.to_i
  puts "Please enter day with a number 1-31"
  day = gets.chomp.to_i
  puts "Please enter a year with 4 digits"
  year = gets.chomp.to_i
  if month >=1 && month <=12
    #puts "month true"
  else month = false
  end
  if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
    if day >=1 && day <=31
    month = true
    day = true
  # else month = false
    end
  end
  if month == 4 || month == 6 || month == 9 || month == 11
    if day >=1 && day <=30
    month = true
    day = true
  # else puts false
    end
  end
  if month ==2
    if year%4==0 && year%100==0 && year%400==0
      # puts "leap year (1) true"
      if day >=1 && day <= 29
        month = true
        day = true
      # else
      #   puts false
      end
    end
    if year%4==0 && year%100!=0
      # puts "leap year (2) true"
      if day >=1 && day <= 29
        month = true
        day = true
      # else
      #   puts false
      end
    end
    if year%4!=0
      if day >=1 && day <=28
        month = true
        day = true
      end
    end
  end
  if year.to_s.size == 4
    year = true
  # else puts false
  end
  if day == true && month == true && year == true
    puts "Valid Date"
  else puts "Invalid Date"
  end
end
