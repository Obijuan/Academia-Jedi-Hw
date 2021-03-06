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
            "info": "**Entregar**:\n\n  -1 Pantallazo del circuito (2 Bitpoints)\n  \n  -1 Vídeo del funcionamiento (2 Bitpoints)\n  \n  Enviarlos por redes sociales (Twitter, G+) con mención \n  a @Obijuan_cube. El vídeo puede estar en youtube o directamente en el tuit/post\n  ",
            "readonly": true
          },
          "position": {
            "x": 40,
            "y": 120
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
            "x": 40,
            "y": 296
          },
          "size": {
            "width": 624,
            "height": 96
          }
        },
        {
          "id": "8574fdab-5254-4a6e-a5fc-786ea43d1a10",
          "type": "basic.info",
          "data": {
            "info": "El funcionamiento se muestra en este [video de youtube](https://www.youtube.com/watch?v=YHQ2nBD1S8s)",
            "readonly": true
          },
          "position": {
            "x": 824,
            "y": -80
          },
          "size": {
            "width": 616,
            "height": 32
          }
        },
        {
          "id": "beb7afb2-43ea-4102-becb-d4b8dbb1fdcc",
          "type": "basic.info",
          "data": {
            "info": "[![Click to see the youtube video](http://img.youtube.com/vi/YHQ2nBD1S8s/0.jpg)](https://www.youtube.com/watch?v=YHQ2nBD1S8s)",
            "readonly": true
          },
          "position": {
            "x": 824,
            "y": -32
          },
          "size": {
            "width": 608,
            "height": 48
          }
        },
        {
          "id": "2acc4257-e08f-4920-a328-641bfed291a4",
          "type": "basic.info",
          "data": {
            "info": "**Solución ejercicio 25.2:** (5 Bitpoints). Alarma de presencia\n\nSistema de alarma de detección de intrusos. Se usarán **dos sensores IR** para detectar la  \nllegada de un intruso. Cuando cualquiera de los dos sensores se active, la alarma se  \n**disparará** y empezarán a sonar dos tonos, de 1Khz y 2Khz alternativamente a la frecuencia  \nde 4Hz, y dos LEDs parpadearán intermitentemente a 2Hz. La alarma  \nestará sonando hasta que se **desactive**. Para su desactivación será necesario introducir  \nuna **clave de 3 bits** mediante **3 interruptores externos** y apretar el **pulsador de desactivación**  \nEl código de desactivación es **101**",
            "readonly": true
          },
          "position": {
            "x": 48,
            "y": -96
          },
          "size": {
            "width": 784,
            "height": 144
          }
        }
      ],
      "wires": []
    }
  },
  "dependencies": {}
}