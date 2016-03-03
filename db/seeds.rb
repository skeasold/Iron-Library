if Author.all.blank?
  Author.create first_name: "Test", last_name: "Author", bio: "Bio here"
end

if Book.all.blank?
  Book.create title: "Harry Potter", photo_url: "http://cdn.pastemagazine.com/www/articles/harry%20potter%20world%20.jpg", price: 50.00, author_id: "1"
end
