class SearchResultsController < ApplicationController
  def index
    @search_results = MatrixEntry.all
    end
end
