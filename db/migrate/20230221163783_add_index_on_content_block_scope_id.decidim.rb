# frozen_string_literal: true

# This migration comes from decidim (originally 20200401073419)
# This file has been modified by `decidim upgrade:migrations` task on 2025-07-10 12:51:12 UTC
class AddIndexOnContentBlockScopeId < ActiveRecord::Migration[5.2]
  def change
    add_index(
      :decidim_content_blocks,
      [:decidim_organization_id, :scope_name, :scoped_resource_id, :manifest_name],
      name: "idx_decidim_content_blocks_org_id_scope_scope_id_manifest"
    )
  end
end
