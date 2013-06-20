def separate_comma(number)
  number.to_s.gsub(/(\d)(?=(\d{3})+$)/, '\1,')
end