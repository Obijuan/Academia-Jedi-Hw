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
            "x": -96,
            "y": -48
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
            "x": -96,
            "y": 128
          },
          "size": {
            "width": 624,
            "height": 96
          }
        },
        {
          "id": "ebc3438e-e7ef-470b-9332-d7233a8e6296",
          "type": "basic.info",
          "data": {
            "info": "# Ejercicio 29.1: (5 Bitpoints). Cinta trasportadora manual de LEDs \n\nSimulación de un **cinta transportadora** en los 8 LEDs de la placa. El avance de  \nla cinta se hace manualmente, mediante un **spiner**. Cada tic generado por el   \nspiner se usa para que los LEDs avancen una posición. El LED que sale por  \nel más significativo vueve a entrar por el menos significativo, en un bucle  \nespacial. Cada vez que hay un tic de avance se genera un sonido de 10ms  \n\nLa **cinta transportadora** se carga apretando un **pulsador externo**. Se enciende un** LED** para  \nindicar que hay un objeto nuevo que se introducirá en la cinta en el siguiente  \ntic de avance. Al entrar, el LED de carga se **apaga**. El objeto que ha entrado  \nse queda dentro de la cinta todo el rato. Se pueden introducir varios objetos\n\nSi la cinta se **para** durante más de **2 segundos**, se emitirá un tono diferente, de 1 segundo  \nde duración, para avisar de que está detenida",
            "readonly": true
          },
          "position": {
            "x": -96,
            "y": -440
          },
          "size": {
            "width": 744,
            "height": 248
          }
        },
        {
          "id": "b2bc857d-2b85-449d-8589-57e4306b1acc",
          "type": "basic.info",
          "data": {
            "info": "\nEn este [Vídeo de Youtube](https://www.youtube.com/watch?v=hFxit9fbsss) se muestra un ejemplo de funcionamiento.\n\n[![Click to see the youtube video](http://img.youtube.com/vi/hFxit9fbsss/0.jpg)](https://www.youtube.com/watch?v=hFxit9fbsss)",
            "readonly": true
          },
          "position": {
            "x": 736,
            "y": -352
          },
          "size": {
            "width": 968,
            "height": 152
          }
        }
      ],
      "wires": []
    }
  },
  "dependencies": {}
}