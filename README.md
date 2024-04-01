# ft_printf Project

## Requisitos

1. No implementes la gestión del buffer del printf() original.
2. Deberás implementar las siguientes conversiones: c, s, p, d, i, u, x, X, %.
3. Tu función se comparará con el printf() original.
4. Tienes que usar el comando ar para crear tu librería. El uso de libtool está prohibido.
5. Tu archivo libftprintf.a deberá ser creado en la raíz de tu repositorio.

## Conversiones implementadas

- `%c`: Imprime un solo carácter.
- `%s`: Imprime una cadena de caracteres (string) según la definición por defecto en C.
- `%p`: Imprime un puntero `void *` dado como argumento en formato hexadecimal.
- `%d`: Imprime un número decimal (base 10).
- `%i`: Imprime un entero en base 10.
- `%u`: Imprime un número decimal (base 10) sin signo.
- `%x`: Imprime un número hexadecimal (base 16) en minúsculas.
- `%X`: Imprime un número hexadecimal (base 16) en mayúsculas.
- `%%`: Para imprimir el símbolo del porcentaje.

## Instrucciones de compilación

1. Clona este repositorio.
2. Ejecuta el comando `make` para compilar el proyecto.
3. La librería `libftprintf.a` se generará en la raíz del repositorio.

## Uso

Para usar la función `ft_printf()`, incluye el archivo de cabecera `ft_printf.h` en tu proyecto y enlaza con `libftprintf.a`.

```c
#include "ft_printf.h"
        
int main() {
    ft_printf("Hello, world!\n");
    return 0;
}
