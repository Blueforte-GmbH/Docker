import mysql.connector

if __name__ == "__main__":
    o_conn = mysql.connector.connect(user='vra', password='mdapass', database='test_sql_database')
    o_cursor = o_conn.cursor()

    s_query = "SELECT * FROM auto_types"

    o_cursor.execute(s_query)

    for a_row in o_cursor:
        print(a_row)
    
    print("Closing connection to database.....")
    o_cursor.close()
    o_conn.close()
