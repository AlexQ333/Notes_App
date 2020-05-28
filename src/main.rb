require_relative "./classes.rb"
require "artii"
require "tty-prompt"
require "tty-file"
require "tty-table"
require "colorize"

Args = ARGV
if args[0] == "new"
    $prompt.keypress("Press enter to add a new note", keys: [:return])
    add_note
elsif args[0] == "display"
    noteboard_menu

end

title = Artii::Base.new
puts title.asciify("Terminal Notes").colorize(:light_blue)
StartMenu.new



