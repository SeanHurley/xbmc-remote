require "httparty"

module XBMC
  class Remote
    attr_accessor :address

    def initialize(xbmc_address)
      self.address = xbmc_address
    end

    def send_method(method_name, params={})
      HTTParty.post(base_address,
        :body => {:method => method_name, :params => params, :jsonrpc => "2.0",}.to_json,
        :headers => { 'Content-Type' => 'application/json' },
      )
    end

    def methods
      response = HTTParty.get(base_address)
      response["methods"].map { |method_name, method| method_name }
    end

    private
    def base_address
      return @base_address if defined? @base_address
      @base_address = URI.join(address, "jsonrpc")
    end
  end
end
