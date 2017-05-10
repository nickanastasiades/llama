class Item < ApplicationRecord
  validates :name, presence: true
  validates :project_id, presence: true

  mount_uploader :url, UrlUploader
end
