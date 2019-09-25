# frozen_string_literal: true

require 'open3'

# Added #enhex and #dehex which converts a string to hex or vice versa.
class String
  # Converts a string to a hex string.
  #
  #  "hello".enhex
  #  # => "68656c6c6f"
  def enhex
    unpack1('H*')
  end

  # Converts a hex string to a plain binary string.
  #
  #  "68656c6c6f".dehex
  #  # => "hello"
  def dehex
    [self].pack('H*')
  end
end

# Displays xxd for a Ruby String.
# xxd is a powerful tool which shows offsets and ASCII values.
# and use String#enhex if you don't want to see those
# or you need just plain hex strings.
#
#  xxd "hello"
#  # 00000000: 6865 6c6c 6f                             hello
#  # => "hello"
def xxd(string, cols: 16)
  IO.popen(['xxd', '-c', cols.to_s], 'w') do |stream|
    stream.print(string.to_s)
  end

  string
end

# Reverses the result of xxd to the Ruby string.
# Use String#dehex if you want to convert plain hex string to binary.
#
#  xxd_r "00000000: 6865 6c6c 6f"
#  # => "hello"
def xxd_r(xxdhex)
  IO.popen(['xxd', '-r'], 'r+') do |stream|
    stream.puts(xxdhex)
    stream.close_write
    stream.gets.encode('ASCII-8BIT')
  end
end
