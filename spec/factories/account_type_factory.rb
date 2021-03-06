# frozen_string_literal: true
FactoryGirl.define do
  factory :account_type do
    sequence(:name) { |n| "Account Type ##{n}" }
  end
end
