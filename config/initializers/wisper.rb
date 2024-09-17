Rails.application.config.to_prepare do 
Wisper.subscribe(Ops::ProjectListener.new)
end
