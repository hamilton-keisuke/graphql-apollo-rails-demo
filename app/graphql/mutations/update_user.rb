module Mutations
  class UpdateUser < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :name, String, required: true
    argument :age, Integer, required: true

    field :user, Types::UserType, null: false

    def resolve(id:, name:, age:)
      puts "id:#{id}"
      puts "name:#{name}"
      puts "age:#{age}"

      user = User.find(id)
      user.update!(name: name, age: age)
      { user: user }
    rescue => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end
