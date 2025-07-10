# frozen_string_literal: true

# This migration comes from decidim_budgets (originally 20200717140012)
# This file has been modified by `decidim upgrade:migrations` task on 2025-07-10 12:51:11 UTC
class AddScopeToBudgets < ActiveRecord::Migration[5.2]
  def change
    add_reference :decidim_budgets_budgets, :decidim_scope, foreign_key: true, index: true
  end
end
