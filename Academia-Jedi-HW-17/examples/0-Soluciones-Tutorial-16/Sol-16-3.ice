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
          "id": "bc6dc148-2e13-43ff-9e13-540e1188ae79",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 136,
            "y": -168
          }
        },
        {
          "id": "9f1d3402-a6fc-447c-ad53-add0b2e22606",
          "type": "basic.output",
          "data": {
            "name": "Zumbador",
            "pins": [
              {
                "index": "0",
                "name": "D11",
                "value": "142"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1368,
            "y": -72
          }
        },
        {
          "id": "33bd5ea1-94e5-4fd0-a155-ec4496152e15",
          "type": "basic.input",
          "data": {
            "name": "SD",
            "pins": [
              {
                "index": "0",
                "name": "D12",
                "value": "143"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -24,
            "y": -56
          }
        },
        {
          "id": "79db9dd5-a045-43fb-bed0-9b1feaeb64ec",
          "type": "basic.output",
          "data": {
            "name": "Motor_right",
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
            "x": 608,
            "y": -8
          }
        },
        {
          "id": "2db8a8ff-03ae-40de-8d68-22a9cb690d10",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "D10",
                "value": "141"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1504,
            "y": 64
          }
        },
        {
          "id": "1de85997-b8d9-4a3e-95ce-2e8962fe39da",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "D9",
                "value": "139"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1504,
            "y": 152
          }
        },
        {
          "id": "3e7a4988-739b-4658-bc7e-cc1b63c14641",
          "type": "basic.input",
          "data": {
            "name": "SI",
            "pins": [
              {
                "index": "0",
                "name": "D13",
                "value": "144"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -32,
            "y": 256
          }
        },
        {
          "id": "ffdc45b7-3ee8-447f-8252-a730ee93d554",
          "type": "basic.output",
          "data": {
            "name": "Motor_left",
            "pins": [
              {
                "index": "0",
                "name": "D1",
                "value": "118"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 608,
            "y": 320
          }
        },
        {
          "id": "224876d2-5448-4425-a8aa-6740f49802d3",
          "type": "basic.output",
          "data": {
            "name": "LED",
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
            "x": 128,
            "y": 432
          }
        },
        {
          "id": "fb51f7a7-99af-46ee-a542-b9b94f5abdd7",
          "type": "f97d11b78f83014e3f27ffb06850087e01ea5690",
          "position": {
            "x": 456,
            "y": -24
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "20c50543-2c04-4bbb-ac49-d48ee1b523aa",
          "type": "f97d11b78f83014e3f27ffb06850087e01ea5690",
          "position": {
            "x": 448,
            "y": 304
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "76668648-331c-4b70-b2e0-3594c6dba001",
          "type": "basic.info",
          "data": {
            "info": "**Rueda izquierda**",
            "readonly": true
          },
          "position": {
            "x": 496,
            "y": 256
          },
          "size": {
            "width": 192,
            "height": 48
          }
        },
        {
          "id": "1b6c24a0-e942-4eaf-9e66-d0267187bcb3",
          "type": "basic.info",
          "data": {
            "info": "**Rueda Derecha**",
            "readonly": true
          },
          "position": {
            "x": 504,
            "y": -72
          },
          "size": {
            "width": 192,
            "height": 48
          }
        },
        {
          "id": "1140bec0-79f7-4c76-9d82-31bb79053c92",
          "type": "21cfcc19a4ad14c5fb5e8cfebd018ec356fe7542",
          "position": {
            "x": 232,
            "y": 352
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "f207385c-5ed6-4e62-84aa-5b3607edb61a",
          "type": "725b7e2cb9666b5ed3183537d9c898f096dab82a",
          "position": {
            "x": 232,
            "y": 24
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "0fecbd88-7026-4816-aefc-3bd3fcd882bd",
          "type": "35f267d0df6ffcb7fc33753bc9df9cf083642cca",
          "position": {
            "x": 224,
            "y": 256
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "01cb115a-bcef-4abf-b29a-7d59270981a4",
          "type": "35f267d0df6ffcb7fc33753bc9df9cf083642cca",
          "position": {
            "x": 232,
            "y": -56
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "bce1b7c0-88a6-47fa-9738-45a17b050366",
          "type": "basic.info",
          "data": {
            "info": "**Sensor izquierdo**",
            "readonly": true
          },
          "position": {
            "x": -96,
            "y": 216
          },
          "size": {
            "width": 192,
            "height": 48
          }
        },
        {
          "id": "a5e192f1-ed7f-45ce-b45f-9c7abb545ca6",
          "type": "basic.info",
          "data": {
            "info": "**Sensor derecho**",
            "readonly": true
          },
          "position": {
            "x": -104,
            "y": -96
          },
          "size": {
            "width": 192,
            "height": 48
          }
        },
        {
          "id": "b1bdc61e-a7a0-4c4f-a2ab-f8a893ba2c27",
          "type": "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6",
          "position": {
            "x": 152,
            "y": 128
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "86ed7ff4-fa57-414e-af5e-72de8e15e35e",
          "type": "35f267d0df6ffcb7fc33753bc9df9cf083642cca",
          "position": {
            "x": 320,
            "y": 128
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "8264fcc5-b475-4ced-a82c-2879ead57625",
          "type": "basic.info",
          "data": {
            "info": "**Solución ejercicio 16.3:**\n\nHacer un circuito digital para que el robot icebot siga a un objeto. Utilizará dos  \nsensores IR colocados en su parte delantera. Siempre que el icebot esté en movimiento  \nse activará una sirena acústina y otra luminosa. La sirena es la misma que la del \nejercicio 1. La luminosa está formada por dos LEDs que parpadean anternativamente a  \nla misma frecuecia que la acústica (2Hz)",
            "readonly": true
          },
          "position": {
            "x": -40,
            "y": -336
          },
          "size": {
            "width": 720,
            "height": 144
          }
        },
        {
          "id": "19f4d0db-b238-4c47-906c-0c6aa1237299",
          "type": "1f5fef74bcd5c779dbd8db88a7474331cedbf99b",
          "position": {
            "x": 808,
            "y": -120
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "68c1350a-2290-40c9-82ca-c28471a5d8da",
          "type": "3df98909412e0f0fc1d1dbcc95c7edc5534832af",
          "position": {
            "x": 808,
            "y": -48
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "f318d4c8-f9d2-495d-a3d6-965e398b9b08",
          "type": "5cc6ec961df1a19b78d61422b28169fc0f69384b",
          "position": {
            "x": 1040,
            "y": -104
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "df916c10-8439-471b-9495-2dd87cf7fd82",
          "type": "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6",
          "position": {
            "x": 1208,
            "y": -72
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "ea004d71-779f-46c4-a7bf-42a14c95bbf4",
          "type": "2169f14fa20ae03effdad878c8dea1c0560f840d",
          "position": {
            "x": 808,
            "y": 48
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "af27ef19-cf6f-4a32-9cb8-0b218c58ed9f",
          "type": "basic.info",
          "data": {
            "info": "**Sirena acústica**",
            "readonly": true
          },
          "position": {
            "x": 904,
            "y": -176
          },
          "size": {
            "width": 192,
            "height": 32
          }
        },
        {
          "id": "b96e135b-dd5b-4551-90f1-3830b74adf22",
          "type": "basic.info",
          "data": {
            "info": "**Activación sirenas**  \nSirena en todos los casos  \nmenos cuando está detenido",
            "readonly": true
          },
          "position": {
            "x": 424,
            "y": 88
          },
          "size": {
            "width": 336,
            "height": 96
          }
        },
        {
          "id": "e7d3f090-886f-48b6-b6ce-cffb4e3d2f28",
          "type": "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6",
          "position": {
            "x": 1216,
            "y": 64
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "e6416b68-60b4-4809-986a-9c948baf45b8",
          "type": "35f267d0df6ffcb7fc33753bc9df9cf083642cca",
          "position": {
            "x": 1360,
            "y": 152
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "194a41cf-e8ff-4913-9e92-8e7dd26a39d7",
          "type": "basic.info",
          "data": {
            "info": "**Sirena Luminosa**",
            "readonly": true
          },
          "position": {
            "x": 1336,
            "y": 24
          },
          "size": {
            "width": 192,
            "height": 32
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "3e7a4988-739b-4658-bc7e-cc1b63c14641",
            "port": "out"
          },
          "target": {
            "block": "224876d2-5448-4425-a8aa-6740f49802d3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "33bd5ea1-94e5-4fd0-a155-ec4496152e15",
            "port": "out"
          },
          "target": {
            "block": "bc6dc148-2e13-43ff-9e13-540e1188ae79",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "fb51f7a7-99af-46ee-a542-b9b94f5abdd7",
            "port": "910bbdc3-5979-4834-ab08-a96083e784ce"
          },
          "target": {
            "block": "79db9dd5-a045-43fb-bed0-9b1feaeb64ec",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "20c50543-2c04-4bbb-ac49-d48ee1b523aa",
            "port": "910bbdc3-5979-4834-ab08-a96083e784ce"
          },
          "target": {
            "block": "ffdc45b7-3ee8-447f-8252-a730ee93d554",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "1140bec0-79f7-4c76-9d82-31bb79053c92",
            "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
          },
          "target": {
            "block": "20c50543-2c04-4bbb-ac49-d48ee1b523aa",
            "port": "9e05d630-6be7-45c7-b3ce-3a4e161901cd"
          }
        },
        {
          "source": {
            "block": "f207385c-5ed6-4e62-84aa-5b3607edb61a",
            "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
          },
          "target": {
            "block": "fb51f7a7-99af-46ee-a542-b9b94f5abdd7",
            "port": "9e05d630-6be7-45c7-b3ce-3a4e161901cd"
          }
        },
        {
          "source": {
            "block": "0fecbd88-7026-4816-aefc-3bd3fcd882bd",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "20c50543-2c04-4bbb-ac49-d48ee1b523aa",
            "port": "e3e07bdb-9bb3-4afb-ace5-bcc99aecef0a"
          },
          "vertices": [
            {
              "x": 344,
              "y": 304
            }
          ]
        },
        {
          "source": {
            "block": "3e7a4988-739b-4658-bc7e-cc1b63c14641",
            "port": "out"
          },
          "target": {
            "block": "0fecbd88-7026-4816-aefc-3bd3fcd882bd",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "33bd5ea1-94e5-4fd0-a155-ec4496152e15",
            "port": "out"
          },
          "target": {
            "block": "01cb115a-bcef-4abf-b29a-7d59270981a4",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "01cb115a-bcef-4abf-b29a-7d59270981a4",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "fb51f7a7-99af-46ee-a542-b9b94f5abdd7",
            "port": "e3e07bdb-9bb3-4afb-ace5-bcc99aecef0a"
          },
          "vertices": [
            {
              "x": 360,
              "y": 16
            }
          ]
        },
        {
          "source": {
            "block": "33bd5ea1-94e5-4fd0-a155-ec4496152e15",
            "port": "out"
          },
          "target": {
            "block": "b1bdc61e-a7a0-4c4f-a2ab-f8a893ba2c27",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "3e7a4988-739b-4658-bc7e-cc1b63c14641",
            "port": "out"
          },
          "target": {
            "block": "b1bdc61e-a7a0-4c4f-a2ab-f8a893ba2c27",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          }
        },
        {
          "source": {
            "block": "b1bdc61e-a7a0-4c4f-a2ab-f8a893ba2c27",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "86ed7ff4-fa57-414e-af5e-72de8e15e35e",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "19f4d0db-b238-4c47-906c-0c6aa1237299",
            "port": "70887b0b-826c-4150-a873-605b77da8272"
          },
          "target": {
            "block": "f318d4c8-f9d2-495d-a3d6-965e398b9b08",
            "port": "5898179a-7390-429b-ac3c-b7a0df673610"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "68c1350a-2290-40c9-82ca-c28471a5d8da",
            "port": "70887b0b-826c-4150-a873-605b77da8272"
          },
          "target": {
            "block": "f318d4c8-f9d2-495d-a3d6-965e398b9b08",
            "port": "db089906-4326-4b59-8aa5-ebb61116a4cd"
          },
          "vertices": [
            {
              "x": 928,
              "y": -48
            }
          ]
        },
        {
          "source": {
            "block": "df916c10-8439-471b-9495-2dd87cf7fd82",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "9f1d3402-a6fc-447c-ad53-add0b2e22606",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "f318d4c8-f9d2-495d-a3d6-965e398b9b08",
            "port": "0ef557c8-5378-43b3-80af-176f129f1a07"
          },
          "target": {
            "block": "df916c10-8439-471b-9495-2dd87cf7fd82",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "ea004d71-779f-46c4-a7bf-42a14c95bbf4",
            "port": "70887b0b-826c-4150-a873-605b77da8272"
          },
          "target": {
            "block": "f318d4c8-f9d2-495d-a3d6-965e398b9b08",
            "port": "1e637a79-4a6d-495c-bcac-9664bdbe4b94"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "86ed7ff4-fa57-414e-af5e-72de8e15e35e",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "df916c10-8439-471b-9495-2dd87cf7fd82",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          }
        },
        {
          "source": {
            "block": "ea004d71-779f-46c4-a7bf-42a14c95bbf4",
            "port": "70887b0b-826c-4150-a873-605b77da8272"
          },
          "target": {
            "block": "e7d3f090-886f-48b6-b6ce-cffb4e3d2f28",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "86ed7ff4-fa57-414e-af5e-72de8e15e35e",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "e7d3f090-886f-48b6-b6ce-cffb4e3d2f28",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          },
          "vertices": [
            {
              "x": 1184,
              "y": 128
            }
          ]
        },
        {
          "source": {
            "block": "e7d3f090-886f-48b6-b6ce-cffb4e3d2f28",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "2db8a8ff-03ae-40de-8d68-22a9cb690d10",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "e7d3f090-886f-48b6-b6ce-cffb4e3d2f28",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "e6416b68-60b4-4809-986a-9c948baf45b8",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "e6416b68-60b4-4809-986a-9c948baf45b8",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "1de85997-b8d9-4a3e-95ce-2e8962fe39da",
            "port": "in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 90.0469,
        "y": 225.0023
      },
      "zoom": 0.4812
    }
  },
  "dependencies": {
    "f97d11b78f83014e3f27ffb06850087e01ea5690": {
      "package": {
        "name": "MotorBit para Servos SM-S4303R",
        "version": "0.1",
        "description": "Controlador para servo de rotacion continua SprintRC SM-S4303R. Con on=1, el motor avanza. Dir=1 sentido agujas reloj/ 0 el contrario",
        "author": "Juan Gonzalez-Gomez y Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%20252.58672%20182.74189%22%20width=%22252.587%22%20height=%22182.742%22%3E%3Cdefs%3E%3Cmarker%20orient=%22auto%22%20id=%22a%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M5.231%202.42L-1.324.01%205.23-2.401C4.184-.978%204.19.969%205.231%202.42z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22%20stroke=%22#00f%22%20stroke-width=%22.375%22%20stroke-linejoin=%22round%22/%3E%3C/marker%3E%3Cmarker%20orient=%22auto%22%20id=%22b%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M-5.231-2.42L1.324-.01-5.23%202.401c1.047-1.423%201.041-3.37%200-4.821z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22%20stroke=%22#00f%22%20stroke-width=%22.375%22%20stroke-linejoin=%22round%22/%3E%3C/marker%3E%3C/defs%3E%3Cpath%20d=%22M-220.11%20530.564v-1.36h-27.99a2.4%202.332%200%200%201-2.4-2.331v-65.674a2.4%202.332%200%200%201%202.4-2.332h27.99v-1.36a2.4%202.332%200%200%201%202.4-2.332h156.352a2.4%202.332%200%200%201%202.4%202.332v1.36h27.99a2.4%202.332%200%200%201%202.4%202.332v65.674a2.4%202.332%200%200%201-2.4%202.331h-27.99v1.36a2.4%202.332%200%200%201-2.4%202.332H-217.71a2.4%202.332%200%200%201-2.4-2.332%22%20fill=%22gray%22%20fill-rule=%22evenodd%22%20stroke=%22#191919%22%20stroke-width=%223%22/%3E%3Cellipse%20cy=%22-474.411%22%20cx=%22-237.304%22%20transform=%22scale(1%20-1)%22%20rx=%228.597%22%20ry=%228.355%22%20fill=%22#fff%22%20stroke=%22#191919%22%20stroke-width=%223.443%22/%3E%3Cellipse%20cy=%22-513.66%22%20cx=%22-237.304%22%20transform=%22scale(1%20-1)%22%20rx=%228.597%22%20ry=%228.355%22%20fill=%22#fff%22%20stroke=%22#191919%22%20stroke-width=%223.443%22/%3E%3Cellipse%20cy=%22-474.411%22%20cx=%22-41.764%22%20transform=%22scale(1%20-1)%22%20rx=%228.597%22%20ry=%228.355%22%20fill=%22#fff%22%20stroke=%22#191919%22%20stroke-width=%223.443%22/%3E%3Cellipse%20cy=%22-513.66%22%20cx=%22-41.764%22%20transform=%22scale(1%20-1)%22%20rx=%228.597%22%20ry=%228.355%22%20fill=%22#fff%22%20stroke=%22#191919%22%20stroke-width=%223.443%22/%3E%3Cpath%20d=%22M-220.214%20458.653v70.263M-59.15%20458.653v70.263%22%20opacity=%22.54%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M-137.713%20443.217l34.426%2026.776%207.24-.137%2037.021-29.644s6.83-2.732%2010.655%201.093c3.826%203.825%202.46%2010.382%202.46%2010.382l-27.869%2038.524-.41%208.606%2030.874%2040.163s.683%203.416-2.596%207.24c-3.278%203.826-10.518%202.596-10.518%202.596l-37.897-29.598-7.321.227-36.338%2029.781s-6.694%205.874-12.295-.273c-5.6-6.148-1.366-13.934-1.366-13.934l26.229-34.426.137-9.972-30.054-38.25s-2.87-5.875%202.595-10.52c5.465-4.644%2015.027%201.366%2015.027%201.366z%22%20fill=%22#4d4d4d%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20cx=%22-99.495%22%20cy=%22494.319%22%20rx=%2212.295%22%20ry=%2212.295%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M-205.443%20454.644a89.364%2089.371%200%200%201-117.547%2039.338%2089.364%2089.371%200%200%201-43.777-115.975%2089.364%2089.371%200%200%201%20114.217-48.16%2089.364%2089.371%200%200%201%2052.465%20112.312%22%20transform=%22rotate(-23.375)%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%224%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20marker-start=%22url(#a)%22%20marker-end=%22url(#b)%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:center%22%20x=%22-177.673%22%20y=%22509.143%22%20font-weight=%22400%22%20font-size=%2226.547%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fc0%22%3E%3Ctspan%20x=%22-177.673%22%20y=%22509.143%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold';text-align:center%22%20font-weight=%22700%22%20font-size=%2215.17%22%3ES4303R%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25;text-align:center%22%20x=%22-178.251%22%20y=%22488.514%22%20font-weight=%22400%22%20font-size=%2226.547%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#fc0%22%3E%3Ctspan%20x=%22-178.251%22%20y=%22488.514%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold';text-align:center%22%20font-weight=%22700%22%20font-size=%2215.17%22%3ESpringRC%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "8da63e4e-07b6-4711-900a-8c8843f20352",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 112,
                "y": 120
              }
            },
            {
              "id": "e3e07bdb-9bb3-4afb-ace5-bcc99aecef0a",
              "type": "basic.input",
              "data": {
                "name": "on",
                "clock": false
              },
              "position": {
                "x": 112,
                "y": 256
              }
            },
            {
              "id": "910bbdc3-5979-4834-ab08-a96083e784ce",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 968,
                "y": 256
              }
            },
            {
              "id": "9e05d630-6be7-45c7-b3ce-3a4e161901cd",
              "type": "basic.input",
              "data": {
                "name": "dir",
                "clock": false
              },
              "position": {
                "x": 112,
                "y": 392
              }
            },
            {
              "id": "111d9859-6de5-4608-9176-ed8359ffebc5",
              "type": "basic.code",
              "data": {
                "code": "//-- MotorBit\n\n//-- Control de un servo de rotacion continua SM-S4303R\n//-- con dos bits\n\n//-- Constantes para el angulo del servo\nlocalparam ANG_0   = 8'h01;\nlocalparam ANG_45  = 8'h24;\nlocalparam ANG_90  = 8'h72;\nlocalparam ANG_135 = 8'h96;\nlocalparam ANG_180 = 8'hE4;\nlocalparam STOP = 8'h90;\nlocalparam ATRAS = 8'h24;\nlocalparam ADELANTE = 8'hE4;\n\n\n//-- Posicion del servo cuando el\n//-- bit de entrada es 0\n//-- La corona del servo mira a la derecha\nlocalparam BIT0 = STOP;\n\n//-- Posicion el servo cuando el bit\n//-- de entrada es 1\n//-- La corona del servo mira a la izquierda\nlocalparam BIT1 = ATRAS;\n\n\n//-- Posicion de 8 bits del servo\nreg [7:0] pos;\n\n//-- Asignar la posicion de 8 bits\n//-- segun si lo recibido es 0 ó 1\nalways @(posedge clk)\n  pos <= (on_off==0) ? STOP : \n         dir ? ADELANTE : ATRAS;\n\n\n//---\n//--- ServoMotor \n\n//-- M es el valor del divisor para\n//-- obtener tics de M / 12.0 micro-segundos\nlocalparam M = 94; \nlocalparam N = $clog2(M);\n\n//-- Contador para generar los tics\nreg [N-1:0] divcounter = 0;\n\n//-- Flag para indicar que un tic\n//-- ha ocurrido\nreg tic = 0;\n\n//-- Generacion de los tics. Cada\n//-- M ciclos del reloj se genera 1\nalways @(posedge clk)\n tic <= (divcounter == M - 2);\n\n//-- Contador modulo M\nalways @(posedge clk)\n if (tic)\n   divcounter <= 0;\n else\n   divcounter <= divcounter + 1;\n\n//-- Contador de la posicion del \n//-- servo\nreg [10:0] angle_counter = 0;\n\n//-- A la posicion destino hay que\n//-- sumarle un offset, correspondiente\n//-- a los 0.3ms de la posicion inicial\nwire [8:0] pose = {1'b0, pos} + 9'd46;\n\n//-- Con cada tic se incrementa el\n//-- contador de angulo del servo\nalways @(posedge clk)\n if (tic)\n   angle_counter <= angle_counter + 1;\n\n//-- Cuando el contador es menor que el \n//-- valor objetivo, la señal de PWM\n//-- del servo se pone 1, y 0 en \n//-- caso contrario\n\nreg servo;\n\nalways @(posedge clk)\n servo <= (angle_counter < {2'b00, pose});\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "on_off"
                    },
                    {
                      "name": "dir"
                    }
                  ],
                  "out": [
                    {
                      "name": "servo"
                    }
                  ]
                }
              },
              "position": {
                "x": 304,
                "y": 80
              },
              "size": {
                "width": 528,
                "height": 416
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "111d9859-6de5-4608-9176-ed8359ffebc5",
                "port": "servo"
              },
              "target": {
                "block": "910bbdc3-5979-4834-ab08-a96083e784ce",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e3e07bdb-9bb3-4afb-ace5-bcc99aecef0a",
                "port": "out"
              },
              "target": {
                "block": "111d9859-6de5-4608-9176-ed8359ffebc5",
                "port": "on_off"
              }
            },
            {
              "source": {
                "block": "9e05d630-6be7-45c7-b3ce-3a4e161901cd",
                "port": "out"
              },
              "target": {
                "block": "111d9859-6de5-4608-9176-ed8359ffebc5",
                "port": "dir"
              }
            },
            {
              "source": {
                "block": "8da63e4e-07b6-4711-900a-8c8843f20352",
                "port": "out"
              },
              "target": {
                "block": "111d9859-6de5-4608-9176-ed8359ffebc5",
                "port": "clk"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": -56.4706,
            "y": 15.4328
          },
          "zoom": 0.8613
        }
      }
    },
    "21cfcc19a4ad14c5fb5e8cfebd018ec356fe7542": {
      "package": {
        "name": "0",
        "version": "0.1",
        "description": "Un bit constante a 0",
        "author": "Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2233.563%22%20height=%2257.469%22%20viewBox=%220%200%2031.465601%2053.876499%22%3E%3Cpath%20d=%22M21.822%2032.843l4.092%208.992-3.772%209.727%204.181%201.31m-12.967-19.26s-1.091%208.253-2.585%208.919C9.278%2043.198%201%2049.389%201%2049.389l2.647%203.256%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-.863%22%20y=%2230.575%22%20transform=%22scale(.90756%201.10186)%22%20font-weight=%22400%22%20font-size=%2254.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22%3E%3Ctspan%20x=%22-.863%22%20y=%2230.575%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold%20Italic'%22%20font-style=%22italic%22%20font-weight=%22700%22%3Eo%3C/tspan%3E%3C/text%3E%3C/svg%3E"
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
                "code": "//-- Bit constante a 0\nassign q = 1'b0;\n\n",
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
        },
        "state": {
          "pan": {
            "x": 62,
            "y": 71.5
          },
          "zoom": 1
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
        },
        "state": {
          "pan": {
            "x": 62,
            "y": 71.5
          },
          "zoom": 1
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
        },
        "state": {
          "pan": {
            "x": -6,
            "y": 87.5
          },
          "zoom": 1
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
        },
        "state": {
          "pan": {
            "x": -22,
            "y": 79.5
          },
          "zoom": 1
        }
      }
    },
    "1f5fef74bcd5c779dbd8db88a7474331cedbf99b": {
      "package": {
        "name": "Corazon_1KHz",
        "version": "0.1",
        "description": "Bombear 1000 bits por segundo",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22215.59%22%20height=%22156.392%22%20viewBox=%220%200%20202.11681%20146.61832%22%3E%3Cpath%20d=%22M78.495%20143.399c-2.574-4.43-6.565-8.766-14.127-15.35-4.096-3.566-6.588-5.546-20.775-16.506-11.12-8.593-16.668-13.36-23.098-19.847C14.07%2085.208%2010.293%2080.04%207.052%2073.303%204.984%2069%203.562%2064.854%202.676%2060.547c-1.123-5.472-1.275-7.324-1.27-15.382.008-10.573.357-12.332%203.828-19.385%202.58-5.239%204.54-7.997%208.62-12.141%203.963-4.022%206.536-5.85%2012.1-8.6%206.18-3.057%2010.65-3.859%2019.86-3.562%207.157.232%209.776.943%2015.45%204.208%208.929%205.138%2015.858%2013.387%2017.776%2021.162.313%201.27.636%202.312.719%202.312.082%200%20.805-1.487%201.606-3.305%202.727-6.179%205.26-9.95%209.284-13.828%2012.32-11.88%2031.744-14.027%2047.45-5.25%206.414%203.584%2011.633%208.802%2015.676%2015.675%203.184%205.41%204.812%2012.595%205.09%2022.464.402%2014.298-2.214%2024.207-9.174%2034.766-2.763%204.191-4.806%206.73-8.638%2010.73-6.182%206.458-11.758%2011.205-24.92%2021.216-8.307%206.317-13.23%2010.378-20.355%2016.8-5.71%205.143-14.558%2014.1-15.41%2015.596-.372.655-.71%201.19-.749%201.19-.039%200-.544-.816-1.124-1.814z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%222.813%22/%3E%3Ctext%20y=%22136.183%22%20x=%22114.834%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2253.914%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22136.183%22%20x=%22114.834%22%20font-weight=%22700%22%20font-size=%2230.808%22%3E1KHz%3C/tspan%3E%3C/text%3E%3C/svg%3E"
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
                "x": -304,
                "y": 128
              }
            },
            {
              "id": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
              "type": "basic.code",
              "data": {
                "code": "\n//-- Constante para dividir y obtener una frecuencia de 1KHz\nlocalparam M = 12000;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Registro del divisor\nreg [N-1:0] divcounter;\n\n//-- Temporal clock\nreg clk_t = 0;\n\n//-- Se usa un contador modulo M/2 para luego\n//-- pasarlo por un biestable T y dividir la frecuencia\n//-- entre 2, para que el ciclo de trabajo sea del 50%\nalways @(posedge clk)\n    if (divcounter == M/2) begin\n      clk_t <= 1;\n      divcounter = 0;\n    end \n    else begin\n      divcounter <=  divcounter + 1;\n      clk_t = 0;\n    end \n  \nreg clk_o = 0;  \n    \n//-- Biestable T para obtener ciclo de trabajo del 50%\nalways @(posedge clk)\n  if (clk_t)\n    clk_o <= ~clk_o;\n",
                "params": [],
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
                "width": 576,
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
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 301,
            "y": 128.0455
          },
          "zoom": 0.8466
        }
      }
    },
    "3df98909412e0f0fc1d1dbcc95c7edc5534832af": {
      "package": {
        "name": "Corazon_2KHz",
        "version": "0.1",
        "description": "Bombear 2000 bits por segundo",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22215.59%22%20height=%22156.392%22%20viewBox=%220%200%20202.11681%20146.61832%22%3E%3Cpath%20d=%22M78.495%20143.399c-2.574-4.43-6.565-8.766-14.127-15.35-4.096-3.566-6.588-5.546-20.775-16.506-11.12-8.593-16.668-13.36-23.098-19.847C14.07%2085.208%2010.293%2080.04%207.052%2073.303%204.984%2069%203.562%2064.854%202.676%2060.547c-1.123-5.472-1.275-7.324-1.27-15.382.008-10.573.357-12.332%203.828-19.385%202.58-5.239%204.54-7.997%208.62-12.141%203.963-4.022%206.536-5.85%2012.1-8.6%206.18-3.057%2010.65-3.859%2019.86-3.562%207.157.232%209.776.943%2015.45%204.208%208.929%205.138%2015.858%2013.387%2017.776%2021.162.313%201.27.636%202.312.719%202.312.082%200%20.805-1.487%201.606-3.305%202.727-6.179%205.26-9.95%209.284-13.828%2012.32-11.88%2031.744-14.027%2047.45-5.25%206.414%203.584%2011.633%208.802%2015.676%2015.675%203.184%205.41%204.812%2012.595%205.09%2022.464.402%2014.298-2.214%2024.207-9.174%2034.766-2.763%204.191-4.806%206.73-8.638%2010.73-6.182%206.458-11.758%2011.205-24.92%2021.216-8.307%206.317-13.23%2010.378-20.355%2016.8-5.71%205.143-14.558%2014.1-15.41%2015.596-.372.655-.71%201.19-.749%201.19-.039%200-.544-.816-1.124-1.814z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%222.813%22/%3E%3Ctext%20y=%22136.183%22%20x=%22114.834%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2253.914%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22136.183%22%20x=%22114.834%22%20font-weight=%22700%22%20font-size=%2230.808%22%3E2KHz%3C/tspan%3E%3C/text%3E%3C/svg%3E"
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
                "x": -304,
                "y": 128
              }
            },
            {
              "id": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
              "type": "basic.code",
              "data": {
                "code": "\n//-- Constante para dividir y obtener una frecuencia de 2KHz\nlocalparam M = 6000;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Registro del divisor\nreg [N-1:0] divcounter;\n\n//-- Temporal clock\nreg clk_t = 0;\n\n//-- Se usa un contador modulo M/2 para luego\n//-- pasarlo por un biestable T y dividir la frecuencia\n//-- entre 2, para que el ciclo de trabajo sea del 50%\nalways @(posedge clk)\n    if (divcounter == M/2) begin\n      clk_t <= 1;\n      divcounter = 0;\n    end \n    else begin\n      divcounter <=  divcounter + 1;\n      clk_t = 0;\n    end \n  \nreg clk_o = 0;  \n    \n//-- Biestable T para obtener ciclo de trabajo del 50%\nalways @(posedge clk)\n  if (clk_t)\n    clk_o <= ~clk_o;\n",
                "params": [],
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
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 301,
            "y": 128.0455
          },
          "zoom": 0.8466
        }
      }
    },
    "5cc6ec961df1a19b78d61422b28169fc0f69384b": {
      "package": {
        "name": "Mux 2 a 1",
        "version": "0.0.1",
        "description": "Multiplexor de 2 a 1",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2280.833%22%20height=%22158.56%22%20viewBox=%220%200%2075.781585%20148.65066%22%3E%3Cpath%20d=%22M74.375%2036.836c0-12.691-6.99-24.413-18.326-30.729-11.335-6.316-25.284-6.262-36.568.141C8.198%2012.652%201.304%2024.427%201.407%2037.118v74.415c-.103%2012.69%206.79%2024.466%2018.074%2030.87%2011.284%206.403%2025.233%206.457%2036.568.14%2011.336-6.316%2018.326-18.037%2018.326-30.728z%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%227.448%22%20y=%2291.518%22%20transform=%22matrix(1.00472%200%200%20.9953%2020.25%2033.697)%22%20font-weight=%22400%22%20font-size=%2233.509%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%227.448%22%20y=%2291.518%22%3E0%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%227.359%22%20y=%2214.582%22%20transform=%22matrix(1.00472%200%200%20.9953%2020.25%2033.697)%22%20font-weight=%22400%22%20font-size=%2233.509%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%227.359%22%20y=%2214.582%22%3E1%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "5898179a-7390-429b-ac3c-b7a0df673610",
              "type": "basic.input",
              "data": {
                "name": "i1",
                "clock": false
              },
              "position": {
                "x": -704,
                "y": -88
              }
            },
            {
              "id": "db089906-4326-4b59-8aa5-ebb61116a4cd",
              "type": "basic.input",
              "data": {
                "name": "i0",
                "clock": false
              },
              "position": {
                "x": -704,
                "y": 0
              }
            },
            {
              "id": "0ef557c8-5378-43b3-80af-176f129f1a07",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": -48,
                "y": 0
              }
            },
            {
              "id": "1e637a79-4a6d-495c-bcac-9664bdbe4b94",
              "type": "basic.input",
              "data": {
                "name": "sel",
                "clock": false
              },
              "position": {
                "x": -704,
                "y": 88
              }
            },
            {
              "id": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
              "type": "basic.code",
              "data": {
                "code": "//-- Multiplexor de 2 a 1, \n//-- de 8 bits\n\nreg _o;\n\nalways @(*) begin\n    case(sel)\n        0: _o = i0;\n        1: _o = i1;\n        default: _o = i0;\n    endcase\nend\n\nassign o = _o;\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i1"
                    },
                    {
                      "name": "i0"
                    },
                    {
                      "name": "sel"
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
                "x": -464,
                "y": -104
              },
              "size": {
                "width": 304,
                "height": 272
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "1e637a79-4a6d-495c-bcac-9664bdbe4b94",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "sel"
              }
            },
            {
              "source": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "o"
              },
              "target": {
                "block": "0ef557c8-5378-43b3-80af-176f129f1a07",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "db089906-4326-4b59-8aa5-ebb61116a4cd",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "i0"
              }
            },
            {
              "source": {
                "block": "5898179a-7390-429b-ac3c-b7a0df673610",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "i1"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 778,
            "y": 231.5
          },
          "zoom": 1
        }
      }
    },
    "2169f14fa20ae03effdad878c8dea1c0560f840d": {
      "package": {
        "name": "Corazon_2Hz",
        "version": "0.1",
        "description": "Bombear 2 bits por segundo",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22200.13%22%20height=%22156.592%22%20viewBox=%220%200%20187.62306%20146.80587%22%3E%3Cpath%20d=%22M78.589%20143.492c-2.574-4.428-6.565-8.765-14.127-15.349-4.096-3.566-6.588-5.547-20.776-16.507-11.12-8.592-16.667-13.358-23.097-19.846-6.426-6.488-10.203-11.656-13.443-18.393-2.069-4.303-3.49-8.449-4.376-12.756C1.647%2055.17%201.494%2053.316%201.5%2045.26c.008-10.573.357-12.332%203.828-19.385%202.58-5.239%204.54-7.997%208.62-12.141%203.963-4.022%206.535-5.85%2012.099-8.6%206.18-3.058%2010.651-3.86%2019.86-3.562%207.157.231%209.777.943%2015.45%204.208%208.93%205.138%2015.858%2013.387%2017.776%2021.161.314%201.272.637%202.313.72%202.313.082%200%20.804-1.487%201.606-3.305%202.727-6.18%205.26-9.95%209.284-13.828%2012.32-11.88%2031.744-14.027%2047.45-5.25%206.414%203.584%2011.633%208.802%2015.676%2015.675%203.184%205.41%204.812%2012.595%205.09%2022.464.401%2014.298-2.214%2024.207-9.175%2034.766-2.762%204.19-4.805%206.73-8.637%2010.73-6.183%206.458-11.758%2011.205-24.921%2021.216-8.306%206.317-13.23%2010.378-20.355%2016.8-5.71%205.143-14.557%2014.099-15.41%2015.596-.372.654-.709%201.189-.748%201.189-.039%200-.544-.816-1.124-1.814z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%222.813%22/%3E%3Ctext%20y=%22136.277%22%20x=%22124.207%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2253.914%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22136.277%22%20x=%22124.207%22%20font-weight=%22700%22%20font-size=%2230.808%22%3E2Hz%3C/tspan%3E%3C/text%3E%3C/svg%3E"
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
                "x": -304,
                "y": 128
              }
            },
            {
              "id": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
              "type": "basic.code",
              "data": {
                "code": "\n//-- Constante para dividir y obtener una frecuencia de 2Hz\nlocalparam M = 6000000;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Registro del divisor\nreg [N-1:0] divcounter;\n\n//-- Temporal clock\nreg clk_t = 0;\n\n//-- Se usa un contador modulo M/2 para luego\n//-- pasarlo por un biestable T y dividir la frecuencia\n//-- entre 2, para que el ciclo de trabajo sea del 50%\nalways @(posedge clk)\n    if (divcounter == M/2) begin\n      clk_t <= 1;\n      divcounter = 0;\n    end \n    else begin\n      divcounter <=  divcounter + 1;\n      clk_t = 0;\n    end \n  \nreg clk_o = 0;  \n    \n//-- Biestable T para obtener ciclo de trabajo del 50%\nalways @(posedge clk)\n  if (clk_t)\n    clk_o <= ~clk_o;\n",
                "params": [],
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
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 301,
            "y": 128.0455
          },
          "zoom": 0.8466
        }
      }
    }
  }
}