require_relative "classes.rb"
require_relative "help.rb"
require "artii"
require "tty-prompt"
require "tty-file"
require "tty-table"
require "colorize"


args = ARGV

if args.empty?
    title = Artii::Base.new
    puts title.asciify("Terminal Notes").colorize(:light_blue)

    StartMenu.new

else
    case args[0].downcase
    when "new"
        noteboard = Noteboard.new(new_noteboard)
        noteboard.noteboard_add(add_note)
    
    when "display"
        noteboard_menu
    
    when "h"
        help_info
    else
        puts "That is not a valid argument, please pick one from below"
        # options #put the valid options into a method
    end
    
end









