class Item < ApplicationRecord
  validates :name, presence: true
  validates :project_id, presence: true
  validates :url, presence: true
  belongs_to :project, :class_name => "Item", :foreign_key => "director_id"
  mount_uploader :url, UrlUploader

end
