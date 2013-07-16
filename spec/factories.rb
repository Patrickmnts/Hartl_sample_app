FactoryGirl.define do
  factory :user do
    name "Patrick Mounts"
    email "pmounts@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end