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
            "x": 56,
            "y": -64
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
            "x": 56,
            "y": 112
          },
          "size": {
            "width": 624,
            "height": 96
          }
        },
        {
          "id": "2b749d1f-42aa-47e5-83ac-dec35f803f88",
          "type": "basic.info",
          "data": {
            "info": "# Solución ejercicio 28.1: (5 Bitpoints). Caja fuerte con apertura con código de 3 bits\n\nEste es el circuito de la apertura de la **caja fuerte**, que ya conocemos, pero con algunas mejoras. Primero se introduce el **código de 3 bits** por los interruptores externos  \ny se pulsa la **tecla enter** (cargar el dato). Este dato se almacena en **3 biestables D** y se comprueba si es el correcto. El servo se moverá si el código es el **101** (5),  \nsimulando la **apertura de la caja**.  Para cerrar hay que introducir cualquier número diferente de 5 y apretar **enter**\n\nAdemás tiene un **modo de visualización del código**. Por defecto no se muestra el código introducido. Al apretar el pulsador de visualización, el dato guardado en los biestables  \nse muestra en el display. Si se vuelve a apretar el botón se deja de visualizar. Usar un pulsador de cambio",
            "readonly": true
          },
          "position": {
            "x": 56,
            "y": -280
          },
          "size": {
            "width": 1328,
            "height": 152
          }
        },
        {
          "id": "de8bf700-db4d-47d8-92c3-4a9030639d33",
          "type": "basic.info",
          "data": {
            "info": "\nEn este [Vídeo de Youtube](https://www.youtube.com/watch?v=1VyIj9DERws) se muestra un ejemplo de funcionamiento.\n\n[![Click to see the youtube video](http://img.youtube.com/vi/1VyIj9DERws/0.jpg)](https://www.youtube.com/watch?v=1VyIj9DERws)",
            "readonly": true
          },
          "position": {
            "x": 784,
            "y": -80
          },
          "size": {
            "width": 448,
            "height": 256
          }
        }
      ],
      "wires": []
    }
  },
  "dependencies": {}
}