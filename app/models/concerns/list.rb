require 'json'

class List

    def add(item)
    #TODO - if a file exists, add an item (a hash) to it; if not create file & proceed

        # read file & convert to hash
        file = File.read('sample_file.json')
        list_from_file = JSON.parse(file)

        # update our hash
        list_from_file[:car] = item

        # update the file w/ new item
        File.write(file, JSON.dump(list_from_file))

    end

    def delete
        "a nice girl"

=begin
       # read file & convert to hash
       file = File.read('sample_file.json')
       list_from_file = JSON.parse(file)

       #find the item within the list
=end


    end



end