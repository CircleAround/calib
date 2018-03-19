RSpec.describe Calib::Network::Util do
  describe '.ip_address?' do
    it  { expect(Calib::Network::Util.ip_address? '192.168.0.1').to be true }
    it  { expect(Calib::Network::Util.ip_address? 'test').to be false }
  end

  describe '.url_with_direct_ip_address?' do
    it  { expect(Calib::Network::Util.url_with_direct_ip_address? 'http://127.0.0.1').to be true }
    it  { expect(Calib::Network::Util.url_with_direct_ip_address? 'http://example.com').to be false }

    it  { expect(Calib::Network::Util.url_with_direct_ip_address? 'https://127.0.0.1').to be true }
    it  { expect(Calib::Network::Util.url_with_direct_ip_address? 'https://example.com').to be false }

    it  { expect(Calib::Network::Util.url_with_direct_ip_address? 'http://127.0.0.1/test/test').to be true }
    it  { expect(Calib::Network::Util.url_with_direct_ip_address? 'http://example.com/129.1.1.1').to be false }
  end  
end
