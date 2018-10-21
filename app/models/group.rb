class Group
  include Mongoid::Document
  field :topic, type: Array
  field :website, type: String
  field :field, type: Array
  field :logo, type: String
  field :university, type: Array
  field :status, type: String
  field :skill, type: Array
  field :members, type: Array
  field :director, type: String
  field :leader, type: String
  field :description, type: String
  field :project, type: Array
  validates_presence_of :topic, :field, :university , :members , :director , :leader
end
