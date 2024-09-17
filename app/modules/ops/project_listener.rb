class Ops::ProjectListener
  def project_updated(project)
    UpdateProjectStatusJob.perform_later(project)
  end
end
