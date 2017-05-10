class Project < ApplicationRecord
  # disable STI
  inheritance_column = :_type_disabled
end
