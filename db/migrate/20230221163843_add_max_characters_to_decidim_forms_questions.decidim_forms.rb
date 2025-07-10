# frozen_string_literal: true

# This migration comes from decidim_forms (originally 20210208094442)
# This file has been modified by `decidim upgrade:migrations` task on 2025-07-10 12:51:12 UTC
class AddMaxCharactersToDecidimFormsQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_forms_questions, :max_characters, :integer, default: 0
  end
end
