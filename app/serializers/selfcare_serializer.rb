class SelfcareSerializer < ActiveModel::Serializer
  attributes :id, :description, :complete, :day_id
end
