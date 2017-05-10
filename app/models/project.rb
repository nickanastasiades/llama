class Project < ApplicationRecord
  validates :title, presence: true
  validates :project_type, presence: true
  validates :description, presence: true
  validates :status, presence: true
  validates :version, presence: true
end
