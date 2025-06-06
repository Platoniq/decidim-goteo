# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.2.2"

gem "decidim", "0.29.4" # Usar la última versión estable
# gem "decidim-conferences", "0.29.4"
# gem "decidim-consultations", "0.29.4"
# gem "decidim-initiatives", "0.29.4"
# gem "decidim-templates", "0.29.4"

gem "decidim-alternative_landing", git: "https://github.com/Platoniq/decidim-module-alternative_landing", branch: "main"
gem "decidim-decidim_awesome", git: "https://github.com/decidim-ice/decidim-module-decidim_awesome", branch: "main"
gem "decidim-social_crowdfunding", git: "https://github.com/Platoniq/decidim-module-social_crowdfunding", branch: "main"
gem "decidim-term_customizer", git: "https://github.com/Platoniq/decidim-module-term_customizer", branch: "master"

# ⚠️ MODULES UNDER DEVELOPMENT
# gem "decidim-goteo_oauth", git: "https://github.com/Platoniq/decidim-module-goteo_oauth", branch: "main"
# gem "decidim-peertube", git: "https://github.com/Platoniq/decidim-module-peertube", branch: "main"

gem "bootsnap", "~> 1.3"

gem "puma", ">= 5.0.0"

gem "faker"

gem "wicked_pdf", "~> 2.1"

gem "sidekiq"

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri
  gem "rubocop-faker"

  gem "brakeman"
  gem "decidim-dev", "0.29.4"
end

group :development do
  gem "letter_opener_web", "~> 2.0"
  gem "listen", "~> 3.1"
  gem "web-console", "~> 4.2"

  gem "capistrano", "~> 3.14"
  gem "capistrano-bundler"
  gem "capistrano-passenger"
  gem "capistrano-rails"
  gem "capistrano-rails-console"
  gem "capistrano-rbenv"
  gem "capistrano-sidekiq"
end

group :production do
  gem "aws-sdk-s3", require: false
  gem "figaro", "~> 1.2"
  gem "whenever"
end
