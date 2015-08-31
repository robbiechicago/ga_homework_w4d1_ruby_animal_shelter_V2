class Shelter

  attr_reader :name
  attr_accessor :clients

  def initialize name
    @name = name
    @clients = []
  end

  def add_client(new_client)
    clients << (new_client)
  end

end