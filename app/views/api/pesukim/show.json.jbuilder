json.set!(@book_name) do
  json.set!(@perek) do
    json.set!(@pasuk.number) do
      json.partial! '/api/perakim/pasuk', pasuk: @pasuk
    end
  end
end