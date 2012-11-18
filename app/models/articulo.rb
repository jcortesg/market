class Articulo
  include Mongoid::Document
  field :titulo, type: String
  field :abstract, type: String
  field :description, type: String
  field :fecha, type: Date
  field :precio, type: Integer
  field :calificacion, type: Integer
  field :foto, type: String
  belongs_to :user
  embeds_many :keywords
  accepts_nested_attributes_for :keywords
end
