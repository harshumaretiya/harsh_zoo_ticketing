require_relative 'ticket'
require_relative 'guest'
require_relative 'user_interface'

class TicketingSystem
  def initialize
    @tickets = []
  end

  # Start the ticketing system loop
  def start
    loop do
      UserInterface.display_menu
      choice = UserInterface.get_integer_input("")

      case choice
      when 1
        issue_ticket
      when 2
        validate_ticket
      when 3
        puts "Goodbye!"
        break
      else
        puts "Invalid choice. Please try again."
      end
    end
  end

  private

  # Issue a new ticket
  def issue_ticket
    guest_count = UserInterface.get_integer_input("How many guests? ")
    ages = (1..guest_count).map do |i|
      UserInterface.get_integer_input("Enter age for Guest #{i}: ")
    end
    guests = ages.map { |age| Guest.new(age) }
    ticket = Ticket.new(guests)
    @tickets << ticket
    ticket.display_ticket
  end

  # Validate an existing ticket by its ID
  def validate_ticket
    ticket_id = UserInterface.get_input("Enter Ticket ID: ")
    ticket = @tickets.find { |t| t.ticket_id == ticket_id }
    if ticket
      if ticket.validated
        puts "--------------------------------"
        puts "This ticket has already been validated and cannot be used again."
        puts "--------------------------------"
      else
        ticket.display_ticket
        puts "Validated Ticket. You can now enter the zoo!"
        ticket.validated = true
      end
    else
      puts "--------------------------------"
      puts "Ticket ID not found. Please ensure you have entered the correct Ticket ID."
      puts "If you have any issues, please contact the ticketing office."
      puts "--------------------------------"
    end
  end
end
