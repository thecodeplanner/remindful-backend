class DaySerializer < ActiveModel::Serializer
  attributes :id, :date, :entry, :mood, :water_intake, :user_id
end
