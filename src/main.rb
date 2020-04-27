require_relative "./classes.rb"
require "artii"
require "tty-prompt"
require "tty-file"
require "tty-table"
require "colorize"

title = Artii::Base.new
puts title.asciify("Terminal Notes").colorize(:light_blue)
StartMenu.new