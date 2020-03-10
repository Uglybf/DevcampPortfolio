class Skill < ApplicationRecord

  validates_presece_of :title, :percent_utiliced
end
