class SearchController < ApplicationController
  def index
    @q = Pet.ransack(params[:q])
    @pets= @q.result(distinct: true)
  end
end
