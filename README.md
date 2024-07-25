# Zoo Ticket System

Sure, here is the `README.md` file content for your GitHub repository:

```markdown
This is a simple Zoo Ticketing System written in Ruby. The system allows users to issue and validate tickets for zoo entry, ensuring each ticket can only be validated once.

## Getting Started

### Prerequisites

- Ruby installed on your system. You can download it from [Ruby's official website](https://www.ruby-lang.org/en/downloads/).

### Installation

1. Clone the repository:
   ```sh
   git clone git@github.com:harshumaretiya/harsh_zoo_ticketing.git
   ```
2. Navigate to the project directory:
   ```sh
   cd harsh_zoo_ticketing
   ```

### Running the Application

1. Open a terminal or command prompt.
2. Navigate to the directory containing your files (if not already done):
   ```sh
   cd path/to/harsh_zoo_ticketing
   ```
3. Run the main script using the Ruby interpreter:
   ```sh
   ruby main.rb
   ```

## Usage

Follow the on-screen prompts to:
1. Issue a new ticket by entering the number of guests and their ages.
2. Validate an existing ticket by entering the ticket ID.
3. Exit the application.

### Example

```sh
===============================
Welcome to the Zoo Ticketing System
===============================
1. Issue Ticket
2. Validate Ticket
3. Exit
Please enter your choice: 1
How many guests? 3
Enter age for Guest 1: 10
Enter age for Guest 2: 25
Enter age for Guest 3: 60

--------------------------------
Ticket ID: T00001
Guest 1 (age: 10)
Guest 2 (age: 25)
Guest 3 (age: 60)
Total Charge: INR 900
--------------------------------

===============================
Welcome to the Zoo Ticketing System
===============================
1. Issue Ticket
2. Validate Ticket
3. Exit
Please enter your choice: 2
Enter Ticket ID: T00001

--------------------------------
Ticket ID: T00001
Guest 1 (age: 10)
Guest 2 (age: 25)
Guest 3 (age: 60)
Total Charge: INR 900
--------------------------------
Validated Ticket. You can now enter the zoo!
```

### File Structure

```
harsh_zoo_ticketing/
├── guest.rb
├── main.rb
├── pricing.rb
├── ticket.rb
├── ticketing_system.rb
└── user_interface.rb
```

## Contributing

Feel free to fork this repository and make changes. Pull requests are welcome.

```

This README file provides a comprehensive guide to get started with your Zoo Ticketing System application, including installation, usage, and file structure details.
