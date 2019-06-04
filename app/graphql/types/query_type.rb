module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :users, [Types::UserType], null: false

    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    field :book, Types::BookType, null: false do
      argument :id, ID, required: true
    end

    field :books, [Types::BookType], null: false

    def users
      User.all
    end

    def user(id:)
      User.find(id)
    end
    
    def book(id:)
      Book.find(id)
    end

    def books
      Book.all
    end

  end
end
