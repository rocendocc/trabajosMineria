import mysql.connector
import random

conexion = mysql.connector.connect (user = 'root', password = '', host = 'localhost', database = 'banco')
cursor  = conexion.cursor()
cont = 1001
for item in range(10):
    sql = f"""INSERT INTO deposito 
    SELECT {cont} numdeposito, 
    NOW() - INTERVAL ROUND(RAND() * 10000) HOUR fechadeposito,
    ROUND(RAND() * 100000) importedeposito, 
    ROUND(RAND() * 2) + 1 tipomoneda, 
    ROUND(RAND() * 1) + 1 formadeposito, 
    ROUND(RAND() * (SELECT MAX(c.id-1) FROM cliente c)+1) idcliente, 
    ROUND(RAND() * (SELECT MAX(s.id-1) FROM sucursal s)+1) idsucursal, 
    ROUND(RAND() * (SELECT MAX(b.id-1) FROM banquero b)+1) idbanquero, 
    NOW() - INTERVAL ROUND(RAND() * 10000) HOUR fecharegistro"""
    cursor.execute(sql)
    conexion.commit()
    cont += 1
print("Registros insertados") 

cursor.close()
conexion.close()

#"""INSERT INTO deposito 
#   SELECT ROUND(RAND()*1000) numdeposito, 
#   NOW() - INTERVAL ROUND(RAND() * 10000) HOUR fechadeposito,
#   ROUND(RAND() * 100000) importedeposito, 
#   ROUND(RAND() * 2) + 1 tipomoneda, 
#   ROUND(RAND() * 1) + 1 formadeposito, 
#   ROUND(RAND() * (SELECT MAX(c.id-1) FROM cliente c)+1) idcliente, 
#   ROUND(RAND() * (SELECT MAX(s.id-1) FROM sucursal s)+1) idsucursal, 
#   ROUND(RAND() * (SELECT MAX(b.id-1) FROM banquero b)+1) idbanquero, 
#   NOW() - INTERVAL ROUND(RAND() * 10000) HOUR fecharegistro"""
