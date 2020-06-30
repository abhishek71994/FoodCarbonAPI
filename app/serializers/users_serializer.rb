class UsersSerializer < ActiveModel::Serializer
  attributes :id, :first_name

  attribute :email do
    binding.pry
  end
end
