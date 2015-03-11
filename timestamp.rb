require 'sass'
module Sass::Script::Functions
    def timestamp()
        return Sass::Script::String.new(my_timestamp())
    end
    def hash()
        return Sass::Script::String.new(my_hash())
    end
end

def my_timestamp()
  now = Time.now()
  str = "#{now.month}/#{now.day}/#{now.year}"
  str = str + " "*(14-str.size)
end

def my_hash()
  hash = `git rev-parse --short HEAD`.chomp()
  return hash + " "*(9-hash.size())
end

