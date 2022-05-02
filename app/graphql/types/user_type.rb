# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :age, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :books, [Types::BookType], null: false
    def books
      Loaders::AssociationLoader.for(User, :books).load(object)
    end

    field :books_object_count, Integer, null: false
    def books_object_count
      object.books.count
    end
  end
end
