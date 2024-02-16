class Game
    def initialize
      @total_points = 0
      @rooms = { 1 => 5, 2 => 10, 3 => 15 }
    end

    def start
        puts "Welcome to the Adventure Game!"
        puts "You have #{@total_points} points."
    
        loop do
          puts "\nChoose a room (1-3) to enter or 'exit' to end the game: "
          choice = gets.chomp.downcase
    
          break if choice == 'exit'
    
          room_number = choice.to_i
          if @rooms.key?(room_number)
            points = @rooms[room_number]
            @total_points += points
            puts "You entered Room #{room_number} and earned #{points} points."
          else
            puts "Invalid choice. Please choose a room number (1-3) or 'exit'."
          end
        end
    
        puts "Game over! You collected a total of #{@total_points} points."
        end
    end

Game.new.start

