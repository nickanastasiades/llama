class Designer < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

end
