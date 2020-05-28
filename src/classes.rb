require "tty-prompt"
require "tty-file"
require "tty-table"
require "csv"

# Display a start menu to user
# class StartMenu 
#     def initialize
#         @start_prompt = TTY::Prompt.new
#         @start_prompt.select("Create new noteboard or load existing one?") do |menu|
#             menu.choice "New noteboard", -> {new_file}
#             menu.choice "Load existing noteboard", -> {Noteboard.load_file}
#             menu.choice "Exit", -> {system "clear"}
#         end
#     end  
    
# end




class Noteboard
    #Creates a file for new noteboard
    def initialize(file_name)
        
        @file = TTY::File.create_file "#{file_name}.csv", "Title, Content"
    end
    
    #Finds any existing noteboard files and displays a selection menu
    def self.load_file
        @file_arr = Dir.glob("*csv")
        @file_menu = TTY::Prompt.new
        @file_menu.select("Select an existing noteboard") do |menu|
            for file in @file_arr do
            menu.choice "#{file}", -> {display_noteboard(file)}
            end
            menu.choice "Back", -> {StartMenu.new}
        end
    end
    
    # Reads and displays CSV fil data into a table
    def display_noteboard
        # puts "hello"
        file= CSV.open(@file, "a+")
        file.readlines.map


    end

   
end





def new_file
    puts "Enter a name for this new noteboard."
    file_name = gets.chomp
    # Noteboard.new(file_name)

end

# new_file
note = Noteboard.new(new_file)
puts "good"
note.display_noteboard

# def load_file
#     file = 

# end

#     def add_note

#     end

#     def delete_note

#     end

# def alphabetical_sort

# end
