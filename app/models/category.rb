class Category < ActiveRecord::Base
	has_many :articles,->{order(:id)}, foreign_key: "category_id"
end
