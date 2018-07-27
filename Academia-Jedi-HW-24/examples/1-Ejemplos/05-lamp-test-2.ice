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
          "id": "194eb1df-8ffe-4b9c-8ab5-edf38e38fc21",
          "type": "basic.output",
          "data": {
            "name": "abcdefg",
            "range": "[6:0]",
            "pins": [
              {
                "index": "6",
                "name": "GP6",
                "value": "49"
              },
              {
                "index": "5",
                "name": "GP5",
                "value": "43"
              },
              {
                "index": "4",
                "name": "GP4",
                "value": "42"
              },
              {
                "index": "3",
                "name": "GP3",
                "value": "41"
              },
              {
                "index": "2",
                "name": "GP2",
                "value": "39"
              },
              {
                "index": "1",
                "name": "GP1",
                "value": "38"
              },
              {
                "index": "0",
                "name": "GP0",
                "value": "37"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 376,
            "y": -72
          }
        },
        {
          "id": "3991f8c5-5ae5-47f3-a3de-c081daa7294b",
          "type": "basic.output",
          "data": {
            "name": "punto",
            "pins": [
              {
                "index": "0",
                "name": "GP7",
                "value": "50"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 688,
            "y": -40
          }
        },
        {
          "id": "0278e3e7-ba3f-4836-8853-d72ec41e5233",
          "type": "basic.constant",
          "data": {
            "name": "Hexadecimal",
            "value": "7'h7F",
            "local": false
          },
          "position": {
            "x": 64,
            "y": -72
          }
        },
        {
          "id": "131a5e34-8b6d-445a-8a2a-6b3006d88d7d",
          "type": "basic.constant",
          "data": {
            "name": "Binario",
            "value": "7'b1111111",
            "local": false
          },
          "position": {
            "x": 184,
            "y": -72
          }
        },
        {
          "id": "01735d1f-2bec-44ac-a94a-7e2af26ddb3c",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "1",
            "local": false
          },
          "position": {
            "x": 536,
            "y": -136
          }
        },
        {
          "id": "3e6c3fed-e2fe-4c8f-bf87-0b205e281480",
          "type": "basic.info",
          "data": {
            "info": "## Ejemplo 5: Lamp-test a través de BUS\n\nSe encienden todos los segmentos y puntos (como en el ejemplo 4), pero usando un  \n**bus de 7 bits** para los segmentos, en vez de hacerlo individualmente\n",
            "readonly": true
          },
          "position": {
            "x": 8,
            "y": -304
          },
          "size": {
            "width": 656,
            "height": 96
          }
        },
        {
          "id": "2e2c99f9-fd42-4bf2-a902-de9699631019",
          "type": "basic.info",
          "data": {
            "info": "**Segmentos**",
            "readonly": true
          },
          "position": {
            "x": 248,
            "y": -160
          },
          "size": {
            "width": 184,
            "height": 48
          }
        },
        {
          "id": "62885f2b-567e-480c-82a7-a3939ef0fb3c",
          "type": "basic.info",
          "data": {
            "info": "**Punto**",
            "readonly": true
          },
          "position": {
            "x": 624,
            "y": -160
          },
          "size": {
            "width": 184,
            "height": 48
          }
        },
        {
          "id": "a03ba89a-38dc-4da6-be30-59759699c217",
          "type": "20b7dbadd419751f1658977d442517896b210c75",
          "position": {
            "x": 184,
            "y": 24
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "3fb6dc07-3c7c-4412-99c2-1d4878f34d2b",
          "type": "basic.info",
          "data": {
            "info": "Valor para encender todos los LEDs",
            "readonly": true
          },
          "position": {
            "x": 64,
            "y": -112
          },
          "size": {
            "width": 296,
            "height": 40
          }
        },
        {
          "id": "07f162d7-2c14-4623-878b-8833180d7935",
          "type": "3ba5d0ecbd8f55582a6307158732789df06cb74c",
          "position": {
            "x": 536,
            "y": -40
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
            "block": "07f162d7-2c14-4623-878b-8833180d7935",
            "port": "5d443143-4aca-4d4f-ba40-2b88451b86d3"
          },
          "target": {
            "block": "3991f8c5-5ae5-47f3-a3de-c081daa7294b",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "a03ba89a-38dc-4da6-be30-59759699c217",
            "port": "cf56e668-4c75-451d-ab35-b8457ab06e22"
          },
          "target": {
            "block": "194eb1df-8ffe-4b9c-8ab5-edf38e38fc21",
            "port": "in"
          },
          "size": 7
        },
        {
          "source": {
            "block": "131a5e34-8b6d-445a-8a2a-6b3006d88d7d",
            "port": "constant-out"
          },
          "target": {
            "block": "a03ba89a-38dc-4da6-be30-59759699c217",
            "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
          }
        },
        {
          "source": {
            "block": "01735d1f-2bec-44ac-a94a-7e2af26ddb3c",
            "port": "constant-out"
          },
          "target": {
            "block": "07f162d7-2c14-4623-878b-8833180d7935",
            "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
          }
        }
      ]
    }
  },
  "dependencies": {
    "20b7dbadd419751f1658977d442517896b210c75": {
      "package": {
        "name": "Constante-7bits",
        "version": "0.0.1",
        "description": "Valor genérico constante, de 7 bits. Su valor se introduce como parámetro. Por defecto vale 0",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22145.608%22%20height=%22247.927%22%20viewBox=%220%200%20136.50729%20232.43134%22%3E%3Ctext%20style=%22line-height:125%25;-inkscape-font-specification:'Ubuntu%20Mono'%22%20x=%22293.115%22%20y=%22648.344%22%20font-weight=%22400%22%20font-size=%22335.399%22%20font-family=%22Ubuntu%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22%20transform=%22translate(-316.929%20-415.913)%22%3E%3Ctspan%20x=%22293.115%22%20y=%22648.344%22%3Ek%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "cf56e668-4c75-451d-ab35-b8457ab06e22",
              "type": "basic.output",
              "data": {
                "name": "k",
                "range": "[6:0]",
                "size": 7
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
                      "range": "[6:0]",
                      "size": 7
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
                "block": "cf56e668-4c75-451d-ab35-b8457ab06e22",
                "port": "in"
              },
              "size": 7
            }
          ]
        }
      }
    },
    "3ba5d0ecbd8f55582a6307158732789df06cb74c": {
      "package": {
        "name": "Constante-1bits",
        "version": "0.0.1",
        "description": "Valor genérico constante, de 1 bits. Su valor se introduce como parámetro. Por defecto vale 0",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22145.608%22%20height=%22247.927%22%20viewBox=%220%200%20136.50729%20232.43134%22%3E%3Ctext%20style=%22line-height:125%25;-inkscape-font-specification:'Ubuntu%20Mono'%22%20x=%22293.115%22%20y=%22648.344%22%20font-weight=%22400%22%20font-size=%22335.399%22%20font-family=%22Ubuntu%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22%20transform=%22translate(-316.929%20-415.913)%22%3E%3Ctspan%20x=%22293.115%22%20y=%22648.344%22%3Ek%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "5d443143-4aca-4d4f-ba40-2b88451b86d3",
              "type": "basic.output",
              "data": {
                "name": ""
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
                      "name": "k"
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
                "block": "5d443143-4aca-4d4f-ba40-2b88451b86d3",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}