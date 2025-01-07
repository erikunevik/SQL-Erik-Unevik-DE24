
# from test_constants import DATA_PATH, DATABASE_PATH
# from database import Database

# def setup_schema():
#     with Database(DATABASE_PATH) as db:
#         db.query(f"CREATE SCHEMA IF NOT EXISTS supplier_invoice;")

# def ingest_data():
#     for csv_path in (DATA_PATH.glob("Lev*.csv")):
#         invoice_name = f"invoice_{csv_path.name.split('.')[0][-6:]}"
#         print(invoice_name)

#         with Database(DATABASE_PATH) as db:
#             db.query(f""
                     
#                      CREATE TABLE IF NOT EXISTS supplier_invoice.{invoice_name}
#                      AS 
#                      SELECT 
#                          * 
#                      FROM 
#                         read_csv_auto('{csv_path}', types={{'Organisationsnummer': 'VARCHAR'}});
#             "")

# if __name__ == '__main__':
#     setup_schema()
#     ingest_data()


from test_constants import DATA_PATH, DATABASE_PATH
from database import Database

def setup_schema():
    with Database(DATABASE_PATH) as db:
        db.query(f"CREATE SCHEMA IF NOT EXISTS supplier_invoice;")

def ingest_data():
    for csv_path in DATA_PATH.glob("Lev*.csv"): ## glob är en metod för att hita flera filer samtidigt? 
        invoice_name = f"invoice_{csv_path.name.split ('.')[0][-6:]}" # Plockar bort allt innan siffrorna. 
        print(invoice_name)
        ## print(DATA_PATH.glob("Lev*csv")) ## will run generator object name to get the data
        

        with Database(DATABASE_PATH) as db:
            # Ensure csv_path is converted to string
            db.query(f"""
                CREATE TABLE IF NOT EXISTS supplier_invoice.{invoice_name}
                AS 
                SELECT * 
                FROM read_csv_auto('{str(csv_path)}', types={{'Organisationsnummer': 'VARCHAR'}});
            """)

if __name__ == '__main__':
    setup_schema()
    ingest_data()







