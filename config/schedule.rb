# frozen_string_literal: true

every :day, at: "2:20am" do
  rake "decidim:metrics:all"
end
