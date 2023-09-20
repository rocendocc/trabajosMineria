#from csv import reader

import csv


with open('C:\\Users\\roces\\OneDrive\\Escritorio\\trabajo\\datos2.csv', "r") as archivo:
    documento = csv.reader(archivo, delimiter=';', quotechar='"')

    for fila in documento:
        # ' '.join(fila)
        #print(fila)
        print(' '.join(fila))
        #print(fila[0]+ " " + fila[1])

    archivo.close()
