# frozen_string_literal: true

# This migration comes from decidim (originally 20201019074554)
# This file has been modified by `decidim upgrade:migrations` task on 2025-07-10 12:51:12 UTC
class AddLocaleToModerationReports < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_reports, :locale, :string
  end
end
