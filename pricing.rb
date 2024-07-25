module Pricing
  # Calculate the total charge based on the age of each guest
  def calculate_total_charge
    guests.reduce(0) do |sum, guest|
      sum + case guest.age
            when 0..2
              0
            when 3..17
              100
            when 18..59
              500
            else
              300
            end
    end
  end
end
