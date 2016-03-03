if Author.all.blank?
  Author.create id: "1", first_name: "Harvey", last_name: "Ipsum", bio: "Climb leg rub face on everything give attitude nap all day for under the bed. Chase mice attack feet but..."
end

if Book.all.blank?
  Book.create title: "Jedi-Foo Rat!", photo_url: "http://images6.fanpop.com/image/photos/35200000/funny-animals-35204748-500-331.jpg", price: 10.5, author_id: "1"
end
