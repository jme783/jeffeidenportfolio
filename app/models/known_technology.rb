class KnownTechnology < ActiveRecord::Base
  belongs_to :skill
  has_and_belongs_to_many :projects
end
