json.set! @book.title_he_tr  do
  json.partial! '/api/books/book', book: @book
end