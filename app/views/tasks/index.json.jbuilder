json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :string,, :status, :string,, :user_id, :integer,, :project_id, :integer
  json.url task_url(task, format: :json)
end
