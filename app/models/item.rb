class Item < ApplicationRecord
  validates :name, presence: true
  validates :project_id, presence: true
end
