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
            "x": 56,
            "y": -64
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
            "x": 56,
            "y": 112
          },
          "size": {
            "width": 624,
            "height": 96
          }
        },
        {
          "id": "322ddc23-b596-443c-97b3-e120a13bf450",
          "type": "basic.info",
          "data": {
            "info": "# Ejercicio 28.2: (5 Bitpoints). Mini-calculadora que multiplica un número de 3 bits por 2\n\nDiseñar una **mini-calculadora**, de 3 bits, que realiza una única operación: **multiplicar por dos**. Se introduce el dato de 3 bits mediante **3 pulsadores externos** y  \nse pulsa la **tecla de carga** para itroducirlo. Se muestra en el **display**. A contiuación si se pulsa la **tecla de multiplicación** se multiplicará por dos y se  \nmuestra el resultado en el display. Como se usan pocos bits, **la multiplicación sólo se puede usar 1 veces después de cargar**. Si se aprieta varias veces el  \nbotón de multiplicación sólo tendrá efecto la primera vez. Y no folverá a funcionar hasta realizar una nueva carga.\n\nUtilizar el decodificador de 7 seg **DisplayHex**, que permite visualizar 4 bits en hexadecimal. Así, por ejemplo, si se multiplica 5 * 2 se obtendrá el dígito A (10 en hexa)",
            "readonly": true
          },
          "position": {
            "x": 48,
            "y": -304
          },
          "size": {
            "width": 1216,
            "height": 152
          }
        },
        {
          "id": "1b8a34dc-2fde-45a7-a069-f4ded8920949",
          "type": "basic.info",
          "data": {
            "info": "\nEn este [Vídeo de Youtube](https://www.youtube.com/watch?v=GNUIOgodDQY) se muestra un ejemplo de funcionamiento. Primero  \nse prueba con el número uno, y el resultado es 2. Luego con 3, y sale 6.  \nDespués con 4, que da 8, luego con 5, y sale A (10) y finalmente  \ncon 7, que sale d (14). Si se aprieta varias veces el botón de multiplicación no tiene efecto\n\n\n[![Click to see the youtube video](http://img.youtube.com/vi/PqVvVQ5D3nc/0.jpg)](https://www.youtube.com/watch?v=PqVvVQ5D3nc)",
            "readonly": true
          },
          "position": {
            "x": 792,
            "y": -88
          },
          "size": {
            "width": 1000,
            "height": 144
          }
        }
      ],
      "wires": []
    }
  },
  "dependencies": {}
}