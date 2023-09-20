import mysql.connector
conexion = mysql.connector.connect (user = 'root', password = '', host = 'localhost', database = 'banco')
cursor  = conexion.cursor()
sql = "UPDATE cliente SET status = '1' WHERE id ='3'"
cursor.execute(sql)
conexion.commit()
print("Regitro modificado")
for item in cursor:
    print(item)