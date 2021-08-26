require 'test_helper'

class Manipulate_List < ActiveSupport::TestCase

    test "add an item" do

        list = List.new
        item = "cherry"
        
        assert list.add(item).has_value?(item), "expected #{list.add(item)} to include #{item}"

    end


    test "delete an item" do
        skip
    end

end