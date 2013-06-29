# http://rubeque.herokuapp.com/problems/the-little-hash-key-that-could


def key_for_min_value(hash)

  smallest_key = []

  matt.each do |key, value|
    if value == hash.values.sort.first
      smallest_key << key 
    end
  end


  smallest_key.join

end