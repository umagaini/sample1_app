FactoryGirl.define do
  factory :user do
    name
    "uma"
    email
    "umagaini.mail@gmail.com"
    password "umagaini"
    password confirmation "umagaini"
  end
end
