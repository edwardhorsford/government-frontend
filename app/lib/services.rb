require 'gds_api/content_store'

module Services
  def self.content_store
    @content_store ||= GdsApi::ContentStore.new(
      Plek.current.find("content-store"),
      # Disable caching to avoid caching a stale max-age in the cache control
      # headers, which would cause this app to set the wrong max-age on its
      # own responses
      disable_cache: true,
    )
  end
end
