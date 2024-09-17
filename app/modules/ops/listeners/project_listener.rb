class Ops::Listeners::ProjectListener
  def project_updated(project)
    Action.create(klass: 'Ops::Listeners::ProjectListener', action: 'project_updated')
    Ops::Operations::Projects::UpdateStatus.call(project)
  end

  def project_year_home_built_changed(project)
    Action.create(klass: 'Ops::Listeners::ProjectListener', action: 'project_year_home_built_changed')
    Ops::Operations::Projects::CreateLeadSafetyWorkOrderItem.call(project)
  end
end
