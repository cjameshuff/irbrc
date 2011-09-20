Various utility functions I've found to be useful when working in irb (Interactive Ruby). I have found irb to be a particularly useful tool in embedded programming and debugging embedded systems, as Ruby supports C bitwise operations, has flexible and concise syntax for working with data, and can easily be set up to remotely execute commands via telnet or serial port, to access SPI and I2C busses for example.

Installation is simple, just copy or link the file in your home directory as `~/.irbrc`.

The Wirble gem is used for syntax coloring and autoindent, do `gem install wirble` or comment/remove those lines if this isn't desired.

