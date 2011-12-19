require 'rubyhorn/rest_client/common'
require 'rubyhorn/rest_client/info'
require 'rubyhorn/rest_client/ingest'

module Rubyhorn
  class MatterhornClient
    include Rubyhorn::RestClient::Common
    include Rubyhorn::RestClient::Info
    include Rubyhorn::RestClient::Ingest

    # repository configuration (see #initialize)
    attr_reader :config

    def initialize options = {}
      @config = options
      login
    end

  end
end