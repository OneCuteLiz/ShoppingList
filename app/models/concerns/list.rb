require 'json'

class List

    def add(item)

        # read file & convert to hash
        file = File.read('sample_file.json')
        list_from_file = JSON.parse(file)

        # update our hash
        list_from_file[:car] = item

        # update the file w/ new item
        File.write(file, JSON.dump(list_from_file))

    end


end