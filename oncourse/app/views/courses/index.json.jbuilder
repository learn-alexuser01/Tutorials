json.array!(@courses) do |course|
  json.extract! course, :id, :title, :description, :price, :seats, :starts_at, :ends_at
  json.url course_url(course, format: :json)
end
