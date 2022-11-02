# add the Artist class here
# db/migrate/20210716095220_create_artists.rb

ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "db/artists.sqlite"
)

class Artist < ActiveRecord::Base
end

class AddFavoriteFoodToArtists < ActiveRecord::Migration[6.1]
    def change
      add_column :artists, :favorite_food, :string
    end
  end

# sql = <<-SQL
#   CREATE TABLE IF NOT EXISTS artists (
#   id INTEGER PRIMARY KEY,
#   name TEXT,
#   genre TEXT,
#   age INTEGER,
#   hometown TEXT,
#   favorite_flower TEXT
#   )
# SQL
# ActiveRecord::Base.connection.execute(sql)

# class CreateArtists < ActiveRecord::Migration[6.1]
#     def change
#       create_table :artists do |t|
#         t.string :name
#         t.string :genre
#         t.integer :age
#         t.string :hometown
#         # the id column is gemerated automatically for every table! no need to specify it here.
#       end
#     end
#   end