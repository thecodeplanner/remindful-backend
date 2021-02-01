class TaskSerializer < ActiveModel::Serializer
  attributes :id, :description, :complete, :day_id
end
