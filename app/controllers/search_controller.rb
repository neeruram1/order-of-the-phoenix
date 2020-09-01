class SearchController < ApplicationController
  def index
    @members = SearchResults.members_by_house(params[:house])
  end
end
