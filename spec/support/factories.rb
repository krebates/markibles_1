FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "person#{n}@example.com"}
    username 'girliename'
    first_name 'Krystle'
    last_name 'Bates'
    password 'password'
    password_confirmation 'password'
  end

end
