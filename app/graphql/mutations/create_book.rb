class Mutations::CreateBook < Mutations::BaseMutation

  argument :user_id, ID, required: true
  argument :title, String, required: true

  field :book, Types::BookType, null: true
  field :errors, String, null: true

  def resolve(user_id:, title:)
    user = User.find(user_id)
    book = user.books.build(title: title)
    if book.save
      {
        book: book,
        errors: []
      }
    else
      {
        book: nil,
        errors: book.errors.full_messages
      }
    end    
  end

end