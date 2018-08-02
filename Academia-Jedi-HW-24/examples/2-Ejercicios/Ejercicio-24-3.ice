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
          "id": "c14fa047-7394-4cfd-8c1e-b806af0993d1",
          "type": "basic.info",
          "data": {
            "info": "**Ejercicio 24.3**: (10 Bitpoints). **Decodificador decimal con caracteres extra**\n\nHacer un bloque **decodificador** decimal a siete segmentos que tenga **6 caracteres extra**  \ncorrespondiente a los números del **10** al **15**. Los nuevos caracteres son los  \nsiguientes:  \n\n* **Carácter 10**: Ningún segmento activado\n* **Carácter 11**: segmento d activado\n* **Carácter 12**: segmentos d y g activados\n* **Carácter 13**: segmentos a,d y g activados\n* **Carácter 14**: segmentos a,b, f y g activados\n* **Carácter 15**: segmentos c,d,e y g activados\n\nMeter este decodificador en un bloque llamado **DisplayEXTRA**. Utilizar  \neste icono: [7Seg-Extra.svg](https://github.com/FPGAwars/icestudio-block-icons/raw/master/7Seg/7Seg-Extra.svg)\n\nComo **circuito de pruebas** conectar **4 interruptores externos** para seleccionar  \nel carácter a visualizar en el display\n",
            "readonly": true
          },
          "position": {
            "x": 40,
            "y": -304
          },
          "size": {
            "width": 816,
            "height": 296
          }
        },
        {
          "id": "08b55ee3-890d-403c-9792-da4254a88da4",
          "type": "basic.info",
          "data": {
            "info": "**Entregar**:\n\n  -1 Pantallazo del interior del bloque (3 Bitpoints)\n  \n  -1 Pantallazo del circuito de pruebas (2 Bitpoints)\n  \n  -1 Vídeo del circuito en funcionamiento (3 Bitpoints)\n  \n  Enviarlos por redes sociales (Twitter, G+) con mención \n  a @Obijuan_cube. El vídeo puede estar en youtube o directamente en el tuit/post\n  ",
            "readonly": true
          },
          "position": {
            "x": 40,
            "y": 96
          },
          "size": {
            "width": 680,
            "height": 176
          }
        },
        {
          "id": "df40451e-59d3-4af3-8ab9-1245aaf6cee6",
          "type": "basic.info",
          "data": {
            "info": "**GITHUB**:\n\n Entrega obligatoria por github (2 Bitpoints). (sólo pantallazo, el vídeo\n  no hace falta, para que no ocupe tanto espacio)",
            "readonly": true
          },
          "position": {
            "x": 40,
            "y": 312
          },
          "size": {
            "width": 624,
            "height": 96
          }
        },
        {
          "id": "0f785597-b8d2-4738-9bf5-9ca1b8a20934",
          "type": "basic.info",
          "data": {
            "info": "![](https://github.com/Obijuan/digital-electronics-with-open-FPGAs-tutorial/raw/master/wiki/Tutorial-24/ejercicio3.png)",
            "readonly": true
          },
          "position": {
            "x": 632,
            "y": -336
          },
          "size": {
            "width": 472,
            "height": 128
          }
        }
      ],
      "wires": []
    }
  },
  "dependencies": {}
}