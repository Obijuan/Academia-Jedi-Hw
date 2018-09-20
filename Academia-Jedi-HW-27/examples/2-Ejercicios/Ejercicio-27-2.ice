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
          "id": "bc54cb04-4917-46d7-8947-45f1b2f99768",
          "type": "basic.info",
          "data": {
            "info": "**Entregar**:\n\n  -1 Pantallazo del circuito\n  \n  -1 Vídeo del funcionamiento\n  \n  Enviarlos por redes sociales (Twitter, G+) con mención \n  a @Obijuan_cube. El vídeo puede estar en youtube o directamente en el tuit/post\n  ",
            "readonly": true
          },
          "position": {
            "x": 240,
            "y": 376
          },
          "size": {
            "width": 688,
            "height": 144
          }
        },
        {
          "id": "5e8fed07-400b-43d5-a527-49c21b3d0483",
          "type": "basic.info",
          "data": {
            "info": "**GITHUB**:\n\n  Entrega **obligatoria por Github** (sólo pantallazo, el vídeo\n  no hace falta, para que no ocupe tanto espacio)",
            "readonly": true
          },
          "position": {
            "x": 248,
            "y": 560
          },
          "size": {
            "width": 624,
            "height": 96
          }
        },
        {
          "id": "55c5be9a-6cba-4769-8caa-d5b0c5ef7dec",
          "type": "basic.info",
          "data": {
            "info": "**Ejercicio 27.2:** (5 Bitpoints). Alarma despertador\n\nDiseñar un **reloj digital con alarma**, de manera que al alcanzar la hora indicada se **dispare la alarma**.  \nPara hacerlo fácil, el reloj sólo medirá **segundos**. Tendrá **2 dígitos**, por lo que sólo contará 1 minuto:  \nde 00 a 59 segundos. La alarma se debe disparar cuando el **segundero es 12**, y una vez disparada seguirá  \nsonando hasta que se apriete el **botón de paro**. Cuando reloj llega a 59, vuelve a empear desde  \n0, por lo que si la alarma estaba parada, volverá a sonar al llegar otra vez a 12 (es decir, que sonará cada  \nminuto). El reloj tendrá también un **botón de reset**, para llevar al sistema a su estado inicial. Para el  \nsonido de la alarma se puede usar cualquier pitido. También se puede usar el bloque **Sirena** de la colección.  \nColocar también un **LED** que se encenderá mientras las alarma suena  \n\n**Consejo**. Para disparar la alarma hay que comparar si los dígitos son 1 y 2. Utilizar tablas de verdad para  \nla implementación de estos circuitos comparadores",
            "readonly": true
          },
          "position": {
            "x": 240,
            "y": 80
          },
          "size": {
            "width": 864,
            "height": 240
          }
        },
        {
          "id": "8c0ca732-57f1-47e6-a1f3-000aa159a829",
          "type": "basic.info",
          "data": {
            "info": "El funcionamiento se muestra en este [Vídeo de Youtube]([Vídeo en Youtube]https://www.youtube.com/watch?v=b_HTQYukm5Q):\n\n[![Click to see the youtube video](http://img.youtube.com/vi/b_HTQYukm5Q/0.jpg)](https://www.youtube.com/watch?v=b_HTQYukm5Q)",
            "readonly": true
          },
          "position": {
            "x": 1008,
            "y": 104
          },
          "size": {
            "width": 736,
            "height": 136
          }
        }
      ],
      "wires": []
    }
  },
  "dependencies": {}
}