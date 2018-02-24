FactoryBot.define do
  factory :comment do
    email "MyString"
    body "MyText"
    article
  end
end
