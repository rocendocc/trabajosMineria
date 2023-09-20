import mysql.connector
conexion = mysql.connector.connect (user = 'root', password = '', host = 'localhost', database = 'banco')
cursor  = conexion.cursor()
sql = "SELECT * FROM cliente"
cursor.execute(sql)

for item in cursor:
    print(item)