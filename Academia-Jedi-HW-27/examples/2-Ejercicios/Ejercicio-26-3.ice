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
          "id": "08b55ee3-890d-403c-9792-da4254a88da4",
          "type": "basic.info",
          "data": {
            "info": "**Entregar**:\n\n  -1 Pantallazo del circuito\n  \n  -1 Vídeo del funcionamiento\n  \n  Enviarlos por redes sociales (Twitter, G+) con mención \n  a @Obijuan_cube. El vídeo puede estar en youtube o directamente en el tuit/post\n  ",
            "readonly": true
          },
          "position": {
            "x": 416,
            "y": 184
          },
          "size": {
            "width": 688,
            "height": 144
          }
        },
        {
          "id": "df40451e-59d3-4af3-8ab9-1245aaf6cee6",
          "type": "basic.info",
          "data": {
            "info": "**GITHUB**:\n\n  Entrega obligatoria por Github (sólo pantallazo, el vídeo\n  no hace falta, para que no ocupe tanto espacio)",
            "readonly": true
          },
          "position": {
            "x": 424,
            "y": 360
          },
          "size": {
            "width": 624,
            "height": 96
          }
        },
        {
          "id": "00ae9ef5-fd22-4227-a247-d64c379bd5a0",
          "type": "basic.info",
          "data": {
            "info": "**Ejercicio 26.3:** (10 Bitpoints). Franky automatizado\n\nDiseñar un circuito controlador de Franky, para que realice  \nla siguiente secuencia automatizada, que arranca al apretar  \nun pulsador externo:\n\n* Inicialmente Franky está mirando hacia la izquierda\n\n* **Etapa 1**: Primero emite una ráfaga en los ojos de Franky  \ndurante 2 segundos. La frecuencia de la ráfaga es de 4Hz y el  \ntiempo de encendido de los LEDs de 50ms  \n\n* **Etapa 2**: Gira la cabeza hacia la derecha. Se queda esperando  \ndurante 2 segundos, sin hacer nada más\n\n* **Etapa 3**: Emite la misma ráfaga de la Etapa 1, junto a  \nuna ráfaga sonora, enviando un tono de 800Hz modulado a 10Hz.  \nEsta etapa dura 3 segundos\n\n* Al terminar la Etapa 3 vuelve al estado original de reposo",
            "readonly": true
          },
          "position": {
            "x": -96,
            "y": -248
          },
          "size": {
            "width": 624,
            "height": 328
          }
        },
        {
          "id": "8574fdab-5254-4a6e-a5fc-786ea43d1a10",
          "type": "basic.info",
          "data": {
            "info": "El funcionamiento se muestra en este [Vídeo de Youtube](https://www.youtube.com/watch?v=6Ch4JIVi4cg)\n\n[![Click to see the youtube video](http://img.youtube.com/vi/6Ch4JIVi4cg/0.jpg)](https://www.youtube.com/watch?v=6Ch4JIVi4cg)",
            "readonly": true
          },
          "position": {
            "x": 408,
            "y": -256
          },
          "size": {
            "width": 776,
            "height": 256
          }
        },
        {
          "id": "10cb7da9-8d91-45e5-9ddd-f7633e3612dc",
          "type": "basic.info",
          "data": {
            "info": "**Consejos**: La dificultad de este ejericio es mayor  \nHay que usar 3 temporizadores y 1 biestable  \nHay que combinar lo aprendido en este tutorial y en el de  \nbiestables",
            "readonly": true
          },
          "position": {
            "x": -104,
            "y": 176
          },
          "size": {
            "width": 464,
            "height": 96
          }
        }
      ],
      "wires": []
    }
  },
  "dependencies": {}
}