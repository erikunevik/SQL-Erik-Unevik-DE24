from database import DatabaseDataFrame
from constants import DATABASE_PATH # Gives conection to the database

# This is the interfance we will use
class QueryDatabase: 
    def __init__(self, sql_query) -> None:
        with DatabaseDataFrame(DATABASE_PATH) as db:
            self.df = db.query(sql_query)
