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
            "info": "## Ejercicio 30.2: (5 Bitpoints). Contador de pasadas del spiner\n\n\nDiseñar un circuito para **contar** las pasadas que da un **spiner**  \nsobre un **sensor de infrarrojos** y enviar el valor del **contador**  \npor el puerto serie.  La cuenta será de **00 a 99**, y cuando  \nalcance el final volverá a comenzar. Con cada paso de un  \nbrazo del spiner por el IR se envía el valor\n\nEl dato enviado consta de los **dos dígitos** (unidades y decenas)  \ny un **fin de linea** (\\n)\n\n**Sugerencia**. Basarse en el [ejemplo 6-1](https://github.com/Obijuan/digital-electronics-with-open-FPGAs-tutorial/wiki/V%C3%ADdeo-30:-Puerto-serie#ejemplo-6-1-enviando-una-cadena). Por cada tic  \ndel IR hay que enviar 3 caracteres: Las decenas, las unidades y el fin de línea.  \nEn vez de almacenar la información en la memoria, los datos a enviar provienen de  \nun multiplexor, conectado a los contadores de unidades y decenas y a la constalte  \nde salto de línea\n",
            "readonly": true
          },
          "position": {
            "x": 80,
            "y": 184
          },
          "size": {
            "width": 784,
            "height": 368
          }
        },
        {
          "id": "25f38ec1-08ac-4d57-b5c2-7faaa662af98",
          "type": "basic.info",
          "data": {
            "info": "\nEn este [Vídeo de Youtube](https://www.youtube.com/watch?v=WtYEhqFWQLo) se muestra un ejemplo de funcionamiento.\n\n[![Click to see the youtube video](http://img.youtube.com/vi/WtYEhqFWQLo/0.jpg)](https://www.youtube.com/watch?v=WtYEhqFWQLo)",
            "readonly": true
          },
          "position": {
            "x": 984,
            "y": 272
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