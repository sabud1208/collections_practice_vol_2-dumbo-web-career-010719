# your code goes here
require "pry"
def begins_with_r(array)
    tools = true
    array.each do |element|
    tools = false if element[0]!= "r"
end
tools
end


def contain_a(array)
contains = []
  array.select do |element|
      if element.include?"a"
        a = element
        contains << a
      end
  end
  contains
end

def first_wa(array)
  first = nil
    array.each do |element|
      if element.match (/wa/)
        first = element
        break
      end
    end
first
end

def remove_non_strings(array)
  array.grep(String)
end


def count_elements(array)
    array.each do |element|
      element[:count]= 0
      name = element[:name]
      array.each do |list|
        if list[:name] ==name
          element[:count] += 1
        end
      end
    end.uniq
end


def merge_data(array1, array2)
  array2[0].map do |name, data|
    new_data = {}
    array1.each do |new_info|
      if new_info[:first_name] == name
        new_data = data.merge(new_info)
      end
    end
    new_data
  end
end

def find_cool(array)
  temp=[]
  array.each do |data|
      if data[:name].include?"k"
        temp << data
      end
  end
  temp
end

# {"flatiron school bk"=>{:location=>"NYC"},
# "flatiron school"=>{:location=>"NYC"},
# "dev boot camp"=>{:location=>"SF"},
# "dev boot camp chicago"=>{:location=>"Chicago"},
# "general assembly"=>{:location=>"NYC"},
# "Hack Reactor"=>{:location=>"SF"}}

def organize_schools(array)
  schools = []
  organized= {}
  array.each do |school, location|
    city = location.values[0]
    organized[city]= []
  end
  array.each do |school, location|
  organized.keys.each do |city|
if city == location.values[0]
  organized[city] << school
     end
   end
  end
  organized
end
