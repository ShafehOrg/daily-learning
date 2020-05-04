@sections.each do |section|
  json.set! section.title_he_tr  do
    json.partial! '/api/sections/section', section: section
  end
end