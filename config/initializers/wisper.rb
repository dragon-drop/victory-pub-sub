Rails.application.config.to_prepare do
  Wisper.subscribe(Ops::Listeners::ProjectListener.new)
  Wisper.subscribe(Commission::Listeners::LedgerListener.new)
end
