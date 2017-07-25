
class SearchController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json {
        collection = Article.look_for(params[:q]).order("created_at DESC")
        render json: Oj.dump({
          total_count: collection.count,
          collection: collection,
        })
      }
    end
  end
end