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
          "id": "6a4f4190-fd16-4e96-8b41-a6aed04a93a9",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "LED7",
                "value": "104"
              },
              {
                "index": "2",
                "name": "LED6",
                "value": "102"
              },
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
            "x": 576,
            "y": 152
          }
        },
        {
          "id": "c23ed9a4-b149-4394-9d8a-976c3cd87c6a",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "range": "[3:0]",
            "pins": [
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
            "x": 576,
            "y": 344
          }
        },
        {
          "id": "c8e4aef5-9c15-4fce-98b6-cbc8a6848521",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "12",
            "local": false
          },
          "position": {
            "x": 360,
            "y": 104
          }
        },
        {
          "id": "b662e057-2fe0-4eb2-81f7-f863c14453c7",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "3",
            "local": false
          },
          "position": {
            "x": 360,
            "y": 296
          }
        },
        {
          "id": "0f6d8b7e-22ed-4f77-8e81-d7c034c70701",
          "type": "basic.info",
          "data": {
            "info": "Ejemplo del uso de **constantes genéricas de 4 bits**. Los 8 LEDs de la  \nicezum alhambra se han dividido en **dos bloques de 4 bits**. Cada uno está  \nconectado a su constante por un bus de 4 bits",
            "readonly": true
          },
          "position": {
            "x": 344,
            "y": 16
          },
          "size": {
            "width": 568,
            "height": 72
          }
        },
        {
          "id": "24310876-68c9-4345-9bdc-e579757c6976",
          "type": "9274d3154d579c5922da669b25ca14097a46a22f",
          "position": {
            "x": 360,
            "y": 200
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "c29cee58-2252-4689-9ce9-b0a07b91c171",
          "type": "9274d3154d579c5922da669b25ca14097a46a22f",
          "position": {
            "x": 360,
            "y": 392
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
            "block": "c8e4aef5-9c15-4fce-98b6-cbc8a6848521",
            "port": "constant-out"
          },
          "target": {
            "block": "24310876-68c9-4345-9bdc-e579757c6976",
            "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
          }
        },
        {
          "source": {
            "block": "24310876-68c9-4345-9bdc-e579757c6976",
            "port": "5ed3ad73-16e5-4dda-9483-c36394a97ad2"
          },
          "target": {
            "block": "6a4f4190-fd16-4e96-8b41-a6aed04a93a9",
            "port": "in"
          },
          "size": 4
        },
        {
          "source": {
            "block": "c29cee58-2252-4689-9ce9-b0a07b91c171",
            "port": "5ed3ad73-16e5-4dda-9483-c36394a97ad2"
          },
          "target": {
            "block": "c23ed9a4-b149-4394-9d8a-976c3cd87c6a",
            "port": "in"
          },
          "vertices": [],
          "size": 4
        },
        {
          "source": {
            "block": "b662e057-2fe0-4eb2-81f7-f863c14453c7",
            "port": "constant-out"
          },
          "target": {
            "block": "c29cee58-2252-4689-9ce9-b0a07b91c171",
            "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
          },
          "vertices": []
        }
      ]
    }
  },
  "dependencies": {
    "9274d3154d579c5922da669b25ca14097a46a22f": {
      "package": {
        "name": "Constante-4bits",
        "version": "0.0.1",
        "description": "Valor genérico constante, de 4 bits. Su valor se introduce como parámetro. Por defecto vale 0",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22145.608%22%20height=%22247.927%22%20viewBox=%220%200%20136.50729%20232.43134%22%3E%3Ctext%20style=%22line-height:125%25;-inkscape-font-specification:'Ubuntu%20Mono'%22%20x=%22293.115%22%20y=%22648.344%22%20font-weight=%22400%22%20font-size=%22335.399%22%20font-family=%22Ubuntu%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22%20transform=%22translate(-316.929%20-415.913)%22%3E%3Ctspan%20x=%22293.115%22%20y=%22648.344%22%3Ek%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "5ed3ad73-16e5-4dda-9483-c36394a97ad2",
              "type": "basic.output",
              "data": {
                "name": "k",
                "range": "[3:0]",
                "size": 4
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
                      "range": "[3:0]",
                      "size": 4
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
                "block": "5ed3ad73-16e5-4dda-9483-c36394a97ad2",
                "port": "in"
              },
              "size": 4
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