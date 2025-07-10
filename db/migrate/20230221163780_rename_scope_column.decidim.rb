# frozen_string_literal: true

# This migration comes from decidim (originally 20200326102407)
# This file has been modified by `decidim upgrade:migrations` task on 2025-07-10 12:51:12 UTC
class RenameScopeColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :decidim_content_blocks, :scope, :scope_name
  end
end
