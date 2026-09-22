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
gem "decidim-goteo_oauth", git: "https://github.com/Platoniq/decidim-module-goteo_oauth", branch: "main"
gem "decidim-social_crowdfunding", git: "https://github.com/Platoniq/decidim-module-social_crowdfunding", branch: "main"
# Platoniq's fork of gencat/decidim-module-stratified_sortitions, pinned to the
# last commit on the Decidim 0.29 line. Upstream main has moved to ~> 0.30, which
# will not resolve against the 0.29.4 above, and gencat's only 0.29 tag (v0.0.1)
# ships a migration whose class name does not match its file name, so `db:migrate`
# raises NameError. This commit predates that rename. Pinned rather than tracking
# a branch so a later fork sync cannot move us onto the 0.30 line.
gem "decidim-stratified_sortitions", git: "https://github.com/Platoniq/decidim-module-stratified_sortitions", ref: "9c448c1dc1bd829b13aadcc824469581eb8051af"
gem "decidim-term_customizer", github: "openpoke/decidim-module-term_customizer", branch: "release/0.29-stable"

# ⚠️ MODULES UNDER DEVELOPMENT
# gem "decidim-peertube", git: "https://github.com/Platoniq/decidim-module-peertube", branch: "main"

gem "appsignal"

gem "bootsnap", "~> 1.3"

gem "puma", ">= 5.0.0"
gem "rack-attack", "~> 6.7"

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

  # Capistrano talks SSH through net-ssh, which cannot read ed25519 keys without
  # these. ed25519 is the default key type for modern ssh-keygen, so without them
  # `cap production deploy` aborts at rbenv:validate with
  # "unsupported key type `ssh-ed25519'" before it connects.
  gem "bcrypt_pbkdf", ">= 1.0", "< 2.0"
  gem "ed25519", ">= 1.2", "< 2.0"
end

group :production do
  gem "aws-sdk-s3", require: false
  gem "figaro", "~> 1.2"
  gem "whenever"
end
