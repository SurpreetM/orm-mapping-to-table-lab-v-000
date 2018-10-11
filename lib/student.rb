class Student
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  attr_accessor :name, :grade
  attr_reader :id

  def initialize (name, grade, id = nil)
    @name = name
    @grade = grade
    @id = id
  end

  def self.create_table
    sql = <<- TEST
      CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY key,
      name TEXT,
      grade TEXT
      )
      TEST
    DB[:conn].execute(sql)
    end




end
