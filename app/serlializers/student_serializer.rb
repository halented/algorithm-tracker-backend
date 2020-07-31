class StudentSerializer < ActiveModel::Serializer
    belongs_to :cohort
    attributes :id, :name, :have_gone
end