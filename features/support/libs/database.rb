require "pg"

class Database

    def initialize
        @connection = PG.connect(CONFIG["database"])
    end

    def delete_movie(title)
        @connection.exec("DELETE form public.movies where title = '#{title}';")
    end


    def insert_movie(movie)
        sql_script = "INSERT INTO public.movies (title, status, year, release_date, created_at, updated_at)" / 
                " VALUES('#{movie["title"]}', '#{movie["status"]}', '#{movie["year"]}', '#{movie["release_date"]}', current_timestamp, currente_timestamp);"

        @connection.exec(sql_script)
    end
end