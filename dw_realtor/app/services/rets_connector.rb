class RetsConnector

  def initialize
    @client = RETS::Client.login(:url => ENV["rets_server_test"], 
                                  :username => ENV["rets_username_test"],
                                  :password => ENV["rets_password_test"])
  end

  def search

    @client.search(:search_type => :Property, :class => :RES, :query => "(ListPrice=50000-)") do |data|
      puts data

  # RETS data in key/value format, as COMPACT-DECODED
    end
  end

end