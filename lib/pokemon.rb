class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(id = nil, name = nil, type = nil, db = nil)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(name, type, db)
    sql = <<-SQL
    INSERT INTO db (name ,type) VALUES (?, ? )
    SQL
    
    db.execute(sql, name, type)
  end
  
  def self.find(name)

  end
end
