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
          "id": "b832b805-164a-48d4-8547-0001fd3d1a5b",
          "type": "basic.input",
          "data": {
            "name": "Interruptor",
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
            "x": 248,
            "y": 216
          }
        },
        {
          "id": "f5c8718c-f991-46fd-91ec-cfff0496a3d1",
          "type": "basic.output",
          "data": {
            "name": "LED",
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
            "x": 616,
            "y": 232
          }
        },
        {
          "id": "5431b598-d33b-4cd7-a18c-4b9117efb93c",
          "type": "basic.input",
          "data": {
            "name": "interruptor",
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
            "x": 248,
            "y": 296
          }
        },
        {
          "id": "90d9fb33-a8f2-42f3-9f1e-bc21cd875f0b",
          "type": "basic.memory",
          "data": {
            "name": "Tabla_1",
            "list": "0\n0\n0\n1",
            "local": false
          },
          "position": {
            "x": 368,
            "y": 40
          },
          "size": {
            "width": 96,
            "height": 112
          }
        },
        {
          "id": "e145b75f-a37a-4438-9bf4-aaef6ffb7e3a",
          "type": "basic.memory",
          "data": {
            "name": "Tabla_2",
            "list": "0\n1\n1\n0",
            "local": false
          },
          "position": {
            "x": 512,
            "y": 40
          },
          "size": {
            "width": 96,
            "height": 112
          }
        },
        {
          "id": "5e5dc4cc-8a23-4a82-b906-5d6cc14511fa",
          "type": "132a1513942301e2dd65111ad66fae1501604c3a",
          "position": {
            "x": 440,
            "y": 232
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
            "block": "5e5dc4cc-8a23-4a82-b906-5d6cc14511fa",
            "port": "a27d660d-90c7-4b16-9727-ea799771b851"
          },
          "target": {
            "block": "f5c8718c-f991-46fd-91ec-cfff0496a3d1",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b832b805-164a-48d4-8547-0001fd3d1a5b",
            "port": "out"
          },
          "target": {
            "block": "5e5dc4cc-8a23-4a82-b906-5d6cc14511fa",
            "port": "ace53645-b2e3-46be-beae-4ada8d69586e"
          }
        },
        {
          "source": {
            "block": "5431b598-d33b-4cd7-a18c-4b9117efb93c",
            "port": "out"
          },
          "target": {
            "block": "5e5dc4cc-8a23-4a82-b906-5d6cc14511fa",
            "port": "561eb4e1-8d5e-48ed-be5f-2e0009ca1648"
          }
        },
        {
          "source": {
            "block": "e145b75f-a37a-4438-9bf4-aaef6ffb7e3a",
            "port": "memory-out"
          },
          "target": {
            "block": "5e5dc4cc-8a23-4a82-b906-5d6cc14511fa",
            "port": "c71c44ac-0500-4eb5-9c1c-4ea21cd78377"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": -26,
        "y": 59.5
      },
      "zoom": 1
    }
  },
  "dependencies": {
    "132a1513942301e2dd65111ad66fae1501604c3a": {
      "package": {
        "name": "Tabla 2x1",
        "version": "0.1",
        "description": "Circuito combinacional de 2 entradas y 1 salida",
        "author": "Juan González Gómez y Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22184.803%22%20height=%22197.944%22%20viewBox=%220%200%20173.25325%20185.57257%22%3E%3Cg%20transform=%22translate(-181.933%20-240.254)%22%20stroke=%22#000%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22%3E%3Crect%20width=%22170.253%22%20height=%22182.573%22%20x=%22183.433%22%20y=%22241.754%22%20ry=%2219.969%22%20fill=%22#3e8db8%22%20stroke-width=%223%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22274.019%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22274.413%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22274.413%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22309.826%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22310.219%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22310.219%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22346.025%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22346.419%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22346.419%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22381.832%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22382.225%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22382.225%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "ace53645-b2e3-46be-beae-4ada8d69586e",
              "type": "basic.input",
              "data": {
                "name": "i1",
                "clock": false
              },
              "position": {
                "x": 16,
                "y": 288
              }
            },
            {
              "id": "a27d660d-90c7-4b16-9727-ea799771b851",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 640,
                "y": 336
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
                "x": 16,
                "y": 392
              }
            },
            {
              "id": "c71c44ac-0500-4eb5-9c1c-4ea21cd78377",
              "type": "basic.memory",
              "data": {
                "name": "",
                "list": "0\n0\n0\n0",
                "local": false
              },
              "position": {
                "x": 280,
                "y": 72
              },
              "size": {
                "width": 192,
                "height": 128
              }
            },
            {
              "id": "48c38eba-4e12-44d9-a55b-a93def6a27db",
              "type": "basic.code",
              "data": {
                "code": "wire q;\nreg [0:0] tabla[0:3];\n\nwire [1:0] i = {i1, i0};\n\n//-- Read the table\nassign q = tabla[i];\n\n//-- Init table from DATA parameters\ninitial begin\n  if (DATA) $readmemh(DATA, tabla);\nend",
                "params": [
                  {
                    "name": "DATA"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "i1"
                    },
                    {
                      "name": "i0"
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
                "x": 184,
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
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "q"
              },
              "target": {
                "block": "a27d660d-90c7-4b16-9727-ea799771b851",
                "port": "in"
              }
            },
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
            }
          ]
        },
        "state": {
          "pan": {
            "x": 70,
            "y": -52.5
          },
          "zoom": 1
        }
      }
    }
  }
}