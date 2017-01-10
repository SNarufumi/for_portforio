class Member < ApplicationRecord
	mount_uploader :image, ImageUploader
	validates :name, presence: {message: "名前を入力してください"}
	validates :content, presence: {message: "内容を入力してください"}
	validates :image, presence: {message: "画像を選択してください"}
end
