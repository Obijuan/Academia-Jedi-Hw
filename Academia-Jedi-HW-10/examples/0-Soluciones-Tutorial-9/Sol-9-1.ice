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
          "id": "fa657ed7-e70a-4cda-aa9b-33fa57f0f929",
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
            "x": 288,
            "y": -40
          }
        },
        {
          "id": "782b96d8-cc7a-4165-a460-5fe0f3df3e6f",
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
            "x": 64,
            "y": -40
          }
        },
        {
          "id": "4f25a871-21c5-4c5f-b5a9-0290f26b7c9b",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED3",
                "value": "98"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 616,
            "y": -40
          }
        },
        {
          "id": "bed392d7-3794-4c6f-8a2b-e3e7a2149c0f",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED6",
                "value": "102"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 288,
            "y": 40
          }
        },
        {
          "id": "e79668f9-8356-45d9-b73f-49700219520f",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED2",
                "value": "97"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 616,
            "y": 40
          }
        },
        {
          "id": "2b0baa52-4bae-407d-9d28-fd751903e874",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED5",
                "value": "101"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 288,
            "y": 120
          }
        },
        {
          "id": "10a32268-2cf3-44f9-946f-e402c44bcafd",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED1",
                "value": "96"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 616,
            "y": 120
          }
        },
        {
          "id": "a2f0b45a-0ae9-4b46-a1a1-2dac0fc7c6a2",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED4",
                "value": "99"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 288,
            "y": 200
          }
        },
        {
          "id": "ec54f945-ae94-4d81-b00b-ea35c4dda615",
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
            "x": 616,
            "y": 200
          }
        },
        {
          "id": "56d74251-e93e-402d-b0e0-e3c9b83799a6",
          "type": "7f3e9f0a05c929c3761852e259027fbe8e977795",
          "position": {
            "x": 424,
            "y": -136
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
            "block": "782b96d8-cc7a-4165-a460-5fe0f3df3e6f",
            "port": "out"
          },
          "target": {
            "block": "fa657ed7-e70a-4cda-aa9b-33fa57f0f929",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "782b96d8-cc7a-4165-a460-5fe0f3df3e6f",
            "port": "out"
          },
          "target": {
            "block": "bed392d7-3794-4c6f-8a2b-e3e7a2149c0f",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "782b96d8-cc7a-4165-a460-5fe0f3df3e6f",
            "port": "out"
          },
          "target": {
            "block": "2b0baa52-4bae-407d-9d28-fd751903e874",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "782b96d8-cc7a-4165-a460-5fe0f3df3e6f",
            "port": "out"
          },
          "target": {
            "block": "a2f0b45a-0ae9-4b46-a1a1-2dac0fc7c6a2",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "782b96d8-cc7a-4165-a460-5fe0f3df3e6f",
            "port": "out"
          },
          "target": {
            "block": "56d74251-e93e-402d-b0e0-e3c9b83799a6",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          },
          "vertices": [
            {
              "x": 208,
              "y": -88
            }
          ]
        },
        {
          "source": {
            "block": "56d74251-e93e-402d-b0e0-e3c9b83799a6",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "4f25a871-21c5-4c5f-b5a9-0290f26b7c9b",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "56d74251-e93e-402d-b0e0-e3c9b83799a6",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "e79668f9-8356-45d9-b73f-49700219520f",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "56d74251-e93e-402d-b0e0-e3c9b83799a6",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "10a32268-2cf3-44f9-946f-e402c44bcafd",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "56d74251-e93e-402d-b0e0-e3c9b83799a6",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "ec54f945-ae94-4d81-b00b-ea35c4dda615",
            "port": "in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 38,
        "y": 175.5
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