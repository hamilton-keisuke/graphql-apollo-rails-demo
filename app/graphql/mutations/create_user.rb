module Mutations
  class CreateUser < Mutations::BaseMutation
    argument :name, String, required: true
    argument :age, Integer, required: true

    field :user, Types::UserType, null: false
    field :errors, [String], null: false

    def resolve(name:, age:)
      user = User.new(name: name, age: age)

      if user.save
        {
          user: user,
          errors: []
        }
      else
        {
          user: nil,
          errors: user.errors.full_message
        }
      end
    end
  end
end
