require "test/unit"
require "csv"
require_relative "classes.rb"


# Tests for adding new notes
class NewNotesTest < Test::Unit::TestCase
    def test_add_note
        assert_equal("note1", Noteboard.noteboard_add(add_note("note1")))

    end
    # Testing whether the application disallows notes over 200 characters
    def test_char_limit
        assert_equal("The note is over the character limit!", Notes.add_note("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce a mi et tellus convallis venenatis sit amet a dolor. In nec tincidunt magna, sed fringilla dolor. Nunc id felis consectetur, laoreet magna sit amet, efficitur sem. "))
    end

# Testing note deletion
class  DeleteNotesTest < Test::Unit::TestCase
    def test_delete_note
        assert_equal(nil, Notes.delete_note("asdfasdf"))
    end

# Testing sorting function for noteboards
class SortedNotesTest < Test::Unit::TestCase
    def test_alphabetical_sort
        assert_equal("apple", "bacon", "couch", alphabetical_sort("Noteboard"))
        assert_equal("123", "apple", "couch", alphabetical_sort("Noteboard"))
    end


end