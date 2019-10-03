class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(id = nil, name = nil, type = nil, db = nil)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO db (name ,type) VALUES (?, ? )")
  end
  
  def self.find(name)

  end
end
