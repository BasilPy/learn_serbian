import psycopg2
import os
import json
from data_tmp import verb

def everything_is_ok(name):
    conn = psycopg2.connect(host='localhost', dbname=os.environ["SQL_db_name"], user='postgres',
                            password=os.environ["SQL_password"], port=5433)
    cur = conn.cursor()
    cur.execute("""SELECT COUNT(*) FROM customer""")
    print(cur.fetchone())

    conn.commit()
    cur.close()
    conn.close()
    print(f'THIS IS {name}')



if __name__ == '__main__':

   everything_is_ok('OK')


