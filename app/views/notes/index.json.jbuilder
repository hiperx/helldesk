json.array!(@notes) do |note|
  json.extract! note, :id, :body, :User_id, :Issue_id
  json.url note_url(note, format: :json)
end
