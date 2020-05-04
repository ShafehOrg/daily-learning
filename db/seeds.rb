Section.delete_all

torah = Section.create(id: 1, title_en: "Torah", title_he: "תורה", title_he_tr: "Torah", description: "The Torah")
neviim = Section.create(id: 2, title_en: "Prophets", title_he: "נביאים", title_he_tr: "Neviim", description: "The Neviim")
kesuvim = Section.create(id: 3, title_en: "Writings", title_he: "כתובים", title_he_tr: "Kesuvim", description: "The Kesuvim")