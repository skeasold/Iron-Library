if Author.all.blank?
  Author.create first_name: "Test", last_name: "Author", bio: "Bio here"
end

if Book.all.blank?
  Book.create title: "Test book", photo_url: "www.google.com", price: 10.00, author_id: "1"
end
