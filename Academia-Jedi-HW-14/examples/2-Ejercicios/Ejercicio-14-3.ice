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
          "id": "c14fa047-7394-4cfd-8c1e-b806af0993d1",
          "type": "basic.info",
          "data": {
            "info": "**Ejercicio 14.3**: (5 Bitpoints). **Franky en modo automático y manual**\n\nEste es un ejercicio de **COMPLEJIDAD MEDIA**. Hay que entender bien los detalles del enunciado para \nimplementarlo\n\nFranky tiene los **siguientes elementos** que podemos controlar:\n* Un **servo** que le permite mirar hacia un lado u otro\n* **Dos leds externos** para emitir los \"rayos lásers\" (sus ojos)\n* Un **zumbador** para el sonido de los rayos lásers\n\nPara la **emisión de los rayos láser**, ambos LEDs parpadean a una frecuencia de **10Hz**. \nEl **sonido de los lásers** es un **tono de 1Khz** activado a una frecuencia de **10Hz**\n\n**Franky** debe funcionar en **dos modos**, según la posición del **interruptor externo 1**.  \nEn el **modo automático**, franky gira su cabeza de lado a lado, estando **2 segundos** en cada\nlado. En uno de los dos lados (el que se quiera), emitirá una ráfaga de rayos láser\npor sus ojos, y emitirá el sonido correspondiente (descrito arriba)\n\nEn el **modo manual**, la posición del cuello está controlada por el **interruptor externo 2**, y \ncada vez que se apriete un **pulsador externo**, se emitirán las ráfagas de los lásers y \nsu correspondiente sonido\n\nCuando Franky está en modo automático, **NO HARÁ** caso de los controles manuales: Pulsador e interruptor 2\n\nEl funcionamiento se puede ver en este vídeo en Youtube: [https://www.youtube.com/watch?v=SWdSmQsTVTk](https://www.youtube.com/watch?v=SWdSmQsTVTk)",
            "readonly": true
          },
          "position": {
            "x": 40,
            "y": -304
          },
          "size": {
            "width": 848,
            "height": 432
          }
        },
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
            "info": "**GITHUB**:\n\n  1 Bitpoint adicional si lo entregáis por Github (sólo pantallazo, el vídeo\n  no hace falta, para que no ocupe tanto espacio)",
            "readonly": true
          },
          "position": {
            "x": 40,
            "y": 272
          },
          "size": {
            "width": 624,
            "height": 96
          }
        }
      ],
      "wires": []
    },
    "state": {
      "pan": {
        "x": 141.3571,
        "y": 242.2143
      },
      "zoom": 0.6652
    }
  },
  "dependencies": {}
}