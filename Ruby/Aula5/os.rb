require 'os'

def my_os
    if OS.windows?
        "windows"
    elsif OS.linux?
        "linux"
    elsif OS.mac?
        "mac"
    else
        "Não consegui identificar"
    end
end

puts "Meu pc possui #{OS.cpu_count} cores, é #{OS.bits} bits e o sistema é #{my_os}"