import os

# Solicitar al usuario el directorio en el que desea ejecutar el comando
print("")

directory = input("Por favor, ingresa la carpeta en la que deseas ejecutar el comando: ")

print("")

# Confirmar con el usuario si desea eliminar los archivos ._* y .DS_Store
confirmation = input("¿Estás seguro de que deseas eliminar los archivos ._* y .DS_Store? (si/no): ")

print("")

if confirmation.lower() == "si":
    # Construir y ejecutar el comando find y rm
    find_command = f"sudo find {directory} -type f -name '._*' -exec rm {{}} \\; && sudo find {directory} -type f -name '.DS_Store' -exec rm {{}} \\;"
    os.system(find_command)
    print("Archivos ._* y .DS_Store eliminados con éxito.")
else:
    print("El comando no se ejecutó. Has seleccionado 'no'.")

