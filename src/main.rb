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
    #Control flow

    StartMenu.new
    noteboard = Noteboard.new(new_noteboard)
    noteboard.noteboard_add(add_note)
    noteboard.display_noteboard(file)
    options_menu(noteboard)

elsif args[0].downcase == "new"
    noteboard = Noteboard.new(new_noteboard)
    noteboard.noteboard_add(add_note)

elsif args[0].downcase == "display"
    noteboard_menu

elsif args[0].downcase == "h"
    help_info


end










