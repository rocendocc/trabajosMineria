while True:
    try:
        numero = float(input("Ingrese un número: "))
    except ValueError:
        print("La opción que ingreso no es un numero")
    else:
        print("El numero es válido")
        break
