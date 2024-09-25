Rails.application.config.to_prepare do
  Wisper.subscribe(Commission::Listeners::LedgerListener.new)
  Wisper.subscribe(ContactCenter::Listeners::EventListener.new)
  Wisper.subscribe(Finance::Listeners::ProjectListener.new)
  Wisper.subscribe(Finance::Quickbooks::Listeners::CustomerListener.new)
  Wisper.subscribe(Notifications::Listeners::RpcListener.new)
  Wisper.subscribe(Ops::Listeners::PiiVisitListener.new)
  Wisper.subscribe(Ops::Listeners::ProjectListener.new)
  Wisper.subscribe(Ops::Listeners::QcOpportunityListener.new)
  Wisper.subscribe(Reporting::Listeners::ReportAppointmentListener.new)
  Wisper.subscribe(Sales::Listeners::ProjectListener.new)
end
