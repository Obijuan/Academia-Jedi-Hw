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
          "id": "13db6e77-7bfe-4c2e-8ea2-bd6adb61d7fb",
          "type": "basic.info",
          "data": {
            "info": "**Entregar**:\n\n  -1 Pantallazo del circuito\n  \n  -1 Vídeo del funcionamiento\n  \n  Enviarlos por redes sociales (Twitter, G+) con mención \n  a @Obijuan_cube. El vídeo puede estar en youtube o directamente en el tuit/post\n  ",
            "readonly": true
          },
          "position": {
            "x": 88,
            "y": 552
          },
          "size": {
            "width": 688,
            "height": 144
          }
        },
        {
          "id": "36219156-fac1-4df2-ba2a-a2b210e94637",
          "type": "basic.info",
          "data": {
            "info": "**GITHUB**:\n\n  Entrega **obligatoria por Github** (sólo pantallazo, el vídeo\n  no hace falta, para que no ocupe tanto espacio)",
            "readonly": true
          },
          "position": {
            "x": 88,
            "y": 728
          },
          "size": {
            "width": 624,
            "height": 96
          }
        },
        {
          "id": "a6ad3267-b824-4a8f-af40-c2a0e41898d2",
          "type": "basic.info",
          "data": {
            "info": "## Ejercicio 30.3: (5 Bitpoints). Control de franky por puerto serie\n\nDiseñar un circuito para controlar a **Franky** a través del puerto serie. Hay tres  \ncomandos de posición: **q**,**w** y **e** que hacen que los ojos de franky apunten en tres  \ndirecciones: izquierda, centro y derecha (Para servos futaba estas posiciones son 0x3C,  \n0xE1 y 0x80)\n\nMediante la **barra espaciadora** activamos el **modo de disparo**, haciendo parpadear sus  \nojos a la frecuencia de **10Hz** y emitiendo pitidos cortos de **1Khz** con una cadencia  \nde **10Hz**. Si mientras está disparando apretamos nuevamente la barra espaciadora dejará de  \nhacerlo.  \n\nAdicionalmente, cada vez que se reciba un **comando correcto** (q,w,e ó espcio) enviará la  \ncadena **OK** seguida del carácter de fin de línea (\\n) por el puerto serie\n",
            "readonly": true
          },
          "position": {
            "x": 80,
            "y": 184
          },
          "size": {
            "width": 776,
            "height": 304
          }
        },
        {
          "id": "a32b06d2-4d94-49ac-9014-68ada0835f46",
          "type": "basic.info",
          "data": {
            "info": "\nEn este [Vídeo de Youtube](https://www.youtube.com/watch?v=5q0N9-9sqp4) se muestra un ejemplo de funcionamiento.\n\n[![Click to see the youtube video](http://img.youtube.com/vi/5q0N9-9sqp4/0.jpg)](https://www.youtube.com/watch?v=5q0N9-9sqp4)",
            "readonly": true
          },
          "position": {
            "x": 872,
            "y": 272
          },
          "size": {
            "width": 632,
            "height": 112
          }
        }
      ],
      "wires": []
    }
  },
  "dependencies": {}
}