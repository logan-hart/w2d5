class Flight

    attr_reader :passengers

    def initialize(flight_number, capacity)
        @flight_number = flight_number
        @capacity = capacity
        @passengers = []
    end

    def full?
        @passengers.length == @capacity
    end

    def board_passenger(passenger)
        if passenger.has_flight?(@flight_number) && !full?
            @passengers << passenger
        end
    end

    def list_passengers
        new_arr = []
        @passengers.each do |passenger|
            new_arr << passenger.name
        end
        new_arr
    end

    def [](index)
        @passengers[index]
    end

    def <<(passenger)
        board_passenger(passenger)
    end


    
end
