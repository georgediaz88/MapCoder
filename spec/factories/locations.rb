Factory.define(:user) do |user|
  user.email "stevejobs@apple.com"
  user.password "apple_wins"
end

Factory.define(:location) do |loc|
  loc.address "Wrigley Field, Chicago, IL"
end