json.array!(@discussions) do |discussion|
  json.extract! discussion, :id, :title, :project_id
  json.url discussion_url(discussion, format: :json)
end
