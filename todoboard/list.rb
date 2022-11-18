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
        if index < 0 || index > @items.length-1
            raise "that is not a valid index"
            false
        end
        true
    end

    def swap(index_1, index_2)
        if valid_index?(index_1) && valid_index?(index_2)
            @items[index_1], @items[index_2] = @items[index_2], @items[index_1]
            true
        else
            false
        end
    end

    def [](index)
        if !valid_index?(index)
            return nil
        else
            @items[index]
        end
    end

    def priority
        @items.first
    end

    def print
        p "#{@label}"
        p "Index | Item | Deadline"
        @items.each_with_index do |item, index|
            p "#{index} | #{item.title} | #{item.deadline}"
        end
        true
    end

    def print_full_item(index)
        if !valid_index?(index)
            raise 'that is not a valid index'
        else
            p "#{self[index].title} #{self[index].deadline}"
            p "#{self[index].description}"
        end
    end

    def print_priority
        print_full_item(0)
    end

    def up(index, amount=1)
        return false if !valid_index?(index)
        while amount > 0 && index != 0
            swap(index, index -1)
            amount -= 1
            index -= 1
        end
        true
    end

    def down(index, amount=1)
        return false if !valid_index?(index)
        while amount > 0 && index != @items.length-1
            swap(index, index +1)
            amount -= 1
            index += 1
        end
        true
    end



end