import mysql.connector
conexion = mysql.connector.connect (user = 'root', password = '', host = 'localhost', database = 'banco')
cursor  = conexion.cursor()
sql = "INSERT INTO cliente (nombrecliente,direccion,ciudadcliente,tipocliente,status) VALUES (%s,%s,%s,%s,%s)"
val = ("Vicente","C. Hidaldo 546, San Pedro, Monterrey, Nuevo Leon","Monterrey","2","1")
cursor.execute(sql,val)
conexion.commit()
print("Regitro insertado")
for item in cursor:
    print(item)