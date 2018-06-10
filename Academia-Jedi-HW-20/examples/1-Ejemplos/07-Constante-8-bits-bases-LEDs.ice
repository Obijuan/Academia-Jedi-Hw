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
          "id": "eeb93326-6d39-41ae-8272-434e89c2ee32",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "LED7",
                "value": "104"
              },
              {
                "index": "6",
                "name": "LED6",
                "value": "102"
              },
              {
                "index": "5",
                "name": "LED5",
                "value": "101"
              },
              {
                "index": "4",
                "name": "LED4",
                "value": "99"
              },
              {
                "index": "3",
                "name": "LED3",
                "value": "98"
              },
              {
                "index": "2",
                "name": "LED2",
                "value": "97"
              },
              {
                "index": "1",
                "name": "LED1",
                "value": "96"
              },
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 568,
            "y": 88
          }
        },
        {
          "id": "c8e4aef5-9c15-4fce-98b6-cbc8a6848521",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "255",
            "local": false
          },
          "position": {
            "x": 8,
            "y": 88
          }
        },
        {
          "id": "f8f2c584-ac8c-4ee0-8b44-0c97575d3132",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "8'd255",
            "local": false
          },
          "position": {
            "x": 128,
            "y": 88
          }
        },
        {
          "id": "d7c8ca31-28a9-48c0-a4aa-d636043d368d",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "8'hFF",
            "local": false
          },
          "position": {
            "x": 248,
            "y": 88
          }
        },
        {
          "id": "27ba4f50-343f-42c2-832a-01ca4a3886af",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "8'b11111111",
            "local": false
          },
          "position": {
            "x": 368,
            "y": 88
          }
        },
        {
          "id": "6b92a1e7-e4fd-4c41-9134-d20c3d7cf8e0",
          "type": "5ad97e1e35a295d0ec722addd6df97c806fc6b7c",
          "position": {
            "x": 368,
            "y": 200
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "0f6d8b7e-22ed-4f77-8e81-d7c034c70701",
          "type": "basic.info",
          "data": {
            "info": "Ejemplo para encender todos los LEDs enviando la constante de **8 bits**  \n**255**, en todas sus bases: **decimal**, **hexadecimal** o **binario**",
            "readonly": true
          },
          "position": {
            "x": 72,
            "y": -64
          },
          "size": {
            "width": 552,
            "height": 56
          }
        },
        {
          "id": "2a97c3d4-6bb2-4b2f-ae0f-1c49ed94a901",
          "type": "basic.info",
          "data": {
            "info": "**Binario**",
            "readonly": true
          },
          "position": {
            "x": 384,
            "y": 72
          },
          "size": {
            "width": 112,
            "height": 32
          }
        },
        {
          "id": "e1051860-50be-4c97-b6f6-9b42d0ecd7e7",
          "type": "basic.info",
          "data": {
            "info": "**Hexadecimal**",
            "readonly": true
          },
          "position": {
            "x": 240,
            "y": 72
          },
          "size": {
            "width": 128,
            "height": 32
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
            "x": 80,
            "y": 72
          },
          "size": {
            "width": 128,
            "height": 32
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "6b92a1e7-e4fd-4c41-9134-d20c3d7cf8e0",
            "port": "a9d6830d-5cc7-4f63-a068-35181d2537bc"
          },
          "target": {
            "block": "eeb93326-6d39-41ae-8272-434e89c2ee32",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "27ba4f50-343f-42c2-832a-01ca4a3886af",
            "port": "constant-out"
          },
          "target": {
            "block": "6b92a1e7-e4fd-4c41-9134-d20c3d7cf8e0",
            "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
          }
        }
      ]
    }
  },
  "dependencies": {
    "5ad97e1e35a295d0ec722addd6df97c806fc6b7c": {
      "package": {
        "name": "Constante-8bits",
        "version": "0.0.1",
        "description": "Valor genérico constante, de 8 bits. Su valor se introduce como parámetro. Por defecto vale 0",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22145.608%22%20height=%22247.927%22%20viewBox=%220%200%20136.50729%20232.43134%22%3E%3Ctext%20style=%22line-height:125%25;-inkscape-font-specification:'Ubuntu%20Mono'%22%20x=%22293.115%22%20y=%22648.344%22%20font-weight=%22400%22%20font-size=%22335.399%22%20font-family=%22Ubuntu%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22%20transform=%22translate(-316.929%20-415.913)%22%3E%3Ctspan%20x=%22293.115%22%20y=%22648.344%22%3Ek%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "a9d6830d-5cc7-4f63-a068-35181d2537bc",
              "type": "basic.output",
              "data": {
                "name": "k",
                "range": "[7:0]",
                "size": 8
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
                "y": 128
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
                      "range": "[7:0]",
                      "size": 8
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
                "block": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
                "port": "constant-out"
              },
              "target": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "VALUE"
              }
            },
            {
              "source": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "k"
              },
              "target": {
                "block": "a9d6830d-5cc7-4f63-a068-35181d2537bc",
                "port": "in"
              },
              "size": 8
            }
          ]
        }
      }
    }
  }
}