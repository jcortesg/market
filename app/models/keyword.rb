class Keyword
  include Mongoid::Document
  field :keyword, type: String
  embedded_in :articulo
end
