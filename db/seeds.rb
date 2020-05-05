Section.delete_all
Book.delete_all
Parsha.delete_all
Perek.delete_all
Pasuk.delete_all
Aliya.delete_all

# Section.first.books.first.perakim.first.pesukim.first.aliyos
# Aliya.first.pesukim

# Section

torah = Section.create(id: 1, title_en: "Torah", title_he: "תורה", title_he_tr: "Torah", description: "The Torah")
neviim = Section.create(id: 2, title_en: "Prophets", title_he: "נביאים", title_he_tr: "Neviim", description: "The Neviim")
kesuvim = Section.create(id: 3, title_en: "Writings", title_he: "כתובים", title_he_tr: "Kesuvim", description: "The Kesuvim")

# Book


seferBereishit = Book.create(title_en: 'Genesis', title_he: 'בראשית', title_he_tr: 'Bereishit', description: 'The book of Bereishit', section_id: torah.id)
seferShemot = Book.create(title_en: 'Exodus', title_he: 'שמות', title_he_tr: 'Shemot', description: 'The book of Shemot', section_id: torah.id)
seferVayikra = Book.create(title_en: 'Leviticus', title_he: 'ויקרא', title_he_tr: 'Vayikra', description: 'The book of Vayikra', section_id: torah.id)
seferBamidbar = Book.create(title_en: 'Numbers', title_he: 'במדבר', title_he_tr: 'Bamidbar', description: 'The book of Bamidbar', section_id: torah.id)
seferDevarim = Book.create(title_en: 'Deuteronomy', title_he: 'דברים', title_he_tr: 'Devarim', description: 'The book of Devarim', section_id: torah.id)
seferYehoshua = Book.create(title_en: 'Joshua', title_he: 'יהושע', title_he_tr: 'Yehoshua', description: 'The book of Yehoshua', section_id: neviim.id)
seferShoftim = Book.create(title_en: 'Judges', title_he: 'שופטים', title_he_tr: 'Shoftim', description: 'The book of Shoftim', section_id: neviim.id)
seferShmuel_I = Book.create(title_en: 'I Samuel', title_he: 'שמואל א', title_he_tr: 'Shmuel I', description: 'The book of Shmuel I', section_id: neviim.id)
seferShmuel_II = Book.create(title_en: 'II Samuel', title_he: 'שמואל ב', title_he_tr: 'Shmuel II', description: 'The book of Shmuel II', section_id: neviim.id)
seferMelachim_I = Book.create(title_en: 'I Kings', title_he: 'מלכים א', title_he_tr: 'Melachim I', description: 'The book of Melachim I', section_id: neviim.id)
seferMelachim_II = Book.create(title_en: 'II Kings', title_he: 'מלכים ב', title_he_tr: 'Melachim II', description: 'The book of Melachim II', section_id: neviim.id)
seferYeshayahu = Book.create(title_en: 'Isaiah', title_he: 'ישעיה', title_he_tr: 'Yeshayahu', description: 'The book of Yeshayahu', section_id: neviim.id)
seferYirmiyahu = Book.create(title_en: 'Jeremiah', title_he: 'ירמיה', title_he_tr: 'Yirmiyahu', description: 'The book of Yirmiyahu', section_id: neviim.id)
seferYechezkel = Book.create(title_en: 'Ezekiel', title_he: 'יחזקאל', title_he_tr: 'Yechezkel', description: 'The book of Yechezkel', section_id: neviim.id)
seferHoshea = Book.create(title_en: 'Hosea', title_he: 'הושע', title_he_tr: 'Hoshea', description: 'The book of Hoshea', section_id: neviim.id)
seferYoel = Book.create(title_en: 'Joel', title_he: 'יואל', title_he_tr: 'Yoel', description: 'The book of Yoel', section_id: neviim.id)
seferAmos = Book.create(title_en: 'Amos', title_he: 'עמוס', title_he_tr: 'Amos', description: 'The book of Amos', section_id: neviim.id)
seferOvadiah = Book.create(title_en: 'Obadiah', title_he: 'עובדיה', title_he_tr: 'Ovadiah', description: 'The book of Ovadiah', section_id: neviim.id)
seferYonah = Book.create(title_en: 'Jonah', title_he: 'יונה', title_he_tr: 'Yonah', description: 'The book of Yonah', section_id: neviim.id)
seferMichah = Book.create(title_en: 'Micah', title_he: 'מיכה', title_he_tr: 'Michah', description: 'The book of Michah', section_id: neviim.id)
seferNachum = Book.create(title_en: 'Nahum', title_he: 'נחום', title_he_tr: 'Nachum', description: 'The book of Nachum', section_id: neviim.id)
seferChavakuk = Book.create(title_en: 'Habakkuk', title_he: 'חבקוק', title_he_tr: 'Chavakuk', description: 'The book of Chavakuk', section_id: neviim.id)
seferTzefaniah = Book.create(title_en: 'Zephaniah', title_he: 'צפניה', title_he_tr: 'Tzefaniah', description: 'The book of Tzefaniah', section_id: neviim.id)
seferChaggai = Book.create(title_en: 'Haggai', title_he: 'חגי', title_he_tr: 'Chaggai', description: 'The book of Chaggai', section_id: neviim.id)
seferZechariah = Book.create(title_en: 'Zechariah', title_he: 'זכריה', title_he_tr: 'Zechariah', description: 'The book of Zechariah', section_id: neviim.id)
seferMalachi = Book.create(title_en: 'Malachi', title_he: 'מלאכי', title_he_tr: 'Malachi', description: 'The book of Malachi', section_id: neviim.id)
seferTehillim = Book.create(title_en: 'Psalms', title_he: 'תהלים', title_he_tr: 'Tehillim', description: 'The book of Tehillim', section_id: kesuvim.id)
seferMishlei = Book.create(title_en: 'Proverbs', title_he: 'משלי', title_he_tr: 'Mishlei', description: 'The book of Mishlei', section_id: kesuvim.id)
seferIyov = Book.create(title_en: 'Job', title_he: 'איוב', title_he_tr: 'Iyov', description: 'The book of Iyov', section_id: kesuvim.id)
seferShir_Hashirim = Book.create(title_en: 'Song of Songs', title_he: 'שיר השירים', title_he_tr: 'Shir Hashirim', description: 'The book of Shir Hashirim', section_id: kesuvim.id)
seferRut = Book.create(title_en: 'Ruth', title_he: 'רות', title_he_tr: 'Rut', description: 'The book of Rut', section_id: kesuvim.id)
seferEichah = Book.create(title_en: 'Lamentations', title_he: 'איכה', title_he_tr: 'Eichah', description: 'The book of Eichah', section_id: kesuvim.id)
seferKohelet = Book.create(title_en: 'Ecclesiastes', title_he: 'קהלת', title_he_tr: 'Kohelet', description: 'The book of Kohelet', section_id: kesuvim.id)
seferEsther = Book.create(title_en: 'Esther', title_he: 'אסתר', title_he_tr: 'Esther', description: 'The book of Esther', section_id: kesuvim.id)
seferDaniel = Book.create(title_en: 'Daniel', title_he: 'דניאל', title_he_tr: 'Daniel', description: 'The book of Daniel', section_id: kesuvim.id)
seferEzra = Book.create(title_en: 'Ezra', title_he: 'עזרא', title_he_tr: 'Ezra', description: 'The book of Ezra', section_id: kesuvim.id)
seferNechemiah = Book.create(title_en: 'Nehemiah', title_he: 'נחמיה', title_he_tr: 'Nechemiah', description: 'The book of Nechemiah', section_id: kesuvim.id)
seferDivrei_Hayamim_I = Book.create(title_en: 'I Chronicles', title_he: 'דברי הימים א', title_he_tr: 'Divrei Hayamim I', description: 'The book of Divrei Hayamim I', section_id: kesuvim.id)
seferDivrei_Hayamim_II = Book.create(title_en: 'II Chronicles', title_he: 'דברי הימים ב', title_he_tr: 'Divrei Hayamim II', description: 'The book of Divrei Hayamim II', section_id: kesuvim.id)


# Parsha
bereishis = Parsha.create(
  title_en: "Genesis", title_he: "בראשית", title_he_tr: "Bereishis", description: "The parsha of Bereishis"
)

# Perek
perek = Perek.create(perek_number: 1, book_id: seferBereishit.id )

# Pasuk
pasuk = Pasuk.create(text_he: "בראשית בראשית", text_en: "Bereishis Bereishis", unkelos: "בראשית Bereishis", perek_id: perek.id)

# Aliya
aliya = Aliya.create(aliyah_number: 1, parsha_id: bereishis.id)
