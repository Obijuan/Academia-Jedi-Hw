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
          "id": "5a91a648-4b95-47ec-bc25-3e8e48b9cf4c",
          "type": "basic.output",
          "data": {
            "name": "Dispaly",
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
            "x": 576,
            "y": 48
          }
        },
        {
          "id": "42dd12dd-9c67-400f-bc5a-95be79ed4de6",
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
            "x": 184,
            "y": 296
          }
        },
        {
          "id": "b69317da-9fd2-4c58-af00-b50f65cfd160",
          "type": "342346f84f0faea609908a13f92af04b99a4c275",
          "position": {
            "x": 184,
            "y": 144
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "8513e4eb-5e18-44b8-b605-a944fd922c1f",
          "type": "a9ec5cf521f8ed4bce249426334e1c1e3ec29d26",
          "position": {
            "x": 184,
            "y": 56
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "3324f8c4-367f-4fd8-97db-3b49a175e479",
          "type": "6137f88e7db33b62c0e6ff259b131bedc0899b72",
          "position": {
            "x": 392,
            "y": 128
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "b6c19ea6-3326-4563-a453-4a13dacf6fef",
          "type": "basic.info",
          "data": {
            "info": "## Ejemplo 9: Seleccionando 2 dígitos con el interruptor\n\nSe muestran los **dígitos 7** y **9** en el display, según la posición  \ndel **interruptor externo**",
            "readonly": true
          },
          "position": {
            "x": 160,
            "y": -128
          },
          "size": {
            "width": 576,
            "height": 96
          }
        },
        {
          "id": "2f7d68b8-3f26-4d51-a04b-580302b032ea",
          "type": "basic.info",
          "data": {
            "info": "**Interruptor**",
            "readonly": true
          },
          "position": {
            "x": 184,
            "y": 264
          },
          "size": {
            "width": 160,
            "height": 48
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "42dd12dd-9c67-400f-bc5a-95be79ed4de6",
            "port": "out"
          },
          "target": {
            "block": "3324f8c4-367f-4fd8-97db-3b49a175e479",
            "port": "1e637a79-4a6d-495c-bcac-9664bdbe4b94"
          }
        },
        {
          "source": {
            "block": "3324f8c4-367f-4fd8-97db-3b49a175e479",
            "port": "2ebc10bd-3bf7-4bce-b939-f9b920b4255b"
          },
          "target": {
            "block": "5a91a648-4b95-47ec-bc25-3e8e48b9cf4c",
            "port": "in"
          },
          "size": 7
        },
        {
          "source": {
            "block": "b69317da-9fd2-4c58-af00-b50f65cfd160",
            "port": "194eb1df-8ffe-4b9c-8ab5-edf38e38fc21"
          },
          "target": {
            "block": "3324f8c4-367f-4fd8-97db-3b49a175e479",
            "port": "21f00239-aed5-4fa8-9127-f4117a806669"
          },
          "size": 7
        },
        {
          "source": {
            "block": "8513e4eb-5e18-44b8-b605-a944fd922c1f",
            "port": "194eb1df-8ffe-4b9c-8ab5-edf38e38fc21"
          },
          "target": {
            "block": "3324f8c4-367f-4fd8-97db-3b49a175e479",
            "port": "d36eb7b2-2c5b-47e8-abed-8c0cd0831575"
          },
          "vertices": [
            {
              "x": 320,
              "y": 112
            }
          ],
          "size": 7
        }
      ]
    }
  },
  "dependencies": {
    "342346f84f0faea609908a13f92af04b99a4c275": {
      "package": {
        "name": "Digito-0-7seg",
        "version": "0.1",
        "description": "Constante de  7 bits para mostrar el dígito 7 en un display de 7 segmentos",
        "author": "Juan González-Gómez",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22161.978%22%20height=%22231.285%22%20viewBox=%220%200%2042.856571%2061.194094%22%3E%3Cg%20fill=%22green%22%20stroke=%22#000%22%20stroke-width=%22.958%22%3E%3Cpath%20d=%22M12.66%202.952l2.808%203.426%2019.745-.222s4.574-3.49%204.29-4.283C39.219%201.08%2038.052.509%2038.052.509S15.815.35%2014.616.763c-1.198.412-2.081%201.3-2.081%201.586%200%20.285.126.603.126.603zM32.728%2026.726c-.394-1.035%203.145-19.763%203.323-20.077.178-.314%203.948-3.342%204.528-3.275.58.067%201.628.92%201.784%201.39.156.472-3.011%2020.37-3.212%2020.84-.2.472-2.966%203.186-3.702%203.253-.736.067-2.328-1.096-2.721-2.13zM28.621%2052.155c-.434-1.284%202.88-18.206%203.148-18.744.267-.538%201.839-2.515%202.855-2.423%201.015.093%202.676%201.974%202.988%202.827.313.852-2.256%2023.291-4.086%2023.346-1.83.054-4.471-3.722-4.905-5.006z%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "194eb1df-8ffe-4b9c-8ab5-edf38e38fc21",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[6:0]",
                "size": 7
              },
              "position": {
                "x": 256,
                "y": -8
              }
            },
            {
              "id": "c0b2e2d4-8be1-450b-8bcc-06e8804337e8",
              "type": "basic.constant",
              "data": {
                "name": "Hexa",
                "value": "7'h70",
                "local": true
              },
              "position": {
                "x": 64,
                "y": -104
              }
            },
            {
              "id": "a03ba89a-38dc-4da6-be30-59759699c217",
              "type": "20b7dbadd419751f1658977d442517896b210c75",
              "position": {
                "x": 64,
                "y": -8
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "1c295866-5249-4309-9af8-6d847ade4adc",
              "type": "basic.info",
              "data": {
                "info": "**Segmentos**\n\n| a | b | c | d | e | f | g |\n|---|---|---|---|---|---|---|\n|1  | 1 |  1| 0 | 0 | 0 | 0 |",
                "readonly": true
              },
              "position": {
                "x": 224,
                "y": -160
              },
              "size": {
                "width": 336,
                "height": 104
              }
            }
          ],
          "wires": [
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
                "block": "c0b2e2d4-8be1-450b-8bcc-06e8804337e8",
                "port": "constant-out"
              },
              "target": {
                "block": "a03ba89a-38dc-4da6-be30-59759699c217",
                "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
              }
            }
          ]
        }
      }
    },
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
    "a9ec5cf521f8ed4bce249426334e1c1e3ec29d26": {
      "package": {
        "name": "Digito-0-7seg",
        "version": "0.1",
        "description": "Constante de  7 bits para mostrar el dígito 9 en un display de 7 segmentos",
        "author": "Juan González-Gómez",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22161.978%22%20height=%22231.285%22%20viewBox=%220%200%2042.856571%2061.194094%22%3E%3Cg%20fill=%22green%22%20stroke=%22#000%22%20stroke-width=%22.958%22%3E%3Cpath%20d=%22M5.91%2025.127C5.68%2024.37%209.57%204.506%209.854%204.252c.284-.254%201.388-.92%201.672-.888.284.032%203.596%203.68%203.722%204.092.126.413-2.858%2018.299-3.154%2018.78-.221.362-2.176%202.444-2.902%202.38-.725-.063-3.049-2.732-3.28-3.49zM12.66%202.952l2.808%203.426%2019.745-.222s4.574-3.49%204.29-4.283C39.219%201.08%2038.052.509%2038.052.509S15.815.35%2014.616.763c-1.198.412-2.081%201.3-2.081%201.586%200%20.285.126.603.126.603zM32.728%2026.726c-.394-1.035%203.145-19.763%203.323-20.077.178-.314%203.948-3.342%204.528-3.275.58.067%201.628.92%201.784%201.39.156.472-3.011%2020.37-3.212%2020.84-.2.472-2.966%203.186-3.702%203.253-.736.067-2.328-1.096-2.721-2.13zM12.967%2026.86c.885-.236%2017.433-.195%2018.277-.008.845.186%202.644%201.875%202.676%202.907.032%201.031-1.861%202.316-2.618%202.791-.757.476-18.042.413-18.61.127-.568-.285-2.839-2.379-2.839-3.077s2.228-2.502%203.114-2.739zM7.93%2054.344c1.157-.546%2019.781-.682%2020.47-.38.689.301%203.217%202.728%203.28%203.711.064.984-1.703%202.316-2.428%202.443-.726.127-24.067.888-24.73.476-.661-.412-1.324-1.237-1.387-1.808-.063-.571%203.637-3.896%204.794-4.442zM28.621%2052.155c-.434-1.284%202.88-18.206%203.148-18.744.267-.538%201.839-2.515%202.855-2.423%201.015.093%202.676%201.974%202.988%202.827.313.852-2.256%2023.291-4.086%2023.346-1.83.054-4.471-3.722-4.905-5.006z%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "194eb1df-8ffe-4b9c-8ab5-edf38e38fc21",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[6:0]",
                "size": 7
              },
              "position": {
                "x": 256,
                "y": -8
              }
            },
            {
              "id": "c0b2e2d4-8be1-450b-8bcc-06e8804337e8",
              "type": "basic.constant",
              "data": {
                "name": "Hexa",
                "value": "7'h7B",
                "local": true
              },
              "position": {
                "x": 64,
                "y": -104
              }
            },
            {
              "id": "a03ba89a-38dc-4da6-be30-59759699c217",
              "type": "20b7dbadd419751f1658977d442517896b210c75",
              "position": {
                "x": 64,
                "y": -8
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "1c295866-5249-4309-9af8-6d847ade4adc",
              "type": "basic.info",
              "data": {
                "info": "**Segmentos**\n\n| a | b | c | d | e | f | g |\n|---|---|---|---|---|---|---|\n|1  | 1 |  1| 1 | 0 | 1 | 1 |",
                "readonly": true
              },
              "position": {
                "x": 224,
                "y": -160
              },
              "size": {
                "width": 336,
                "height": 104
              }
            }
          ],
          "wires": [
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
                "block": "c0b2e2d4-8be1-450b-8bcc-06e8804337e8",
                "port": "constant-out"
              },
              "target": {
                "block": "a03ba89a-38dc-4da6-be30-59759699c217",
                "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
              }
            }
          ]
        }
      }
    },
    "6137f88e7db33b62c0e6ff259b131bedc0899b72": {
      "package": {
        "name": "Mux 2 a 1 de 7 bits",
        "version": "0.0.1",
        "description": "Multiplexor de 2 a 1 de 7 bits",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2280.833%22%20height=%22158.56%22%20viewBox=%220%200%2075.781585%20148.65066%22%3E%3Cpath%20d=%22M74.375%2036.836c0-12.691-6.99-24.413-18.326-30.729-11.335-6.316-25.284-6.262-36.568.141C8.198%2012.652%201.304%2024.427%201.407%2037.118v74.415c-.103%2012.69%206.79%2024.466%2018.074%2030.87%2011.284%206.403%2025.233%206.457%2036.568.14%2011.336-6.316%2018.326-18.037%2018.326-30.728z%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%227.448%22%20y=%2291.518%22%20transform=%22matrix(1.00472%200%200%20.9953%2020.25%2033.697)%22%20font-weight=%22400%22%20font-size=%2233.509%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%227.448%22%20y=%2291.518%22%3E0%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%227.359%22%20y=%2214.582%22%20transform=%22matrix(1.00472%200%200%20.9953%2020.25%2033.697)%22%20font-weight=%22400%22%20font-size=%2233.509%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%227.359%22%20y=%2214.582%22%3E1%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "d36eb7b2-2c5b-47e8-abed-8c0cd0831575",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[6:0]",
                "clock": false,
                "size": 7
              },
              "position": {
                "x": -704,
                "y": -88
              }
            },
            {
              "id": "2ebc10bd-3bf7-4bce-b939-f9b920b4255b",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[6:0]",
                "size": 7
              },
              "position": {
                "x": -48,
                "y": 0
              }
            },
            {
              "id": "21f00239-aed5-4fa8-9127-f4117a806669",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[6:0]",
                "clock": false,
                "size": 7
              },
              "position": {
                "x": -704,
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
                "code": "//-- Multiplexor de 2 a 1, \n//-- de 7 bits\n\nreg [6:0] o;\n\nalways @(*) begin\n    case(sel)\n        0: o = i0;\n        1: o = i1;\n        default: o = i0;\n    endcase\nend\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i1",
                      "range": "[6:0]",
                      "size": 7
                    },
                    {
                      "name": "i0",
                      "range": "[6:0]",
                      "size": 7
                    },
                    {
                      "name": "sel"
                    }
                  ],
                  "out": [
                    {
                      "name": "o",
                      "range": "[6:0]",
                      "size": 7
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
                "block": "d36eb7b2-2c5b-47e8-abed-8c0cd0831575",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "i1"
              },
              "size": 7
            },
            {
              "source": {
                "block": "21f00239-aed5-4fa8-9127-f4117a806669",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "i0"
              },
              "size": 7
            },
            {
              "source": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "o"
              },
              "target": {
                "block": "2ebc10bd-3bf7-4bce-b939-f9b920b4255b",
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