require_relative "classes.rb"
require "artii"
require "tty-prompt"
require "tty-file"
require "tty-table"
require "colorize"

args = ARGV
if args[0] == "new"
    # $prompt.keypress("Press enter to add a new note", keys: [:return])
    noteboard = Noteboard.new(new_noteboard)
    noteboard.noteboard_add(add_note)

elsif args[0] == "display"
    noteboard_menu

end

title = Artii::Base.new
puts title.asciify("Terminal Notes").colorize(:light_blue)

# #Control flow

StartMenu.new

# noteboard = Noteboard.new(new_noteboard)

# noteboard.noteboard_add(add_note)

# # noteboard.display_noteboard(file)

# options_menu



