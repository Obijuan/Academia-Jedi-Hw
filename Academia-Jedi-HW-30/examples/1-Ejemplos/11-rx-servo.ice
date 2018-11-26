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
          "id": "293de7c7-dc21-46ef-a11a-36569fe272de",
          "type": "basic.output",
          "data": {
            "name": "SERVO",
            "pins": [
              {
                "index": "0",
                "name": "D0",
                "value": "119"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 824,
            "y": -224
          }
        },
        {
          "id": "2396837c-1e0d-4c77-a37f-59306e8f5b72",
          "type": "basic.input",
          "data": {
            "name": "Serial",
            "pins": [
              {
                "index": "0",
                "name": "RX",
                "value": "9"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -688,
            "y": -184
          }
        },
        {
          "id": "1ecd8065-d5b1-48b9-9b60-e00284971fde",
          "type": "basic.output",
          "data": {
            "name": "Zumbador",
            "pins": [
              {
                "index": "0",
                "name": "D12",
                "value": "143"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": -216,
            "y": -32
          }
        },
        {
          "id": "0f09e687-79c5-45ad-88ad-33d08911d696",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "LED7",
                "value": "104"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 712,
            "y": 8
          }
        },
        {
          "id": "59251856-f399-4dfc-91b8-553d2674293b",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "D13",
                "value": "144"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": -216,
            "y": 48
          }
        },
        {
          "id": "5aba24ce-7967-40f3-a50a-edbf5ed1983b",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "115200",
            "local": false
          },
          "position": {
            "x": -536,
            "y": -320
          }
        },
        {
          "id": "4db7e6d6-1225-403b-9a2f-443e346fadd0",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "\"e\"",
            "local": false
          },
          "position": {
            "x": -40,
            "y": -88
          }
        },
        {
          "id": "48493cfa-5b4d-4da1-a6e0-8cd26b6a30c3",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "\"d\"",
            "local": false
          },
          "position": {
            "x": -32,
            "y": 112
          }
        },
        {
          "id": "378c0c7d-baf1-41cc-999c-8b6c248afefc",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "1",
            "local": false
          },
          "position": {
            "x": 376,
            "y": -104
          }
        },
        {
          "id": "e2074a54-6fd6-4cba-9457-3fe4fc8e1100",
          "type": "b9ce1495492d9bb52158ff7ab53777abfad9c97d",
          "position": {
            "x": -536,
            "y": -224
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "bd628095-d666-4f84-8d2a-bb692408c5ba",
          "type": "basic.info",
          "data": {
            "info": "Emitir un **flash** y un    \npitido al recibir un dato",
            "readonly": true
          },
          "position": {
            "x": -336,
            "y": -88
          },
          "size": {
            "width": 224,
            "height": 56
          }
        },
        {
          "id": "bb1528a3-673a-4547-82a2-43609cf9b534",
          "type": "basic.info",
          "data": {
            "info": "## Ejemplo 11: Control de un servo a cualquier posición\n\nDesde el PC se envían las posiciones de 8 bits a las que mover  \nel servo. Adicionalmente, con el comando \"d\" se deshabilita  \nel servo, y con el comando \"e\" se habilita",
            "readonly": true
          },
          "position": {
            "x": -680,
            "y": -472
          },
          "size": {
            "width": 616,
            "height": 112
          }
        },
        {
          "id": "48245bdc-a0e5-43fb-9ba2-20bb160453ba",
          "type": "basic.info",
          "data": {
            "info": "**Receptor**  \n**serie**",
            "readonly": true
          },
          "position": {
            "x": -552,
            "y": -120
          },
          "size": {
            "width": 120,
            "height": 56
          }
        },
        {
          "id": "5ddaafe8-6f23-43a9-81a5-3d1dc3a50cfa",
          "type": "basic.info",
          "data": {
            "info": "**Línea serie**  \n**de entrada**",
            "readonly": true
          },
          "position": {
            "x": -672,
            "y": -224
          },
          "size": {
            "width": 160,
            "height": 56
          }
        },
        {
          "id": "8de48638-f66a-423e-89ff-d431e2990496",
          "type": "7fcd7f2ddb90ab5945172ae46dc8c64930ee06fc",
          "position": {
            "x": -368,
            "y": 32
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "ff6ea60e-ec4f-4f53-ab5d-8dcf1fa09e1b",
          "type": "b959c256104d1064a5ef7b38632ffb6eed3b396f",
          "position": {
            "x": 376,
            "y": -8
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "83fbf9f0-2ce7-456f-b952-f1f9386ec702",
          "type": "ca73164c83e3f1cf6728c52cd70327629263bb51",
          "position": {
            "x": -40,
            "y": 8
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "d962f965-547a-4fdc-b9ad-7c4736bb8611",
          "type": "ca73164c83e3f1cf6728c52cd70327629263bb51",
          "position": {
            "x": -32,
            "y": 208
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "7204783d-0a70-4bbc-93d8-85e06ec2d8e2",
          "type": "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6",
          "position": {
            "x": 384,
            "y": -176
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "513c7b7b-fae3-4717-b955-fd87d1030009",
          "type": "35f267d0df6ffcb7fc33753bc9df9cf083642cca",
          "position": {
            "x": 248,
            "y": -136
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "362a10a8-a1f6-49d7-afaa-d874bb505244",
          "type": "81613874c6152f06c06ed7014bf4235900cfcc30",
          "position": {
            "x": 96,
            "y": 64
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "ce0137be-4c8b-4592-82da-6976dc1edf1d",
          "type": "basic.info",
          "data": {
            "info": "Posición del servo",
            "readonly": true
          },
          "position": {
            "x": -392,
            "y": -240
          },
          "size": {
            "width": 160,
            "height": 40
          }
        },
        {
          "id": "de628da8-4d35-4393-aafe-edc9db28c0d9",
          "type": "basic.info",
          "data": {
            "info": "**Controlador**  \n**del servo**",
            "readonly": true
          },
          "position": {
            "x": 688,
            "y": -336
          },
          "size": {
            "width": 144,
            "height": 56
          }
        },
        {
          "id": "3a402ec1-4024-4fd8-9c33-0966022b7562",
          "type": "basic.info",
          "data": {
            "info": "tic de posición  \nrecibida",
            "readonly": true
          },
          "position": {
            "x": -376,
            "y": -192
          },
          "size": {
            "width": 192,
            "height": 48
          }
        },
        {
          "id": "1112dae2-742a-4b2d-936e-2838eb6e86c9",
          "type": "basic.info",
          "data": {
            "info": "**Comando enable**  \nHabilitar servo",
            "readonly": true
          },
          "position": {
            "x": -48,
            "y": -112
          },
          "size": {
            "width": 176,
            "height": 48
          }
        },
        {
          "id": "c87b7a8b-08cd-4db8-a44f-98ae95b2705e",
          "type": "basic.info",
          "data": {
            "info": "**Comando disable**  \nDeshabilitar servo",
            "readonly": true
          },
          "position": {
            "x": -48,
            "y": 88
          },
          "size": {
            "width": 176,
            "height": 48
          }
        },
        {
          "id": "06a01f0d-147c-46b3-9f51-8431dcbf848e",
          "type": "basic.info",
          "data": {
            "info": "Comando  \ndetectado",
            "readonly": true
          },
          "position": {
            "x": 160,
            "y": -104
          },
          "size": {
            "width": 128,
            "height": 48
          }
        },
        {
          "id": "6e559277-8cb3-4ae9-9a81-d5a77ab3d94e",
          "type": "basic.info",
          "data": {
            "info": "Si es un comando  \nno se escribe en  \nel servo",
            "readonly": true
          },
          "position": {
            "x": 520,
            "y": -160
          },
          "size": {
            "width": 152,
            "height": 64
          }
        },
        {
          "id": "4d41e57e-2b5b-4ea9-bf21-abd8a9a147f1",
          "type": "basic.info",
          "data": {
            "info": "Estado del servo:  \n0: Deshabilitado  \n1: Habilitado",
            "readonly": true
          },
          "position": {
            "x": 376,
            "y": 96
          },
          "size": {
            "width": 152,
            "height": 72
          }
        },
        {
          "id": "c370b57d-0a1b-494f-96db-0794480870a2",
          "type": "basic.info",
          "data": {
            "info": "Mostrar el estado  \ndel servo en un LED",
            "readonly": true
          },
          "position": {
            "x": 696,
            "y": -32
          },
          "size": {
            "width": 184,
            "height": 56
          }
        },
        {
          "id": "e0a32cf6-67e0-4179-b052-d8f581831bf5",
          "type": "basic.info",
          "data": {
            "info": "Es comando de  \ndisable",
            "readonly": true
          },
          "position": {
            "x": 120,
            "y": 184
          },
          "size": {
            "width": 136,
            "height": 48
          }
        },
        {
          "id": "d1546e3b-f506-42e3-b9c1-8f1901572964",
          "type": "basic.info",
          "data": {
            "info": "Es comando de  \nenable",
            "readonly": true
          },
          "position": {
            "x": 104,
            "y": -8
          },
          "size": {
            "width": 136,
            "height": 48
          }
        },
        {
          "id": "d3e8a5e0-941d-4760-88c3-914c16850c1e",
          "type": "b0ff9e2bfc7cb15f6a8db0f0277dc257a3a8ca9f",
          "position": {
            "x": 688,
            "y": -256
          },
          "size": {
            "width": 96,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "2396837c-1e0d-4c77-a37f-59306e8f5b72",
            "port": "out"
          },
          "target": {
            "block": "e2074a54-6fd6-4cba-9457-3fe4fc8e1100",
            "port": "2f6a3bb1-2010-4f69-a978-717528dc5160"
          }
        },
        {
          "source": {
            "block": "5aba24ce-7967-40f3-a50a-edbf5ed1983b",
            "port": "constant-out"
          },
          "target": {
            "block": "e2074a54-6fd6-4cba-9457-3fe4fc8e1100",
            "port": "38758516-ff7d-4688-a171-e35bb9f50bd0"
          }
        },
        {
          "source": {
            "block": "8de48638-f66a-423e-89ff-d431e2990496",
            "port": "b561399c-1834-4307-bc22-a28797738d9b"
          },
          "target": {
            "block": "59251856-f399-4dfc-91b8-553d2674293b",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8de48638-f66a-423e-89ff-d431e2990496",
            "port": "73df11e4-8cd4-4962-8a5e-db4144c87c46"
          },
          "target": {
            "block": "1ecd8065-d5b1-48b9-9b60-e00284971fde",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "d3e8a5e0-941d-4760-88c3-914c16850c1e",
            "port": "17cd3530-95be-4f0b-897e-1893c9831f1b"
          },
          "target": {
            "block": "293de7c7-dc21-46ef-a11a-36569fe272de",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "e2074a54-6fd6-4cba-9457-3fe4fc8e1100",
            "port": "b82422cd-6ac3-4b32-a8b8-3aff2a066775"
          },
          "target": {
            "block": "d3e8a5e0-941d-4760-88c3-914c16850c1e",
            "port": "fbd5aac5-ae58-4153-9a1e-a2bec9ce86b4"
          },
          "size": 8
        },
        {
          "source": {
            "block": "e2074a54-6fd6-4cba-9457-3fe4fc8e1100",
            "port": "d7ebc6ce-2cde-4e33-8c9d-b439fd2cb3e0"
          },
          "target": {
            "block": "8de48638-f66a-423e-89ff-d431e2990496",
            "port": "7137cbf9-343c-4840-9288-2928cde51e31"
          },
          "vertices": [
            {
              "x": -424,
              "y": 40
            }
          ]
        },
        {
          "source": {
            "block": "ff6ea60e-ec4f-4f53-ab5d-8dcf1fa09e1b",
            "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
          },
          "target": {
            "block": "d3e8a5e0-941d-4760-88c3-914c16850c1e",
            "port": "fac4aba8-78c9-4e9e-918b-3fb3a21c64a7"
          }
        },
        {
          "source": {
            "block": "ff6ea60e-ec4f-4f53-ab5d-8dcf1fa09e1b",
            "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
          },
          "target": {
            "block": "0f09e687-79c5-45ad-88ad-33d08911d696",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4db7e6d6-1225-403b-9a2f-443e346fadd0",
            "port": "constant-out"
          },
          "target": {
            "block": "83fbf9f0-2ce7-456f-b952-f1f9386ec702",
            "port": "bde24908-c5bf-4286-b7e3-e42a11ca5c68"
          }
        },
        {
          "source": {
            "block": "83fbf9f0-2ce7-456f-b952-f1f9386ec702",
            "port": "0344dacc-8583-456b-b377-8cb4ab97cf94"
          },
          "target": {
            "block": "ff6ea60e-ec4f-4f53-ab5d-8dcf1fa09e1b",
            "port": "3ae2d46d-7981-497a-899f-b60bfae0f43e"
          }
        },
        {
          "source": {
            "block": "e2074a54-6fd6-4cba-9457-3fe4fc8e1100",
            "port": "b82422cd-6ac3-4b32-a8b8-3aff2a066775"
          },
          "target": {
            "block": "83fbf9f0-2ce7-456f-b952-f1f9386ec702",
            "port": "66770249-8f14-4f0c-b645-56f2f2ffc1b2"
          },
          "vertices": [
            {
              "x": -80,
              "y": -96
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "48493cfa-5b4d-4da1-a6e0-8cd26b6a30c3",
            "port": "constant-out"
          },
          "target": {
            "block": "d962f965-547a-4fdc-b9ad-7c4736bb8611",
            "port": "bde24908-c5bf-4286-b7e3-e42a11ca5c68"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "d962f965-547a-4fdc-b9ad-7c4736bb8611",
            "port": "0344dacc-8583-456b-b377-8cb4ab97cf94"
          },
          "target": {
            "block": "ff6ea60e-ec4f-4f53-ab5d-8dcf1fa09e1b",
            "port": "86eb8c81-17fc-4371-bd21-51f429191f3c"
          },
          "vertices": [
            {
              "x": 272,
              "y": 136
            }
          ]
        },
        {
          "source": {
            "block": "e2074a54-6fd6-4cba-9457-3fe4fc8e1100",
            "port": "b82422cd-6ac3-4b32-a8b8-3aff2a066775"
          },
          "target": {
            "block": "d962f965-547a-4fdc-b9ad-7c4736bb8611",
            "port": "66770249-8f14-4f0c-b645-56f2f2ffc1b2"
          },
          "vertices": [
            {
              "x": -80,
              "y": 104
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "378c0c7d-baf1-41cc-999c-8b6c248afefc",
            "port": "constant-out"
          },
          "target": {
            "block": "ff6ea60e-ec4f-4f53-ab5d-8dcf1fa09e1b",
            "port": "bf12a800-db30-4289-a7c5-8c08438f9a39"
          }
        },
        {
          "source": {
            "block": "513c7b7b-fae3-4717-b955-fd87d1030009",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "7204783d-0a70-4bbc-93d8-85e06ec2d8e2",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          }
        },
        {
          "source": {
            "block": "e2074a54-6fd6-4cba-9457-3fe4fc8e1100",
            "port": "d7ebc6ce-2cde-4e33-8c9d-b439fd2cb3e0"
          },
          "target": {
            "block": "7204783d-0a70-4bbc-93d8-85e06ec2d8e2",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          },
          "vertices": [
            {
              "x": -272,
              "y": -152
            }
          ]
        },
        {
          "source": {
            "block": "83fbf9f0-2ce7-456f-b952-f1f9386ec702",
            "port": "0344dacc-8583-456b-b377-8cb4ab97cf94"
          },
          "target": {
            "block": "362a10a8-a1f6-49d7-afaa-d874bb505244",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "d962f965-547a-4fdc-b9ad-7c4736bb8611",
            "port": "0344dacc-8583-456b-b377-8cb4ab97cf94"
          },
          "target": {
            "block": "362a10a8-a1f6-49d7-afaa-d874bb505244",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          }
        },
        {
          "source": {
            "block": "362a10a8-a1f6-49d7-afaa-d874bb505244",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "513c7b7b-fae3-4717-b955-fd87d1030009",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "7204783d-0a70-4bbc-93d8-85e06ec2d8e2",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "d3e8a5e0-941d-4760-88c3-914c16850c1e",
            "port": "9bd6b68b-84ad-4608-9891-47a8f989eb10"
          },
          "vertices": [
            {
              "x": 504,
              "y": -168
            }
          ]
        }
      ]
    }
  },
  "dependencies": {
    "b9ce1495492d9bb52158ff7ab53777abfad9c97d": {
      "package": {
        "name": "Serial-rx",
        "version": "0.2",
        "description": "Receptor serie asíncrono. Velocidad por defecto: 115200 baudios",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20height=%22223.269%22%20width=%22293.137%22%20viewBox=%220%200%20274.81662%20209.31615%22%3E%3Cg%20transform=%22matrix(-1.04907%200%200%201.04907%20-113.38%20-102.544)%22%20stroke=%22#000%22%3E%3Cpath%20d=%22M-170.798%20177.526l.315%2036.011%2040.397-37.263v-33.51z%22%20fill=%22#fff%22%20stroke-width=%223.541%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M-308.584%20177.892l53.235-35.7%20124.635.628-39.456%2035.7%22%20fill=%22#fff%22%20stroke-width=%223.541%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Crect%20ry=%223.509%22%20height=%2236.325%22%20width=%22139.039%22%20y=%22178.153%22%20x=%22-308.895%22%20fill=%22#fff%22%20stroke-width=%223.541%22%20stroke-linecap=%22square%22/%3E%3Cg%20transform=%22matrix(1.88858%200%200%201.88858%20-312.436%20138.651)%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22%3E%3Ccircle%20cy=%2230.367%22%20cx=%2211.326%22%20r=%223.15%22%20fill=%22red%22/%3E%3Ccircle%20cy=%2230.367%22%20cx=%2220.611%22%20r=%223.15%22%20fill=%22#faa%22/%3E%3Ccircle%20cy=%2230.367%22%20cx=%2262.82%22%20r=%223.15%22%20fill=%22green%22/%3E%3Ccircle%20cy=%2230.367%22%20cx=%2230.554%22%20r=%223.15%22%20fill=%22red%22/%3E%3C/g%3E%3C/g%3E%3Ctext%20y=%2228.295%22%20x=%2270.801%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%2265.172%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%221.209%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2228.295%22%20x=%2270.801%22%20font-weight=%22700%22%20font-size=%2237.241%22%3ESerial%3C/tspan%3E%3C/text%3E%3Cg%20transform=%22translate(-49.71%20-39.925)%20scale(2.8106)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Ccircle%20cx=%22233.043%22%20cy=%2281.071%22%20r=%2240.92%22%20fill=%22#ececec%22%20stroke=%22green%22%20stroke-width=%221.71%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M261.766%2092.931h-4.696V67.437h-48.103v25.295h-5.116%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%224.275%22%20stroke-linecap=%22round%22/%3E%3Ctext%20y=%22173.032%22%20x=%2287.94%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%2265.172%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%221.209%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22173.032%22%20x=%2287.94%22%20font-weight=%22700%22%20font-size=%2237.241%22%3ERX%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "b82422cd-6ac3-4b32-a8b8-3aff2a066775",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 936,
                "y": 96
              }
            },
            {
              "id": "9b46173d-7429-4d90-8701-a2eae9f88c53",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -72,
                "y": 160
              }
            },
            {
              "id": "df254332-7ba1-4c4e-b14c-97b5211f8dff",
              "type": "basic.output",
              "data": {
                "name": "busy"
              },
              "position": {
                "x": 944,
                "y": 352
              }
            },
            {
              "id": "2f6a3bb1-2010-4f69-a978-717528dc5160",
              "type": "basic.input",
              "data": {
                "name": "RX",
                "clock": false
              },
              "position": {
                "x": -80,
                "y": 544
              }
            },
            {
              "id": "d7ebc6ce-2cde-4e33-8c9d-b439fd2cb3e0",
              "type": "basic.output",
              "data": {
                "name": "rcv"
              },
              "position": {
                "x": 944,
                "y": 608
              }
            },
            {
              "id": "38758516-ff7d-4688-a171-e35bb9f50bd0",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "115200",
                "local": false
              },
              "position": {
                "x": 416,
                "y": -136
              }
            },
            {
              "id": "d84b0e8b-3264-47e9-953f-b80b712fc373",
              "type": "basic.code",
              "data": {
                "code": "//-- Constantes para obtener las velocidades estándares\n`define B115200 104 \n`define B57600  208\n`define B38400  313\n`define B19200  625\n`define B9600   1250\n`define B4800   2500\n`define B2400   5000\n`define B1200   10000\n`define B600    20000\n`define B300    40000\n\n//-- Constante para calcular los baudios\nlocalparam BAUDRATE = (BAUD==115200) ? `B115200 : //-- OK\n                      (BAUD==57600)  ? `B57600  : //-- OK\n                      (BAUD==38400)  ? `B38400  : //-- Ok\n                      (BAUD==19200)  ? `B19200  : //-- OK\n                      (BAUD==9600)   ? `B9600   : //-- OK\n                      (BAUD==4800)   ? `B4800   : //-- OK \n                      (BAUD==2400)   ? `B2400   : //-- OK\n                      (BAUD==1200)   ? `B1200   : //-- OK\n                      (BAUD==600)    ? `B600    : //-- OK\n                      (BAUD==300)    ? `B300    : //-- OK\n                      `B115200 ;  //-- Por defecto 115200 baudios\n\n\n\n\n//-- Calcular el numero de bits para almacenar el divisor\nlocalparam N = $clog2(BAUDRATE);\n\n// Sincronizacion. Evitar \n// problema de la metaestabilidad\n\nreg d1;\nreg din;\n\nalways @(posedge clk)\n d1 <= RX;\n \n//-- Din contiene el dato serie de entrada listo para usarse   \nalways @(posedge clk)\n  din <= d1;\n  \n//------ Detectar el bit de start: flanco de bajada en din\n\n//-- Registro temporal\nreg q_t0 = 0;\n\nalways @(posedge clk)\n  q_t0 <= din;\n  \n//-- El cable din_fe es un \"tic\" que aparece cuando llega el flanco de \n//-- bajada\nwire din_fe = (q_t0 & ~din);\n\n//-------- ESTADO DEL RECEPTOR\n\n//-- 0: Apagado. Esperando\n//-- 1: Encendido. Activo. Recibiendo dato\nreg state = 0;\n\nalways @(posedge clk)\n  //-- Se pasa al estado activo al detectar el flanco de bajada\n  //-- del bit de start\n  if (din_fe)\n    state <= 1'b1;\n    \n  //-- Se pasa al estado inactivo al detectar la señal rst_state    \n  else if (rst_state)\n    state<=1'b0;\n\n//------------------ GENERADOR DE BAUDIOS -----------------------------\n//-- Se activa cuando el receptor está encendido\n\n\n//-- Calcular la mitad del divisor BAUDRATE/2\nlocalparam BAUD2 = (BAUDRATE >> 1);\n\n//-- Contador del sistema, para esperar un tiempo de  \n//-- medio bit (BAUD2)\n\n//-- NOTA: podria tener N-2 bits en principio\nreg [N-1: 0] div2counter = 0;\n\n//-- Se genera primero un retraso de BAUD/2\n//-- El proceso comienza cuando el estado pasa a 1\n\nalways @(posedge clk)\n\n  //-- Contar\n  if (state) begin\n    //-- Solo cuenta hasta BAUD2, luego  \n    //-- se queda en ese valor hasta que\n    //-- ena se desactiva\n    if (div2counter < BAUD2) \n      div2counter <= div2counter + 1;\n  end else\n    div2counter <= 0;\n\n//-- Habilitar el generador de baudios principal\n//-- cuando termine este primer contador\nwire ena2 = (div2counter == BAUD2);\n\n\n//------ GENERADOR DE BAUDIOS PRINCIPAL\n\n//-- Contador para implementar el divisor\n//-- Es un contador modulo BAUDRATE\nreg [N-1:0] divcounter = 0;\n\n//-- Cable de reset para el contador\nwire reset;\n\n//-- Contador con reset\nalways @(posedge clk)\n  if (reset)\n    divcounter <= 0;\n  else\n    divcounter <= divcounter + 1;\n\n//-- Esta señal contiene el tic\nwire ov = (divcounter == BAUDRATE-1);\n\n//-- Comparador que resetea el contador cuando se alcanza el tope\nassign reset = ov | (ena2 == 0);\n\n//-- El cable con el tic para capturar cada bit lo llamamos\n//-- bit_tic, y es la señal de overflow del contador\nwire bit_tic = ov;\n\n//-------- REGISTRO DE DESPLAZAMIENTO -----------\n//-- Es el componente que pasa los bits recibidos a paralelo\n//-- La señal de desplazamiento usada es bit_tic, pero sólo cuando  \n//-- estamos en estado de encendido (state==1)\n//-- Es un registro de 9 bits: 8 bits de datos + bit de stop\n//-- El bit de start no se almacena, es el que ha servido para\n//-- arrancar el receptor\n\nreg [8:0] sr = 0;\n\nalways @(posedge clk)\n  //-- Se captura el bit cuando llega y el receptor\n  //-- esta activado\n  if (bit_tic & state)\n    sr <= {din, sr[8:1]};\n    \n//-- El dato recibido se encuentran en los 8 bits menos significativos\n//-- una vez recibidos los 9 bits\n\n//-------- CONTADOR de bits recibidos\n\n//-- Internamente usamos un bit mas\n//-- (N+1) bits\nreg [4:0] cont = 0;\n\nalways @(posedge clk)\n\n  //-- El contador se pone a 0 si hay un overflow o \n  //-- el receptor está apagado \n  if ((state==0)| ov2)\n    cont <= 0;\n  else\n    //-- Receptor activado: Si llega un bit se incrementa\n    if (bit_tic)\n      cont <= cont + 1;\n      \n//-- Comprobar overflow\nwire ov2 = (cont == 9);\n    \n//-- Esta señal de overflow indica el final de la recepción\nwire fin = ov2;\n\n//-- Se conecta al reset el biestable de estado\nwire rst_state = fin;\n\n//----- REGISTRO DE DATOS -------------------\n//-- Registro de 8 bits que almacena el dato final\n\n//-- Bus de salida con el dato recibido\nreg data = 0;\n\nalways @(posedge clk)\n\n  //-- Si se ha recibido el ultimo bit, capturamos el dato\n  //-- que se encuentra en los 8 bits de menor peso del\n  //-- registro de desplazamiento\n  if (fin)\n    data <= sr[7:0];\n\n//-- Comunicar que se ha recibido un dato\n//-- Tic de dato recibido\nreg rcv = 0;\nalways @(posedge clk)\n  rcv <= fin;\n\n//-- La señal de busy es directamente el estado del receptor\nassign busy = state;\n\n",
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
                      "name": "RX"
                    }
                  ],
                  "out": [
                    {
                      "name": "data",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "busy"
                    },
                    {
                      "name": "rcv"
                    }
                  ]
                }
              },
              "position": {
                "x": 152,
                "y": 0
              },
              "size": {
                "width": 616,
                "height": 768
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9b46173d-7429-4d90-8701-a2eae9f88c53",
                "port": "out"
              },
              "target": {
                "block": "d84b0e8b-3264-47e9-953f-b80b712fc373",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "2f6a3bb1-2010-4f69-a978-717528dc5160",
                "port": "out"
              },
              "target": {
                "block": "d84b0e8b-3264-47e9-953f-b80b712fc373",
                "port": "RX"
              }
            },
            {
              "source": {
                "block": "d84b0e8b-3264-47e9-953f-b80b712fc373",
                "port": "data"
              },
              "target": {
                "block": "b82422cd-6ac3-4b32-a8b8-3aff2a066775",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "d84b0e8b-3264-47e9-953f-b80b712fc373",
                "port": "rcv"
              },
              "target": {
                "block": "d7ebc6ce-2cde-4e33-8c9d-b439fd2cb3e0",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "38758516-ff7d-4688-a171-e35bb9f50bd0",
                "port": "constant-out"
              },
              "target": {
                "block": "d84b0e8b-3264-47e9-953f-b80b712fc373",
                "port": "BAUD"
              }
            },
            {
              "source": {
                "block": "d84b0e8b-3264-47e9-953f-b80b712fc373",
                "port": "busy"
              },
              "target": {
                "block": "df254332-7ba1-4c4e-b14c-97b5211f8dff",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "7fcd7f2ddb90ab5945172ae46dc8c64930ee06fc": {
      "package": {
        "name": "Flash-beep",
        "version": "0.1",
        "description": "Emitir un flash en el LED y un pitido en el zumbador al recibir el tic",
        "author": "Juan Gonzalez-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22628.431%22%20height=%22316.129%22%20viewBox=%220%200%20166.27235%2083.642571%22%3E%3Cpath%20d=%22M33.189%2060.463c-5.43-.845-9.64-3.778-10.575-7.367-1.555-5.968%205.551-11.291%2014.515-10.872%202.86.133%205.47.768%207.46%201.815.397.21.771.403.83.43.06.027.133%205.073.145-7.033l.037-35.808C62.409%206.26%2079.17%2011.081%2096.098%2015.267c0%200%20.331%203.576.331%2012.166%200%2028.458.056%2041.999-.883%2043.64-3.215%205.618-13.588%207.749-20.93%204.299-3.792-1.782-5.95-4.532-5.95-7.581%200-5.344%206.781-9.583%2014.736-9.211%202.86.133%205.47.768%207.46%201.815.398.21.772.403.832.43.06.027.108-31.989.108-31.989l.02-5.528-41.666-11.361v33.377c0%207.252.049%207.763-.884%209.393-2.07%203.618-7.333%206.004-13.143%205.958-.915-.007-2.238-.103-2.94-.212z%22%20fill=%22#00f%22/%3E%3Cg%20transform=%22matrix(1.16195%200%200%201.16195%20-99.624%20-19.397)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cpath%20d=%22M155.663%2068.87v6.947h-48.33v-6.948a3.02%203.02%200%200%201%203.02-3.02h42.289a3.02%203.02%200%200%201%203.02%203.02z%22%20fill=%22#57555c%22/%3E%3Cpath%20d=%22M152.642%2062.828v3.02h-42.288v-3.02a3.02%203.02%200%200%201%203.02-3.02h36.247a3.02%203.02%200%200%201%203.021%203.02z%22%20fill=%22#fedb51%22/%3E%3Cpath%20d=%22M149.621%2034.737v25.07h-36.247v-25.07c0-9.994%208.13-18.124%2018.124-18.124%209.994%200%2018.123%208.13%2018.123%2018.124z%22%20fill=%22#fd6244%22/%3E%3Cpath%20d=%22M131.536%2024.165a1.51%201.51%200%201%200-.001-3.022%201.51%201.51%200%200%200%200%203.022z%22/%3E%3Cpath%20d=%22M107.371%2077.327h48.33a1.51%201.51%200%200%200%201.51-1.51v-6.948a4.538%204.538%200%200%200-3.021-4.27v-1.771a4.538%204.538%200%200%200-3.02-4.271v-23.82c0-10.826-8.808-19.634-19.634-19.634s-19.634%208.808-19.634%2019.634v23.82a4.538%204.538%200%200%200-3.02%204.271v1.77a4.538%204.538%200%200%200-3.021%204.271v6.948c0%20.834.676%201.51%201.51%201.51zm24.165-59.204c9.16%200%2016.613%207.453%2016.613%2016.614v23.56h-33.226v-23.56c0-9.16%207.452-16.614%2016.613-16.614zm-18.124%2043.195h36.247c.833%200%201.51.677%201.51%201.51v1.51h-39.267v-1.51c0-.833.677-1.51%201.51-1.51zm-4.53%207.551c0-.833.677-1.51%201.51-1.51h42.288c.833%200%201.51.677%201.51%201.51v5.437h-45.309zM166.272%2034.737a1.51%201.51%200%200%200-1.51-1.51H155.7a1.51%201.51%200%200%200%200%203.02h9.062a1.51%201.51%200%200%200%201.51-1.51zM96.8%2034.737c0%20.834.675%201.51%201.51%201.51h9.061a1.51%201.51%200%200%200%200-3.02H98.31a1.51%201.51%200%200%200-1.51%201.51zM149.691%2018.717l6.407-6.406a1.51%201.51%200%200%200-2.136-2.136l-6.407%206.406a1.51%201.51%200%200%200%202.136%202.136zM115.516%2018.717a1.51%201.51%200%200%200%200-2.136l-6.406-6.406a1.51%201.51%200%200%200-2.136%202.136l6.406%206.406c.59.59%201.546.59%202.136%200zM133.046%2010.572V1.51a1.51%201.51%200%200%200-3.02%200v9.062a1.51%201.51%200%200%200%203.02%200z%22/%3E%3Cpath%20d=%22M135.428%2024.907a10.529%2010.529%200%200%201%206.68%209.83%201.51%201.51%200%200%200%203.02%200c0-2.773-.833-5.443-2.408-7.72a13.601%2013.601%200%200%200-6.176-4.917%201.51%201.51%200%200%200-1.116%202.807z%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "56e78c5f-bb59-4501-82e0-7b9f7aff26b2",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 296,
                "y": 168
              }
            },
            {
              "id": "73df11e4-8cd4-4962-8a5e-db4144c87c46",
              "type": "basic.output",
              "data": {
                "name": "Buzz"
              },
              "position": {
                "x": 896,
                "y": 232
              }
            },
            {
              "id": "7137cbf9-343c-4840-9288-2928cde51e31",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 304,
                "y": 424
              }
            },
            {
              "id": "b561399c-1834-4307-bc22-a28797738d9b",
              "type": "basic.output",
              "data": {
                "name": "led"
              },
              "position": {
                "x": 896,
                "y": 448
              }
            },
            {
              "id": "691ef9de-e447-40ef-8f85-3f4fd4a9e805",
              "type": "basic.constant",
              "data": {
                "name": "Hz",
                "value": "200",
                "local": false
              },
              "position": {
                "x": 520,
                "y": 304
              }
            },
            {
              "id": "ad3e4650-d0e2-41c2-95bc-e710e904e8a0",
              "type": "basic.constant",
              "data": {
                "name": "ms",
                "value": "20",
                "local": false
              },
              "position": {
                "x": 640,
                "y": 304
              }
            },
            {
              "id": "52aaefd3-34df-4102-b813-5d4ffe7617a2",
              "type": "basic.constant",
              "data": {
                "name": "led-ms",
                "value": "50",
                "local": false
              },
              "position": {
                "x": 752,
                "y": 96
              }
            },
            {
              "id": "adb89950-794e-49a0-bbc4-d68e2d7d5ee4",
              "type": "43c77cdf85f485d9d139de1845c5c07bea419726",
              "position": {
                "x": 528,
                "y": 216
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "7fc5f63c-1fbd-4194-ac1a-42d022f2918c",
              "type": "53c0323161effbfdf913a9cc422f18b27f12df1c",
              "position": {
                "x": 544,
                "y": 408
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
                "block": "adb89950-794e-49a0-bbc4-d68e2d7d5ee4",
                "port": "1b8bf01d-11fe-4a2d-92e0-072bf3fb7898"
              },
              "target": {
                "block": "b561399c-1834-4307-bc22-a28797738d9b",
                "port": "in"
              },
              "vertices": [
                {
                  "x": 784,
                  "y": 368
                }
              ]
            },
            {
              "source": {
                "block": "7fc5f63c-1fbd-4194-ac1a-42d022f2918c",
                "port": "d5ddda9a-8d7d-4451-bc14-5fb061701d71"
              },
              "target": {
                "block": "73df11e4-8cd4-4962-8a5e-db4144c87c46",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "691ef9de-e447-40ef-8f85-3f4fd4a9e805",
                "port": "constant-out"
              },
              "target": {
                "block": "7fc5f63c-1fbd-4194-ac1a-42d022f2918c",
                "port": "51780fb9-723f-4200-a817-e83220bd529c"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "ad3e4650-d0e2-41c2-95bc-e710e904e8a0",
                "port": "constant-out"
              },
              "target": {
                "block": "7fc5f63c-1fbd-4194-ac1a-42d022f2918c",
                "port": "7254f8d7-8551-4bff-8c0a-8cf052ff159d"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "7137cbf9-343c-4840-9288-2928cde51e31",
                "port": "out"
              },
              "target": {
                "block": "7fc5f63c-1fbd-4194-ac1a-42d022f2918c",
                "port": "d7802410-19ed-4499-9ad1-8690a71ff033"
              }
            },
            {
              "source": {
                "block": "56e78c5f-bb59-4501-82e0-7b9f7aff26b2",
                "port": "out"
              },
              "target": {
                "block": "adb89950-794e-49a0-bbc4-d68e2d7d5ee4",
                "port": "6c12871d-05b9-400e-9f57-ba39c3c45bdd"
              },
              "vertices": [
                {
                  "x": 472,
                  "y": 216
                }
              ]
            },
            {
              "source": {
                "block": "56e78c5f-bb59-4501-82e0-7b9f7aff26b2",
                "port": "out"
              },
              "target": {
                "block": "7fc5f63c-1fbd-4194-ac1a-42d022f2918c",
                "port": "6a75ac1d-7edb-4add-9860-3bddf79c64fd"
              },
              "vertices": [
                {
                  "x": 472,
                  "y": 288
                }
              ]
            },
            {
              "source": {
                "block": "7137cbf9-343c-4840-9288-2928cde51e31",
                "port": "out"
              },
              "target": {
                "block": "adb89950-794e-49a0-bbc4-d68e2d7d5ee4",
                "port": "616aafee-4942-4e4d-936a-87c6eb0b6a7b"
              },
              "vertices": [
                {
                  "x": 432,
                  "y": 312
                }
              ]
            },
            {
              "source": {
                "block": "52aaefd3-34df-4102-b813-5d4ffe7617a2",
                "port": "constant-out"
              },
              "target": {
                "block": "adb89950-794e-49a0-bbc4-d68e2d7d5ee4",
                "port": "66fae498-7717-42a8-b7ee-ac77aaac500a"
              }
            }
          ]
        }
      }
    },
    "43c77cdf85f485d9d139de1845c5c07bea419726": {
      "package": {
        "name": "flash",
        "version": "0.1",
        "description": "Emitir un pulso de anchura determinada para encender un LED durante un tiempo. 50ms por defecto",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20367.13058%20300.93424%22%20width=%22367.131%22%20height=%22300.934%22%3E%3Cpath%20d=%22M327.03%20260.293v26.258H144.37v-26.258c0-6.308%205.109-11.416%2011.416-11.416h159.83c6.307%200%2011.416%205.108%2011.416%2011.416z%22%20fill=%22#57555c%22/%3E%3Cpath%20d=%22M315.614%20237.46v11.417H155.785V237.46c0-6.307%205.11-11.416%2011.417-11.416h136.996c6.307%200%2011.416%205.109%2011.416%2011.416z%22%20fill=%22#fedb51%22/%3E%3Cpath%20d=%22M304.198%20131.288v94.756H167.202v-94.756c0-37.77%2030.727-68.498%2068.498-68.498%2037.77%200%2068.498%2030.727%2068.498%2068.498z%22%20fill=%22#fd6244%22/%3E%3Cpath%20d=%22M235.842%2091.33a5.71%205.71%200%200%200%205.709-5.707%205.71%205.71%200%200%200-5.709-5.708%205.71%205.71%200%200%200-5.708%205.708%205.71%205.71%200%200%200%205.708%205.708z%22/%3E%3Cpath%20d=%22M144.512%20292.259h182.661a5.708%205.708%200%200%200%205.708-5.708v-26.258c0-7.441-4.772-13.786-11.416-16.143v-6.69c0-7.44-4.772-13.786-11.416-16.142v-90.03c0-40.917-33.289-74.206-74.207-74.206-40.917%200-74.206%2033.289-74.206%2074.206v90.03c-6.644%202.356-11.416%208.7-11.416%2016.142v6.69c-6.644%202.357-11.417%208.701-11.417%2016.143v26.258a5.708%205.708%200%200%200%205.709%205.708zm91.33-223.76c34.623%200%2062.79%2028.167%2062.79%2062.79v89.047h-125.58v-89.048c0-34.622%2028.168-62.79%2062.79-62.79zm-68.498%20163.253h136.997a5.715%205.715%200%200%201%205.708%205.708v5.708H161.636v-5.708a5.715%205.715%200%200%201%205.708-5.708zm-17.124%2028.541a5.715%205.715%200%200%201%205.708-5.708h159.829a5.715%205.715%200%200%201%205.708%205.708v20.55H150.22zM367.13%20131.288a5.708%205.708%200%200%200-5.708-5.708h-34.249a5.708%205.708%200%200%200%200%2011.416h34.25a5.708%205.708%200%200%200%205.708-5.708zM104.554%20131.288a5.708%205.708%200%200%200%205.708%205.708h34.25a5.708%205.708%200%200%200%200-11.416h-34.25a5.708%205.708%200%200%200-5.708%205.708zM304.461%2070.742l24.214-24.214a5.709%205.709%200%200%200-8.073-8.073l-24.214%2024.214a5.709%205.709%200%200%200%208.073%208.073zM175.297%2070.742a5.709%205.709%200%200%200%200-8.073l-24.214-24.214a5.709%205.709%200%200%200-8.073%208.073l24.214%2024.214a5.709%205.709%200%200%200%208.073%200zM241.55%2039.957V5.708a5.708%205.708%200%200%200-11.416%200v34.25a5.708%205.708%200%200%200%2011.417%200z%22/%3E%3Cpath%20d=%22M250.555%2094.135c15.336%206.097%2025.245%2020.68%2025.245%2037.153a5.708%205.708%200%200%200%2011.416%200c0-10.48-3.149-20.569-9.104-29.176-5.814-8.4-13.884-14.827-23.339-18.586a5.709%205.709%200%200%200-4.218%2010.61z%22/%3E%3Cg%20transform=%22matrix(4.86693%200%200%204.86693%20-417.284%20-130.66)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "1b8bf01d-11fe-4a2d-92e0-072bf3fb7898",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 480,
                "y": 176
              }
            },
            {
              "id": "6c12871d-05b9-400e-9f57-ba39c3c45bdd",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 176,
                "y": 176
              }
            },
            {
              "id": "616aafee-4942-4e4d-936a-87c6eb0b6a7b",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 176,
                "y": 232
              }
            },
            {
              "id": "66fae498-7717-42a8-b7ee-ac77aaac500a",
              "type": "basic.constant",
              "data": {
                "name": "ms",
                "value": "50",
                "local": false
              },
              "position": {
                "x": 344,
                "y": 96
              }
            },
            {
              "id": "f9b69fc1-f614-4841-90aa-88d585cd3825",
              "type": "f91a2729e24bdc5bb7370785202c65c6526d7a01",
              "position": {
                "x": 344,
                "y": 192
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
                "block": "66fae498-7717-42a8-b7ee-ac77aaac500a",
                "port": "constant-out"
              },
              "target": {
                "block": "f9b69fc1-f614-4841-90aa-88d585cd3825",
                "port": "7ca578e5-8e36-4c04-bbea-144418c8e9af"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "f9b69fc1-f614-4841-90aa-88d585cd3825",
                "port": "c45dab76-9d0f-4742-9e4d-3048637d245d"
              },
              "target": {
                "block": "1b8bf01d-11fe-4a2d-92e0-072bf3fb7898",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "6c12871d-05b9-400e-9f57-ba39c3c45bdd",
                "port": "out"
              },
              "target": {
                "block": "f9b69fc1-f614-4841-90aa-88d585cd3825",
                "port": "7697c4d1-f5f8-4a1d-88af-e367fe54e4b6"
              }
            },
            {
              "source": {
                "block": "616aafee-4942-4e4d-936a-87c6eb0b6a7b",
                "port": "out"
              },
              "target": {
                "block": "f9b69fc1-f614-4841-90aa-88d585cd3825",
                "port": "61d11f03-6fbc-4467-a947-d546fa6f6429"
              }
            }
          ]
        }
      }
    },
    "f91a2729e24bdc5bb7370785202c65c6526d7a01": {
      "package": {
        "name": "timer-msec",
        "version": "0.1",
        "description": "Temporizador en milisegundos. La señal p está activa durante el tiempo indicado. Por tic se emite un tic al finalizar",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20293.13756%20181.35395%22%20width=%22293.137%22%20height=%22181.354%22%3E%3Ccircle%20cx=%22149.086%22%20cy=%2290.681%22%20r=%2270.101%22%20fill=%22#fff%22/%3E%3Cpath%20d=%22M149.086%2013.679c-42.531%200-77.003%2034.472-77.003%2077.002%200%2042.531%2034.472%2077.003%2077.003%2077.003%2042.53%200%2077.003-34.472%2077.003-77.003%200-42.53-34.472-77.002-77.003-77.002zm0%20145.175c-37.673%200-68.173-30.539-68.173-68.173%200-37.633%2030.539-68.172%2068.173-68.172%2037.633%200%2068.172%2030.539%2068.172%2068.172%200%2037.634-30.538%2068.173-68.172%2068.173z%22%20fill=%22#333%22/%3E%3Cpath%20d=%22M146.772%2030.683h4.627v18.2h-4.627zM89.125%2092.965v-4.627h18.2v4.627zm62.261%2057.665h-4.627v-18.2h4.627zm57.647-62.28v4.628h-18.2V88.35zM105.044%2049.905l3.272-3.272%2012.87%2012.87-3.273%203.271zm3.28%2084.79l-3.27-3.272%2012.868-12.87%203.272%203.272zm84.774-3.265l-3.272%203.273-12.87-12.87%203.273-3.272zM189.85%2046.64l3.272%203.272-12.87%2012.87-3.271-3.272z%22%20fill=%22#333%22/%3E%3Ccircle%20cx=%22149.086%22%20cy=%2290.681%22%20r=%224.781%22%20fill=%22#333%22/%3E%3Cpath%20d=%22M149.795%2070.653l2.722.288-2.109%2019.9-2.722-.288z%22%20fill=%22#333%22/%3E%3Cpath%20d=%22M181.26%2072.13l1.276%202.422-32.859%2017.296-1.275-2.422z%22%20fill=%22#333%22/%3E%3Cpath%20d=%22M152.016%2080.386c-1.08%200-1.928.887-1.928%201.928%200%20.656.309%201.234.81%201.581l-14.691%2041.451%201.002.347%2014.691-41.45h.116c1.08%200%201.928-.888%201.928-1.929a1.934%201.934%200%200%200-1.928-1.928z%22%20fill=%22#cf000f%22/%3E%3Ctext%20y=%2244.949%22%20x=%221.863%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%2269.516%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%221.289%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2244.949%22%20x=%221.863%22%20font-weight=%22700%22%20font-size=%2239.724%22%3Ems%3C/tspan%3E%3C/text%3E%3Cg%20transform=%22matrix(2.99796%200%200%202.99796%20-53.023%20-84.502)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(2.99796%200%200%202.99796%20-257.041%20-84.502)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Ccircle%20cx=%22248.578%22%20cy=%2244.56%22%20r=%2243.648%22%20fill=%22#ececec%22%20stroke=%22green%22%20stroke-width=%221.824%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M279.216%2057.21h-5.01V30.018h-51.31v26.98h-5.456%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%224.56%22%20stroke-linecap=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c45dab76-9d0f-4742-9e4d-3048637d245d",
              "type": "basic.output",
              "data": {
                "name": "p"
              },
              "position": {
                "x": 1224,
                "y": 96
              }
            },
            {
              "id": "7697c4d1-f5f8-4a1d-88af-e367fe54e4b6",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 472,
                "y": 96
              }
            },
            {
              "id": "61d11f03-6fbc-4467-a947-d546fa6f6429",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 456,
                "y": 304
              }
            },
            {
              "id": "8c6fda76-1ba0-4ef8-a53d-7bc8a9db4454",
              "type": "basic.output",
              "data": {
                "name": "tic"
              },
              "position": {
                "x": 1216,
                "y": 304
              }
            },
            {
              "id": "7ca578e5-8e36-4c04-bbea-144418c8e9af",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "100",
                "local": false
              },
              "position": {
                "x": 848,
                "y": -96
              }
            },
            {
              "id": "e6b9690b-1da7-4600-9015-0bbed31633e2",
              "type": "basic.info",
              "data": {
                "info": "**Arranque del**  \n**temporizador**",
                "readonly": true
              },
              "position": {
                "x": 448,
                "y": 264
              },
              "size": {
                "width": 144,
                "height": 56
              }
            },
            {
              "id": "f3af4211-e3df-4710-a0a8-96a035a833a9",
              "type": "basic.info",
              "data": {
                "info": "**Salida de pulso**",
                "readonly": true
              },
              "position": {
                "x": 1224,
                "y": 72
              },
              "size": {
                "width": 176,
                "height": 40
              }
            },
            {
              "id": "a15228f1-41aa-494c-82fb-5491bf5fcc13",
              "type": "basic.info",
              "data": {
                "info": "**Salida de tic**",
                "readonly": true
              },
              "position": {
                "x": 1216,
                "y": 280
              },
              "size": {
                "width": 152,
                "height": 40
              }
            },
            {
              "id": "204eb46d-dd4f-47cf-b0f3-c9095263d325",
              "type": "basic.info",
              "data": {
                "info": "**Parametro del timer**  \nmilisegundos a esperar",
                "readonly": true
              },
              "position": {
                "x": 832,
                "y": -128
              },
              "size": {
                "width": 208,
                "height": 56
              }
            },
            {
              "id": "a66b0b7f-4692-489e-9140-fb81fef2a1c5",
              "type": "basic.code",
              "data": {
                "code": "//localparam MS;\n\n//-- Constante para dividir y obtener una señal de  \n//-- periodo 1ms\nlocalparam M = 12000;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Cable de reset para el corazon\nwire rst_heart;\n\n//-- Overflow del temporizador del corazon\nwire ov_heart;\n\n//-- Habilitacion del corazon\nwire ena;\n\n//-- Tics del corazon\nwire tic_heart;\n\n//-- Contador del corazon\nreg [N-1:0] heart=0;\n\nalways @(posedge clk)\n  if (rst_heart)\n    heart <= 0;\n  else\n    heart <= heart + 1;\n\n//-- Overflow del contador\nassign ov_heart = (heart == M-1);\n\n//-- La salida del corazon es la señal de overflow\nassign tic_heart = ov_heart;\n\n//-- Reset del corazon\nassign rst_heart =~ena | ov_heart;\n\n\n\n//--------------------------------------------\n//-- Contador de tics\n//--------------------------------------------\n\n//-- Calcular el numero de bits para almacenar MS tics\nlocalparam CB = $clog2(MS);\n\nreg [CB-1:0] counter = 0;\n\n//-- Overflow del contador\nwire ov;\n\n//-- Señal de reset del contador\nwire rst;\n\nalways @(posedge clk)\nif (rst)\n  counter <= 0;\nelse\n  if (tic_heart)\n    counter <= counter + 1;\n\n//-- Evento: cuenta máxima de tics alcanzada\nassign ov = (counter == MS);\n\n//---------------------------------------\n//-- Biestable de estado del timer\n//-- 0: Apagado  \n//-- 1: Funcionando\nreg q = 0;\n\nalways @(posedge clk)\n  if (start)\n    q <= 1'b1;\n  else if (rst)\n    q<=1'b0;\n    \n//-- Lógica de reset\n//En función de la entrada, el estado y  \n// el overflow se inicializa el contador y \n// se habilita el corazón de tics\nassign rst = ~q | ov | start;\nassign ena = ~rst;\n\n//-- Salida de pulso\nassign p = q;\n\n//-- Salida de tic\n//-- Saca un tic cuando ha finalizado la cuenta\nassign tic = ov;\n",
                "params": [
                  {
                    "name": "MS"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "start"
                    }
                  ],
                  "out": [
                    {
                      "name": "p"
                    },
                    {
                      "name": "tic"
                    }
                  ]
                }
              },
              "position": {
                "x": 632,
                "y": 24
              },
              "size": {
                "width": 520,
                "height": 416
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "61d11f03-6fbc-4467-a947-d546fa6f6429",
                "port": "out"
              },
              "target": {
                "block": "a66b0b7f-4692-489e-9140-fb81fef2a1c5",
                "port": "start"
              }
            },
            {
              "source": {
                "block": "a66b0b7f-4692-489e-9140-fb81fef2a1c5",
                "port": "p"
              },
              "target": {
                "block": "c45dab76-9d0f-4742-9e4d-3048637d245d",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "a66b0b7f-4692-489e-9140-fb81fef2a1c5",
                "port": "tic"
              },
              "target": {
                "block": "8c6fda76-1ba0-4ef8-a53d-7bc8a9db4454",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "7697c4d1-f5f8-4a1d-88af-e367fe54e4b6",
                "port": "out"
              },
              "target": {
                "block": "a66b0b7f-4692-489e-9140-fb81fef2a1c5",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "7ca578e5-8e36-4c04-bbea-144418c8e9af",
                "port": "constant-out"
              },
              "target": {
                "block": "a66b0b7f-4692-489e-9140-fb81fef2a1c5",
                "port": "MS"
              }
            }
          ]
        }
      }
    },
    "53c0323161effbfdf913a9cc422f18b27f12df1c": {
      "package": {
        "name": "Beep",
        "version": "0.1",
        "description": "Emitir un pitido de duración (ms) y frecuencia (hz) indicada en los parámetros, al recibir un tic",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22364.46%22%20height=%22309.976%22%20viewBox=%220%200%2096.430069%2082.014374%22%3E%3Cpath%20d=%22M33.189%2058.835c-5.43-.845-9.64-3.778-10.575-7.368-1.555-5.968%205.551-11.29%2014.515-10.872%202.86.134%205.47.77%207.46%201.816.397.21.771.403.83.43.06.026.133%205.073.145-7.033L45.601%200C62.409%204.632%2079.17%209.453%2096.098%2013.639c0%200%20.331%203.576.331%2012.166%200%2028.458.056%2041.998-.883%2043.64-3.215%205.618-13.588%207.749-20.93%204.299-3.792-1.782-5.95-4.533-5.95-7.581%200-5.344%206.781-9.583%2014.736-9.212%202.86.134%205.47.77%207.46%201.816.398.21.772.403.832.43.06.027.108-31.989.108-31.989l.02-5.528-41.666-11.361v33.376c0%207.253.049%207.763-.884%209.393-2.07%203.619-7.333%206.005-13.143%205.959-.915-.007-2.238-.103-2.94-.212z%22%20fill=%22#00f%22/%3E%3Cg%20transform=%22matrix(1.16195%200%200%201.16195%20-99.624%20-21.026)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "6a75ac1d-7edb-4add-9860-3bddf79c64fd",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -72,
                "y": 144
              }
            },
            {
              "id": "d5ddda9a-8d7d-4451-bc14-5fb061701d71",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 544,
                "y": 160
              }
            },
            {
              "id": "d7802410-19ed-4499-9ad1-8690a71ff033",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": -72,
                "y": 312
              }
            },
            {
              "id": "51780fb9-723f-4200-a817-e83220bd529c",
              "type": "basic.constant",
              "data": {
                "name": "Hz",
                "value": "1000",
                "local": false
              },
              "position": {
                "x": 104,
                "y": 48
              }
            },
            {
              "id": "7254f8d7-8551-4bff-8c0a-8cf052ff159d",
              "type": "basic.constant",
              "data": {
                "name": "ms",
                "value": "200",
                "local": false
              },
              "position": {
                "x": 240,
                "y": 200
              }
            },
            {
              "id": "6638c656-ba94-42fe-bc6b-bd87b7f76df1",
              "type": "0e64bc728cbb881007bf629e44dc5b5b0fa3a34c",
              "position": {
                "x": 104,
                "y": 144
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "5a9056b7-e6aa-44aa-b4df-bab6a1471301",
              "type": "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6",
              "position": {
                "x": 392,
                "y": 160
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "15a99b53-ce2c-4a4c-99f6-f404cd36ff95",
              "type": "f91a2729e24bdc5bb7370785202c65c6526d7a01",
              "position": {
                "x": 240,
                "y": 296
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
                "block": "51780fb9-723f-4200-a817-e83220bd529c",
                "port": "constant-out"
              },
              "target": {
                "block": "6638c656-ba94-42fe-bc6b-bd87b7f76df1",
                "port": "319cdca8-e777-4c8b-88ca-f885ba96ad06"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "5a9056b7-e6aa-44aa-b4df-bab6a1471301",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "d5ddda9a-8d7d-4451-bc14-5fb061701d71",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "6638c656-ba94-42fe-bc6b-bd87b7f76df1",
                "port": "70887b0b-826c-4150-a873-605b77da8272"
              },
              "target": {
                "block": "5a9056b7-e6aa-44aa-b4df-bab6a1471301",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "15a99b53-ce2c-4a4c-99f6-f404cd36ff95",
                "port": "c45dab76-9d0f-4742-9e4d-3048637d245d"
              },
              "target": {
                "block": "5a9056b7-e6aa-44aa-b4df-bab6a1471301",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "7254f8d7-8551-4bff-8c0a-8cf052ff159d",
                "port": "constant-out"
              },
              "target": {
                "block": "15a99b53-ce2c-4a4c-99f6-f404cd36ff95",
                "port": "7ca578e5-8e36-4c04-bbea-144418c8e9af"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "d7802410-19ed-4499-9ad1-8690a71ff033",
                "port": "out"
              },
              "target": {
                "block": "15a99b53-ce2c-4a4c-99f6-f404cd36ff95",
                "port": "61d11f03-6fbc-4467-a947-d546fa6f6429"
              }
            },
            {
              "source": {
                "block": "6a75ac1d-7edb-4add-9860-3bddf79c64fd",
                "port": "out"
              },
              "target": {
                "block": "6638c656-ba94-42fe-bc6b-bd87b7f76df1",
                "port": "4656865c-bcf1-4668-8e13-9221e32222d3"
              }
            },
            {
              "source": {
                "block": "6a75ac1d-7edb-4add-9860-3bddf79c64fd",
                "port": "out"
              },
              "target": {
                "block": "15a99b53-ce2c-4a4c-99f6-f404cd36ff95",
                "port": "7697c4d1-f5f8-4a1d-88af-e367fe54e4b6"
              }
            }
          ]
        }
      }
    },
    "0e64bc728cbb881007bf629e44dc5b5b0fa3a34c": {
      "package": {
        "name": "Corazon_Hz",
        "version": "0.1",
        "description": "Corazon genérico para bombear bits a la frecuencia fijada en Hz (por defecto 1Hz)",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22177.215%22%20height=%22156.392%22%20viewBox=%220%200%20166.13943%20146.61829%22%3E%3Cpath%20d=%22M78.495%20143.399c-2.574-4.43-6.565-8.766-14.127-15.35-4.096-3.566-6.588-5.546-20.775-16.506-11.12-8.593-16.668-13.36-23.098-19.847C14.07%2085.208%2010.293%2080.04%207.052%2073.303%204.984%2069%203.562%2064.854%202.676%2060.547c-1.123-5.472-1.275-7.324-1.27-15.382.008-10.573.357-12.332%203.828-19.385%202.58-5.239%204.54-7.997%208.62-12.141%203.963-4.022%206.536-5.85%2012.1-8.6%206.18-3.057%2010.65-3.859%2019.86-3.562%207.157.232%209.776.943%2015.45%204.208%208.929%205.138%2015.858%2013.387%2017.776%2021.162.313%201.27.636%202.312.719%202.312.082%200%20.805-1.487%201.606-3.305%202.727-6.179%205.26-9.95%209.284-13.828%2012.32-11.88%2031.744-14.027%2047.45-5.25%206.414%203.584%2011.633%208.802%2015.676%2015.675%203.184%205.41%204.812%2012.595%205.09%2022.464.402%2014.298-2.214%2024.207-9.174%2034.766-2.763%204.19-4.806%206.73-8.638%2010.73-6.182%206.458-11.758%2011.205-24.92%2021.216-8.307%206.317-13.23%2010.378-20.355%2016.8-5.71%205.143-14.558%2014.1-15.41%2015.596-.372.655-.71%201.189-.749%201.189-.039%200-.544-.815-1.124-1.813z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%222.813%22/%3E%3Ctext%20y=%22136.183%22%20x=%22124.113%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2253.914%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22136.183%22%20x=%22124.113%22%20font-weight=%22700%22%20font-size=%2230.808%22%3EHz%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "70887b0b-826c-4150-a873-605b77da8272",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 560,
                "y": 128
              }
            },
            {
              "id": "4656865c-bcf1-4668-8e13-9221e32222d3",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -296,
                "y": 128
              }
            },
            {
              "id": "319cdca8-e777-4c8b-88ca-f885ba96ad06",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "1",
                "local": false
              },
              "position": {
                "x": 112,
                "y": -224
              }
            },
            {
              "id": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
              "type": "basic.code",
              "data": {
                "code": "\n//parameter HZ=1;\n\n//-- Constante para dividir y obtener una frecuencia de 1Hz\nlocalparam M = 12000000/HZ;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Registro del divisor\nreg [N-1:0] divcounter;\n\n//-- Temporal clock\nreg clk_t = 0;\n\n//-- Se usa un contador modulo M/2 para luego\n//-- pasarlo por un biestable T y dividir la frecuencia\n//-- entre 2, para que el ciclo de trabajo sea del 50%\nalways @(posedge clk)\n    if (divcounter == M/2) begin\n      clk_t <= 1;\n      divcounter = 0;\n    end \n    else begin\n      divcounter <=  divcounter + 1;\n      clk_t = 0;\n    end \n  \nreg clk_o = 0;  \n    \n//-- Biestable T para obtener ciclo de trabajo del 50%\nalways @(posedge clk)\n  if (clk_t)\n    clk_o <= ~clk_o;\n",
                "params": [
                  {
                    "name": "HZ"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    }
                  ],
                  "out": [
                    {
                      "name": "clk_o"
                    }
                  ]
                }
              },
              "position": {
                "x": -104,
                "y": -104
              },
              "size": {
                "width": 528,
                "height": 528
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "clk_o"
              },
              "target": {
                "block": "70887b0b-826c-4150-a873-605b77da8272",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "4656865c-bcf1-4668-8e13-9221e32222d3",
                "port": "out"
              },
              "target": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "clk"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "319cdca8-e777-4c8b-88ca-f885ba96ad06",
                "port": "constant-out"
              },
              "target": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "HZ"
              }
            }
          ]
        }
      }
    },
    "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6": {
      "package": {
        "name": "AND",
        "version": "1.0.1",
        "description": "Puerta AND",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22336.09%22%20height=%22194.045%22%20version=%221%22%3E%3Cpath%20d=%22M174.656%20190.045H78.304V4h96.352s87.463%208.625%2087.463%2091.94c0%2083.311-87.463%2094.105-87.463%2094.105z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2045.668h74.018M4.057%20144.812h74.018m184.632-50.034h69.326%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2292.894%22%20y=%22114.587%22%20font-weight=%22400%22%20font-size=%2258.054%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2292.894%22%20y=%22114.587%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EAND%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 88
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 784,
                "y": 152
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 224
              }
            },
            {
              "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "type": "basic.code",
              "data": {
                "code": "//-- Puerta AND\n\n//-- module and (input wire a, input wire b,\n//--             output wire c);\n\nassign c = a & b;\n\n//-- endmodule",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    },
                    {
                      "name": "b"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              },
              "size": {
                "width": 464,
                "height": 272
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "97b51945-d716-4b6c-9db9-970d08541249",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "b"
              }
            },
            {
              "source": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
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
    "ca73164c83e3f1cf6728c52cd70327629263bb51": {
      "package": {
        "name": "Comparador",
        "version": "0.1",
        "description": "Comparador de un operando de 8 bits. Se compara si el operando es igual al parámetro",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22312.756%22%20height=%22168.82%22%20viewBox=%220%200%20293.20803%20158.26888%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22178.324%22%20y=%22457.047%22%20font-size=%2296.3%22%20transform=%22matrix(4.864%200%200%204.864%20-916.998%20-1997.335)%22%20fill=%22#00f%22%20stroke-width=%22.057%22%20font-weight=%22400%22%20letter-spacing=%220%22%20word-spacing=%220%22%20font-family=%22sans-serif%22%3E%3Ctspan%20x=%22178.324%22%20y=%22457.047%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20stroke-width=%22.206%22%3E=%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "0344dacc-8583-456b-b377-8cb4ab97cf94",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 616,
                "y": 160
              }
            },
            {
              "id": "66770249-8f14-4f0c-b645-56f2f2ffc1b2",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 168,
                "y": 160
              }
            },
            {
              "id": "bde24908-c5bf-4286-b7e3-e42a11ca5c68",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 408,
                "y": 48
              }
            },
            {
              "id": "9c811723-c900-4ceb-9989-036b071ee3fe",
              "type": "basic.code",
              "data": {
                "code": "assign eq = (a == K);",
                "params": [
                  {
                    "name": "K"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "a",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ],
                  "out": [
                    {
                      "name": "eq"
                    }
                  ]
                }
              },
              "position": {
                "x": 344,
                "y": 160
              },
              "size": {
                "width": 224,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9c811723-c900-4ceb-9989-036b071ee3fe",
                "port": "eq"
              },
              "target": {
                "block": "0344dacc-8583-456b-b377-8cb4ab97cf94",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "bde24908-c5bf-4286-b7e3-e42a11ca5c68",
                "port": "constant-out"
              },
              "target": {
                "block": "9c811723-c900-4ceb-9989-036b071ee3fe",
                "port": "K"
              }
            },
            {
              "source": {
                "block": "66770249-8f14-4f0c-b645-56f2f2ffc1b2",
                "port": "out"
              },
              "target": {
                "block": "9c811723-c900-4ceb-9989-036b071ee3fe",
                "port": "a"
              },
              "size": 8
            }
          ]
        }
      }
    },
    "35f267d0df6ffcb7fc33753bc9df9cf083642cca": {
      "package": {
        "name": "NOT",
        "version": "1.0.3",
        "description": "Puerta NOT",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22317.651%22%20height=%22194.058%22%20version=%221%22%3E%3Cpath%20d=%22M69.246%204l161.86%2093.027-161.86%2093.031V4z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20cx=%22253.352%22%20cy=%2296.736%22%20rx=%2221.393%22%20ry=%2221.893%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2097.49h65.262m205.796%200h38.48%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2281.112%22%20y=%22111.734%22%20transform=%22scale(.99532%201.0047)%22%20font-weight=%22400%22%20font-size=%2249.675%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2281.112%22%20y=%22111.734%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ENot%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 144
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 752,
                "y": 144
              }
            },
            {
              "id": "5365ed8c-e5db-4445-938f-8d689830ea5c",
              "type": "basic.code",
              "data": {
                "code": "//-- Puerta NOT\n\n//-- module (input wire a, output wire c);\n\n\nassign c = ~a;\n\n\n//-- endmodule\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              },
              "size": {
                "width": 400,
                "height": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "81613874c6152f06c06ed7014bf4235900cfcc30": {
      "package": {
        "name": "OR",
        "version": "1.0.1",
        "description": "Puerta OR",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20height=%22192.718%22%20width=%22383.697%22%20version=%221%22%3E%3Cpath%20d=%22M175.56%20188.718H84.527s30.345-42.538%2031.086-94.03c.743-51.49-31.821-90.294-31.821-90.294L176.109%204c46.445%201.948%20103.899%2053.44%20123.047%2093.678-32.601%2067.503-92.158%2089.79-123.596%2091.04z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2047.292h99.605M4.883%20145.168h100.981M298.57%2098.89h81.07%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2266.317%22%20y=%22121.28%22%20x=%22131.572%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20font-weight=%22700%22%20y=%22121.28%22%20x=%22131.572%22%3EOR%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 88
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 784,
                "y": 152
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 224
              }
            },
            {
              "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "type": "basic.code",
              "data": {
                "code": "//-- Puerta OR\n\n//-- module and (input wire a, input wire b,\n//--             output wire c);\n\nassign c = a | b;\n\n//-- endmodule",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    },
                    {
                      "name": "b"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              },
              "size": {
                "width": 464,
                "height": 272
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "97b51945-d716-4b6c-9db9-970d08541249",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "b"
              }
            },
            {
              "source": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "b0ff9e2bfc7cb15f6a8db0f0277dc257a3a8ca9f": {
      "package": {
        "name": "ServoPWM-8bits",
        "version": "0.1",
        "description": "Controlador de servos, de 8 bits. El periodo del PWM por defecto es de 20ms (Futaba 3003)",
        "author": "Juan González-Gómez",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%20226.81476%20226.82651%22%20width=%22226.815%22%20height=%22226.827%22%3E%3Cpath%20d=%22M-218.227%20501.253v-1.36h-27.991a2.4%202.332%200%200%201-2.4-2.332v-65.674a2.4%202.332%200%200%201%202.4-2.331h27.991v-1.36a2.4%202.332%200%200%201%202.4-2.332h156.352a2.4%202.332%200%200%201%202.4%202.332v1.36h27.99a2.4%202.332%200%200%201%202.4%202.331v65.674a2.4%202.332%200%200%201-2.4%202.332h-27.99v1.36a2.4%202.332%200%200%201-2.4%202.332h-156.353a2.4%202.332%200%200%201-2.399-2.332%22%20fill=%22gray%22%20fill-rule=%22evenodd%22%20stroke=%22#191919%22%20stroke-width=%223%22/%3E%3Cellipse%20cy=%22-445.1%22%20cx=%22-235.421%22%20transform=%22scale(1%20-1)%22%20rx=%228.597%22%20ry=%228.355%22%20fill=%22#fff%22%20stroke=%22#191919%22%20stroke-width=%223.443%22/%3E%3Cellipse%20cy=%22-484.349%22%20cx=%22-235.421%22%20transform=%22scale(1%20-1)%22%20rx=%228.597%22%20ry=%228.355%22%20fill=%22#fff%22%20stroke=%22#191919%22%20stroke-width=%223.443%22/%3E%3Cellipse%20cy=%22-445.1%22%20cx=%22-39.881%22%20transform=%22scale(1%20-1)%22%20rx=%228.597%22%20ry=%228.355%22%20fill=%22#fff%22%20stroke=%22#191919%22%20stroke-width=%223.443%22/%3E%3Cellipse%20cy=%22-484.349%22%20cx=%22-39.881%22%20transform=%22scale(1%20-1)%22%20rx=%228.597%22%20ry=%228.355%22%20fill=%22#fff%22%20stroke=%22#191919%22%20stroke-width=%223.443%22/%3E%3Ctext%20style=%22line-height:0%25%22%20x=%22-176.454%22%20y=%22539.346%22%20font-weight=%22400%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22-176.454%22%20y=%22539.346%22%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20font-size=%2241.631%22%3Ems%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M-218.332%20429.341v70.264M-57.268%20429.341v70.264%22%20opacity=%22.54%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M-118.905%20443.988c-7.197%207.252-10.08%2017.69-7.545%2027.33%202.534%209.64%2010.093%2016.994%2019.791%2019.255%209.699%202.26%2020.04-.92%2027.077-8.33l35.68-79.843z%22%20fill=%22#4d4d4d%22%20stroke=%22#191919%22%20stroke-width=%223%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cg%20transform=%22matrix(2.3863%200%200%202.3863%20-456.494%20342.989)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20cx=%22100.602%22%20cy=%2273.815%22%20r=%2214.559%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(3.09408%200%200%203.09408%20-550.829%2011.357)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2211.548%22%20cy=%22187.419%22%20cx=%22108.371%22%20fill=%22#ececec%22%20stroke-width=%22.483%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M116.477%20190.766h-1.325v-7.195h-13.576v7.139h-1.444%22%20fill=%22none%22%20stroke-width=%221.207%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e88d7ecc-7ac9-486a-bac1-6a5f116d8564",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 1328,
                "y": 488
              }
            },
            {
              "id": "fbd5aac5-ae58-4153-9a1e-a2bec9ce86b4",
              "type": "basic.input",
              "data": {
                "name": "pos",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 1320,
                "y": 664
              }
            },
            {
              "id": "17cd3530-95be-4f0b-897e-1893c9831f1b",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 2296,
                "y": 752
              }
            },
            {
              "id": "9bd6b68b-84ad-4608-9891-47a8f989eb10",
              "type": "basic.input",
              "data": {
                "name": "write",
                "clock": false
              },
              "position": {
                "x": 1336,
                "y": 840
              }
            },
            {
              "id": "fac4aba8-78c9-4e9e-918b-3fb3a21c64a7",
              "type": "basic.input",
              "data": {
                "name": "ena",
                "clock": false
              },
              "position": {
                "x": 1344,
                "y": 1016
              }
            },
            {
              "id": "12ca3dc3-ff2e-4cb5-989d-95b9451973ea",
              "type": "basic.constant",
              "data": {
                "name": "ms",
                "value": "20",
                "local": false
              },
              "position": {
                "x": 1832,
                "y": 296
              }
            },
            {
              "id": "99406911-feb0-44f2-8cad-23292d259881",
              "type": "basic.info",
              "data": {
                "info": "**Salida PWM**",
                "readonly": true
              },
              "position": {
                "x": 2296,
                "y": 736
              },
              "size": {
                "width": 144,
                "height": 40
              }
            },
            {
              "id": "55773a27-3324-4799-a8f4-27f5d9ab271b",
              "type": "basic.info",
              "data": {
                "info": "Conectar directamente  \nal servo",
                "readonly": true
              },
              "position": {
                "x": 2296,
                "y": 816
              },
              "size": {
                "width": 208,
                "height": 56
              }
            },
            {
              "id": "fdf5de4f-5efd-417b-a05f-d2ac04e566fe",
              "type": "basic.info",
              "data": {
                "info": "Posición del servo. Indica el  \nancho del pulso en unidades de  \n10 usec. Así, un valor de 60  \nindica una anchura de 600 usec",
                "readonly": true
              },
              "position": {
                "x": 1328,
                "y": 584
              },
              "size": {
                "width": 272,
                "height": 80
              }
            },
            {
              "id": "1b33e061-6b21-4aa2-9933-ce0f8d4b28f1",
              "type": "basic.info",
              "data": {
                "info": "Tic de escritura de  \nuna nueva posición",
                "readonly": true
              },
              "position": {
                "x": 1336,
                "y": 808
              },
              "size": {
                "width": 176,
                "height": 56
              }
            },
            {
              "id": "dba918eb-6102-4ff5-853c-2da5c14fe1f4",
              "type": "basic.info",
              "data": {
                "info": "Habilitación del servo",
                "readonly": true
              },
              "position": {
                "x": 1344,
                "y": 1000
              },
              "size": {
                "width": 200,
                "height": 32
              }
            },
            {
              "id": "07bd3ec7-7039-4695-a8b4-b437790b437b",
              "type": "basic.code",
              "data": {
                "code": "//--- Registro de posición\n\nreg [7:0] pos_r = 140;\n\nalways @(posedge clk)\n  if (write)\n    pos_r <= pos;\n    \n    \n//-- Registro de estado\n\nreg state = 0;\n\nalways @(posedge clk)\n    state <= ena;\n    \n//------------------- Temporizador en unidades de 10us\n\n//--------- Biestable de estado\n\nreg state2 = 0;\n\nwire rst;\n\nalways @(posedge clk)\n  if (period)\n    state2 <= 1'b1;\n  else if (fin)\n    state2<=1'b0;\n    \n    \n//------- Registro de espera\nreg [7:0] delay_r = 0;\n\nalways @(posedge clk)\n  if (load)\n    delay_r <= pos_r;\n    \n//--- Carga del registro de espera en el arranque\nreg q0 = 0;\n\nalways @(posedge clk)\n  q0 <= state2;\n  \nwire load = (~q0 & state2);  \n\n//-- La señal de busy es el estado\nwire busy = state2;\n\n//------------------------------ Corazon de micro-segundos\n\nlocalparam US = 10;\n\n//-- Constante para dividir y obtener una frec. de 1Mhz\nlocalparam M = 12*US;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Cable de reset para el contador\nwire reset;\n\n//-- Registro del divisor\nreg [N-1:0] divcounter;\n\n\n//-- Contador con reset\nalways @(posedge clk)\n  if (reset)\n    divcounter <= 0;\n  else\n    divcounter <= divcounter + 1;\n\nwire ov = (divcounter == M-1);\n\n//-- Comparador que resetea el contador cuando se alcanza el tope\nassign reset = ov | (state2 == 0);\n\n//-- La salida es la señal de overflow\nwire heart_usec_o = ov;\n\n//------------------- Contador de tiempo (unidades de 10-usec)\n\nreg [7:0] tiempo = 0;\n\nalways @(posedge clk)\n  if (!state2)\n    tiempo <= 0;\n  else\n    if (heart_usec_o)\n      tiempo <= tiempo + 1;\n      \n//------------- Comparador\n\n//-- Cuando se alcanza el tiempo se emite la señal de fin\nwire fin = (delay_r == tiempo);\n\n\n//--------------------- Generador del periodo\n\n//-- Constante para dividir y obtener una frecuencia de 1KHz\nlocalparam M2 = 12000*MS;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N2 = $clog2(M2);\n\n//-- Cable de reset para el contador\nwire reset2;\n\n//-- Registro del divisor\nreg [N2-1:0] divcounter2;\n\n\n//-- Contador con reset\nalways @(posedge clk)\n  if (reset2)\n    divcounter2 <= 0;\n  else\n    divcounter2 <= divcounter2 + 1;\n\nwire ov2 = (divcounter2 == M2-1);\n\n//-- Comparador que resetea el contador cuando se alcanza el tope\nassign reset2 = ov2 | (state == 0);\n\n//-- La salida es la señal de overflow\nwire period = ov2;\n\n//----------- Biestable final de salida\nreg q3 = 0;\nalways @(posedge clk)\n  q3 <= busy;\n\nassign pwm = q3;\n\n\n\n",
                "params": [
                  {
                    "name": "MS"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "pos",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "write"
                    },
                    {
                      "name": "ena"
                    }
                  ],
                  "out": [
                    {
                      "name": "pwm"
                    }
                  ]
                }
              },
              "position": {
                "x": 1552,
                "y": 432
              },
              "size": {
                "width": 648,
                "height": 704
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "07bd3ec7-7039-4695-a8b4-b437790b437b",
                "port": "pwm"
              },
              "target": {
                "block": "17cd3530-95be-4f0b-897e-1893c9831f1b",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "fac4aba8-78c9-4e9e-918b-3fb3a21c64a7",
                "port": "out"
              },
              "target": {
                "block": "07bd3ec7-7039-4695-a8b4-b437790b437b",
                "port": "ena"
              }
            },
            {
              "source": {
                "block": "9bd6b68b-84ad-4608-9891-47a8f989eb10",
                "port": "out"
              },
              "target": {
                "block": "07bd3ec7-7039-4695-a8b4-b437790b437b",
                "port": "write"
              }
            },
            {
              "source": {
                "block": "fbd5aac5-ae58-4153-9a1e-a2bec9ce86b4",
                "port": "out"
              },
              "target": {
                "block": "07bd3ec7-7039-4695-a8b4-b437790b437b",
                "port": "pos"
              },
              "size": 8
            },
            {
              "source": {
                "block": "e88d7ecc-7ac9-486a-bac1-6a5f116d8564",
                "port": "out"
              },
              "target": {
                "block": "07bd3ec7-7039-4695-a8b4-b437790b437b",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "12ca3dc3-ff2e-4cb5-989d-95b9451973ea",
                "port": "constant-out"
              },
              "target": {
                "block": "07bd3ec7-7039-4695-a8b4-b437790b437b",
                "port": "MS"
              }
            }
          ]
        }
      }
    }
  }
}