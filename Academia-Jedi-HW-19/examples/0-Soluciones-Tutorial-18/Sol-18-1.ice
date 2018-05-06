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
          "id": "0dace5ca-da49-467c-a9ae-6c3744bf36b3",
          "type": "basic.output",
          "data": {
            "name": "Zumbador",
            "pins": [
              {
                "index": "0",
                "name": "D0",
                "value": "119"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 808,
            "y": 160
          }
        },
        {
          "id": "4bc0f89d-c4d9-4da7-8645-059c40ee52fc",
          "type": "basic.input",
          "data": {
            "name": "Switch",
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
            "x": 120,
            "y": 288
          }
        },
        {
          "id": "bc5034a1-8a3e-4fbd-8578-8da5988fb654",
          "type": "basic.input",
          "data": {
            "name": "Switch",
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
            "x": 120,
            "y": 360
          }
        },
        {
          "id": "c24d4466-0462-453e-abff-3864871065aa",
          "type": "basic.input",
          "data": {
            "name": "Boton",
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
            "x": 112,
            "y": 488
          }
        },
        {
          "id": "950b1081-73b6-4aad-9f60-738927b14cd0",
          "type": "basic.constant",
          "data": {
            "name": "DO3",
            "value": "131",
            "local": false
          },
          "position": {
            "x": -160,
            "y": 40
          }
        },
        {
          "id": "21a0ba0a-aa85-4923-98a1-312f7240d6ce",
          "type": "basic.constant",
          "data": {
            "name": "RE3",
            "value": "147",
            "local": false
          },
          "position": {
            "x": -8,
            "y": 0
          }
        },
        {
          "id": "58da334a-9c47-4bb4-bca2-5b59d05ff6e1",
          "type": "basic.constant",
          "data": {
            "name": "MI3",
            "value": "165",
            "local": false
          },
          "position": {
            "x": 136,
            "y": -64
          }
        },
        {
          "id": "ff5f9e7c-881f-4eb7-84f9-b0a53c8ca423",
          "type": "basic.constant",
          "data": {
            "name": "FA3",
            "value": "175",
            "local": false
          },
          "position": {
            "x": 280,
            "y": -120
          }
        },
        {
          "id": "dd1f55cf-9ba1-478b-9e47-ee82a33da739",
          "type": "28cfaadfc1f0212b3214e9aae2e4495fb671cfda",
          "position": {
            "x": 472,
            "y": 80
          },
          "size": {
            "width": 96,
            "height": 192
          }
        },
        {
          "id": "1a3b981a-4fe6-47ff-8ce8-fe948bc06c29",
          "type": "0e64bc728cbb881007bf629e44dc5b5b0fa3a34c",
          "position": {
            "x": -160,
            "y": 160
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "44040da3-a6b5-4544-9fc1-dbb7d61a435f",
          "type": "0e64bc728cbb881007bf629e44dc5b5b0fa3a34c",
          "position": {
            "x": -8,
            "y": 112
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "10ec34e3-936e-454a-85fc-5e085157f700",
          "type": "0e64bc728cbb881007bf629e44dc5b5b0fa3a34c",
          "position": {
            "x": 136,
            "y": 48
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "e30e7c10-d043-4436-8f5d-f40ca3c230bb",
          "type": "0e64bc728cbb881007bf629e44dc5b5b0fa3a34c",
          "position": {
            "x": 280,
            "y": -8
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "23883a7f-2e72-4e11-b4c1-4fb732f851e5",
          "type": "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6",
          "position": {
            "x": 648,
            "y": 160
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "6c135547-7537-47d5-8940-86cffd483898",
          "type": "basic.info",
          "data": {
            "info": "**Tocar nota**",
            "readonly": true
          },
          "position": {
            "x": 112,
            "y": 448
          },
          "size": {
            "width": 160,
            "height": 32
          }
        },
        {
          "id": "4fb7a8a2-5677-484b-b78f-b86584232b5e",
          "type": "basic.info",
          "data": {
            "info": "**Selección de nota**",
            "readonly": true
          },
          "position": {
            "x": 104,
            "y": 248
          },
          "size": {
            "width": 208,
            "height": 32
          }
        },
        {
          "id": "b23ed003-9d99-4dc3-aa9b-40ecea8f3a65",
          "type": "basic.info",
          "data": {
            "info": "**Solución ejercicio 18.1:** Notas DO-RE-MI-FA\n\nDiseñar un circuito digital que pueda tocar **4 notas** diferentes: Do-re-mi-fa  \nLas notas se seleccionan mediante **2 interruptores externos**. Al apretarse  \nun **pulsador externo** sonará la nota seleccionada\n\nLas **frecuencias** de las notas a tocar son:\n\n* **Do**:  131 Hz\n* **Re**:  147 Hz\n* **Mi**:  165 Hz\n* **Fa**:  175 Hz\n\nConsejo: Utilizar un multiplexor 4:1",
            "readonly": true
          },
          "position": {
            "x": -168,
            "y": -304
          },
          "size": {
            "width": 624,
            "height": 240
          }
        },
        {
          "id": "fc6a9bf7-ba95-484d-9be0-624c96d1e4f0",
          "type": "basic.info",
          "data": {
            "info": "**Vídeo en Youtube**:\n\nURL:  https://www.youtube.com/watch?v=vpLthAkkWCM",
            "readonly": true
          },
          "position": {
            "x": 528,
            "y": -408
          },
          "size": {
            "width": 432,
            "height": 80
          }
        },
        {
          "id": "cfa663a4-60a6-4df2-9e1e-6cd16751ef94",
          "type": "basic.info",
          "data": {
            "info": "[![](http://img.youtube.com/vi/vpLthAkkWCM/0.jpg)](https://www.youtube.com/watch?v=vpLthAkkWCM)\n",
            "readonly": true
          },
          "position": {
            "x": 480,
            "y": -328
          },
          "size": {
            "width": 464,
            "height": 32
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "bc5034a1-8a3e-4fbd-8578-8da5988fb654",
            "port": "out"
          },
          "target": {
            "block": "dd1f55cf-9ba1-478b-9e47-ee82a33da739",
            "port": "dd22e3eb-792c-46c2-adb8-194cd0d40d8a"
          }
        },
        {
          "source": {
            "block": "4bc0f89d-c4d9-4da7-8645-059c40ee52fc",
            "port": "out"
          },
          "target": {
            "block": "dd1f55cf-9ba1-478b-9e47-ee82a33da739",
            "port": "7ab3b7a1-0550-497e-bcda-9a1c2384023b"
          },
          "vertices": [
            {
              "x": 424,
              "y": 240
            }
          ]
        },
        {
          "source": {
            "block": "950b1081-73b6-4aad-9f60-738927b14cd0",
            "port": "constant-out"
          },
          "target": {
            "block": "1a3b981a-4fe6-47ff-8ce8-fe948bc06c29",
            "port": "319cdca8-e777-4c8b-88ca-f885ba96ad06"
          }
        },
        {
          "source": {
            "block": "21a0ba0a-aa85-4923-98a1-312f7240d6ce",
            "port": "constant-out"
          },
          "target": {
            "block": "44040da3-a6b5-4544-9fc1-dbb7d61a435f",
            "port": "319cdca8-e777-4c8b-88ca-f885ba96ad06"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "1a3b981a-4fe6-47ff-8ce8-fe948bc06c29",
            "port": "70887b0b-826c-4150-a873-605b77da8272"
          },
          "target": {
            "block": "dd1f55cf-9ba1-478b-9e47-ee82a33da739",
            "port": "db089906-4326-4b59-8aa5-ebb61116a4cd"
          }
        },
        {
          "source": {
            "block": "44040da3-a6b5-4544-9fc1-dbb7d61a435f",
            "port": "70887b0b-826c-4150-a873-605b77da8272"
          },
          "target": {
            "block": "dd1f55cf-9ba1-478b-9e47-ee82a33da739",
            "port": "5898179a-7390-429b-ac3c-b7a0df673610"
          },
          "vertices": [
            {
              "x": 136,
              "y": 160
            }
          ]
        },
        {
          "source": {
            "block": "58da334a-9c47-4bb4-bca2-5b59d05ff6e1",
            "port": "constant-out"
          },
          "target": {
            "block": "10ec34e3-936e-454a-85fc-5e085157f700",
            "port": "319cdca8-e777-4c8b-88ca-f885ba96ad06"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "10ec34e3-936e-454a-85fc-5e085157f700",
            "port": "70887b0b-826c-4150-a873-605b77da8272"
          },
          "target": {
            "block": "dd1f55cf-9ba1-478b-9e47-ee82a33da739",
            "port": "6ff164c2-5a24-45ee-b357-7b83df4dbbec"
          },
          "vertices": [
            {
              "x": 264,
              "y": 104
            }
          ]
        },
        {
          "source": {
            "block": "ff5f9e7c-881f-4eb7-84f9-b0a53c8ca423",
            "port": "constant-out"
          },
          "target": {
            "block": "e30e7c10-d043-4436-8f5d-f40ca3c230bb",
            "port": "319cdca8-e777-4c8b-88ca-f885ba96ad06"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "e30e7c10-d043-4436-8f5d-f40ca3c230bb",
            "port": "70887b0b-826c-4150-a873-605b77da8272"
          },
          "target": {
            "block": "dd1f55cf-9ba1-478b-9e47-ee82a33da739",
            "port": "fa311466-9b3b-455f-9a73-efb56fcc06d2"
          },
          "vertices": [
            {
              "x": 416,
              "y": 48
            }
          ]
        },
        {
          "source": {
            "block": "23883a7f-2e72-4e11-b4c1-4fb732f851e5",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "0dace5ca-da49-467c-a9ae-6c3744bf36b3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "dd1f55cf-9ba1-478b-9e47-ee82a33da739",
            "port": "0ef557c8-5378-43b3-80af-176f129f1a07"
          },
          "target": {
            "block": "23883a7f-2e72-4e11-b4c1-4fb732f851e5",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "c24d4466-0462-453e-abff-3864871065aa",
            "port": "out"
          },
          "target": {
            "block": "23883a7f-2e72-4e11-b4c1-4fb732f851e5",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 498.6584,
        "y": 405.275
      },
      "zoom": 0.9198
    }
  },
  "dependencies": {
    "28cfaadfc1f0212b3214e9aae2e4495fb671cfda": {
      "package": {
        "name": "Mux 4 a 1",
        "version": "0.0.1",
        "description": "Multiplexor de 4 a 1. Implementado en verilog",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2246.347%22%20height=%22182.066%22%20viewBox=%220%200%2043.450545%20170.68778%22%3E%3Cpath%20d=%22M42.044%2021.324c0-7.134-3.893-13.724-10.206-17.275a20.674%2020.674%200%200%200-20.365.08C5.189%207.728%201.349%2014.347%201.407%2021.481v127.723c-.058%207.135%203.782%2013.755%2010.066%2017.355a20.674%2020.674%200%200%200%2020.365.079c6.313-3.551%2010.206-10.14%2010.206-17.275z%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.068%22%20y=%2270.768%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.068%22%20y=%2270.768%22%3E2%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.018%22%20y=%2227.719%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.018%22%20y=%2227.719%22%3E3%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.068%22%20y=%22113.534%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.068%22%20y=%22113.534%22%3E1%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.068%22%20y=%22156.655%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.068%22%20y=%22156.655%22%3E0%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "fa311466-9b3b-455f-9a73-efb56fcc06d2",
              "type": "basic.input",
              "data": {
                "name": "i3",
                "clock": false
              },
              "position": {
                "x": -720,
                "y": -192
              }
            },
            {
              "id": "6ff164c2-5a24-45ee-b357-7b83df4dbbec",
              "type": "basic.input",
              "data": {
                "name": "i2",
                "clock": false
              },
              "position": {
                "x": -720,
                "y": -120
              }
            },
            {
              "id": "5898179a-7390-429b-ac3c-b7a0df673610",
              "type": "basic.input",
              "data": {
                "name": "i1",
                "clock": false
              },
              "position": {
                "x": -720,
                "y": -48
              }
            },
            {
              "id": "0ef557c8-5378-43b3-80af-176f129f1a07",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": -24,
                "y": 0
              }
            },
            {
              "id": "db089906-4326-4b59-8aa5-ebb61116a4cd",
              "type": "basic.input",
              "data": {
                "name": "i0",
                "clock": false
              },
              "position": {
                "x": -720,
                "y": 24
              }
            },
            {
              "id": "7ab3b7a1-0550-497e-bcda-9a1c2384023b",
              "type": "basic.input",
              "data": {
                "name": "sel1",
                "clock": false
              },
              "position": {
                "x": -720,
                "y": 144
              }
            },
            {
              "id": "dd22e3eb-792c-46c2-adb8-194cd0d40d8a",
              "type": "basic.input",
              "data": {
                "name": "sel0",
                "clock": false
              },
              "position": {
                "x": -720,
                "y": 224
              }
            },
            {
              "id": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
              "type": "basic.code",
              "data": {
                "code": "wire [1:0] sel = {s1, s0};\n\nassign o = (sel == 2'b00) ? i0 :\n           (sel == 2'b01) ? i1 :\n           (sel == 2'b10) ? i2 : i3;\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i3"
                    },
                    {
                      "name": "i2"
                    },
                    {
                      "name": "i1"
                    },
                    {
                      "name": "i0"
                    },
                    {
                      "name": "s1"
                    },
                    {
                      "name": "s0"
                    }
                  ],
                  "out": [
                    {
                      "name": "o"
                    }
                  ]
                }
              },
              "position": {
                "x": -464,
                "y": -104
              },
              "size": {
                "width": 368,
                "height": 272
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "o"
              },
              "target": {
                "block": "0ef557c8-5378-43b3-80af-176f129f1a07",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "db089906-4326-4b59-8aa5-ebb61116a4cd",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "i0"
              }
            },
            {
              "source": {
                "block": "5898179a-7390-429b-ac3c-b7a0df673610",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "i1"
              },
              "vertices": [
                {
                  "x": -576,
                  "y": -8
                }
              ]
            },
            {
              "source": {
                "block": "6ff164c2-5a24-45ee-b357-7b83df4dbbec",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "i2"
              },
              "vertices": [
                {
                  "x": -552,
                  "y": -56
                }
              ]
            },
            {
              "source": {
                "block": "fa311466-9b3b-455f-9a73-efb56fcc06d2",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "i3"
              },
              "vertices": [
                {
                  "x": -528,
                  "y": -136
                }
              ]
            },
            {
              "source": {
                "block": "dd22e3eb-792c-46c2-adb8-194cd0d40d8a",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "s0"
              }
            },
            {
              "source": {
                "block": "7ab3b7a1-0550-497e-bcda-9a1c2384023b",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "s1"
              },
              "vertices": [
                {
                  "x": -520,
                  "y": 120
                }
              ]
            }
          ]
        },
        "state": {
          "pan": {
            "x": 751.725,
            "y": 218.8
          },
          "zoom": 0.9312
        }
      }
    },
    "0e64bc728cbb881007bf629e44dc5b5b0fa3a34c": {
      "package": {
        "name": "Corazon_Hz",
        "version": "0.1",
        "description": "Corazon genérico para bombear bits a la frecuencia fijada en Hz (por defecto 1Hz)",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22177.215%22%20height=%22156.392%22%20viewBox=%220%200%20166.13943%20146.61829%22%3E%3Cpath%20d=%22M78.495%20143.399c-2.574-4.43-6.565-8.766-14.127-15.35-4.096-3.566-6.588-5.546-20.775-16.506-11.12-8.593-16.668-13.36-23.098-19.847C14.07%2085.208%2010.293%2080.04%207.052%2073.303%204.984%2069%203.562%2064.854%202.676%2060.547c-1.123-5.472-1.275-7.324-1.27-15.382.008-10.573.357-12.332%203.828-19.385%202.58-5.239%204.54-7.997%208.62-12.141%203.963-4.022%206.536-5.85%2012.1-8.6%206.18-3.057%2010.65-3.859%2019.86-3.562%207.157.232%209.776.943%2015.45%204.208%208.929%205.138%2015.858%2013.387%2017.776%2021.162.313%201.27.636%202.312.719%202.312.082%200%20.805-1.487%201.606-3.305%202.727-6.179%205.26-9.95%209.284-13.828%2012.32-11.88%2031.744-14.027%2047.45-5.25%206.414%203.584%2011.633%208.802%2015.676%2015.675%203.184%205.41%204.812%2012.595%205.09%2022.464.402%2014.298-2.214%2024.207-9.174%2034.766-2.763%204.19-4.806%206.73-8.638%2010.73-6.182%206.458-11.758%2011.205-24.92%2021.216-8.307%206.317-13.23%2010.378-20.355%2016.8-5.71%205.143-14.558%2014.1-15.41%2015.596-.372.655-.71%201.189-.749%201.189-.039%200-.544-.815-1.124-1.813z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%222.813%22/%3E%3Ctext%20y=%22136.183%22%20x=%22124.113%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2253.914%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22136.183%22%20x=%22124.113%22%20font-weight=%22700%22%20font-size=%2230.808%22%3EHz%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "70887b0b-826c-4150-a873-605b77da8272",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 560,
                "y": 128
              }
            },
            {
              "id": "4656865c-bcf1-4668-8e13-9221e32222d3",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -296,
                "y": 128
              }
            },
            {
              "id": "319cdca8-e777-4c8b-88ca-f885ba96ad06",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "1",
                "local": false
              },
              "position": {
                "x": 112,
                "y": -224
              }
            },
            {
              "id": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
              "type": "basic.code",
              "data": {
                "code": "\n//parameter HZ=1;\n\n//-- Constante para dividir y obtener una frecuencia de 1Hz\nlocalparam M = 12000000/HZ;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Registro del divisor\nreg [N-1:0] divcounter;\n\n//-- Temporal clock\nreg clk_t = 0;\n\n//-- Se usa un contador modulo M/2 para luego\n//-- pasarlo por un biestable T y dividir la frecuencia\n//-- entre 2, para que el ciclo de trabajo sea del 50%\nalways @(posedge clk)\n    if (divcounter == M/2) begin\n      clk_t <= 1;\n      divcounter = 0;\n    end \n    else begin\n      divcounter <=  divcounter + 1;\n      clk_t = 0;\n    end \n  \nreg clk_o = 0;  \n    \n//-- Biestable T para obtener ciclo de trabajo del 50%\nalways @(posedge clk)\n  if (clk_t)\n    clk_o <= ~clk_o;\n",
                "params": [
                  {
                    "name": "HZ"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    }
                  ],
                  "out": [
                    {
                      "name": "clk_o"
                    }
                  ]
                }
              },
              "position": {
                "x": -104,
                "y": -104
              },
              "size": {
                "width": 528,
                "height": 528
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "clk_o"
              },
              "target": {
                "block": "70887b0b-826c-4150-a873-605b77da8272",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "4656865c-bcf1-4668-8e13-9221e32222d3",
                "port": "out"
              },
              "target": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "clk"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "319cdca8-e777-4c8b-88ca-f885ba96ad06",
                "port": "constant-out"
              },
              "target": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "HZ"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 325.8333,
            "y": 194.5185
          },
          "zoom": 0.6898
        }
      }
    },
    "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6": {
      "package": {
        "name": "AND",
        "version": "1.0.1",
        "description": "Puerta AND",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22336.09%22%20height=%22194.045%22%20version=%221%22%3E%3Cpath%20d=%22M174.656%20190.045H78.304V4h96.352s87.463%208.625%2087.463%2091.94c0%2083.311-87.463%2094.105-87.463%2094.105z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2045.668h74.018M4.057%20144.812h74.018m184.632-50.034h69.326%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2292.894%22%20y=%22114.587%22%20font-weight=%22400%22%20font-size=%2258.054%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2292.894%22%20y=%22114.587%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EAND%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 88
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 784,
                "y": 152
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 224
              }
            },
            {
              "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "type": "basic.code",
              "data": {
                "code": "//-- Puerta AND\n\n//-- module and (input wire a, input wire b,\n//--             output wire c);\n\nassign c = a & b;\n\n//-- endmodule",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    },
                    {
                      "name": "b"
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
                "width": 464,
                "height": 272
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
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "97b51945-d716-4b6c-9db9-970d08541249",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "b"
              }
            },
            {
              "source": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
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
            "x": -22,
            "y": 79.5
          },
          "zoom": 1
        }
      }
    }
  }
}