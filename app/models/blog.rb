class Blog < ApplicationRecord
  validates :title, presence: {message: "タイトルを入力してください"}
  validates :content, presence: {message: "内容を入力してください"}
  acts_as_taggable_on :category 
  paginates_per 4    
end
