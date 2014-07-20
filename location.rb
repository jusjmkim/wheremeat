class Location

  def self.create_table
    migrate = <<-SQL
      CREATE TABLE IF NOT EXISTS locations(
          id INTEGER PRIMARY KEY,
          latitude FLOAT,
          longitude FLOAT,
          map_name STRING
        );
    SQL
    DB[:conn].execute(migrate)
  end

  def self.drop_table
    drop = <<-SQL
      DROP TABLE IF EXISTS locations;
    SQL
    DB[:conn].execute(drop)
  end


end