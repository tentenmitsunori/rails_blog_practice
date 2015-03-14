class Favorite < ActiveRecord::Base
  belongs_to :favoritable, :polymorphic => :true
  validates :favoritable_type, presence: true
  validates :favoritable_id, presence: true
  validates :user_id || :admin_id, presence: true
end
