FactoryBot.define do
  factory :user do
    nickname              {'tommy'}
    email                 {'test@com'}
    password              {'123456'}
    password_confirmation {password}
    birthday              {'2000/2/22'}
  end
end