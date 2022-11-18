class Item
    
    def self.valid_date?(date_string)
        parts = date_string.split("-")
        year, month, day = parts
        return false if year.length != 4
        month, day = [month, day].map(&:to_i)
        return false if !(month > 0 && month <= 12)
        return false if !(day > 0 && day <= 31)
        true
    end

    attr_reader :deadline
    attr_accessor :title, :description

    def initialize(title, deadline, description)
        raise "not a valid date" if !Item.valid_date?(deadline)
        @title = title
        @deadline = deadline
        @description = description
    end

    def deadline=(new_date)
        if Item.valid_date?(new_date)
            @deadline = new_date 
        else
            raise "not a valid date"
        end
    end

    
end