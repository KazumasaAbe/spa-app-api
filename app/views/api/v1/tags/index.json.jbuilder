json.select_tags do
  json.array! @select_tags, :tag
end

json.tags do
  json.array! @tags, :tag, :host_detail_id
end