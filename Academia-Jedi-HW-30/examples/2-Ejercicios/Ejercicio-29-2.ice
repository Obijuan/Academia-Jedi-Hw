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
            "x": 824,
            "y": -272
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
            "x": 824,
            "y": -96
          },
          "size": {
            "width": 624,
            "height": 96
          }
        },
        {
          "id": "e9e9b204-23a0-4e27-8174-35cbd47aa566",
          "type": "basic.info",
          "data": {
            "info": "# Ejercicio 29.2: (5 Bitpoints). Servidor hardware para Arduino\n\nImplementar un circuito que dote a **Arduino** de **3 puertos de salida** de 4 bits.  \nEl **puerto 0** muestra los bits en los LED del 3 al 0. El **puerto 1** en los LEDs  \n7 -4, y el **puerto 2** en un **display de 7 Segmentos**. Estos puertos se  \nimplementarán mediante comunicaciones serie síncronas entre el **Arduino** y la **FPGA**.  \nDesde el Arduino se envían **comandos de 8 bits**, que tienen el siguiente **formato**:  \n\n* Los **4 bits menos significativos** contienen el **valor** a sacar por el puerto especificado  \n* Los **4 bits más significativos** indican el **puerto** por el que sacar la información  \n\n|Bits 7-4  | Comando | Descripción       |\n|----------|---------|-------------------|\n| 0000     |  0      |Acceso al puerto 0 |\n| 0001     |  1      |Acceso al puerto 1 |\n| 0010     |  2      |Acceso al puerto 2 |\n| resto    |  x      | Comando inválido  |\n\nSe usará un LED externo para indicar si el comando recibido es válido o no.  \nEn caso de recibirse uno erróneo, se enciende. Cuando se recibe uno correcto  \nse apaga. Se usa sólo como indicador y no se tomará ninguna acción cuando  \nel comando es erróneo.  \n\nEl **software del Arduino** implementará un **contador de segundos**, mostrando  \nen el display de 7 segmentos (puerto 2) los dígitos 0 - 9, uno cada segundok  \nAl pasar medio segundo, se encienden todos los LEDs del puerto 1, y se  \napagan los del puerto 2. Al trancurrir un segundo completo, se apagan los  \ndel puerto 1, se encienden los del 0 y se actualiza el dígito en el puerto 2  \n\nAntes de comenzar la cuenta, se enviará un **comando erróneo**, para comprobar que  \nel LED indicador se encience. Y se esperará 2 segundos antes de ejecutar el bucle  \nprincipal anterior\n\n\n",
            "readonly": true
          },
          "position": {
            "x": -80,
            "y": -288
          },
          "size": {
            "width": 800,
            "height": 496
          }
        },
        {
          "id": "5867d092-12d9-4ef3-9e45-ea480b0a39d9",
          "type": "basic.info",
          "data": {
            "info": "\nEn este [Vídeo de Youtube](https://www.youtube.com/watch?v=Gkg30RhCNuw) se muestra un ejemplo de funcionamiento.\n\n[![Click to see the youtube video](http://img.youtube.com/vi/Gkg30RhCNuw/0.jpg)](https://www.youtube.com/watch?v=Gkg30RhCNuw)",
            "readonly": true
          },
          "position": {
            "x": 832,
            "y": 16
          },
          "size": {
            "width": 616,
            "height": 152
          }
        }
      ],
      "wires": []
    }
  },
  "dependencies": {}
}