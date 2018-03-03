module Calib
  module Net
    class NetworkUtil
      def self.match_ip_address(str)
        /^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/ =~ str
      end

      def self.ip_address?(str)
        self.match_ip_address(str) == 0
      end

      def self.match_url_without_domain(str)
        /^https?\:\/\/(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)/ =~ str
      end

      def self.url_without_domain?(str)
        self.match_url_without_domain(str) == 0
      end
    end
  end
end
