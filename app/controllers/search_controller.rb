class SearchController < ApplicationController
  def index
    search_results = SearchResults.new
    @members = search_results.order_of_the_phoenix_members(params[:house])
  end
end
