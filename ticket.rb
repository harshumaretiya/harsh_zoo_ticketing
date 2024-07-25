require_relative 'pricing'

class Ticket
  include Pricing

  attr_reader :guests, :total_charge, :ticket_id
  attr_accessor :validated

  @@id_counter = 0

  def initialize(guests)
    @ticket_id = self.class.generate_ticket_id
    @guests = guests
    @total_charge = calculate_total_charge
    @validated = false
  end

  # Display the ticket details
  def display_ticket
    puts "\n--------------------------------"
    puts "Ticket ID: #{@ticket_id}"
    guests.each_with_index do |guest, index|
      puts "Guest #{index + 1} (age: #{guest.age})"
    end
    puts "Total Charge: INR #{total_charge}"
    puts "--------------------------------\n"
  end

  # Generate a unique ticket ID
  def self.generate_ticket_id
    @@id_counter += 1
    "T#{@@id_counter.to_s.rjust(5, '0')}"
  end
end
