module UserInterface
  # Display the main menu
  def self.display_menu
    puts "\n==============================="
    puts "Welcome to the Zoo Ticketing System"
    puts "==============================="
    puts "1. Issue Ticket"
    puts "2. Validate Ticket"
    puts "3. Exit"
    print "Please enter your choice: "
  end

  # Get user input with a prompt
  def self.get_input(prompt)
    print prompt
    gets.chomp
  end

  # Get integer input with a prompt
  def self.get_integer_input(prompt)
    print prompt
    gets.chomp.to_i
  end
end
