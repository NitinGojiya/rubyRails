class Employee < ApplicationRecord
    validates :first_name, :last_name, presence: true
    validates :personal_email, presence: true, uniqueness: true

    validates :city, :state, :country, :pincode, :address_line_1, presence: true

    def name
     "#{first_name} #{middle_name} #{last_name}".strip
    end
    def address
      "#{address_line_1} ,#{address_line_2} ,#{city} ,#{state} ,#{country} -#{pincode}  "
    end
end
