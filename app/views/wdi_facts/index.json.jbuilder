json.array!(@wdi_facts) do |wdi_fact|
  json.extract! wdi_fact, :id, :country_code, :country_name, :series_code, :series_name, :content
  json.url wdi_fact_url(wdi_fact, format: :json)
end
