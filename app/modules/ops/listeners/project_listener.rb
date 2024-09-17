class Ops::Listeners::ProjectListener
  def project_updated(project)
    Action.create(klass: 'Ops::Listeners::ProjectListener', action: 'project_updated')
    Ops::Operations::Projects::UpdateStatus.call(project)
  end
end
