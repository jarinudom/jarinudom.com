# fix cache busting for Hassle stylesheets
# try the original path ("public/") and if not found, try "tmp/".

require 'action_view/helpers/asset_tag_helper'

module ActionView::Helpers::AssetTagHelper
  private
  def rails_asset_id_with_tmp_path(source)
    asset_id = rails_asset_id_without_tmp_path source
    if asset_id.blank?
      org_dir = config.assets_dir
      begin
        config.assets_dir = Rails.root + 'tmp/hassle'
        asset_id = rails_asset_id_without_tmp_path source
      ensure
        config.assets_dir = org_dir
      end
    end
    asset_id
  end
  alias_method_chain :rails_asset_id, :tmp_path
end
