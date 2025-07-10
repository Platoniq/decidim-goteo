# frozen_string_literal: true

# This migration comes from decidim (originally 20170128140553)
# This file has been modified by `decidim upgrade:migrations` task on 2025-07-10 12:51:12 UTC
class AddTimestampsToIdentities < ActiveRecord::Migration[5.0]
  def change
    add_timestamps :decidim_identities
  end
end
