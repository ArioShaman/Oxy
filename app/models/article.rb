class Article < ActiveRecord::Base
	validates :title, :description,:content, :image,:category_id, presence: true
	validates :title, uniqueness: true
	validates :image, allow_blank: true, format: {
	with: %r{\.(gif|jpg|png)\Z}i,
	message: 'must be a URL for GIF, JPG or PNG image.'
	# URL должен указывать на изображение формата GIF, JPG или PNG
	}

	def self.look_for query
	  	return self if query.blank? or query.length < 3
	  	search_ids = self.search_for_ids(query, {per_page: 1000, order: 'created_at DESC'})
	  	self.where(id: search_ids)
	end
end
