{
  "version": "1.1",
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
          "id": "08b55ee3-890d-403c-9792-da4254a88da4",
          "type": "basic.info",
          "data": {
            "info": "**Entregar**:\n\n  -1 Pantallazo del circuito (2 Bitpoints)\n  \n  -1 Vídeo del funcionamiento (2 Bitpoints)\n  \n  Enviarlos por redes sociales (Twitter, G+) con mención \n  a @Obijuan_cube. El vídeo puede estar en youtube o directamente en el tuit/post\n  ",
            "readonly": true
          },
          "position": {
            "x": 40,
            "y": 64
          },
          "size": {
            "width": 688,
            "height": 144
          }
        },
        {
          "id": "2e54c9a0-0c84-4885-8224-0066fb210c8b",
          "type": "basic.info",
          "data": {
            "info": "**GITHUB**:\n\n  La entrega es obligatoria por github (1 bitpoint)",
            "readonly": true
          },
          "position": {
            "x": 40,
            "y": 232
          },
          "size": {
            "width": 592,
            "height": 72
          }
        },
        {
          "id": "e8b43c24-b22c-45e0-b00f-866f4c79715d",
          "type": "basic.info",
          "data": {
            "info": "**Ejercicio 22.2:** (5 Bitpoints) Icebot San Fermín\n\nHacer un circuito que implemente el comportamiento reactivo de **embestir** en el Icebot  \nSe conectan dos sensores de **Infrarrojos** para detectar el objeto delante del icebot  \nEl comportamiento de embestir se define mediante la siguiente **tabla de verdad**:\n\n| IR izquierdo | IR derecho  | Movimiento del icebot  |\n|--------------|-------------|------------------------|\n| No detecta  |  No detecta  |  Parado                |\n| No detecta  |  Detecta     |  Giro izquierda (Arco) |\n| Detecta     |  No detecta  |  Giro derecha (arco)   |\n| Detecta     |  Detecta     |  Adelante              |\n\nLos valores a introducir en la tabla dependen de los sensores IR utilizados. Algunos  \ndevuelven 1 al detectar un objeto delante y 0 cuando NO. Otros se comportan al  \nrevés (lógica negativa)\n\nUtilizar el controlador **Icemove4**. Y un **circuito combinacional de 2 entradas y 2 salidas**  ",
            "readonly": true
          },
          "position": {
            "x": 32,
            "y": -392
          },
          "size": {
            "width": 768,
            "height": 312
          }
        },
        {
          "id": "c8d3be41-02fc-4c5a-9f34-887c116d8a0d",
          "type": "basic.info",
          "data": {
            "info": "El **comportamiento** del icebot se muestra en  \n[Este vídeo de Youtube](https://www.youtube.com/watch?v=Wr5cy3I2vWA)",
            "readonly": true
          },
          "position": {
            "x": 672,
            "y": -392
          },
          "size": {
            "width": 536,
            "height": 64
          }
        },
        {
          "id": "69fcf525-9781-4a37-bf3a-ecc6f7793148",
          "type": "basic.info",
          "data": {
            "info": "[![Click to see the youtube video](http://img.youtube.com/vi/Wr5cy3I2vWA/0.jpg)](https://www.youtube.com/watch?v=Wr5cy3I2vWA)",
            "readonly": true
          },
          "position": {
            "x": 648,
            "y": -328
          },
          "size": {
            "width": 504,
            "height": 128
          }
        }
      ],
      "wires": []
    }
  },
  "dependencies": {}
}