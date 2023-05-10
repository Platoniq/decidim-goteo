# frozen_string_literal: true

every :day, at: "2:00am" do
  rake "decidim:metrics:all"
end
