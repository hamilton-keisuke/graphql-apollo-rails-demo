module Mutations
  class DeleteUser < Mutations::BaseMutation
    argument :id, String, required: true

    field :id, ID, null: false

    def resolve(id:)
      User.find(id).delete

      { id: id }
    rescue => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end
