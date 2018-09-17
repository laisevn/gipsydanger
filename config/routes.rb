Rails.application.routes.draw do
	namespace :api do
		namespace :v1 do 
			get :find_ubs, controller: :entries
		end
	end
end
