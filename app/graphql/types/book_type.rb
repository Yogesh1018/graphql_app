module Types
  class BookType < Types::BaseObject

    field :title, String, null: false
    field :user, Types::UserType, null: false

  end
end
