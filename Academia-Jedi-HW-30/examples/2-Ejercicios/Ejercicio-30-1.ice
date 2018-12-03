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
          "id": "76de9584-3103-46e2-be4a-c8a74399c4fe",
          "type": "basic.info",
          "data": {
            "info": "## Ejercicio 30.1: (5 Bitpoints). Transmisión de dos cadenas\n\nDiseñar un circuito digital que transmita **dos cadenas** por el **puerto serie** en función  \nde un **interruptor de selección**. El final de las cadenas se determina por el **número 0**  \n(0x00), en vez de por su tamaño (como hemos hecho en los ejemplos). Es decir, que el  \ncircuito envía caracteres por el puerto serie hasta que detecta un 0. En ese momento  \npara\n\nLas dos cadenas deben estar almacenadas en **dos ficheros**: **msg0.list** y **msg1.list**.  La  \n**logitud máxima** de estas cadenas es de **64 bytes** (necesario para dimensionar las  \ntablas)\n\nLa cadena se envía cuando se aprieta un **pulsador**. Además se emite un **parpadeo** en un  \n**LED** cuando se haya terminado de enviar la cadena\n\n**Consejo**. Para implementar este circuito se propone lo siguiente:\n\n1. Basarse en el [ejemplo 6-1](https://github.com/Obijuan/digital-electronics-with-open-FPGAs-tutorial/wiki/V%C3%ADdeo-30:-Puerto-serie#ejemplo-6-1-enviando-una-cadena)\n2. Hacer primero un circuito que imprima una cadena acabada en 0  \n3. Modificar el circuito para enviar 2 cadenas, cada una en una memoria, en  \nfunción del selecctor\n4. Hacer la lectura desde fichero",
            "readonly": true
          },
          "position": {
            "x": -112,
            "y": -576
          },
          "size": {
            "width": 784,
            "height": 368
          }
        },
        {
          "id": "ed4d3bee-31a1-4e5e-8785-6c2b5a03712f",
          "type": "basic.info",
          "data": {
            "info": "\nEn este [Vídeo de Youtube](https://www.youtube.com/watch?v=7mN4jco22rE) se muestra un ejemplo de funcionamiento.\n\n[![Click to see the youtube video](http://img.youtube.com/vi/7mN4jco22rE/0.jpg)](https://www.youtube.com/watch?v=7mN4jco22rE)",
            "readonly": true
          },
          "position": {
            "x": 776,
            "y": -568
          },
          "size": {
            "width": 616,
            "height": 128
          }
        }
      ],
      "wires": []
    }
  },
  "dependencies": {}
}