json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :budget, :duration, :organisation
  json.url project_url(project, format: :json)
end
