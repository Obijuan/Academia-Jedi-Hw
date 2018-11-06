{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "fb427f71-8fdd-4962-a4aa-0c01228c2ced",
          "type": "basic.info",
          "data": {
            "info": "**Entregar**:\n\n  -1 Pantallazo del circuito\n  \n  -1 Vídeo del funcionamiento\n  \n  Enviarlos por redes sociales (Twitter, G+) con mención \n  a @Obijuan_cube. El vídeo puede estar en youtube o directamente en el tuit/post\n  ",
            "readonly": true
          },
          "position": {
            "x": 64,
            "y": 216
          },
          "size": {
            "width": 688,
            "height": 144
          }
        },
        {
          "id": "e0e8b6b2-9a0d-41d8-8daf-cfe1f27afd5b",
          "type": "basic.info",
          "data": {
            "info": "**GITHUB**:\n\n  Entrega **obligatoria por Github** (sólo pantallazo, el vídeo\n  no hace falta, para que no ocupe tanto espacio)",
            "readonly": true
          },
          "position": {
            "x": 64,
            "y": 392
          },
          "size": {
            "width": 624,
            "height": 96
          }
        },
        {
          "id": "d627d8c5-a3bd-48ee-9745-8ec1ca0dd0be",
          "type": "basic.info",
          "data": {
            "info": "\nEn este [Vídeo de Youtube](https://www.youtube.com/watch?v=uGArKWjpHUk) se muestra un ejemplo de funcionamiento.\n\n[![Click to see the youtube video](http://img.youtube.com/vi/uGArKWjpHUk/0.jpg)](https://www.youtube.com/watch?v=uGArKWjpHUk)",
            "readonly": true
          },
          "position": {
            "x": 888,
            "y": 32
          },
          "size": {
            "width": 984,
            "height": 104
          }
        },
        {
          "id": "a3acc970-4be9-4e4c-9728-d4aab415fc73",
          "type": "basic.info",
          "data": {
            "info": "# Ejercicio 29.3: (5 Bitpoints). Puerto de entrada y salida en Arduino\n\nImplementar un **puerto de entrada** y de** salida** adicionales para **Arduin**o, mediante **comunicaciones serie síncronas**  \nEl puerto de **entrada** debe estar conectado a un** contador de 8 bits** que cuenta las pasadas que da un **spiner**  \n(las veces que se interrumpe el haz de infrarrojos). Este spiner está simulando un encoder  \nCada vez que el Arduino realice una lectura de este puerto, se le devolverá el valor de este contador  \nEl **puerto de salida** está conectado al **display de 7 segmentos**. Sólo se usarán los **4 bits de menor peso**  \nEl **programa principal de Arduino** deberá leer el **valor del encoder** y mostrar su valor en la **consola serie**.  \nAdemás, deberá sacar por el display de 7 segmentos el dígito decimal (0-9) correspoindinete a la lectura  \ndel enconder. Así, si la cuenta del encoder va por 157, en el display se muestra el dígito 7  \n(Esto hay que hacerlo mediante código en Arduino. Es fácil de hacer con la instrucción sprintf y formato %03d  \n(que almacena un número rellenando con 0s los digitos no usados de mayor peso. Así el dígito de menor peso  \nesta siempre en la posicion 2 del array: cad[2])",
            "readonly": true
          },
          "position": {
            "x": 40,
            "y": -104
          },
          "size": {
            "width": 1288,
            "height": 208
          }
        }
      ],
      "wires": []
    }
  },
  "dependencies": {}
}