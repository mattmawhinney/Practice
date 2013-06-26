# http://www.rubyinside.com/21-ruby-tricks-902.html
# Extracting email with brackets insted of String#match 


email = "Fred Bloggs <fred@bloggs.com>"
email.match(/<(.*?)>/)[1]            # => "fred@bloggs.com"
email[/<(.*?)>/, 1]                  # => "fred@bloggs.com"
email.match(/(x)/)[1]                # => NoMethodError [:(]
email[/(x)/, 1]                      # => nil
email[/([bcd]).*?([fgh])/, 2]        # => "g"