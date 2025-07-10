# frozen_string_literal: true

# This migration comes from decidim (originally 20171013124505)
# This file has been modified by `decidim upgrade:migrations` task on 2025-07-10 12:51:12 UTC
class AddVerificationAttachmentToAuthorizations < ActiveRecord::Migration[5.1]
  def change
    change_table :decidim_authorizations do |t|
      t.string :verification_attachment
    end
  end
end
