class Pokemon
  attr_accessor :name, :type, :hp, :db
  attr_reader :id

  def initialize(id=nil, name, type, hp, db)
    @id = id
    @name = name
    @type = type
    @hp = hp
    @db = db
  end


end
