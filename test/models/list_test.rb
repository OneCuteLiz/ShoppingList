require 'test_helper'

class Manipulate_List < ActiveSupport::TestCase

        test "add an item to the list" do

            item = "top"
            list = List.new
            file = File.read('sample_file.json')
            list_from_file = JSON.parse(file)

            list.add(item)
            
            assert list_from_file.has_value?(item), "expected #{list_from_file} to include #{item}"
        end


        test "delete an item from the list" do
            list = List.new

            item = "thing"

            refute_includes(list.delete, item)
        end

end