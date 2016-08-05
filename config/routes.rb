Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  mount Naturesoft::Core::Engine => "/", as: 'naturesoft'
  
  if Naturesoft::Core.available?(:slideshows)
    mount Naturesoft::Slideshows::Engine => "/", as: 'naturesoft_slideshows'
  end
  if Naturesoft::Core.available?(:articles)
    mount Naturesoft::Aricles::Engine => "/", as: 'naturesoft_articles'
  end
  if Naturesoft::Core.available?(:banners)
    mount Naturesoft::Banners::Engine => "/", as: 'naturesoft_banners'
  end
  if Naturesoft::Core.available?(:galleries)
    mount Naturesoft::Galleries::Engine => "/", as: 'naturesoft_galleries'
  end
  if Naturesoft::Core.available?(:partners)
    mount Naturesoft::Partners::Engine => "/", as: 'naturesoft_partners'
  end

end
