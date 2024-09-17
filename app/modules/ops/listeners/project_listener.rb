class Ops::Listeners::ProjectListener
  def project_updated(project)
    puts "Update the project status for project #{project.id} if you need to"
  end
end
