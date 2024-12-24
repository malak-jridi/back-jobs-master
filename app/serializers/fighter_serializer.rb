class FighterSerializer < ActiveModel::Serializer
  attributes :id, :name, :life_score, :attack_score
end
