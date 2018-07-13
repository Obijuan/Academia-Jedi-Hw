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
            "x": 32,
            "y": 40
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
            "x": 32,
            "y": 208
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
            "info": "**Ejercicio 22.3:** (5 Bitpoints)  Control manual del Icebot\n\nDiseñar un circuito de control de Icebot, que tenga **3 entradas**: una  \nserá un **interruptor**, y las otras **dos pulsadores**. El interruptor  \nselecciona el **modo** de movimiento del icebot: Directo e inverso.  \n\nEn el **modo directo** controlamos el icebot con los dos pulsadores. Con uno  \n**gira a la derecha**, con otro a la **izquierda**, y si se aprietan ambos se  \nmueve hacia **adelante**\n\nEn el **modo inverso** los pulsadores se usan con otro propósito. Con uno  \nel robot hará un **arco atrás-izquierda**, con el otro un **arco atrás-derecha**  \ny cuando se pulsan los dos irá hacia **atrás**\n\nHay que usar un circuito combinacional con **3 entradas y 4 salidas**, y el  \ncontrolador **icemove9**. La **tabl**a no está en la colección por lo que habrá que  \ngenerarla en la **IceFactory**\n\n",
            "readonly": true
          },
          "position": {
            "x": 16,
            "y": -328
          },
          "size": {
            "width": 768,
            "height": 312
          }
        },
        {
          "id": "4bfbc1de-7542-4ca3-85c3-e5e4d131d546",
          "type": "basic.info",
          "data": {
            "info": "El **comportamiento** del icebot se muestra en  \n[Este vídeo de Youtube](https://www.youtube.com/watch?v=mT3gG4sRomU)",
            "readonly": true
          },
          "position": {
            "x": 560,
            "y": -336
          },
          "size": {
            "width": 536,
            "height": 64
          }
        },
        {
          "id": "9208e277-1ef6-4510-9a4a-58dfe03e76d9",
          "type": "basic.info",
          "data": {
            "info": "[![Click to see the youtube video](http://img.youtube.com/vi/mT3gG4sRomU/0.jpg)](https://www.youtube.com/watch?v=mT3gG4sRomU)",
            "readonly": true
          },
          "position": {
            "x": 552,
            "y": -264
          },
          "size": {
            "width": 680,
            "height": 208
          }
        }
      ],
      "wires": []
    }
  },
  "dependencies": {}
}