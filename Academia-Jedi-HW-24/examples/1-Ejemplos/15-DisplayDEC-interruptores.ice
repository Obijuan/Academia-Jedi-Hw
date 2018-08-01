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
          "id": "e7fa6094-864d-401a-9bcc-c25d0f3b9e34",
          "type": "basic.output",
          "data": {
            "name": "Display",
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
            "x": 672,
            "y": 504
          }
        },
        {
          "id": "9c4c297d-0bf4-4aeb-ba96-afdc914868ff",
          "type": "basic.input",
          "data": {
            "name": "switches",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "D13",
                "value": "144"
              },
              {
                "index": "2",
                "name": "D12",
                "value": "143"
              },
              {
                "index": "1",
                "name": "D11",
                "value": "142"
              },
              {
                "index": "0",
                "name": "D10",
                "value": "141"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 280,
            "y": 552
          }
        },
        {
          "id": "d323f252-d598-4431-862f-62ea319c71ba",
          "type": "basic.memory",
          "data": {
            "name": "Tabla-BCD-7Seg",
            "list": "7E  // Digito 0\n30  // Digito 1\n6D  // Digito 2\n79  // Digito 3\n33  // Digito 4\n5B  // Digito 5\n5F  // Digito 6\n70  // Digito 7\n7F  // Digito 8\n7B  // Digito 9\n0   // No usado\n0   // No usado\n0   // No usado\n0   // No usado\n0   // No usado\n0   // No usado",
            "local": false,
            "format": 10
          },
          "position": {
            "x": 424,
            "y": 296
          },
          "size": {
            "width": 200,
            "height": 272
          }
        },
        {
          "id": "849fd8f9-50f9-41ed-a343-17e1eeb25788",
          "type": "basic.info",
          "data": {
            "info": "## Ejemplo 15: Prueba de dígitos decimales 0 - 9\n\nHay **4 interruptores externos** por los que se introduce un **número en BCD**  \n(binario de 4 bits) y por el display se muestran los **digitos decimales0 - 9**  \nSi el numero de entrada es mayor de 9 el display permanece apagado",
            "readonly": true
          },
          "position": {
            "x": 208,
            "y": 144
          },
          "size": {
            "width": 592,
            "height": 96
          }
        },
        {
          "id": "2e408998-30e5-4172-9a35-820b0a4beaeb",
          "type": "basic.info",
          "data": {
            "info": "**BCD**",
            "readonly": true
          },
          "position": {
            "x": 296,
            "y": 512
          },
          "size": {
            "width": 104,
            "height": 32
          }
        },
        {
          "id": "ccea7704-ba92-42d2-a8ca-ec0fa5c10a37",
          "type": "basic.info",
          "data": {
            "info": "**Decimal**",
            "readonly": true
          },
          "position": {
            "x": 680,
            "y": 472
          },
          "size": {
            "width": 104,
            "height": 32
          }
        },
        {
          "id": "73dcfab6-ffd7-4aa2-b1be-0b2ec14e1857",
          "type": "7604534450604bfbc168ac938ff05c15334f4d46",
          "position": {
            "x": 480,
            "y": 600
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
            "block": "73dcfab6-ffd7-4aa2-b1be-0b2ec14e1857",
            "port": "f9c58d8f-75fc-4483-b0d2-d584a555b1c5"
          },
          "target": {
            "block": "e7fa6094-864d-401a-9bcc-c25d0f3b9e34",
            "port": "in"
          },
          "size": 7
        },
        {
          "source": {
            "block": "d323f252-d598-4431-862f-62ea319c71ba",
            "port": "memory-out"
          },
          "target": {
            "block": "73dcfab6-ffd7-4aa2-b1be-0b2ec14e1857",
            "port": "c71c44ac-0500-4eb5-9c1c-4ea21cd78377"
          }
        },
        {
          "source": {
            "block": "9c4c297d-0bf4-4aeb-ba96-afdc914868ff",
            "port": "out"
          },
          "target": {
            "block": "73dcfab6-ffd7-4aa2-b1be-0b2ec14e1857",
            "port": "186c4116-7846-4c8e-98a0-7376675105f1"
          },
          "size": 4
        }
      ]
    }
  },
  "dependencies": {
    "7604534450604bfbc168ac938ff05c15334f4d46": {
      "package": {
        "name": "mi-tabla4-7",
        "version": "0.1",
        "description": "Circuito combinacional de 4 entradas y 7 salidas",
        "author": "IceFactory 0.1",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22184.803%22%20height=%22197.944%22%20viewBox=%220%200%20173.25325%20185.57257%22%3E%3Cg%20transform=%22translate(-181.933%20-240.254)%22%20stroke=%22#000%22%3E%3Crect%20width=%22170.253%22%20height=%22182.573%22%20x=%22183.433%22%20y=%22241.754%22%20ry=%2219.969%22%20fill=%22#3e8db8%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22274.019%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22274.413%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22274.413%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22381.832%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22382.225%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22382.225%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25;text-align:center%22%20x=%22267.708%22%20y=%22368.911%22%20font-weight=%22400%22%20font-size=%2212.5%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20fill=%22#ff0%22%20stroke-width=%223%22%3E%3Ctspan%20x=%22267.708%22%20y=%22368.911%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20font-size=%2270%22%3EHEX%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "186c4116-7846-4c8e-98a0-7376675105f1",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -8,
                "y": 424
              }
            },
            {
              "id": "f9c58d8f-75fc-4483-b0d2-d584a555b1c5",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[6:0]",
                "size": 7
              },
              "position": {
                "x": 632,
                "y": 424
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
                "x": 328,
                "y": 96
              },
              "size": {
                "width": 96,
                "height": 104
              }
            },
            {
              "id": "48c38eba-4e12-44d9-a55b-a93def6a27db",
              "type": "basic.code",
              "data": {
                "code": "\n//-- Bits del bus de entrada\nlocalparam N = 4;\n\n//-- Bits del bus de salida\nlocalparam M = 7;\n\n//-- Calcular tamaño de la tabla\n//-- (filas) segun los bits de entrada\nlocalparam TAM = 2 ** N;\n\n//-- Definición de la tabla\n//-- Tabla de TAM elementos de M bits\nreg [M-1:0] tabla[0:TAM-1];\n\n//-- Read the table\nassign q = tabla[i];\n\n//-- Init table from DATA parameters\ninitial begin\n  if (DATA) $readmemh(DATA, tabla);\nend",
                "params": [
                  {
                    "name": "DATA"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "i",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ],
                  "out": [
                    {
                      "name": "q",
                      "range": "[6:0]",
                      "size": 7
                    }
                  ]
                }
              },
              "position": {
                "x": 176,
                "y": 264
              },
              "size": {
                "width": 392,
                "height": 384
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
                "block": "186c4116-7846-4c8e-98a0-7376675105f1",
                "port": "out"
              },
              "target": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "i"
              },
              "size": 4
            },
            {
              "source": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "q"
              },
              "target": {
                "block": "f9c58d8f-75fc-4483-b0d2-d584a555b1c5",
                "port": "in"
              },
              "size": 7
            }
          ]
        }
      }
    }
  }
}