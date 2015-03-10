class Article < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: {message: "を入力してください"}
  validates :content, presence:{ message: "を入力してください"}
end
