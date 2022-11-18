require_relative "./item.rb"

class List

    attr_accessor :label

    def initialize(label)
        @label = label
        @items = []
    end

    def add_item(title, deadline, description="" )
        if Item.valid_date?(deadline)
            @items << Item.new(title, deadline, description)
            true
        else
            raise "that is not a valid date"
            false
        end
    end

    def size
        @items.length
    end

    def valid_index?(index)
        return false if index < 0 || index > (@items.length -1)
    end

    def swap(index_1, index_2)
        @items[index_1], @items[index_2] = @items[index_2], @items[index_1]
    end

    def priority
        @items.first
    end

end