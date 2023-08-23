class SearchController < ApplicationController
  def index
  end

  def results
    unless params[:q].present?
      render json: { error: 'q is required' }, status: :bad_request
      return
    end

    @search_results = SearchView.where("search_field LIKE ?", "%#{params[:q]}%")

    @search_results.each do |result|
      enrich_model(result)
    end
    render json: @search_results.to_json(methods: [:path])
  end

  private

  def enrich_model(search_view_model)
    case search_view_model.search_type
    when "user"
      search_view_model.path = user_path(search_view_model.id)
    when "tool"
      search_view_model.path = tool_path(search_view_model.id)
    end
  end
end
