
import duckdb
from test_constants import DATABASE_PATH

# För att stänga duckdb databasen via koden så kör man with statemetns via context mangament kod.  Med with statment så är man inne i databasen
# och kan justera i den. 

class Database:

    def __init__(self, db_path) -> None:
        self.db_path = db_path  
        self.connection = None

    def __enter__(self):
        self.connection = duckdb.connect(self.db_path)
        return self

    def query(self, query):
        return self.connection.execute(query).fetchall()

    def __exit__(self, exc_type, exc_value, traceback): # De här hanterar errors. 
        if self.connection:
            self.connection.close()

if __name__ == '__main__':  # Python skapar alltid variabeln __name__ som döps till '__main__', så därför körs det kommandot. 
    print(f"Connecting to database at: {DATABASE_PATH}")
    with Database(DATABASE_PATH) as db:
        query1 = db.query("SELECT * FROM information_schema.schemata;")

    print(query1)
    




    
 
 
   





