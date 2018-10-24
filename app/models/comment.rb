class Comment < ApplicationRecord
	t.string :content
	belongs_to :user
	belongs_to :pin
end
