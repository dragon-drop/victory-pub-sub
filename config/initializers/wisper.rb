Rails.application.config.to_prepare do
  Wisper.subscribe(Ops::Listeners::ProjectListener.new)
end
