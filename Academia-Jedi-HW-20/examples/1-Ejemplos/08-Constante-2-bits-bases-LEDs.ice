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
          "id": "82e2833b-ac2b-41e8-bcc1-5469a0ba92c7",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "range": "[1:0]",
            "pins": [
              {
                "index": "1",
                "name": "LED7",
                "value": "104"
              },
              {
                "index": "0",
                "name": "LED6",
                "value": "102"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 320,
            "y": 272
          }
        },
        {
          "id": "d151a049-5b8c-4b24-9699-782d4ca45fdb",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "range": "[1:0]",
            "pins": [
              {
                "index": "1",
                "name": "LED5",
                "value": "101"
              },
              {
                "index": "0",
                "name": "LED4",
                "value": "99"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 672,
            "y": 280
          }
        },
        {
          "id": "7dd5011d-74ab-4500-904d-5e966664e33c",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "range": "[1:0]",
            "pins": [
              {
                "index": "1",
                "name": "LED3",
                "value": "98"
              },
              {
                "index": "0",
                "name": "LED2",
                "value": "97"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 320,
            "y": 488
          }
        },
        {
          "id": "26cfbc49-77e2-4af9-9fe0-d7f7e6fbfb5f",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "range": "[1:0]",
            "pins": [
              {
                "index": "1",
                "name": "LED5",
                "value": "101"
              },
              {
                "index": "0",
                "name": "LED4",
                "value": "99"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 672,
            "y": 496
          }
        },
        {
          "id": "c8e4aef5-9c15-4fce-98b6-cbc8a6848521",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "0",
            "local": false
          },
          "position": {
            "x": 120,
            "y": 192
          }
        },
        {
          "id": "85a9584f-564e-4dce-8f16-149a43e5a09a",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "2'h2",
            "local": false
          },
          "position": {
            "x": 120,
            "y": 408
          }
        },
        {
          "id": "e92ee7a3-7a13-437a-95a8-e582eb74b064",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "2'd1",
            "local": false
          },
          "position": {
            "x": 472,
            "y": 200
          }
        },
        {
          "id": "4c80fc6e-cc86-48b9-9ffe-18d496ab926d",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "2'b11",
            "local": false
          },
          "position": {
            "x": 472,
            "y": 416
          }
        },
        {
          "id": "0f6d8b7e-22ed-4f77-8e81-d7c034c70701",
          "type": "basic.info",
          "data": {
            "info": "Ejemplo de envío de **4 constantes de 2 bits** a los LEDs, en las  \n**diferentes notaciones**. Se envían las constantes 0,1, 2 y 3",
            "readonly": true
          },
          "position": {
            "x": 120,
            "y": 104
          },
          "size": {
            "width": 544,
            "height": 56
          }
        },
        {
          "id": "9f9a72aa-d7fc-40be-8b12-cfd140fb0dd4",
          "type": "basic.info",
          "data": {
            "info": "**Decimal**",
            "readonly": true
          },
          "position": {
            "x": 136,
            "y": 184
          },
          "size": {
            "width": 128,
            "height": 32
          }
        },
        {
          "id": "556e5be6-74b0-4d7f-a82a-59a6edac16f1",
          "type": "1577535d38e0077281a8de7dc00933b07ec4f543",
          "position": {
            "x": 120,
            "y": 288
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "8e07a5d6-df31-4cf3-8db9-fdeafbc40d88",
          "type": "basic.info",
          "data": {
            "info": "**Decimal**",
            "readonly": true
          },
          "position": {
            "x": 488,
            "y": 192
          },
          "size": {
            "width": 128,
            "height": 32
          }
        },
        {
          "id": "9960f2fa-0cb0-4547-a6dd-655f07359f86",
          "type": "1577535d38e0077281a8de7dc00933b07ec4f543",
          "position": {
            "x": 472,
            "y": 296
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "eda506c2-2028-4c9f-838f-eb966fb3d63a",
          "type": "basic.info",
          "data": {
            "info": "**Hexadecimal**",
            "readonly": true
          },
          "position": {
            "x": 120,
            "y": 392
          },
          "size": {
            "width": 128,
            "height": 32
          }
        },
        {
          "id": "22473e86-260c-41d7-a6e4-a86361a1c0ff",
          "type": "1577535d38e0077281a8de7dc00933b07ec4f543",
          "position": {
            "x": 120,
            "y": 504
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "de23908c-76bf-4539-9fa5-7a8a79468c32",
          "type": "basic.info",
          "data": {
            "info": "**Binario**",
            "readonly": true
          },
          "position": {
            "x": 480,
            "y": 400
          },
          "size": {
            "width": 128,
            "height": 32
          }
        },
        {
          "id": "e78c34aa-fa91-4552-b6d7-7f95a4cdc0c4",
          "type": "1577535d38e0077281a8de7dc00933b07ec4f543",
          "position": {
            "x": 472,
            "y": 512
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
            "block": "556e5be6-74b0-4d7f-a82a-59a6edac16f1",
            "port": "603ddbc9-28cf-4ecc-a0c6-a5a2ce3b0b26"
          },
          "target": {
            "block": "82e2833b-ac2b-41e8-bcc1-5469a0ba92c7",
            "port": "in"
          },
          "size": 2
        },
        {
          "source": {
            "block": "c8e4aef5-9c15-4fce-98b6-cbc8a6848521",
            "port": "constant-out"
          },
          "target": {
            "block": "556e5be6-74b0-4d7f-a82a-59a6edac16f1",
            "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
          }
        },
        {
          "source": {
            "block": "9960f2fa-0cb0-4547-a6dd-655f07359f86",
            "port": "603ddbc9-28cf-4ecc-a0c6-a5a2ce3b0b26"
          },
          "target": {
            "block": "d151a049-5b8c-4b24-9699-782d4ca45fdb",
            "port": "in"
          },
          "vertices": [],
          "size": 2
        },
        {
          "source": {
            "block": "e92ee7a3-7a13-437a-95a8-e582eb74b064",
            "port": "constant-out"
          },
          "target": {
            "block": "9960f2fa-0cb0-4547-a6dd-655f07359f86",
            "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "22473e86-260c-41d7-a6e4-a86361a1c0ff",
            "port": "603ddbc9-28cf-4ecc-a0c6-a5a2ce3b0b26"
          },
          "target": {
            "block": "7dd5011d-74ab-4500-904d-5e966664e33c",
            "port": "in"
          },
          "vertices": [],
          "size": 2
        },
        {
          "source": {
            "block": "85a9584f-564e-4dce-8f16-149a43e5a09a",
            "port": "constant-out"
          },
          "target": {
            "block": "22473e86-260c-41d7-a6e4-a86361a1c0ff",
            "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "e78c34aa-fa91-4552-b6d7-7f95a4cdc0c4",
            "port": "603ddbc9-28cf-4ecc-a0c6-a5a2ce3b0b26"
          },
          "target": {
            "block": "26cfbc49-77e2-4af9-9fe0-d7f7e6fbfb5f",
            "port": "in"
          },
          "vertices": [],
          "size": 2
        },
        {
          "source": {
            "block": "4c80fc6e-cc86-48b9-9ffe-18d496ab926d",
            "port": "constant-out"
          },
          "target": {
            "block": "e78c34aa-fa91-4552-b6d7-7f95a4cdc0c4",
            "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
          },
          "vertices": []
        }
      ]
    }
  },
  "dependencies": {
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
    }
  }
}