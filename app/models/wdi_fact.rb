class WdiFact
  include Mongoid::Document
  field :country_code, type: String
  field :country_name, type: String
  field :series_code, type: String
  field :series_name, type: String
  field :content, type: Array
end
