require 'pry'

def begins_with_r(arr)
  return arr.all? { |word| word[0] == 'r'}
end

def contain_a(arr)
  return arr.select{ |word| word.include?('a')}
end

def first_wa(arr)
  return arr.find{ |el| el.to_s.include?('wa')}
end

def remove_non_strings(arr)
  return arr.delete_if{ |e| !e.kind_of?(String)}
end

def count_elements(arr)
  arr.group_by(&:itself).collect do |key, value|
     key.merge({:count => value.length})
   end
end

def merge_data()
end

def find_cool(arr)
  cools = arr.collect do |hash|
     hash if hash.has_value?('cool')
  end
  cools.compact
end

def organize_schools(arr)
  binding.pry
end
