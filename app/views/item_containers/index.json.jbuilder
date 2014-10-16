json.array!(@item_containers) do |item_container|
  json.extract! item_container, :id, :item_id, :container_id
  json.url item_container_url(item_container, format: :json)
end
