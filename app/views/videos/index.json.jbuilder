json.array!(@videos) do |video|
  json.extract! video, :id, :title, :subtitle, :url, :description, :featured, :row_order, :speaker
  json.url video_url(video, format: :json)
end
