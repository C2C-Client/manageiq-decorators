module ManageIQ
  module Decorators
    class Engine < ::Rails::Engine
      config.autoload_paths << root.join('lib').to_s
      config.assets.paths << root.join('app', 'assets', 'images').to_s

      def self.vmdb_plugin?
        true
      end

      def self.plugin_name
        _('Decorators')
      end
    end
  end
end
