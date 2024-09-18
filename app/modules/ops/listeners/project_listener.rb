class Ops::Listeners::ProjectListener
  def project_updated(project)
    Action.create(project:, klass: 'Ops::Listeners::ProjectListener', action: 'project_updated')
    Ops::Operations::Projects::UpdateStatus.call(project)
  end

  def project_year_home_built_changed(project)
    Action.create(project:, klass: 'Ops::Listeners::ProjectListener', action: 'project_year_home_built_changed')
    Ops::Operations::Projects::CreateLeadSafetyWorkOrderItem.call(project)
  end

  def project_pending_collection(project)
    Action.create(project:, klass: 'Ops::Listeners::ProjectListener', action: 'project_pending_collection')
    Ops::Operations::Projects::UpdateDependentQcProject.call(project)
  end

  def project_funds_requested(project)
    Action.create(project:, klass: 'Ops::Listeners::ProjectListener', action: 'project_funds_requested')
    Ops::Operations::Projects::UpdateDependentQcProject.call(project)
  end

  def project_paid_and_complete(project)
    Action.create(project:, klass: 'Ops::Listeners::ProjectListener', action: 'project_paid_and_complete')
    Ops::Operations::Projects::UpdateDependentQcProject.call(project)
  end
end
