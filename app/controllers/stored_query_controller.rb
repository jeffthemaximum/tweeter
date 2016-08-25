class StoredQueryController < ApplicationController
  def create
    @stored_query = StoredQuery.find_or_create_by(search: store_params[:s]) do |sq|
      if sq.new_record?
        @new = true
      else
        @new = false
      end
    end
  end

  private
    def store_params
      params.permit(:s)
    end
end
