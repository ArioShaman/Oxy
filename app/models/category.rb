class Category < ActiveRecord::Base
	has_many :articles, foreign_key: "category_id"
end
