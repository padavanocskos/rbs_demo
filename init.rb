$LOAD_PATH << './lib'

require 'phone.rb'

    p = Phone.new(country: 'USA', number: 123213123123)

puts p.number