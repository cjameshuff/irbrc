require 'irb/completion'
require 'map_by_method'
require 'pp'
require 'wirble'

Wirble.init
Wirble.colorize

colors = Wirble::Colorize.colors.merge({
   :comma => :black,
   :refers => :green,
})
Wirble::Colorize.colors = colors

IRB.conf[:AUTO_INDENT]=true

# execute command, first printing the command string
def ex(cmd)
    puts cmd
    puts `#{cmd}`
end

# Some hexadecimal/binary tools, useful for working with registers and bit flags
def hex(x)
    case x
    when Numeric
        "0x%x" % x
    when Array
        x.map{|y| hex(y)}
    when Hash
        x.keys.inject({}){|h, k| h[hex(k)] = hex(x[k]); h}
    end
end

def bin(x)
    x.to_s(16).chars.to_a.map{|d| d.to_i(16).to_s(2).rjust(4, '0')}.join(' ')
end

def qq()
    exit()
end
