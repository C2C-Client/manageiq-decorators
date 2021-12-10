require "manageiq/decorators/engine"

module ManageIQ
  module Decorators
    def self.root
      Engine.root
    end
  end
end
