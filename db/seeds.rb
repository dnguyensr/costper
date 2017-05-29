
users = [
  {email: "user@example.com", password: "password"},
  {email: "admin@example.com", password: "password"}
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
