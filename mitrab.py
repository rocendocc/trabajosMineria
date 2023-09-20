import csv

with open('calificaciones.csv', mode='w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(['Matrícula','Matemáticas','Historia','Física','Química','Lengua'])
    
    matricula = input("Ingrese la matrícula del estudiante: ")
    matematicas = float(input("Ingrese la calificación de Matemáticas: "))
    if matematicas >=0 and matematicas<=10:
        historia = float(input("Ingrese la calificación de Historia: "))
        if historia >=0 and historia <=10:
            fisica = float(input("Ingrese la calificación de Física: "))
            if fisica >=0 and fisica <=10:
                quimica = float(input("Ingrese la calificación de Química: "))
                if quimica>=0 and quimica <=10:
                    lengua = float(input("Ingrese la calificación de Lengua: "))
                    writer.writerow([matricula, matematicas, historia, fisica, quimica, lengua])
                    print("Datos guardados en 'calificaciones.csv'")
                else:
                    print("Calificacion no valida")
            else:
                print("Calificacion no valida")
        else:
            print("Calificacion no valida")
    else:
        print("Calificacion no valida")

