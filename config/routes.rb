Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  mount Naturesoft::Core::Engine => "/", as: 'naturesoft'
  
  Dir.glob(Rails.root.join('engines').to_s + "/*") do |d|
    eg = d.split(/[\/\\]/).last
		if eg != "core" and Naturesoft::Core.available?(eg)
			mount "Naturesoft::#{eg.camelize}::Engine".constantize => "/", as: 'naturesoft_' + eg
		end
  end
  
end
