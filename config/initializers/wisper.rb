Rails.application.config.to_prepare do
  Wisper.subscribe(Commission::Listeners::LedgerListener.new)
  Wisper.subscribe(Notifications::Listeners::RpcListener.new)
  Wisper.subscribe(Ops::Listeners::ProjectListener.new)
end
