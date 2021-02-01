class TaskSerializer < ActiveModel::Serializer
  attributes :description, :complete, :day_id
end
