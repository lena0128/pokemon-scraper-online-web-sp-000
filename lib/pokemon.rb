class Pokemon
attr_accessor :name, :type, :db
attr_reader :id

def initialize(id:nil, name:, type:, db:)
  @id = id
  @name = name
  @type = type
  @db = db
end

def self.save(name, type, db)
  sql = <<-SQL
    INSERT INTO pokemon (name, type)
    VALUES (?, ?)
  SQL

  @id = db.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
end

def self.find(id, db)
    db.execute("SELECT id, name, type FROM pokemon WHERE id = ?", id).flatten
  end

end
