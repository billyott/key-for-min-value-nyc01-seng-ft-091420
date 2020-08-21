# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    if name_hash == {}
        return nil
    else
        lowest_num = 0
        name_of_lowest_num = ""
        name_hash.each do |name,num|
            if num < 0
                lowest_num += (-1*num)
            else
                lowest_num += num
            end
        end
        name_hash.each do |name,num|
            if num < lowest_num
                lowest_num = num
                name_of_lowest_num = name
            end
        end
        return name_of_lowest_num
    end
end