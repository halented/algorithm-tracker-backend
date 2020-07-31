class CohortSerializer < ActiveModel::Serializer
    has_many :students
    attributes :id, :start_date, :name, :students
end