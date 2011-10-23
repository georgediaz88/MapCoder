Factory.define(:user) do |user|
  user.username "stevejobs"
  user.password "apple_wins"
  user.email "stevejobs@apple.com"
end

Factory.define(:location) do |loc|
  loc.address "Wrigley Field, Chicago, IL"
end