class ScoreSerializer < ActiveModel::Serializer
  attributes :size, :adaptation_for_seniors, :medical_equipment, :medicine

  belongs_to :entrie
end
