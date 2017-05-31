
users = [
  {email: "admin@example.com", name: "admin", password: "password", admin: true},
  {email: "approved@example.com", name: "Approved User", password: "password", approved: true},
  {email: "unapproved@example.com", name: "Unapproved User", password: "password"}
]

stores = [
  "Albertson's",
  "Aldi",
  "Costco",
  "Stater Bros",
  "Trader Joe's"
]

users.each do |user|
  User.create(user)
end

stores.each do |store|
  Store.create({ name: store})
end

ShoppingList.create({
  user: User.first,
  store: Store.first,
  date: Time.now,
  time: Time.now
})

Item.create({
  name: "salad",
  category: "produce",
  store: Store.first,
  regularprice: 3,
  saleprice: 2
})
