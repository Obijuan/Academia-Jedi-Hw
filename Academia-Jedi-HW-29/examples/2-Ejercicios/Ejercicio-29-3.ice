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
            "info": "\nEn este [Vídeo de Youtube](https://www.youtube.com/watch?v=GNUIOgodDQY) se muestra un ejemplo de funcionamiento. Primero  \nse envía el número 3, y el receptor muestra el dato recibido en el display de 7 segmentos. Luego se quita el cable de  \ntranmisión y se vuelve a enviar. Se recibe 0. Se coloca otra vez el cable de transmisión y se envía el número 5\n\n\n[![Click to see the youtube video](http://img.youtube.com/vi/GNUIOgodDQY/0.jpg)](https://www.youtube.com/watch?v=GNUIOgodDQY)",
            "readonly": true
          },
          "position": {
            "x": 848,
            "y": 96
          },
          "size": {
            "width": 968,
            "height": 152
          }
        },
        {
          "id": "a3acc970-4be9-4e4c-9728-d4aab415fc73",
          "type": "basic.info",
          "data": {
            "info": "# Ejercicio 28.3: (5 Bitpoints). Transmisión y recepción de un dato de 3 bits en serie\n\nDiseeñar un circuito que simula un sistema de transmisión entre un circuito emisor y uno receptor.  El envío de datos del tranmisor al receptor se hace en serie, bit a bit, a través de un  \ncable externo. Este cable sale por un pin de la FPGA, y vuelve a entrar por otro pin para llegar al receptor. Lo hacemos así para enfatizar el hecho de que los datos se transmiten bit a bit, por  \nun cable.\n\nLos datos que se envían son de 3 bits. Este dato se introduce en el transmisor a través de 3 interruptores externos, y al pulsar el botón de load se captura y se muestra en 3 LEDs. A continuación, \nse desplazan para su envío serie. Cada vez que se aprieta el botón 2 se desplaza un bit.\n\nEl receptor recibe el dato en serie y cuando se aprieta el botón de cargar se guarda el dato en otros 3 Biestables, cuyo contenido se visualiza en el display de 7 segmentos\n\nAsí, para transmitir el número 3, por ejemplo, los pasos serían los siguientes:\n\n* **Paso 1**: Introducir el número 3 en binario en los Switches\n* **Paso 2**: Apretar el botón de load. El número cargado se muestra en binario en los LEDs\n* **Paso 3**: Apretar 3 veces el pulsador de desplazamiento\n* **Paso 4**: Apretar de nuevo el botón de load para mostrar el dato recibido en el Display",
            "readonly": true
          },
          "position": {
            "x": 48,
            "y": -176
          },
          "size": {
            "width": 1432,
            "height": 272
          }
        }
      ],
      "wires": []
    }
  },
  "dependencies": {}
}