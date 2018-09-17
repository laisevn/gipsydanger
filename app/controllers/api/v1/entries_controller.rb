class Api::V1::EntriesController < ActionController::API
	before_action :set_entrie, :entries_results


	def find_ubs
		entries = @entries_results.page(page).per(per_page)
	    total_entries = @entries_results.count
	    ubs = ActiveModel::SerializableResource.new(entries).serializable_hash
		
    	render json: { current_page: page, per_page: per_page, total_entries: total_entries }.merge(ubs), status: :ok
	end


	private

	def set_entrie
	  @entrie = Entrie.where(params[:id])
	end

	def entries_results
		@entries_results = @entrie.by_distance(origin: params[:query])
	end

	def page
		@page ||= params[:page]	|| 1
	end

	def per_page
		@per_page ||= params[:per_page] || 10
	end
end

