json.array!(@dongal_notices) do |dongal_notice|
  json.extract! dongal_notice, :id, :wr_id, :bo_table, :update_time, :check
  json.url dongal_notice_url(dongal_notice, format: :json)
end
