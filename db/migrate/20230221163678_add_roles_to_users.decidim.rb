# frozen_string_literal: true

# This migration comes from decidim (originally 20170727125445)
# This file has been modified by `decidim upgrade:migrations` task on 2025-07-10 12:51:12 UTC
class AddRolesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_users, :roles, :string, array: true, default: []
  end
end
