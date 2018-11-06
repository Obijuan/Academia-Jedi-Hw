{
  "version": "1.2",
  "package": {
    "name": "Serial-tx",
    "version": "0.2",
    "description": "Transmisor serie (hecho a partir de bloques)",
    "author": "Juan Gonzalez-Gomez (Obijuan)",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20height=%22223.269%22%20width=%22293.137%22%20viewBox=%220%200%20274.81662%20209.31615%22%3E%3Cg%20transform=%22translate(347.142%20-102.544)%20scale(1.04907)%22%20stroke=%22#000%22%3E%3Cpath%20d=%22M-170.798%20177.526l.315%2036.011%2040.397-37.263v-33.51z%22%20fill=%22#fff%22%20stroke-width=%223.541%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M-308.584%20177.892l53.235-35.7%20124.635.628-39.456%2035.7%22%20fill=%22#fff%22%20stroke-width=%223.541%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Crect%20ry=%223.509%22%20height=%2236.325%22%20width=%22139.039%22%20y=%22178.153%22%20x=%22-308.895%22%20fill=%22#fff%22%20stroke-width=%223.541%22%20stroke-linecap=%22square%22/%3E%3Cg%20transform=%22matrix(1.88858%200%200%201.88858%20-312.436%20138.651)%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22%3E%3Ccircle%20cy=%2230.367%22%20cx=%2211.326%22%20r=%223.15%22%20fill=%22red%22/%3E%3Ccircle%20cy=%2230.367%22%20cx=%2220.611%22%20r=%223.15%22%20fill=%22#faa%22/%3E%3Ccircle%20cy=%2230.367%22%20cx=%2262.82%22%20r=%223.15%22%20fill=%22green%22/%3E%3Ccircle%20cy=%2230.367%22%20cx=%2230.554%22%20r=%223.15%22%20fill=%22red%22/%3E%3C/g%3E%3C/g%3E%3Ctext%20y=%2228.295%22%20x=%2270.801%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%2265.172%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%221.209%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2228.295%22%20x=%2270.801%22%20font-weight=%22700%22%20font-size=%2237.241%22%3ESerial%3C/tspan%3E%3C/text%3E%3Cg%20transform=%22translate(-49.71%20-39.925)%20scale(2.8106)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cg%20transform=%22translate(-240.978%20-39.925)%20scale(2.8106)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Ccircle%20cx=%22233.043%22%20cy=%2281.071%22%20r=%2240.92%22%20fill=%22#ececec%22%20stroke=%22green%22%20stroke-width=%221.71%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M261.766%2092.931h-4.696V67.437h-48.103v25.295h-5.116%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%224.275%22%20stroke-linecap=%22round%22/%3E%3Ctext%20y=%22165.6%22%20x=%22108.068%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%2265.172%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%221.209%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22165.6%22%20x=%22108.068%22%20font-weight=%22700%22%20font-size=%2237.241%22%3ETX%3C/tspan%3E%3C/text%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "419f167a-cf38-4ecc-941b-7edfc89206f8",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": 456,
            "y": 72
          }
        },
        {
          "id": "7954f392-1892-4826-a652-acfce7f1c5e1",
          "type": "basic.input",
          "data": {
            "name": "",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 688,
            "y": 232
          }
        },
        {
          "id": "3642a94c-906b-4237-b5f3-ad12b9c350f3",
          "type": "basic.output",
          "data": {
            "name": "TX",
            "pins": [
              {
                "index": "0",
                "name": "TX",
                "value": "8"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1728,
            "y": 368
          }
        },
        {
          "id": "2412d404-efb5-445f-b617-1a2cc2370e51",
          "type": "basic.input",
          "data": {
            "name": "transmit",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 624,
            "y": 456
          }
        },
        {
          "id": "dc95a783-eb10-4e6e-994c-6f830506f006",
          "type": "basic.output",
          "data": {
            "name": "busy",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1736,
            "y": 576
          }
        },
        {
          "id": "baad82cc-2a8f-4ccd-a52f-d3bb80ac1ff2",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "115200",
            "local": false
          },
          "position": {
            "x": 1192,
            "y": 640
          }
        },
        {
          "id": "1c4c320a-138e-4ffe-b6bd-ecf370092541",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "10'h3ff",
            "local": true
          },
          "position": {
            "x": 1368,
            "y": 280
          }
        },
        {
          "id": "ff12438c-6bbe-4f82-a00c-b3be3af5760c",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "10",
            "local": true
          },
          "position": {
            "x": 1384,
            "y": 616
          }
        },
        {
          "id": "ac959d37-ca90-4977-acb9-d295b4a74868",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "1",
            "local": true
          },
          "position": {
            "x": 1592,
            "y": 272
          }
        },
        {
          "id": "7a01ac2d-6bf7-44c5-abdd-54b9f73a36fd",
          "type": "1c7dae7144d376f2ee4896fcc502a29110e2db37",
          "position": {
            "x": 1592,
            "y": 368
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "5c273ea0-15b9-4ba4-8f3e-21e1af339e3e",
          "type": "ef34e56d75c6176a27feeb72f41bfb8d7feaa8bb",
          "position": {
            "x": 1368,
            "y": 376
          },
          "size": {
            "width": 96,
            "height": 160
          }
        },
        {
          "id": "df1261dc-6bd5-4813-8e2a-b554b71768bb",
          "type": "725b7e2cb9666b5ed3183537d9c898f096dab82a",
          "position": {
            "x": 1088,
            "y": 184
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "0141b72d-28cb-442e-ac29-4219eb07d302",
          "type": "273bc0f5f19a0d56bfda9f68a70f5433eaf829a4",
          "position": {
            "x": 1192,
            "y": 760
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "bd986936-b81c-41d0-9d13-bd624eadca09",
          "type": "d3fb4e54055f0190931bebe6b552777e323560b3",
          "position": {
            "x": 904,
            "y": 376
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "c97221e2-9e06-4053-883f-d14c2a1ffa2e",
          "type": "d54956415dc78ab799a078f29fe5e3734704583b",
          "position": {
            "x": 1088,
            "y": 320
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "89ce0fca-e357-4db0-8334-1634ca1a63c8",
          "type": "b959c256104d1064a5ef7b38632ffb6eed3b396f",
          "position": {
            "x": 1016,
            "y": 760
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "f25cf19a-7098-4c2a-9326-be674c3e50ce",
          "type": "3d2d16068c495f9dcae3633c3321a073853d155f",
          "position": {
            "x": 1384,
            "y": 712
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "4c9c7bf0-ae1a-4fab-8842-094f6b684cf8",
          "type": "2cb0b366b18a00e12ffc963c4a8fcc7749606859",
          "position": {
            "x": 736,
            "y": 696
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "6bc64986-677a-40c2-871c-0d3e61f99f95",
          "type": "basic.info",
          "data": {
            "info": "Biestable De del sistema que hay que  \nañadir para cumplir las reglas de diseño  \nsíncrono: toda señal sacada al exterior,  \nespecialmente si es un cable de comunicaciones  \nasíncronas, debe pasar por un biestable",
            "readonly": true
          },
          "position": {
            "x": 1600,
            "y": 104
          },
          "size": {
            "width": 376,
            "height": 96
          }
        },
        {
          "id": "b7d2b74c-a15d-4af8-b378-3d444add2654",
          "type": "basic.info",
          "data": {
            "info": "Este Biestable desde  \nestar inicialmente  \na 1, ya que es el  \nvalor de reposo de la  \nlínea serie",
            "readonly": true
          },
          "position": {
            "x": 1728,
            "y": 224
          },
          "size": {
            "width": 200,
            "height": 104
          }
        },
        {
          "id": "65701d24-4dfe-4d9f-976b-2ecf2ac5bcdd",
          "type": "basic.info",
          "data": {
            "info": "**Registro de**\n**Desplazamiento**",
            "readonly": true
          },
          "position": {
            "x": 1376,
            "y": 544
          },
          "size": {
            "width": 168,
            "height": 56
          }
        },
        {
          "id": "f057eb14-82d5-4de6-ae86-e1c80150d499",
          "type": "basic.info",
          "data": {
            "info": "Conversión de los datos serie a  \nparalelo, mediante un registro  \nde 10 bits. Inicialmente tiene todos  \nsus bits a 1, porque la línea está  \nen reposo",
            "readonly": true
          },
          "position": {
            "x": 1320,
            "y": 176
          },
          "size": {
            "width": 296,
            "height": 96
          }
        },
        {
          "id": "75de7fc1-fd26-4d54-a64e-ee45cda99db1",
          "type": "basic.info",
          "data": {
            "info": "**Biestable D**",
            "readonly": true
          },
          "position": {
            "x": 1608,
            "y": 440
          },
          "size": {
            "width": 144,
            "height": 40
          }
        },
        {
          "id": "56d767fa-2ad7-4eb5-bdd2-7f928d0dcd38",
          "type": "basic.info",
          "data": {
            "info": "Evento: Comienzo de \ntransmisión",
            "readonly": true
          },
          "position": {
            "x": 768,
            "y": 440
          },
          "size": {
            "width": 176,
            "height": 56
          }
        },
        {
          "id": "8f436893-adfe-4272-9be8-4aedd7139d3a",
          "type": "basic.info",
          "data": {
            "info": "Cargar el registro con  \nel dato a enviar",
            "readonly": true
          },
          "position": {
            "x": 1024,
            "y": 440
          },
          "size": {
            "width": 184,
            "height": 48
          }
        },
        {
          "id": "e7b68a86-ba79-48f8-a98c-e9712a521e65",
          "type": "basic.info",
          "data": {
            "info": "Pasar al estado  \ntransmitiendo",
            "readonly": true
          },
          "position": {
            "x": 840,
            "y": 576
          },
          "size": {
            "width": 144,
            "height": 56
          }
        },
        {
          "id": "3bce4783-ada2-4799-862b-6d3aa37f4315",
          "type": "basic.info",
          "data": {
            "info": "**Biestable RS**  \nEstado del transmisor",
            "readonly": true
          },
          "position": {
            "x": 960,
            "y": 632
          },
          "size": {
            "width": 184,
            "height": 48
          }
        },
        {
          "id": "5751aef9-36b0-4d0b-8288-dec78050cfa9",
          "type": "basic.info",
          "data": {
            "info": "0: Parado. Sin transmitir  \n1: Ocupado. Transmitiendo dato",
            "readonly": true
          },
          "position": {
            "x": 952,
            "y": 672
          },
          "size": {
            "width": 256,
            "height": 56
          }
        },
        {
          "id": "c42d6c31-26d7-41ad-99fa-0870c7d9847b",
          "type": "basic.info",
          "data": {
            "info": "**Generador de**\n**Baudios**",
            "readonly": true
          },
          "position": {
            "x": 1192,
            "y": 832
          },
          "size": {
            "width": 144,
            "height": 48
          }
        },
        {
          "id": "b38b9166-553b-4c30-86bb-d75d8312ceb0",
          "type": "basic.info",
          "data": {
            "info": "Contador de bits  \ntransmitidos",
            "readonly": true
          },
          "position": {
            "x": 1392,
            "y": 816
          },
          "size": {
            "width": 144,
            "height": 48
          }
        },
        {
          "id": "356a6d9d-3ed8-4fe6-b73f-528bbaaeed70",
          "type": "basic.info",
          "data": {
            "info": "El registro de desplazamiento  \nes de 10 bits, para almacenar  \nlos 8 bits de datos, 1 bit de  \ncomienzo (start) y otro de  \nparada (stop)",
            "readonly": true
          },
          "position": {
            "x": 1528,
            "y": 472
          },
          "size": {
            "width": 232,
            "height": 96
          }
        },
        {
          "id": "5db152d8-644e-4cd6-aeeb-e859d5b759cc",
          "type": "basic.info",
          "data": {
            "info": "Evento: Ultimo  \nbit enviado",
            "readonly": true
          },
          "position": {
            "x": 1520,
            "y": 736
          },
          "size": {
            "width": 136,
            "height": 56
          }
        },
        {
          "id": "0743e7d9-081c-4af9-835d-dd431c4d3f8e",
          "type": "basic.info",
          "data": {
            "info": "Al enviarse el último  \nbit, se cambia el estado  \na parado (reset)",
            "readonly": true
          },
          "position": {
            "x": 840,
            "y": 864
          },
          "size": {
            "width": 208,
            "height": 72
          }
        },
        {
          "id": "4bf6efaa-ea87-4b6c-a291-0724e785199b",
          "type": "basic.info",
          "data": {
            "info": "**Cable pasivo**  \nPara organizar el  \ncableado del reloj",
            "readonly": true
          },
          "position": {
            "x": 712,
            "y": 616
          },
          "size": {
            "width": 176,
            "height": 72
          }
        },
        {
          "id": "f069f158-b080-4c9c-bf21-b0cb610f897e",
          "type": "basic.info",
          "data": {
            "info": "**Dato a transmitir**",
            "readonly": true
          },
          "position": {
            "x": 680,
            "y": 208
          },
          "size": {
            "width": 200,
            "height": 40
          }
        },
        {
          "id": "a8e73b9b-86e6-41f0-a546-07a3702b889f",
          "type": "basic.info",
          "data": {
            "info": "Rellenar el registro de  \ndesplazamiento con 1s,  \nal ir transmitiendo",
            "readonly": true
          },
          "position": {
            "x": 1080,
            "y": 112
          },
          "size": {
            "width": 192,
            "height": 72
          }
        },
        {
          "id": "a4ad5d57-872a-496c-947f-b714495221bc",
          "type": "basic.info",
          "data": {
            "info": "Añadir 2 bits a la parte  \nmenos significativa:  \nun bit de reposo y el  \nbit de start (0)",
            "readonly": true
          },
          "position": {
            "x": 880,
            "y": 272
          },
          "size": {
            "width": 216,
            "height": 80
          }
        },
        {
          "id": "6edb3194-24c9-4fe3-acd6-e9e4238557c7",
          "type": "basic.info",
          "data": {
            "info": "**Tic de transmisión**  \n¡Que comience la  \ntransmisión!",
            "readonly": true
          },
          "position": {
            "x": 624,
            "y": 392
          },
          "size": {
            "width": 232,
            "height": 56
          }
        },
        {
          "id": "5d1d9d1a-5b4c-464f-a127-2c436e63dcfb",
          "type": "basic.info",
          "data": {
            "info": "**Línea serie**",
            "readonly": true
          },
          "position": {
            "x": 1736,
            "y": 352
          },
          "size": {
            "width": 144,
            "height": 40
          }
        },
        {
          "id": "559e9127-11a2-4e08-ba2c-27940098f374",
          "type": "basic.info",
          "data": {
            "info": "**Estado transmisor**  \n1: ocupado  \n0: libre  \nLa señal es un pulso  \n(no tic)",
            "readonly": true
          },
          "position": {
            "x": 1760,
            "y": 472
          },
          "size": {
            "width": 216,
            "height": 96
          }
        },
        {
          "id": "af9c91af-f850-457f-924b-99b024deffd0",
          "type": "basic.info",
          "data": {
            "info": "**Tic de terminación**",
            "readonly": true
          },
          "position": {
            "x": 1720,
            "y": 736
          },
          "size": {
            "width": 192,
            "height": 48
          }
        },
        {
          "id": "1eaf1077-d9c8-47c2-a5d8-e8ebe7068ee2",
          "type": "basic.info",
          "data": {
            "info": "**Reloj del sistema**",
            "readonly": true
          },
          "position": {
            "x": 448,
            "y": 48
          },
          "size": {
            "width": 176,
            "height": 40
          }
        },
        {
          "id": "6b5d3a02-73aa-47f6-a180-d4b71d71702b",
          "type": "basic.info",
          "data": {
            "info": "**BAUDIOS**\n",
            "readonly": true
          },
          "position": {
            "x": 1208,
            "y": 640
          },
          "size": {
            "width": 112,
            "height": 40
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "7a01ac2d-6bf7-44c5-abdd-54b9f73a36fd",
            "port": "aa84d31e-cd92-44c7-bb38-c7a4cd903a78"
          },
          "target": {
            "block": "3642a94c-906b-4237-b5f3-ad12b9c350f3",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "ac959d37-ca90-4977-acb9-d295b4a74868",
            "port": "constant-out"
          },
          "target": {
            "block": "7a01ac2d-6bf7-44c5-abdd-54b9f73a36fd",
            "port": "65194b18-5d2a-41b2-bd86-01be99978ad6"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "5c273ea0-15b9-4ba4-8f3e-21e1af339e3e",
            "port": "21039c06-c932-498c-968d-879a68d66795"
          },
          "target": {
            "block": "7a01ac2d-6bf7-44c5-abdd-54b9f73a36fd",
            "port": "bf2f0c53-2d04-4cba-aa70-2df85502d24f"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "1c4c320a-138e-4ffe-b6bd-ecf370092541",
            "port": "constant-out"
          },
          "target": {
            "block": "5c273ea0-15b9-4ba4-8f3e-21e1af339e3e",
            "port": "4fef4dd0-ce33-42df-96b7-6c92c543f8eb"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "df1261dc-6bd5-4813-8e2a-b554b71768bb",
            "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
          },
          "target": {
            "block": "5c273ea0-15b9-4ba4-8f3e-21e1af339e3e",
            "port": "02007399-7499-4b76-ad4f-91094344d055"
          },
          "vertices": [
            {
              "x": 1248,
              "y": 280
            }
          ]
        },
        {
          "source": {
            "block": "2412d404-efb5-445f-b617-1a2cc2370e51",
            "port": "out"
          },
          "target": {
            "block": "5c273ea0-15b9-4ba4-8f3e-21e1af339e3e",
            "port": "b916c09a-8848-4500-a1a0-0cc09e8f23c1"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "0141b72d-28cb-442e-ac29-4219eb07d302",
            "port": "986f82d9-23a0-4d03-b5e4-a1a68c27056c"
          },
          "target": {
            "block": "5c273ea0-15b9-4ba4-8f3e-21e1af339e3e",
            "port": "ec65c3cd-0951-4d74-bbfc-c37f87a78e66"
          },
          "vertices": [
            {
              "x": 1328,
              "y": 720
            }
          ]
        },
        {
          "source": {
            "block": "baad82cc-2a8f-4ccd-a52f-d3bb80ac1ff2",
            "port": "constant-out"
          },
          "target": {
            "block": "0141b72d-28cb-442e-ac29-4219eb07d302",
            "port": "7ad62a69-c2f1-42ba-8c7e-422babd6351e"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "c97221e2-9e06-4053-883f-d14c2a1ffa2e",
            "port": "047e6936-4378-4319-bc89-0d8c54b65f00"
          },
          "target": {
            "block": "5c273ea0-15b9-4ba4-8f3e-21e1af339e3e",
            "port": "9ad77afa-fcc5-44e9-9878-6043c7e652d1"
          },
          "vertices": [
            {
              "x": 1232,
              "y": 368
            }
          ],
          "size": 10
        },
        {
          "source": {
            "block": "bd986936-b81c-41d0-9d13-bd624eadca09",
            "port": "6a253ddf-22b2-43cd-ba6f-561bd1af6970"
          },
          "target": {
            "block": "c97221e2-9e06-4053-883f-d14c2a1ffa2e",
            "port": "0a460618-c59d-4eb4-b2ef-802f572c382f"
          },
          "vertices": [],
          "size": 2
        },
        {
          "source": {
            "block": "7954f392-1892-4826-a652-acfce7f1c5e1",
            "port": "out"
          },
          "target": {
            "block": "c97221e2-9e06-4053-883f-d14c2a1ffa2e",
            "port": "3626259f-60dd-47d8-bbce-56b750dd45dc"
          },
          "vertices": [],
          "size": 8
        },
        {
          "source": {
            "block": "89ce0fca-e357-4db0-8334-1634ca1a63c8",
            "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
          },
          "target": {
            "block": "0141b72d-28cb-442e-ac29-4219eb07d302",
            "port": "685defdf-65c3-4e0f-a59e-30ba761c076d"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "2412d404-efb5-445f-b617-1a2cc2370e51",
            "port": "out"
          },
          "target": {
            "block": "89ce0fca-e357-4db0-8334-1634ca1a63c8",
            "port": "3ae2d46d-7981-497a-899f-b60bfae0f43e"
          },
          "vertices": [
            {
              "x": 944,
              "y": 728
            }
          ]
        },
        {
          "source": {
            "block": "f25cf19a-7098-4c2a-9326-be674c3e50ce",
            "port": "cc17ff4d-1c27-4dc3-a14c-da730d54750e"
          },
          "target": {
            "block": "89ce0fca-e357-4db0-8334-1634ca1a63c8",
            "port": "86eb8c81-17fc-4371-bd21-51f429191f3c"
          },
          "vertices": [
            {
              "x": 1624,
              "y": 944
            }
          ]
        },
        {
          "source": {
            "block": "0141b72d-28cb-442e-ac29-4219eb07d302",
            "port": "986f82d9-23a0-4d03-b5e4-a1a68c27056c"
          },
          "target": {
            "block": "f25cf19a-7098-4c2a-9326-be674c3e50ce",
            "port": "26aba23f-8567-4e9b-bd45-c26724030f33"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "ff12438c-6bbe-4f82-a00c-b3be3af5760c",
            "port": "constant-out"
          },
          "target": {
            "block": "f25cf19a-7098-4c2a-9326-be674c3e50ce",
            "port": "eb9f9c33-e717-43f0-98eb-dbd9c278fa8c"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "89ce0fca-e357-4db0-8334-1634ca1a63c8",
            "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
          },
          "target": {
            "block": "dc95a783-eb10-4e6e-994c-6f830506f006",
            "port": "in"
          },
          "vertices": [
            {
              "x": 1160,
              "y": 656
            }
          ]
        },
        {
          "source": {
            "block": "419f167a-cf38-4ecc-941b-7edfc89206f8",
            "port": "out"
          },
          "target": {
            "block": "5c273ea0-15b9-4ba4-8f3e-21e1af339e3e",
            "port": "a265c13d-af7a-437b-97ae-424872381a93"
          },
          "vertices": [
            {
              "x": 1280,
              "y": 328
            }
          ]
        },
        {
          "source": {
            "block": "419f167a-cf38-4ecc-941b-7edfc89206f8",
            "port": "out"
          },
          "target": {
            "block": "7a01ac2d-6bf7-44c5-abdd-54b9f73a36fd",
            "port": "3943e194-090b-4553-9df3-88bc4b17abc2"
          }
        },
        {
          "source": {
            "block": "4c9c7bf0-ae1a-4fab-8842-094f6b684cf8",
            "port": "76f5099a-54df-47eb-b828-f2ab2f211687"
          },
          "target": {
            "block": "f25cf19a-7098-4c2a-9326-be674c3e50ce",
            "port": "c90da543-4b9c-4f4c-a5fa-7e1166ee1dd3"
          }
        },
        {
          "source": {
            "block": "4c9c7bf0-ae1a-4fab-8842-094f6b684cf8",
            "port": "76f5099a-54df-47eb-b828-f2ab2f211687"
          },
          "target": {
            "block": "0141b72d-28cb-442e-ac29-4219eb07d302",
            "port": "fd355118-76eb-4396-b0db-3d3580fa2786"
          }
        },
        {
          "source": {
            "block": "4c9c7bf0-ae1a-4fab-8842-094f6b684cf8",
            "port": "76f5099a-54df-47eb-b828-f2ab2f211687"
          },
          "target": {
            "block": "89ce0fca-e357-4db0-8334-1634ca1a63c8",
            "port": "9f09a4af-8f7a-45c3-af7b-293a244e76d9"
          }
        },
        {
          "source": {
            "block": "419f167a-cf38-4ecc-941b-7edfc89206f8",
            "port": "out"
          },
          "target": {
            "block": "4c9c7bf0-ae1a-4fab-8842-094f6b684cf8",
            "port": "fa0b6dda-1c99-4e8b-a140-cda4eadf6837"
          },
          "vertices": [
            {
              "x": 584,
              "y": 368
            }
          ]
        }
      ]
    }
  },
  "dependencies": {
    "1c7dae7144d376f2ee4896fcc502a29110e2db37": {
      "package": {
        "name": "Biestable-D",
        "version": "0.1",
        "description": "Biestable de datos (Tipo D). Cuando se recibe un tic por load se captura el dato",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22156.57%22%20height=%22216.83%22%20viewBox=%220%200%2041.425941%2057.369679%22%3E%3Cg%20stroke=%22#000%22%20stroke-width=%221.442%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%3E%3Cpath%20d=%22M25.682%2040.152L39.29%2056.824%2032.372%2036.29%22%20fill=%22#ccc%22%20stroke-width=%221.0924880399999999%22/%3E%3Cpath%20d=%22M18.298%2032.088L9.066%2012.475l-6.45%203.724-2.07-3.583L21.451.546%2023.52%204.13l-6.092%203.517%2012.03%2018.223s5.399-2.025%208.535.74c3.137%202.766%202.52%204.92%202.887%204.772L17.192%2045.02s-2.848-3.695-2.16-6.795c.688-3.1%203.266-6.137%203.266-6.137z%22%20fill=%22red%22%20stroke-width=%221.0924880399999999%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "3943e194-090b-4553-9df3-88bc4b17abc2",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 192,
                "y": 136
              }
            },
            {
              "id": "aa84d31e-cd92-44c7-bb38-c7a4cd903a78",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 680,
                "y": 184
              }
            },
            {
              "id": "bf2f0c53-2d04-4cba-aa70-2df85502d24f",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 192,
                "y": 232
              }
            },
            {
              "id": "65194b18-5d2a-41b2-bd86-01be99978ad6",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 456,
                "y": 64
              }
            },
            {
              "id": "bdc170f0-4468-4137-bd79-4624c9cadf2b",
              "type": "basic.code",
              "data": {
                "code": "reg q = INI;\nalways @(posedge clk)\n  q <= d;",
                "params": [
                  {
                    "name": "INI"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "d"
                    }
                  ],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 384,
                "y": 168
              },
              "size": {
                "width": 232,
                "height": 88
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "3943e194-090b-4553-9df3-88bc4b17abc2",
                "port": "out"
              },
              "target": {
                "block": "bdc170f0-4468-4137-bd79-4624c9cadf2b",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "bdc170f0-4468-4137-bd79-4624c9cadf2b",
                "port": "q"
              },
              "target": {
                "block": "aa84d31e-cd92-44c7-bb38-c7a4cd903a78",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "65194b18-5d2a-41b2-bd86-01be99978ad6",
                "port": "constant-out"
              },
              "target": {
                "block": "bdc170f0-4468-4137-bd79-4624c9cadf2b",
                "port": "INI"
              }
            },
            {
              "source": {
                "block": "bf2f0c53-2d04-4cba-aa70-2df85502d24f",
                "port": "out"
              },
              "target": {
                "block": "bdc170f0-4468-4137-bd79-4624c9cadf2b",
                "port": "d"
              }
            }
          ]
        }
      }
    },
    "ef34e56d75c6176a27feeb72f41bfb8d7feaa8bb": {
      "package": {
        "name": "Registro-desplazamiento",
        "version": "0.1",
        "description": "Registro de desplazamiento (derecha) de 10 bits",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22600.51%22%20height=%22391.803%22%20viewBox=%220%200%20158.8849%20103.66459%22%3E%3Cdefs%3E%3Cmarker%20orient=%22auto%22%20id=%22a%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M-5.231-2.42L1.324-.01-5.23%202.401c1.047-1.423%201.041-3.37%200-4.821z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22%20stroke=%22#00f%22%20stroke-width=%22.375%22%20stroke-linejoin=%22round%22/%3E%3C/marker%3E%3C/defs%3E%3Cpath%20d=%22M63.01%2076.938L76.618%2093.61%2069.7%2073.076%22%20fill=%22#ccc%22%20stroke=%22#000%22%20stroke-width=%221.092%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M55.626%2068.874L46.394%2049.26l-6.45%203.724-2.07-3.583%2020.905-12.07%202.069%203.584-6.092%203.517%2012.03%2018.223s5.399-2.025%208.535.74c3.137%202.766%202.52%204.92%202.887%204.773L54.52%2081.807s-2.848-3.696-2.16-6.796c.688-3.1%203.266-6.137%203.266-6.137z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%221.092%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cg%20transform=%22translate(-93.18%206.94)%20scale(1.09073)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20cx=%22100.602%22%20cy=%2273.815%22%20r=%2214.559%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cg%20stroke=%22#000%22%20stroke-width=%221.442%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%3E%3Cpath%20d=%22M103.454%2076.938L117.06%2093.61l-6.918-20.534%22%20fill=%22#ccc%22%20stroke-width=%221.0924880399999999%22/%3E%3Cpath%20d=%22M96.07%2068.874L86.836%2049.26l-6.45%203.724-2.07-3.583%2020.905-12.07%202.07%203.584-6.093%203.517%2012.03%2018.223s5.4-2.025%208.536.74c3.136%202.766%202.52%204.92%202.887%204.773L94.964%2081.807s-2.848-3.696-2.16-6.796c.687-3.1%203.265-6.137%203.265-6.137z%22%20fill=%22red%22%20stroke-width=%221.0924880399999999%22/%3E%3C/g%3E%3Cg%20stroke=%22#000%22%20stroke-width=%221.442%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%3E%3Cpath%20d=%22M143.141%2076.938l13.607%2016.672-6.917-20.534%22%20fill=%22#ccc%22%20stroke-width=%221.0924880399999999%22/%3E%3Cpath%20d=%22M135.757%2068.874l-9.232-19.613-6.45%203.724-2.07-3.583%2020.905-12.07%202.069%203.584-6.092%203.517%2012.03%2018.223s5.399-2.025%208.535.74c3.137%202.766%202.52%204.92%202.887%204.773l-23.688%2013.638s-2.848-3.696-2.16-6.796c.688-3.1%203.266-6.137%203.266-6.137z%22%20fill=%22red%22%20stroke-width=%221.0924880399999999%22/%3E%3C/g%3E%3Cpath%20d=%22M82.37%2090.227h94.082%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%225.292%22%20marker-end=%22url(#a)%22%20transform=%22translate(-48.145%20-76.529)%22/%3E%3Cg%20transform=%22translate(-93.518%20-26.741)%20scale(1.09073)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20cx=%22100.602%22%20cy=%2273.815%22%20r=%2214.559%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "a265c13d-af7a-437b-97ae-424872381a93",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 224,
                "y": 648
              }
            },
            {
              "id": "21039c06-c932-498c-968d-879a68d66795",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 952,
                "y": 680
              }
            },
            {
              "id": "02007399-7499-4b76-ad4f-91094344d055",
              "type": "basic.input",
              "data": {
                "name": "sin",
                "clock": false
              },
              "position": {
                "x": 224,
                "y": 696
              }
            },
            {
              "id": "9ad77afa-fcc5-44e9-9878-6043c7e652d1",
              "type": "basic.input",
              "data": {
                "name": "d",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": 224,
                "y": 744
              }
            },
            {
              "id": "b916c09a-8848-4500-a1a0-0cc09e8f23c1",
              "type": "basic.input",
              "data": {
                "name": "load",
                "clock": false
              },
              "position": {
                "x": 224,
                "y": 800
              }
            },
            {
              "id": "ba94d215-46ef-4e95-a551-1cbfc5b29f8a",
              "type": "basic.output",
              "data": {
                "name": "q",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 968,
                "y": 800
              }
            },
            {
              "id": "ec65c3cd-0951-4d74-bbfc-c37f87a78e66",
              "type": "basic.input",
              "data": {
                "name": "shift",
                "clock": false
              },
              "position": {
                "x": 224,
                "y": 856
              }
            },
            {
              "id": "4fef4dd0-ce33-42df-96b7-6c92c543f8eb",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 624,
                "y": 544
              }
            },
            {
              "id": "db9bff83-fad6-439b-8d86-89e21ad7870d",
              "type": "basic.code",
              "data": {
                "code": "//-- Numero de bits el registros de desplazamiento\nlocalparam N = 10;\n\nreg [N-1:0] q = INI;\n\nalways @(posedge clk)\n  if (load)\n    q <= d;\n  else if (shift)\n    q <= {si, q[N-1:1]};\n    \n//-- Sacar el bit de menor peso por serial-out    \nassign so = q[0];",
                "params": [
                  {
                    "name": "INI"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "si"
                    },
                    {
                      "name": "d",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "load"
                    },
                    {
                      "name": "shift"
                    }
                  ],
                  "out": [
                    {
                      "name": "so"
                    },
                    {
                      "name": "q",
                      "range": "[9:0]",
                      "size": 10
                    }
                  ]
                }
              },
              "position": {
                "x": 440,
                "y": 656
              },
              "size": {
                "width": 464,
                "height": 232
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "4fef4dd0-ce33-42df-96b7-6c92c543f8eb",
                "port": "constant-out"
              },
              "target": {
                "block": "db9bff83-fad6-439b-8d86-89e21ad7870d",
                "port": "INI"
              }
            },
            {
              "source": {
                "block": "a265c13d-af7a-437b-97ae-424872381a93",
                "port": "out"
              },
              "target": {
                "block": "db9bff83-fad6-439b-8d86-89e21ad7870d",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "02007399-7499-4b76-ad4f-91094344d055",
                "port": "out"
              },
              "target": {
                "block": "db9bff83-fad6-439b-8d86-89e21ad7870d",
                "port": "si"
              }
            },
            {
              "source": {
                "block": "ec65c3cd-0951-4d74-bbfc-c37f87a78e66",
                "port": "out"
              },
              "target": {
                "block": "db9bff83-fad6-439b-8d86-89e21ad7870d",
                "port": "shift"
              }
            },
            {
              "source": {
                "block": "b916c09a-8848-4500-a1a0-0cc09e8f23c1",
                "port": "out"
              },
              "target": {
                "block": "db9bff83-fad6-439b-8d86-89e21ad7870d",
                "port": "load"
              }
            },
            {
              "source": {
                "block": "db9bff83-fad6-439b-8d86-89e21ad7870d",
                "port": "so"
              },
              "target": {
                "block": "21039c06-c932-498c-968d-879a68d66795",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "9ad77afa-fcc5-44e9-9878-6043c7e652d1",
                "port": "out"
              },
              "target": {
                "block": "db9bff83-fad6-439b-8d86-89e21ad7870d",
                "port": "d"
              },
              "size": 10
            },
            {
              "source": {
                "block": "db9bff83-fad6-439b-8d86-89e21ad7870d",
                "port": "q"
              },
              "target": {
                "block": "ba94d215-46ef-4e95-a551-1cbfc5b29f8a",
                "port": "in"
              },
              "size": 10
            }
          ]
        }
      }
    },
    "725b7e2cb9666b5ed3183537d9c898f096dab82a": {
      "package": {
        "name": "1",
        "version": "0.1",
        "description": "Un bit constante a 1",
        "author": "Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2233.632%22%20height=%2269.34%22%20viewBox=%220%200%2031.530464%2065.006656%22%3E%3Cpath%20d=%22M3.517%2012.015L19%200l12.53%202.863-10.012%2043.262-9.746-2.227%207.7-34.532L8.03%2016.38z%22%20fill=%22green%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M17.593%2043.464l7.822%2010.472-6.56%207.919%202.27%202.043m-5.14-20.179l-4.542%2010.473-10.345%202.043.757%203.32%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%222.196%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "3d584b0a-29eb-47af-8c43-c0822282ef05",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 512,
                "y": 160
              }
            },
            {
              "id": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
              "type": "basic.code",
              "data": {
                "code": "//-- Bit constante a 1\nassign q = 1'b1;\n\n",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 168,
                "y": 112
              },
              "size": {
                "width": 256,
                "height": 160
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
                "port": "q"
              },
              "target": {
                "block": "3d584b0a-29eb-47af-8c43-c0822282ef05",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "273bc0f5f19a0d56bfda9f68a70f5433eaf829a4": {
      "package": {
        "name": "Heart_baud",
        "version": "0.1",
        "description": "Corazón de tics para generar las velocidades de transmisión serie en baudios (Por defecto emite tics a 11500 baudios)",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22197.514%22%20height=%22161.086%22%20viewBox=%220%200%2052.259014%2042.62059%22%3E%3Cpath%20d=%22M22.153%2040.47c-.727-1.25-1.853-2.474-3.987-4.332-1.156-1.006-1.86-1.565-5.863-4.658-3.138-2.425-4.704-3.77-6.519-5.601-1.813-1.831-2.88-3.29-3.794-5.191a15.321%2015.321%200%200%201-1.235-3.6c-.317-1.545-.36-2.067-.358-4.342.002-2.983.1-3.48%201.08-5.47.728-1.479%201.281-2.257%202.433-3.427C5.028%202.714%205.754%202.2%207.325%201.422%209.069.56%2010.33.333%2012.93.417c2.02.065%202.759.266%204.36%201.188%202.52%201.45%204.475%203.777%205.017%205.972.088.358.18.652.203.652.023%200%20.227-.42.453-.932.77-1.744%201.484-2.808%202.62-3.903C29.06.041%2034.542-.565%2038.974%201.912c1.81%201.012%203.283%202.485%204.425%204.424.898%201.527%201.358%203.555%201.436%206.34.113%204.035-.625%206.832-2.59%209.812-.779%201.182-1.355%201.899-2.437%203.028-1.745%201.823-3.318%203.162-7.033%205.988-2.344%201.782-3.734%202.929-5.745%204.74-1.611%201.452-4.108%203.98-4.349%204.402-.105.185-.2.336-.21.336-.012%200-.154-.23-.318-.512z%22%20fill=%22red%22/%3E%3Ctext%20y=%2262.314%22%20x=%2254.786%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%2215.216%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22matrix(.99853%200%200%201.00147%20-50.645%20-44.99)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%22.282%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2262.314%22%20x=%2254.786%22%20font-weight=%22700%22%20font-size=%228.695%22%3EBAUDS%3C/tspan%3E%3C/text%3E%3Cg%20transform=%22matrix(.79321%200%200%20.79321%20-39.33%20-27.72)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "fd355118-76eb-4396-b0db-3d3580fa2786",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 352,
                "y": 304
              }
            },
            {
              "id": "986f82d9-23a0-4d03-b5e4-a1a68c27056c",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 1336,
                "y": 456
              }
            },
            {
              "id": "685defdf-65c3-4e0f-a59e-30ba761c076d",
              "type": "basic.input",
              "data": {
                "name": "ena",
                "clock": false
              },
              "position": {
                "x": 352,
                "y": 616
              }
            },
            {
              "id": "7ad62a69-c2f1-42ba-8c7e-422babd6351e",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "115200",
                "local": false
              },
              "position": {
                "x": 880,
                "y": 40
              }
            },
            {
              "id": "1fb986cd-d6b4-4109-ab9f-1fe4d80733cb",
              "type": "basic.code",
              "data": {
                "code": "//-- Constantes para obtener las velocidades estándares\n`define B115200 103  //-- 103 for TX, 104 for RX\n`define B57600  208\n`define B38400  313\n`define B19200  625\n`define B9600   1250\n`define B4800   2500\n`define B2400   5000\n`define B1200   10000\n`define B600    20000\n`define B300    40000\n\n//-- Constante para calcular los baudios\nlocalparam BAUDRATE = (BAUD==115200) ? `B115200 : //-- OK\n                      (BAUD==57600)  ? `B57600  : //-- OK\n                      (BAUD==38400)  ? `B38400  : //-- Ok\n                      (BAUD==19200)  ? `B19200  : //-- OK\n                      (BAUD==9600)   ? `B9600   : //-- OK\n                      (BAUD==4800)   ? `B4800   : //-- OK \n                      (BAUD==2400)   ? `B2400   : //-- OK\n                      (BAUD==1200)   ? `B1200   : //-- OK\n                      (BAUD==600)    ? `B600    : //-- OK\n                      (BAUD==300)    ? `B300    : //-- OK\n                      `B115200 ;  //-- Por defecto 115200 baudios\n\n\n\n\n//-- Calcular el numero dde bits para almacenar el divisor\nlocalparam N = $clog2(BAUDRATE);\n\n//-- Contador para implementar el divisor\n//-- Es un contador modulo BAUDRATE\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk)\n\n  if (ena)\n    //-- Modo normal: contando. Cuando se llega al tope se\n    //-- comienza desde 0\n    divcounter <= (divcounter == BAUDRATE - 1) ? 0 : divcounter + 1;\n  else\n    //-- Modo detenido. Contador fijado a su valor máximo\n    //-- Cuando se activa, empieza desde 0\n    divcounter <= BAUDRATE - 1;\n\n//-- La salida es 1 cuando el contador es 0, si está habilitado\n//-- Se emite un tic cuando el contador es 0\nassign clk_out = (divcounter == 0) ? ena : 0;\n\n\n",
                "params": [
                  {
                    "name": "BAUD"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "ena"
                    }
                  ],
                  "out": [
                    {
                      "name": "clk_out"
                    }
                  ]
                }
              },
              "position": {
                "x": 640,
                "y": 176
              },
              "size": {
                "width": 576,
                "height": 624
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "7ad62a69-c2f1-42ba-8c7e-422babd6351e",
                "port": "constant-out"
              },
              "target": {
                "block": "1fb986cd-d6b4-4109-ab9f-1fe4d80733cb",
                "port": "BAUD"
              }
            },
            {
              "source": {
                "block": "fd355118-76eb-4396-b0db-3d3580fa2786",
                "port": "out"
              },
              "target": {
                "block": "1fb986cd-d6b4-4109-ab9f-1fe4d80733cb",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "685defdf-65c3-4e0f-a59e-30ba761c076d",
                "port": "out"
              },
              "target": {
                "block": "1fb986cd-d6b4-4109-ab9f-1fe4d80733cb",
                "port": "ena"
              }
            },
            {
              "source": {
                "block": "1fb986cd-d6b4-4109-ab9f-1fe4d80733cb",
                "port": "clk_out"
              },
              "target": {
                "block": "986f82d9-23a0-4d03-b5e4-a1a68c27056c",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "d3fb4e54055f0190931bebe6b552777e323560b3": {
      "package": {
        "name": "Valor_1_2bits",
        "version": "0.0.1",
        "description": "Valor constante 1 para bus de 2 bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22129.866%22%20height=%22300.77%22%20viewBox=%220%200%20121.74975%20281.97198%22%3E%3Cg%20font-weight=%22400%22%20font-family=%22Ubuntu%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctext%20style=%22line-height:125%25;-inkscape-font-specification:'Ubuntu%20Mono'%22%20x=%22293.115%22%20y=%22648.344%22%20font-size=%22335.399%22%20fill=%22green%22%20transform=%22translate(-318.27%20-440.732)%22%3E%3Ctspan%20x=%22293.115%22%20y=%22648.344%22%3E1%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;-inkscape-font-specification:'Ubuntu%20Mono'%22%20x=%22341.722%22%20y=%22721.624%22%20font-size=%2283.077%22%20transform=%22translate(-318.27%20-440.732)%22%3E%3Ctspan%20x=%22341.722%22%20y=%22721.624%22%3E01%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "6a253ddf-22b2-43cd-ba6f-561bd1af6970",
              "type": "basic.output",
              "data": {
                "name": "k",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 928,
                "y": 256
              }
            },
            {
              "id": "ad7918eb-22dd-4b6c-949f-e428f5a55530",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "1",
                "local": true
              },
              "position": {
                "x": 728,
                "y": 160
              }
            },
            {
              "id": "7334bab5-c13e-42c6-aef4-6a965b42baeb",
              "type": "1577535d38e0077281a8de7dc00933b07ec4f543",
              "position": {
                "x": 728,
                "y": 256
              },
              "size": {
                "width": 96,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "7334bab5-c13e-42c6-aef4-6a965b42baeb",
                "port": "603ddbc9-28cf-4ecc-a0c6-a5a2ce3b0b26"
              },
              "target": {
                "block": "6a253ddf-22b2-43cd-ba6f-561bd1af6970",
                "port": "in"
              },
              "size": 2
            },
            {
              "source": {
                "block": "ad7918eb-22dd-4b6c-949f-e428f5a55530",
                "port": "constant-out"
              },
              "target": {
                "block": "7334bab5-c13e-42c6-aef4-6a965b42baeb",
                "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
              }
            }
          ]
        }
      }
    },
    "1577535d38e0077281a8de7dc00933b07ec4f543": {
      "package": {
        "name": "Constante-2bits",
        "version": "0.0.1",
        "description": "Valor genérico constante, de 2 bits. Su valor se introduce como parámetro. Por defecto vale 0",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22145.608%22%20height=%22247.927%22%20viewBox=%220%200%20136.50729%20232.43134%22%3E%3Ctext%20style=%22line-height:125%25;-inkscape-font-specification:'Ubuntu%20Mono'%22%20x=%22293.115%22%20y=%22648.344%22%20font-weight=%22400%22%20font-size=%22335.399%22%20font-family=%22Ubuntu%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22%20transform=%22translate(-316.929%20-415.913)%22%3E%3Ctspan%20x=%22293.115%22%20y=%22648.344%22%3Ek%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "603ddbc9-28cf-4ecc-a0c6-a5a2ce3b0b26",
              "type": "basic.output",
              "data": {
                "name": "k",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 960,
                "y": 248
              }
            },
            {
              "id": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 728,
                "y": 112
              }
            },
            {
              "id": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
              "type": "basic.code",
              "data": {
                "code": "assign k = VALUE;",
                "params": [
                  {
                    "name": "VALUE"
                  }
                ],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "k",
                      "range": "[1:0]",
                      "size": 2
                    }
                  ]
                }
              },
              "position": {
                "x": 672,
                "y": 248
              },
              "size": {
                "width": 208,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "k"
              },
              "target": {
                "block": "603ddbc9-28cf-4ecc-a0c6-a5a2ce3b0b26",
                "port": "in"
              },
              "size": 2
            },
            {
              "source": {
                "block": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
                "port": "constant-out"
              },
              "target": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "VALUE"
              }
            }
          ]
        }
      }
    },
    "d54956415dc78ab799a078f29fe5e3734704583b": {
      "package": {
        "name": "Join-8-2",
        "version": "0.0.1",
        "description": "Agregador de buses de 8 y 2 bits a uno de 10bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2277.792%22%20height=%2245.277%22%20viewBox=%220%200%2072.930084%2042.447511%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%221.703%22%20y=%226.994%22%20font-weight=%22400%22%20font-size=%229.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%3E%3Ctspan%20x=%221.703%22%20y=%226.994%22%3EH%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M72.457%2017.731H34.589l-8.91-8.909H.47v4.594h24.166l7.434%207.812-7.308%208.19H.569v4.032h25.452l8.694-8.316h37.673z%22%20fill=%22green%22%20stroke=%22green%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%222.226%22%20y=%2242.448%22%20font-weight=%22400%22%20font-size=%229.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%3E%3Ctspan%20x=%222.226%22%20y=%2242.448%22%3EL%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "3626259f-60dd-47d8-bbce-56b750dd45dc",
              "type": "basic.input",
              "data": {
                "name": "i1",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 136,
                "y": 240
              }
            },
            {
              "id": "047e6936-4378-4319-bc89-0d8c54b65f00",
              "type": "basic.output",
              "data": {
                "name": "o",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 704,
                "y": 288
              }
            },
            {
              "id": "0a460618-c59d-4eb4-b2ef-802f572c382f",
              "type": "basic.input",
              "data": {
                "name": "i0",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": 136,
                "y": 336
              }
            },
            {
              "id": "3545528c-05e2-4e95-8223-5b7b77587423",
              "type": "basic.code",
              "data": {
                "code": "assign o = {i1,i0};\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i1",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "i0",
                      "range": "[1:0]",
                      "size": 2
                    }
                  ],
                  "out": [
                    {
                      "name": "o",
                      "range": "[9:0]",
                      "size": 10
                    }
                  ]
                }
              },
              "position": {
                "x": 320,
                "y": 224
              },
              "size": {
                "width": 288,
                "height": 192
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "3626259f-60dd-47d8-bbce-56b750dd45dc",
                "port": "out"
              },
              "target": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "i1"
              },
              "size": 8
            },
            {
              "source": {
                "block": "0a460618-c59d-4eb4-b2ef-802f572c382f",
                "port": "out"
              },
              "target": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "i0"
              },
              "size": 2
            },
            {
              "source": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "o"
              },
              "target": {
                "block": "047e6936-4378-4319-bc89-0d8c54b65f00",
                "port": "in"
              },
              "size": 10
            }
          ]
        }
      }
    },
    "b959c256104d1064a5ef7b38632ffb6eed3b396f": {
      "package": {
        "name": "Biestable-Set-Reset",
        "version": "0.1",
        "description": "Biestable con entradas de Set y Reset síncronas, para poner y quitar notaficaciones de eventos",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20234.62951%20290.44458%22%20id=%22svg30%22%20width=%22234.63%22%20height=%22290.445%22%3E%3Cstyle%20id=%22style2%22%3E.st0%7Bdisplay:none%7D.st1%7Bfill:none;stroke:#303030;stroke-width:.7;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10%7D.st2%7Bfill:#303030%7D%3C/style%3E%3Cg%20id=%22layer1%22%20transform=%22translate(3.47%203.198)%22%3E%3Cpath%20class=%22st1%22%20d=%22M21.358%20145.947a63.75%2063.75%200%200%200%201.152%2011.049%22%20id=%22path9%22%20fill=%22none%22%20stroke=%22#303030%22%20stroke-width=%226.776%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20stroke-miterlimit=%2210%22/%3E%3Cpath%20class=%22st1%22%20d=%22M48.702%2092.116a64.784%2064.784%200%200%200-12.559%2011.68%2064.99%2064.99%200%200%200-12.69%2024.809%22%20id=%22path11%22%20fill=%22none%22%20stroke=%22#303030%22%20stroke-width=%226.776%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20stroke-miterlimit=%2210%22/%3E%3Cpath%20id=%22line17%22%20class=%22st1%22%20fill=%22none%22%20stroke=%22#303030%22%20stroke-width=%226.776%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20stroke-miterlimit=%2210%22%20d=%22M184.865%20207.591L41.298%20262.802%22/%3E%3Cpath%20id=%22path21-3%22%20d=%22M185.448%20175.07l.37.154c2.52.831%204.718%202.386%206.634%204.249%202.02%202.322%203.694%204.777%204.423%208.713%201.496%208.074-3.286%2016.05-10.95%2018.997l-1.06.408L41.298%20262.8l-.733.283c-8.003%203.077-17.551.461-21.82-6.975-3.3-5.748-2.736-12.198.418-21.613%203.155-9.414%202.86-21.856-1.644-33.55l.041.003-12.507-32.667c-12.88-33.415-.747-70.376%2027.41-90.31l-1.102-2.749c-3.685-9.583%201.14-20.438%2010.723-24.124%209.583-3.685%2020.439%201.14%2024.124%2010.723l1.654%203.239c34.881-3.556%2068.594%2015.855%2081.318%2049.33l15.24%2038.432c4.795%208.723%2011.831%2015.955%2021.028%2022.248z%22%20fill=%22#fff%22%20stroke=%22#303030%22%20stroke-width=%227%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20stroke-miterlimit=%2210%22/%3E%3Cpath%20d=%22M64.268%20268.838l45.015-17.115s7.963%2024.296-14.427%2030.38c-22.39%206.086-30.588-13.265-30.588-13.265z%22%20id=%22path826%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%227%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3Cg%20id=%22layer3%22%3E%3Crect%20id=%22rect845%22%20width=%22135.189%22%20height=%22135.189%22%20x=%2295.783%22%20y=%223.671%22%20ry=%2219.847%22%20fill=%22#55acee%22%20stroke=%22#303030%22%20stroke-width=%227%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20stroke-miterlimit=%2210%22/%3E%3C/g%3E%3Cg%20id=%22layer4%22%3E%3Cpath%20class=%22st2%22%20d=%22M172.724%2052.533V27.647h-9.888L144.047%2037.7l2.308%208.9%2014.833-8.076h.33v74.824H172.724V52.533z%22%20id=%22path7%22%20fill=%22#303030%22%20stroke-width=%2214.425%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9f09a4af-8f7a-45c3-af7b-293a244e76d9",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 200,
                "y": 64
              }
            },
            {
              "id": "3ae2d46d-7981-497a-899f-b60bfae0f43e",
              "type": "basic.input",
              "data": {
                "name": "set",
                "clock": false
              },
              "position": {
                "x": 200,
                "y": 152
              }
            },
            {
              "id": "1cb167a4-9e2a-416b-803e-da7b6151eaa5",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 720,
                "y": 152
              }
            },
            {
              "id": "86eb8c81-17fc-4371-bd21-51f429191f3c",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 200,
                "y": 232
              }
            },
            {
              "id": "bf12a800-db30-4289-a7c5-8c08438f9a39",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 464,
                "y": 0
              }
            },
            {
              "id": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
              "type": "basic.code",
              "data": {
                "code": "reg q = INI;\n\nalways @(posedge clk)\n  if (set)\n    q <= 1'b1;\n  else if (rst)\n    q<=1'b0;",
                "params": [
                  {
                    "name": "INI"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "set"
                    },
                    {
                      "name": "rst"
                    }
                  ],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 400,
                "y": 120
              },
              "size": {
                "width": 224,
                "height": 128
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9f09a4af-8f7a-45c3-af7b-293a244e76d9",
                "port": "out"
              },
              "target": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "clk"
              },
              "vertices": [
                {
                  "x": 336,
                  "y": 104
                }
              ]
            },
            {
              "source": {
                "block": "3ae2d46d-7981-497a-899f-b60bfae0f43e",
                "port": "out"
              },
              "target": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "set"
              }
            },
            {
              "source": {
                "block": "86eb8c81-17fc-4371-bd21-51f429191f3c",
                "port": "out"
              },
              "target": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "rst"
              },
              "vertices": [
                {
                  "x": 344,
                  "y": 248
                }
              ]
            },
            {
              "source": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "q"
              },
              "target": {
                "block": "1cb167a4-9e2a-416b-803e-da7b6151eaa5",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "bf12a800-db30-4289-a7c5-8c08438f9a39",
                "port": "constant-out"
              },
              "target": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "INI"
              }
            }
          ]
        }
      }
    },
    "3d2d16068c495f9dcae3633c3321a073853d155f": {
      "package": {
        "name": "Contador-4bits-up-rst",
        "version": "0.1",
        "description": "Contador módulo M, ascendente, de 4 bits, con reset ",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22327.118%22%20height=%22304.435%22%20viewBox=%220%200%2086.549973%2080.548402%22%3E%3Cdefs%3E%3Cmarker%20id=%22a%22%20orient=%22auto%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M2.308%200l-3.46%202v-4z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22%20stroke=%22#00f%22%20stroke-width=%22.5332%22/%3E%3C/marker%3E%3C/defs%3E%3Cg%20transform=%22translate(-59.162%20-4.54)%22%3E%3Cpath%20d=%22M138.803%2048.49V16.91%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%222.806%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20marker-end=%22url(#a)%22/%3E%3Crect%20rx=%222.807%22%20ry=%222.807%22%20y=%225.289%22%20x=%2299.747%22%20height=%2247.849%22%20width=%2229.538%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%221.497%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20transform=%22scale(.94516%201.05802)%22%20y=%2240.921%22%20x=%22108.575%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%228.982%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%221.497%22%3E%3Ctspan%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2240.921%22%20x=%22108.575%22%20font-weight=%22700%22%20font-size=%2235.656%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M100.868%2030.283h27.764%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222.245%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20rx=%222.807%22%20ry=%222.807%22%20y=%225.289%22%20x=%2266.333%22%20height=%2247.849%22%20width=%2229.538%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%221.497%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20transform=%22scale(.94516%201.05802)%22%20y=%2240.921%22%20x=%2273.223%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%228.982%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%221.497%22%3E%3Ctspan%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2240.921%22%20x=%2273.223%22%20font-weight=%22700%22%20font-size=%2235.656%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M67.454%2030.283h27.764%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222.245%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Cg%20transform=%22matrix(1.00937%200%200%201.00937%20-27.38%20-4.42)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(1.00937%200%200%201.00937%2028.939%20-4.42)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c90da543-4b9c-4f4c-a5fa-7e1166ee1dd3",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 264,
                "y": 176
              }
            },
            {
              "id": "c659caa2-1cf7-4da3-855a-2b0c0ecc7510",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 800,
                "y": 200
              }
            },
            {
              "id": "743b5299-2d89-4783-b7c9-12a5b36df406",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 264,
                "y": 280
              }
            },
            {
              "id": "cc17ff4d-1c27-4dc3-a14c-da730d54750e",
              "type": "basic.output",
              "data": {
                "name": "ov"
              },
              "position": {
                "x": 800,
                "y": 352
              }
            },
            {
              "id": "26aba23f-8567-4e9b-bd45-c26724030f33",
              "type": "basic.input",
              "data": {
                "name": "cnt",
                "clock": false
              },
              "position": {
                "x": 264,
                "y": 376
              }
            },
            {
              "id": "eb9f9c33-e717-43f0-98eb-dbd9c278fa8c",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "16",
                "local": false
              },
              "position": {
                "x": 528,
                "y": 48
              }
            },
            {
              "id": "b35ae5de-a490-4f7b-9200-ac52cd3f333e",
              "type": "basic.info",
              "data": {
                "info": "**Parámetro**: Módulo del contador",
                "readonly": true
              },
              "position": {
                "x": 472,
                "y": 32
              },
              "size": {
                "width": 280,
                "height": 56
              }
            },
            {
              "id": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
              "type": "basic.code",
              "data": {
                "code": "//-- Numero de bits del contador\nlocalparam N = 4; \n\n//-- En contadores de N bits:\n//-- M = 2 ** N\n\n//-- Internamente usamos un bit mas\n//-- (N+1) bits\nreg [N:0] qi = 0;\n\nalways @(posedge clk)\n  if (rst | ov)\n    qi <= 2'b00;\n  else\n    if (cnt)\n      qi <= qi + 1;\n      \nassign q = qi;\n\n//-- Comprobar overflow\nassign ov = (qi == M);\n    ",
                "params": [
                  {
                    "name": "M"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "rst"
                    },
                    {
                      "name": "cnt"
                    }
                  ],
                  "out": [
                    {
                      "name": "q",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "ov"
                    }
                  ]
                }
              },
              "position": {
                "x": 408,
                "y": 160
              },
              "size": {
                "width": 336,
                "height": 296
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "743b5299-2d89-4783-b7c9-12a5b36df406",
                "port": "out"
              },
              "target": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "eb9f9c33-e717-43f0-98eb-dbd9c278fa8c",
                "port": "constant-out"
              },
              "target": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "M"
              }
            },
            {
              "source": {
                "block": "26aba23f-8567-4e9b-bd45-c26724030f33",
                "port": "out"
              },
              "target": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "cnt"
              }
            },
            {
              "source": {
                "block": "c90da543-4b9c-4f4c-a5fa-7e1166ee1dd3",
                "port": "out"
              },
              "target": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "ov"
              },
              "target": {
                "block": "cc17ff4d-1c27-4dc3-a14c-da730d54750e",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "q"
              },
              "target": {
                "block": "c659caa2-1cf7-4da3-855a-2b0c0ecc7510",
                "port": "in"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "2cb0b366b18a00e12ffc963c4a8fcc7749606859": {
      "package": {
        "name": "Cable",
        "version": "0.1",
        "description": "Un simple cable pasivo, para organizar las conexiones complicadas",
        "author": "Juan Gonzalez-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22352.857%22%20height=%224%22%20viewBox=%220%200%2093.360123%201.0583333%22%3E%3Cpath%20d=%22M0%20.53h93.36%22%20fill=%22green%22%20stroke=%22green%22%20stroke-width=%221.058%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "fa0b6dda-1c99-4e8b-a140-cda4eadf6837",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 224,
                "y": 184
              }
            },
            {
              "id": "76f5099a-54df-47eb-b828-f2ab2f211687",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 632,
                "y": 184
              }
            },
            {
              "id": "f77fa55a-aa72-4444-9bd8-ba3e03253d9b",
              "type": "basic.code",
              "data": {
                "code": "assign o = i;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i"
                    }
                  ],
                  "out": [
                    {
                      "name": "o"
                    }
                  ]
                }
              },
              "position": {
                "x": 368,
                "y": 184
              },
              "size": {
                "width": 192,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "fa0b6dda-1c99-4e8b-a140-cda4eadf6837",
                "port": "out"
              },
              "target": {
                "block": "f77fa55a-aa72-4444-9bd8-ba3e03253d9b",
                "port": "i"
              }
            },
            {
              "source": {
                "block": "f77fa55a-aa72-4444-9bd8-ba3e03253d9b",
                "port": "o"
              },
              "target": {
                "block": "76f5099a-54df-47eb-b828-f2ab2f211687",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}