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
          "id": "5c69700a-1049-4343-bac0-e97893bd56bb",
          "type": "basic.input",
          "data": {
            "name": "",
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
            "x": 160,
            "y": 200
          }
        },
        {
          "id": "86458283-9c58-4849-99ee-09e088c8f38f",
          "type": "basic.output",
          "data": {
            "name": "",
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
            "x": 560,
            "y": 224
          }
        },
        {
          "id": "541e24cb-9ca7-4224-bc1a-6ddd0f3c14b6",
          "type": "basic.input",
          "data": {
            "name": "",
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
            "x": 160,
            "y": 272
          }
        },
        {
          "id": "8c238bc5-7d65-4c7e-a14b-a3d62ed1d98b",
          "type": "basic.output",
          "data": {
            "name": "",
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
            "x": 560,
            "y": 336
          }
        },
        {
          "id": "9c0d0cc6-31b7-4521-bfcc-e650fe304440",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "D11",
                "value": "142"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 160,
            "y": 344
          }
        },
        {
          "id": "c9c1b991-762f-485f-ad24-3d9529a371c5",
          "type": "basic.memory",
          "data": {
            "name": "",
            "list": "0\n1\n2\n3\n0\n1\n2\n3",
            "local": false
          },
          "position": {
            "x": 344,
            "y": 0
          },
          "size": {
            "width": 120,
            "height": 168
          }
        },
        {
          "id": "6d89b1e3-9fce-4d53-a48d-1c807c174ea4",
          "type": "8539a10754bea760a540815b5daf5868861fe588",
          "position": {
            "x": 360,
            "y": 256
          },
          "size": {
            "width": 96,
            "height": 96
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "c9c1b991-762f-485f-ad24-3d9529a371c5",
            "port": "memory-out"
          },
          "target": {
            "block": "6d89b1e3-9fce-4d53-a48d-1c807c174ea4",
            "port": "c71c44ac-0500-4eb5-9c1c-4ea21cd78377"
          }
        },
        {
          "source": {
            "block": "5c69700a-1049-4343-bac0-e97893bd56bb",
            "port": "out"
          },
          "target": {
            "block": "6d89b1e3-9fce-4d53-a48d-1c807c174ea4",
            "port": "d32f2cfa-80cf-42d1-b81d-28f860b4651b"
          }
        },
        {
          "source": {
            "block": "541e24cb-9ca7-4224-bc1a-6ddd0f3c14b6",
            "port": "out"
          },
          "target": {
            "block": "6d89b1e3-9fce-4d53-a48d-1c807c174ea4",
            "port": "ace53645-b2e3-46be-beae-4ada8d69586e"
          }
        },
        {
          "source": {
            "block": "9c0d0cc6-31b7-4521-bfcc-e650fe304440",
            "port": "out"
          },
          "target": {
            "block": "6d89b1e3-9fce-4d53-a48d-1c807c174ea4",
            "port": "561eb4e1-8d5e-48ed-be5f-2e0009ca1648"
          }
        },
        {
          "source": {
            "block": "6d89b1e3-9fce-4d53-a48d-1c807c174ea4",
            "port": "a27d660d-90c7-4b16-9727-ea799771b851"
          },
          "target": {
            "block": "86458283-9c58-4849-99ee-09e088c8f38f",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "6d89b1e3-9fce-4d53-a48d-1c807c174ea4",
            "port": "64af6183-67f1-4f1b-95c6-dc64e84ce591"
          },
          "target": {
            "block": "8c238bc5-7d65-4c7e-a14b-a3d62ed1d98b",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {
    "8539a10754bea760a540815b5daf5868861fe588": {
      "package": {
        "name": "Tabla 3x2",
        "version": "0.1",
        "description": "Circuito combinacional de 3 entradas y 2 salidas",
        "author": "Juan González Gómez y Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22184.803%22%20height=%22197.944%22%20viewBox=%220%200%20173.25325%20185.57257%22%3E%3Cg%20transform=%22translate(-181.933%20-240.254)%22%20stroke=%22#000%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22%3E%3Crect%20width=%22170.253%22%20height=%22182.573%22%20x=%22183.433%22%20y=%22241.754%22%20ry=%2219.969%22%20fill=%22#3e8db8%22%20stroke-width=%223%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22274.019%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22274.413%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22274.413%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22309.826%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22310.219%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22310.219%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22346.025%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22346.419%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22346.419%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22381.832%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22382.225%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22382.225%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "d32f2cfa-80cf-42d1-b81d-28f860b4651b",
              "type": "basic.input",
              "data": {
                "name": "i2",
                "clock": false
              },
              "position": {
                "x": 8,
                "y": 264
              }
            },
            {
              "id": "a27d660d-90c7-4b16-9727-ea799771b851",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 632,
                "y": 288
              }
            },
            {
              "id": "ace53645-b2e3-46be-beae-4ada8d69586e",
              "type": "basic.input",
              "data": {
                "name": "i1",
                "clock": false
              },
              "position": {
                "x": 8,
                "y": 336
              }
            },
            {
              "id": "64af6183-67f1-4f1b-95c6-dc64e84ce591",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 632,
                "y": 392
              }
            },
            {
              "id": "561eb4e1-8d5e-48ed-be5f-2e0009ca1648",
              "type": "basic.input",
              "data": {
                "name": "i0",
                "clock": false
              },
              "position": {
                "x": 8,
                "y": 408
              }
            },
            {
              "id": "c71c44ac-0500-4eb5-9c1c-4ea21cd78377",
              "type": "basic.memory",
              "data": {
                "name": "",
                "list": "0\n0\n0\n0\n0\n0\n0\n0",
                "local": false
              },
              "position": {
                "x": 320,
                "y": 32
              },
              "size": {
                "width": 96,
                "height": 176
              }
            },
            {
              "id": "48c38eba-4e12-44d9-a55b-a93def6a27db",
              "type": "basic.code",
              "data": {
                "code": "wire q;\nreg [1:0] tabla[0:7];\n\nwire [2:0] i = {i2, i1, i0};\n\n//-- Read the table\nassign q1 = tabla[i][1];\nassign q0 = tabla[i][0];\n\n//-- Init table from DATA parameters\ninitial begin\n  if (DATA) $readmemh(DATA, tabla);\nend",
                "params": [
                  {
                    "name": "DATA"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "i2"
                    },
                    {
                      "name": "i1"
                    },
                    {
                      "name": "i0"
                    }
                  ],
                  "out": [
                    {
                      "name": "q1"
                    },
                    {
                      "name": "q0"
                    }
                  ]
                }
              },
              "position": {
                "x": 176,
                "y": 264
              },
              "size": {
                "width": 384,
                "height": 208
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "c71c44ac-0500-4eb5-9c1c-4ea21cd78377",
                "port": "memory-out"
              },
              "target": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "DATA"
              }
            },
            {
              "source": {
                "block": "ace53645-b2e3-46be-beae-4ada8d69586e",
                "port": "out"
              },
              "target": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "i1"
              }
            },
            {
              "source": {
                "block": "561eb4e1-8d5e-48ed-be5f-2e0009ca1648",
                "port": "out"
              },
              "target": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "i0"
              }
            },
            {
              "source": {
                "block": "d32f2cfa-80cf-42d1-b81d-28f860b4651b",
                "port": "out"
              },
              "target": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "i2"
              }
            },
            {
              "source": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "q1"
              },
              "target": {
                "block": "a27d660d-90c7-4b16-9727-ea799771b851",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "q0"
              },
              "target": {
                "block": "64af6183-67f1-4f1b-95c6-dc64e84ce591",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}