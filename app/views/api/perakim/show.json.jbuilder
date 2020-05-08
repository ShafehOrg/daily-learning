json.set!(@book_name) do
  json.set!(@perek) do
    json.array!(@pesukim) do |pasuk|
      json.partial! '/api/perakim/pasuk', pasuk: pasuk
    end
  end
end