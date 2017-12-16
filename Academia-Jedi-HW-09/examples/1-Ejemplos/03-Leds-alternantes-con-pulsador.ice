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
          "id": "2e7bd2cf-d736-441f-9836-f1678aa710c6",
          "type": "basic.input",
          "data": {
            "name": "Pulsador",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "10"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 168,
            "y": 152
          }
        },
        {
          "id": "a07a781a-4330-4f23-8ad5-647a98ddd851",
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
            "x": 496,
            "y": 152
          }
        },
        {
          "id": "4ea0da7d-9478-49ee-a9c0-a7fc7be20120",
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
            "x": 496,
            "y": 240
          }
        },
        {
          "id": "89fdd598-22bf-4c36-8e0f-2aa3f4fe962e",
          "type": "basic.info",
          "data": {
            "info": "<B>Circuito para hacer que los LEDs 7 y 0 parpadee\nalternativamente con el pulsador</B>",
            "readonly": true
          },
          "position": {
            "x": 168,
            "y": 48
          },
          "size": {
            "width": 416,
            "height": 48
          }
        },
        {
          "id": "d6354be4-2e65-4272-bfb5-372fe4a5f764",
          "type": "basic.info",
          "data": {
            "info": "Entrada",
            "readonly": true
          },
          "position": {
            "x": 176,
            "y": 112
          },
          "size": {
            "width": 80,
            "height": 32
          }
        },
        {
          "id": "f0492bf5-a514-4e22-8f23-e36518816e05",
          "type": "basic.info",
          "data": {
            "info": "Salidas",
            "readonly": true
          },
          "position": {
            "x": 504,
            "y": 112
          },
          "size": {
            "width": 80,
            "height": 32
          }
        },
        {
          "id": "0e3c2130-9b7c-488a-9628-a5cfcbd3abdf",
          "type": "7f3e9f0a05c929c3761852e259027fbe8e977795",
          "position": {
            "x": 336,
            "y": 152
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
            "block": "0e3c2130-9b7c-488a-9628-a5cfcbd3abdf",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "a07a781a-4330-4f23-8ad5-647a98ddd851",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "2e7bd2cf-d736-441f-9836-f1678aa710c6",
            "port": "out"
          },
          "target": {
            "block": "0e3c2130-9b7c-488a-9628-a5cfcbd3abdf",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "2e7bd2cf-d736-441f-9836-f1678aa710c6",
            "port": "out"
          },
          "target": {
            "block": "4ea0da7d-9478-49ee-a9c0-a7fc7be20120",
            "port": "in"
          },
          "vertices": [
            {
              "x": 304,
              "y": 224
            }
          ]
        }
      ]
    },
    "state": {
      "pan": {
        "x": 20,
        "y": 84.5
      },
      "zoom": 1
    }
  },
  "dependencies": {
    "7f3e9f0a05c929c3761852e259027fbe8e977795": {
      "package": {
        "name": "NOT",
        "version": "1.0.3",
        "description": "Puerta NOT",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22111.588%22%20height=%2268.24%22%20version=%221%22%3E%3Cpath%20d=%22M24.372%201.5l57.29%2032.619-57.29%2032.62V1.5z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20cx=%2291.101%22%20cy=%2234.017%22%20rx=%227.572%22%20ry=%227.677%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M1.014%2034.281h23.1m75.26%200h11.2%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2228.438%22%20y=%2239.46%22%20font-weight=%22400%22%20font-size=%2217.5%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2228.438%22%20y=%2239.46%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ENot%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
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
            },
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
            "x": 0,
            "y": 0
          },
          "zoom": 1
        }
      }
    }
  }
}