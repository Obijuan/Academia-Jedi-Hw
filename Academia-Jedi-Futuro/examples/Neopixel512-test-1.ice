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
          "id": "d8154944-ab29-426c-bef9-eadeb0152e19",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "GP0",
                "value": "37"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 944,
            "y": 480
          }
        },
        {
          "id": "0ef5a3f0-e720-4e56-aa0b-29d61f549068",
          "type": "basic.constant",
          "data": {
            "name": "msec",
            "value": "5",
            "local": false
          },
          "position": {
            "x": 0,
            "y": 472
          }
        },
        {
          "id": "487daf1e-38bd-4a8b-ace1-7b67c2ea6371",
          "type": "519d315d08b3a8cc1aac53c9d14d2fd81d67033f",
          "position": {
            "x": 0,
            "y": 568
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "cd4aab8d-4bee-41f6-814c-687f92641706",
          "type": "basic.info",
          "data": {
            "info": "**NeoPixel-512**",
            "readonly": true
          },
          "position": {
            "x": 808,
            "y": 416
          },
          "size": {
            "width": 160,
            "height": 48
          }
        },
        {
          "id": "cdf78a4c-4023-47a6-be7e-b082fb477405",
          "type": "basic.info",
          "data": {
            "info": "Número de LED  \n(Dirección)",
            "readonly": true
          },
          "position": {
            "x": 376,
            "y": 448
          },
          "size": {
            "width": 152,
            "height": 64
          }
        },
        {
          "id": "6e720c49-2a2f-4787-be80-84ef20b29853",
          "type": "basic.info",
          "data": {
            "info": "Temporización: Generación de  \ntics de 50 mili-segundos",
            "readonly": true
          },
          "position": {
            "x": -40,
            "y": 648
          },
          "size": {
            "width": 256,
            "height": 72
          }
        },
        {
          "id": "a3d6a4ff-a3b3-4fc4-8fe8-48c1d8746b2a",
          "type": "basic.info",
          "data": {
            "info": "Escribir el valor en el  \nLED actual",
            "readonly": true
          },
          "position": {
            "x": 368,
            "y": 552
          },
          "size": {
            "width": 208,
            "height": 56
          }
        },
        {
          "id": "76ae479c-bd2f-4a68-a9f8-4ac15b19813f",
          "type": "basic.info",
          "data": {
            "info": "Valor rgb para  \nel LED",
            "readonly": true
          },
          "position": {
            "x": 680,
            "y": 656
          },
          "size": {
            "width": 192,
            "height": 64
          }
        },
        {
          "id": "5622b5fb-a0ff-4633-aa70-ee4da00953de",
          "type": "basic.code",
          "data": {
            "code": "reg [23:0] q = 24'h00000F;\n\nalways @(posedge clk)\n  if (cnt)\n    q <= {q[19:0], q[23:20]};\n\nassign o = q;\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "cnt"
                }
              ],
              "out": [
                {
                  "name": "o",
                  "range": "[23:0]",
                  "size": 24
                }
              ]
            }
          },
          "position": {
            "x": 384,
            "y": 728
          },
          "size": {
            "width": 304,
            "height": 136
          }
        },
        {
          "id": "865effba-ea5b-4abb-a56a-7ce989dbb3b8",
          "type": "basic.info",
          "data": {
            "info": "Registro de desplazamiento para obtener  \nel siguiente valor rgb\n",
            "readonly": true
          },
          "position": {
            "x": 408,
            "y": 872
          },
          "size": {
            "width": 328,
            "height": 64
          }
        },
        {
          "id": "e66ba705-eac8-43eb-af0c-b592cb6d74f7",
          "type": "basic.info",
          "data": {
            "info": "Evento: se han recorrido  \nlos 12 LEDs",
            "readonly": true
          },
          "position": {
            "x": 344,
            "y": 640
          },
          "size": {
            "width": 216,
            "height": 64
          }
        },
        {
          "id": "e6b2b02d-2298-40d3-a807-fdd4cd0231f8",
          "type": "38fd6a8d7ad56f3d7e50104cf5d94f2bcccd4a83",
          "position": {
            "x": 808,
            "y": 448
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "c8134175-6ff4-46f9-a01a-bc5bc7e6c848",
          "type": "60578c6aa29be13c7fad436432cb69f30df9b382",
          "position": {
            "x": 192,
            "y": 472
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
            "block": "e6b2b02d-2298-40d3-a807-fdd4cd0231f8",
            "port": "94edc7bd-b8d4-42ce-b1a0-2e6f11c293b2"
          },
          "target": {
            "block": "d8154944-ab29-426c-bef9-eadeb0152e19",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "5622b5fb-a0ff-4633-aa70-ee4da00953de",
            "port": "o"
          },
          "target": {
            "block": "e6b2b02d-2298-40d3-a807-fdd4cd0231f8",
            "port": "d7b9ac96-ed28-4c08-b7c2-50e1accf1500"
          },
          "vertices": [],
          "size": 24
        },
        {
          "source": {
            "block": "487daf1e-38bd-4a8b-ace1-7b67c2ea6371",
            "port": "c138a610-b61f-4e7c-bb8a-c4f3b0b9f95c"
          },
          "target": {
            "block": "e6b2b02d-2298-40d3-a807-fdd4cd0231f8",
            "port": "35c52a69-a45d-41fb-9ece-27c3078406bf"
          },
          "vertices": [
            {
              "x": 712,
              "y": 576
            }
          ]
        },
        {
          "source": {
            "block": "c8134175-6ff4-46f9-a01a-bc5bc7e6c848",
            "port": "cc17ff4d-1c27-4dc3-a14c-da730d54750e"
          },
          "target": {
            "block": "5622b5fb-a0ff-4633-aa70-ee4da00953de",
            "port": "cnt"
          },
          "vertices": [
            {
              "x": 336,
              "y": 616
            }
          ]
        },
        {
          "source": {
            "block": "0ef5a3f0-e720-4e56-aa0b-29d61f549068",
            "port": "constant-out"
          },
          "target": {
            "block": "487daf1e-38bd-4a8b-ace1-7b67c2ea6371",
            "port": "136e8d6d-892a-4f14-8d6d-0c5bc6c3e844"
          }
        },
        {
          "source": {
            "block": "487daf1e-38bd-4a8b-ace1-7b67c2ea6371",
            "port": "c138a610-b61f-4e7c-bb8a-c4f3b0b9f95c"
          },
          "target": {
            "block": "c8134175-6ff4-46f9-a01a-bc5bc7e6c848",
            "port": "26aba23f-8567-4e9b-bd45-c26724030f33"
          }
        },
        {
          "source": {
            "block": "c8134175-6ff4-46f9-a01a-bc5bc7e6c848",
            "port": "805e1630-b09f-4b54-8275-367c64a4dd3f"
          },
          "target": {
            "block": "e6b2b02d-2298-40d3-a807-fdd4cd0231f8",
            "port": "bd57c978-7b58-4774-90aa-1c0f42ec1e79"
          },
          "size": 9
        }
      ]
    }
  },
  "dependencies": {
    "519d315d08b3a8cc1aac53c9d14d2fd81d67033f": {
      "package": {
        "name": "Corazon-tic-ms",
        "version": "0.1",
        "description": "Corazón de bombeo de tics a con periodo paramétrico de milisegundos",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22197.514%22%20height=%22161.086%22%20viewBox=%220%200%2052.259014%2042.62059%22%3E%3Cpath%20d=%22M22.153%2040.47c-.727-1.25-1.853-2.474-3.987-4.332-1.156-1.006-1.86-1.565-5.863-4.658-3.138-2.425-4.704-3.77-6.519-5.601-1.813-1.831-2.88-3.29-3.794-5.191a15.321%2015.321%200%200%201-1.235-3.6c-.317-1.545-.36-2.067-.358-4.342.002-2.983.1-3.48%201.08-5.47.728-1.479%201.281-2.257%202.433-3.427C5.028%202.714%205.754%202.2%207.325%201.422%209.069.56%2010.33.333%2012.93.417c2.02.065%202.759.266%204.36%201.188%202.52%201.45%204.475%203.777%205.017%205.972.088.358.18.652.203.652.023%200%20.227-.42.453-.932.77-1.744%201.484-2.808%202.62-3.903C29.06.041%2034.542-.565%2038.974%201.912c1.81%201.012%203.283%202.485%204.425%204.424.898%201.527%201.358%203.555%201.436%206.34.113%204.035-.625%206.832-2.59%209.812-.779%201.182-1.355%201.899-2.437%203.028-1.745%201.823-3.318%203.162-7.033%205.988-2.344%201.782-3.734%202.929-5.745%204.74-1.611%201.452-4.108%203.98-4.349%204.402-.105.185-.2.336-.21.336-.012%200-.154-.23-.318-.512z%22%20fill=%22red%22/%3E%3Ctext%20y=%2262.314%22%20x=%2259.897%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%2215.216%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22matrix(.99853%200%200%201.00147%20-50.645%20-44.99)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%22.282%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2262.314%22%20x=%2259.897%22%20font-weight=%22700%22%20font-size=%228.695%22%3Emsec%3C/tspan%3E%3C/text%3E%3Cg%20transform=%22matrix(.79321%200%200%20.79321%20-39.33%20-27.72)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c138a610-b61f-4e7c-bb8a-c4f3b0b9f95c",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 912,
                "y": 192
              }
            },
            {
              "id": "503869f1-ddfd-4d13-93ad-5f90281ba88c",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 104,
                "y": 192
              }
            },
            {
              "id": "136e8d6d-892a-4f14-8d6d-0c5bc6c3e844",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "100",
                "local": false
              },
              "position": {
                "x": 520,
                "y": -128
              }
            },
            {
              "id": "a70d9684-3b18-4f3d-90cd-28faa893b6b2",
              "type": "basic.code",
              "data": {
                "code": "//localparam MS;\n\n//-- Constante para dividir y obtener una frecuencia de 1KHz\nlocalparam M = 12000*MS;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Cable de reset para el contador\nwire reset;\n\n//-- Registro del divisor\nreg [N-1:0] divcounter;\n\n\n//-- Contador con reset\nalways @(posedge clk)\n  if (reset)\n    divcounter <= 0;\n  else\n    divcounter <= divcounter + 1;\n\n//-- Comparador que resetea el contador cuando se alcanza el tope\nassign reset = (divcounter == M-1);\n\n//-- La salida es la señal de overflow\nassign o = reset;\n\n\n\n",
                "params": [
                  {
                    "name": "MS"
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
                      "name": "o"
                    }
                  ]
                }
              },
              "position": {
                "x": 296,
                "y": -8
              },
              "size": {
                "width": 544,
                "height": 456
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "a70d9684-3b18-4f3d-90cd-28faa893b6b2",
                "port": "o"
              },
              "target": {
                "block": "c138a610-b61f-4e7c-bb8a-c4f3b0b9f95c",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "503869f1-ddfd-4d13-93ad-5f90281ba88c",
                "port": "out"
              },
              "target": {
                "block": "a70d9684-3b18-4f3d-90cd-28faa893b6b2",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "136e8d6d-892a-4f14-8d6d-0c5bc6c3e844",
                "port": "constant-out"
              },
              "target": {
                "block": "a70d9684-3b18-4f3d-90cd-28faa893b6b2",
                "port": "MS"
              }
            }
          ]
        }
      }
    },
    "38fd6a8d7ad56f3d7e50104cf5d94f2bcccd4a83": {
      "package": {
        "name": "NeoPixel-512",
        "version": "0.1",
        "description": "Controlador de hasta 512 LEDs Neopixels",
        "author": "Andrés Prieto-Moreno y Juan González-Gómez",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22189.409%22%20height=%22177.687%22%20viewBox=%220%200%2050.114594%2047.013139%22%3E%3Cg%20transform=%22translate(-78.34%20-65.244)%22%3E%3Cg%20transform=%22matrix(.46055%200%200%20.46055%2038.854%2071.416)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cimage%20y=%2265.244%22%20x=%2283.589%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASMAAAD5CAYAAABs8lPQAAAABmJLR0QA/wD/AP+gvaeTAAAACXBI%20WXMAAA7EAAAOxAGVKw4bAAAAB3RJTUUH4gkeCwUT3xIIjgAAABl0RVh0Q29tbWVudABDcmVhdGVk%20IHdpdGggR0lNUFeBDhcAACAASURBVHja7L3ZkyTZdeb3u/f6GntkRu5VWVVZ1V3VW3V1N0ACBEiC%20JIAxDjQSSTNSNmN8GMqkpukvAB+pN9CkfwCUSQ8c44wZJM0MR0abAdggFgINdHd1V++1dO25L5Gx%20uodv9149eGQtDQwH1GwEkKcsKqI8IrIiPdw/P+f7vnOusNZyHMfxHwpjzZoU8vbHt0fp6GtVv/57%20x3voOP5jwzneBcfxk4QU8nZhi887wnnlaFtm0peRxRrAMN21eZ7jCIlSCkd5bzrSfwVACHW7/Bnq%20NkLeFvwoqP0tMLhWmMHXCp2+FLiL4vib+NkNcZwZ/XRHSv7yiPQrBUW7QfVPKrh/dLTdRb0if8yJ%20b6xZG6aDr42TyUtxPCZJc4wtGEUTkiQmmiQYUyCUS6EzitzgORKsJk9SomhEZ26WzkwbRwmklCTx%20mEajgUSglIunHJRS5U04CCHAyvKgExIpJZSvBsrtSgksGms1CI0QFkuBMQWF0WAVRoAQCikcpJQI%20oVDSQSmXdnXhGKyOweg4/pOVQ9i1iPQrMfnveqg3HdTtAr3mIG7XCX/PYNcGTL7m47wCkj7xl1MK%20DAUKl8JmJHFKHI1IxwlZEhONYtLxmEG3j7CGrND0+4ccHPYZjQekWYG1mvubWzQaNVozs8zNzdKe%206ZAXKYWBVqMGWcag10ObnKeeOs/qiWW0LqgEIb7nMBqNUMIiUDhldoTjOLjSQUqHalhDCIFAIUQJ%20JMADkLJotM7Ji4SiSDA2R+scbVK0NaRpjkFiTPk2JV0cx0UKD5CcWj1Np3HiGJCOy7Tj+I+NmPwr%20fSZfzjEUaEC8VGBeyimwFC+ZcWLj8YRoEpMb/VKSpQzjiDiZoK1le3OTLMvIkpQ8zUjGEYPDHsP+%20gCJOmGu2qfoBWmt6/T7D4ZAkz0iShGgSY4xh+cQKynexCrqDPr1BH8/zOHf2DDONGsOoRxyPOZWs%20YKWhKDKiJCXLHXKTYoTEd3wczyH0XYKggud5KOnSqDYRVk7BSAACIRTWCBCGLEsodEqWQZoVZHmG%20tjlG5xQ6Q5uCXFuKQqMLi5yCXJFb0jSnKArSldSuzJ09BqRjMDqO/z+Z0FbWuxXlCdoXDJMx3VGP%20w2jAKBkTZTHjZIJNNJOdHiI3IARGCYajEbsH+wzjMdpaAs9Da40nHXzHZTIas7+7RxxFBChm203C%20akC1WqWzOIfrukhHsbO3y807t7l69SryYJf93gHCUbiuS1bkLC0tcc45S6UW4lc8klxhlUW6FsdC%20oQvyNKFWqeK6LtWwSrVapRbWCIIATwUoHIyxCOs8BkZlYiQARb1WQ1uXovAotEtWeCSJQ5Iq0lwx%20iRMcY8lSgXYsQkisscTxhOFwzM72HtevX6dRf9O227O0mrO0WjOcXDxxVsq/C091HMdg9HMUO4zs%20sEjZjw7Z7O9xEPVZ39+mO+6yc7DP4bBLmmUgLUqCbxTzsslM2GBmYY52s4mXhGRVCyMPK+Cw30cC%20buAiXI/cSMYiJREZrheycGaRU0srrCwuMdNqszi/hOd5fHD1Q77/2g+JkxhtLQf9Q9Ikp1qtAjAp%20UuIkYvcgRyhozdbxPIc4HqOLnFpYIazWqYYVAtcnDKtUwgaBF6KEA0gMAk/6iCk/xIP7aaWGxZIj%20hYfnSlzXwbMOjnKR0kE5CeN4MuWTDEiDVJI8L0iyiOG4z3g84c47b9Pt9mi3ZlheXqVWq+G5wa3A%208zl35izznQWeeOLJP/Q8/0+Pj8JjzujnLnrkl4dMXpJYYmL2ogF3ejvc7G5yu7vF7cMtdkYHBO0a%20uU6Io4jJaICnYbZeZ6kzy3zQ5FSwzInOUpmxmIxUZ2zsbnJj/S6jyZjeaIgQkv5hjzzOELmlt9Ol%20Kn1efPppfu+/+RImnjBTazDfnCUdTtjb2WcwGpJqw/ruDt95/QfsHB4QpQlZljHbatOo1/GFpB36%20fOHXPscvf+azROMhJs1pVCroNGO+M89Mo4PvVgj8Okp6WDyskWU5JSTib8kPwWCn92AQ0/vCZuR5%20Tm4mdAe79IeH5HlKpjOyLEMIwWFvxK1bdzk4GPHBB9dIJhmu6+PIkkAfjQekk4yaqjHT6HDu3DnO%20nj1Hp9NhcXGZkydOsbB0rNQdZ0Y/wzHSydcOVfq7SckH8fbm+2wOdvho/TY3dzc50DFFRWErEl0L%202Rh2CUKHRrXG3HKLthfSqdeZr9VpqxrV1McJJDgGZQUuCr/hYbycrZ1t+tEIoVzGyRid5niFQDua%20oF6hMlNlp79Df3sHPUrwComOUnRSIJRDLsG4LoUpsErg10JIJYnO8POUmdk2T5w7x5NPPcnMTIs8%20S5hECUVW0Kg0addnCd0qrlPBEQESH20kGPXjEqFHLodHT0qMzkGUPBKifIMUCiVdLJJqpUlhCsbj%20PrnJcT1JrguSfEyuJ+x2N0nyCaNJRDHU+K5LUeR0u/t40ucg2qFb3Wdnd4tvfetbpGnK8vIKFy9e%20YmVlxS4tLbHQmeWppy/QnCmVOV3EX8HqNeUee6mOweinmIweK373gAnv37/JO9s3eHP3On0mRGlC%206hc4oUdQ8ZESiiLn9OwcM7Ua840WrSCk7Yc0vZBASnyjUBMBWmMBVFm+1Zo1KrUK8SQqlSohUEph%20pQYsSgiKLGfUH7CxscF4/wAzTvFygZgUYARWSMZ5Si+O2dnaJEET1KsEnoOrHE6dPMGvffbTLLTb%20nD59ijRLmEwmuK5Lvd6k0+ogcAn8Kkr5CNwpOS3Kz3pED/0ESbi1FmtBCErpHnCURChLRTYQCrTW%205CZHOS7RZIw2OY4rWJibQVrY3xuwvb3LaDAgyzKM1jRnGmhVYNKMVqPCiy98grm5BUAShiH1WoNh%2075D1O7e4/MYPOXX6pH3qqadYWlqg2pj/AtasIY55p2Mw+imJ1GQv+9L70wLz+Vv5zpffuX+DK7ev%20cXXjLjcnuxzOwMTTSEfgS4dW1aPZqNP0QnwEy+0ODc+n5XoEKFxrcQ2QG8gNgeuRFgnCyKkHx1Kr%20V1leXmZ5e5n94QBtDHnuI7XAFZY8s6RZwv3NDQ62NgmMZTZo0A5qpUFRgDaGNE0ZDAYopQhcFyEE%20xhg0OVJBs1mnVg/xfMngoI8xmmq1RbPRpjO7SDbJcVQwPaQepkFC2gdENf+BQqj0Iqmp14gpKEmE%20AIWLp3ycSossnaB1Co4mzSIcaWm2qqyurvKDVy+zs7ODJceiqVQD3FyRRDE20ZxcPskv/dKn+exn%20P0sYVhgOxjiOR7PewBjDe++/w/e+812+/dffoFKpsHrqJJ/5zKf/6uILl5idmceiel5Q/yPlHHNO%20x2D09zYTyr4ykpMvD/T+V2/vbvDmrQ+4cvca9/q7DG3OqGJIqz6iFlJzfOrSoxPUONmY5UR9hrYb%200lYBNengC4XSFqENCItFU4gCRzk4Xqk+pTanMDle6LOyssKzecrtzfv0BkPyfI8oTjCOxa/5qMyQ%20FimecrHKQ/ouVgpyXZAbixQOXuBTbzVpCc1YJyQ6x3UVYeAxmUTc+Og60Xyb1eUFPM+l2WwSOiFS%20ergE+GEdUOVtCiTW6hJg5FFqJP89fNG0kpMSa+0DHxFWgJimU9bBGgdXKSphgzSPSIoReZ4gHU21%204pKkQ1zf8MKl54iihCuX32U4HFOv1lBG8tIvXuKzv/hpXnjhJYwx7O93KYqMg/0dXv/BXbKs5Kes%20yalWfA4OdnnnnTd44/VXeeKJJ/jEJz/NE+cvtJ9++umvNtrza4PD/S8PRyNc16fRaPfqrc7M8Zlw%20DEb/1YFoPd/98ub+Du/fvcpr773F9d37TDyL26lTrdfB0VQaIc3ZGU7MzrMYNphzKsx5VTqqShOX%20oJBUpYsvHdSR7G0FRVGQFSmTIib3AgqjGWcxpgCbW6peyJnV06w+scbGzjbXPrzKnVu3iPb7SClQ%20DuSJZmJAGYl1HGrtFlXp4yBRrkduDbXxiOGthO7ekNFkRLvZYm6hQ6NWpz/sYbMxd+/dYqmzROg1%20aDRa1MI6GonEKf1Cj6Q/QohpZmQ/Bjzyb82OStn/KFMSWCuwGKR1kUDohUy8kGhyQJpNgAIhC3a3%20d/EDwYsXnyPw61hteO/dq0grqQc1Xnj+WdozDUbj0mO1ubHF4eEhd2/d5f3332ftzBl6vR7Xr19n%20tj1Du92kXq2g0wlbG+v8i+s3OHXmNOfPn2dufvHLAHmuEUhc128/++yzdmX1JPPLpc/JWrMmjku7%20YzD6LxX3sz17a/sOd7bu8o3vf5OJ1PSyMbFNSK3FVRXasw3OzM4w02zRDOvMVuq0nIC2qjDn1pgT%20DRoEOMri46BwsFhAYVGkTkHGhDgbg2OI0oSqE1M3Kb1igs4SWpUGtcYstVadoOIiPM1NeY1sNCYv%20DFpnVNwOEFBfnOeZiy9ydnGV0PXIsoxhHPFX3/sOWgmMA0Za4iwm1TlGWKIkQhaW+/fvEjoh3myV%20WrVBw5shywzSkTg4j4CRRUg9ffRxEDIf24uPy/2PgdEDMsnFdRTaJijp4vs+pRJsSiLb5DRbFQ66%20e3zw4RXm506ysrJM76DHrY/uYrKcfv+Q7c0NfNdFa83dO/fZ2dmhUa/zwgvP0D8cIIXBdSzLi7Oc%20OXOGwFNMohiJ4cRih1F3j/feHHDh6Wd44YUXaNSbrK9vcv2j69y8/gFra2tcvHjJnn3iHI35M8cK%203TEY/eeP3axv+9GQ25s3+eG7b3Dl6ttkjoaqS7VVoVFrE3aatBbnaMy1aXpVllSLjlcvgUP61PGp%20UfJDEgjwkUgsgsJaEAqJgwdoQlpeHQmMwjGRn5BJizveo4gP8B2H3e4G1F1m5lssnVmiO9qme5Cg%200wQtQLg+o0HObjRgLxpQHfXI44StzU3Wt7e4/P473N64i1f1qbWb6DwjymJSUyPAZTSOieOYIAgI%20wxAppx4ibVCe+zGCWjwCPAUWOyW25SOZkvgR8vox/ujB4ylQWYnRIB2J6/pIKXF9hwCXtACpDNVq%20SPfwgEF/gtWKzc1Nut0un3jhRaIo4v69O8SjMa7rYoyh3ghpt+rUagGOFBRFgqssc/Ntnn3mPIGv%20uHPnDgd7Oxzs9jl7do2XXvoE588/RaPRIMs1J5Y6zDbr7O8fMIpHvPPWDznc32Rtbd3OL85TrdUg%20nPtDxDHPdAxG/ylBKI0tjuHVN37I5XfepDs+YPNgk9pck3pVUZltMLs8R6PTxqmGKF8hXYeG8Xna%20XWBe1KhSI8CjLMYEDiXoPJSdJA4Si8RMT18XD2EyjC1oiCahqDChgKrEdUL2zYDYTTiMR+yN9uiP%20u2i/IA8zJnaMqDps9buIRDK6F5HnKT/IBYP9LlbDxtYm1U6TxvwsVlqEo8jHBYnOqdRrCJ0jZak8%20BUFAs9kCBDkF1bD2EHceq9RKvsugp08XYMueNPFAXhMPQEiIj5VvlscAKU8zXN8HCvI8J6hWqOoK%20h8NtdvZ3GA4i9g/7mEwxnqTsbvXY29vDdV0AsiwpzZoYut19XNelVqtx8flnCDyfXrfLYXebmXaD%20T3/qk5w6scLtm9epVwNuDw55+smzvPT8BS498wRe4JLGY5RyaFdDAlfSbp4qhYw0ZTAc8s6br9Fs%201VlbW2Nlde2rTmvtlWNF7hiM/k5hjFn7ce0DBtbWu9tcufIG//Iv/m/ubdzj5JllWnNN6o0qJ9ZW%208VoVqo0qKnBLoNEOFb/CrKpz0pmhTRUfH4mLxVKYMkOwQj3WwY4tuVsFyOlJKa2HsB6F1WgV4Kgc%20EGi3/BmJyBhEI0aHfbr9LpnIcZsekRAU4xFuWKfi1MlHEzZHh3iJpkhTXOlifAejBEsrJ9nc3qDX%207zHTatFsNvE8j7WVU5ybX6BdrSNQJJMM69lpafYxABGAtdip4mexWGuRyJLZxj4isP3klYxSCjAY%20LFKWnf8WSLKcKI5J8wzpKPLM0u31GAxH1JoNlHWJ45iNjQ2SSYQ2Gt/3yfKUza37bG1tcOH8E2xu%203kMITZpGvPba9zk8OMtg2MXYjNXVZV584SKrJxbxHIHNU3RRgHURKKTRGGtwXZegVqUSOESTCXmR%20sX7/Dtvb25x5YnCr1uhQnVn8Q9RxlnQMRj9B/DggiovsK3/x/Ve+/NG9W1x5603ub96nWq9wcnWF%20sxfOUmnV8BohKnRxPQ9hBUpDxQ2Z8zsshLPUbZPAhkipMEgKLFoenb/qQeEibClAqVJMe7CN6c1B%204VhwrYMSCqEkCoc00ER5RNUN8JWH63t4QQXHRhRRAYWHo0MmacIwi5nxq4Sui7SSltMmqFbwgwDp%20ODiehxKC/f19RFrg5gW//RtfJB8nSK0wpvzMR2BirEEJ+VhGUypqAivKx8YclV8PMyGL5d+r+X9s%20s1RMwajATN9ZWMskL4iTnMFowmgU4xCiXB8hxhijsSYjjmPQBcJotNZIYVFKMR6PefUH3+P6tfeJ%20xyPq9TrLKwvMdlpUKj6gMTrj0vPP8txzz1ANQ4yALM+n1gOB65TTAxDTnjthcNwQx/NI0glxPGY0%206vPOW2+wsrzKydPjrzYa7a/ihW8i/VdwK390fNYdg9FPFG9f/9C+/vZlXrn8PQ7HA4os4dOf+RQX%20LjzB3GKHZqeJdQX7/QPILQaNIxUVr8Ks22bBbzNHG4lLjkJOyy+DnOLLj+YHR4r2x4Ho0Zu0ECoP%20IytlhiAyJvV5zi6sEdmYdC9jNIxAuDgzs+iuoJCg6j5VGbLYWkCmhnQ4xgsDCmu4f/8+w9GQZr2O%20yQocq5htzeI5PkVu0dqiRNlEq5RCo8EWSKseU8msPcqIpmqYZaqMmeksoynJLX7yzMiYAqmKaeGn%20KYwlLwwWifJCxpMuFodaowU2YdCNmcQjijRjqIc0l1aoBB7D4ZDRaECjXuHEiRNkecxh/xCBoWI8%202q0Wo3GP23fG5MWEpaU5PvmLn6DWqGOtwBiB9DyCIMANQgInRLoeUkqyPEfrsn+uphTaFuRpSpZl%20DAZj9vc22d/bZKYzx6kzZ19qLp0uL3ym+Dzy4eC6YzA6jsfi1s6Gffvtt7n85pvc2rxLJDOUK5lp%20zXD69ClOrq4QBB4WmEwmeF6AFqCES9WrMFtrM1dt05CNsmtdOGRCIqbtonYKQ0dskZ2WZEeOHFGe%20vw9LmqMX6em9Kcu4UDoYAhpUaIk6C9UFTs2N6ScjdntdilTiqJBkygUtriwyFzapW5/u+g7d3iGN%20SpXZmQ7GGCZxTDqKmKk2OLNykl947hJLnQ5KOORGURhLURiMMdMPbKYA9HCA2tG2o8NMTEu3h6TS%200WvF44XwY+ra40WyFXpa9Bm0MWS6QFuBH1Rptjuo7UOEFGS5ZRQlWCmo1Stot8BzfJ57/hKVIGR3%20d5vbN28wHB2ipMUUKfVqFUdZwlpIpeazu7eJtHDp0iUuXLhAvVnDKAclPXw/xA/rD0DIVyFyyksZ%20WwKsVAIo/V1ZEpMlE1rNJtFwRK/Xo9/dIRoN6exs/e7yiVO2uvDkWRP3LstK+xPHYHQcDyLVxcuv%20v3vlq9/73vd45/33iKIIVfWoNes4FUUl9Dg8PGB702f19AmsViRJgvUcEApXuVSDBjP1WWb8kiWS%20CCR+CThHHAjiAS8ksGAeMraPgpB98G9ZgpSABz2lFlyjCKXLDA2GNqJiAzr+PKvzZxnmGXbXYxxP%20CGsuFbfKysIJGtalf2+Hzc11+tsHML9IJaxx8alnSEYRt298xLmFVU4tLuNagS9d2vUZelmfyShm%20PIpJwoRarVH+HgKwZgpCcjpEbdpnZkvOCGEf+IiOnv87MHkoKcrJjxRoayi0xiBw/Ar1xgyN5gy3%20bt5j1N1GWRfX8YgnGZV6jU+++Ekq1SoYWFhYojM3w3h4yGQyZnPjLr4rcZRA6wyL4eSpk3RmZrn0%20/HPMzy0SpynN1gxBpUG10sAPKijpg3CAskTjyOApRHnF0AXC5PiVOpiEtNel06qysjzPzu4+d+9v%20cuP6Ad1ul8Wl7q2FxRP4jv8V6f18lm3HYPSxuL5x17515Qpvvn2F7d0dcBS1VpPEZoyTMTYtELrB%20ZDikXqtw5uwpCsDzPCbGIKRAOR6eF+C5IS4hzlQve8B9WFAWpDEPkwH7SCYhDUKCFRYjy0TITDMG%20gcCTJbQ9KNm0wBOSivBpijp1UaeuUk52TuFWQ4Jqkzsb94nlBJMWpGlKdzRkd2uLJJ4gLBRZzsb6%20OoudOUInoF2t0wqrkBn6e4eoxHCw2iPLMrCSPM+J45i0MsGRVQQSSzHlvsyUmlZTDm4q20/BdgpT%2002xP8KOTI8yP+WbKjCgnZ5KX43GzrCAvNIW2FBb8sMrC/ApKHzAeTihyzWSSUg3KVpH/68//H7rd%20HpXQ48knz3HyxCIXLjyNFJr93S0qlYBonDEcDlldPcHTF56iUq/georVhVXcYB6v0sD1wvLUsQqE%20R+k6PwIhsNZQGFuqhp7CQQABTuDAoIvOY+Y6LRqNBgeHA7Z3Drjy5hs8fbGg2u9/eXZ25eVw9ufP%20za3++I//+BiBpvHddy7bV1//IW+99y5ROkH5LrnOEJ6i2WmxfXjA1t4eRpRlQrvTprM4zygZo0IP%205Tn4QUA1qNMIajTcKqH08FAoKxDaIk3Z5qEMZZlip7XXo60PR1KaACsMPCxOHpR48qiGe2DZkaSy%20wCJJyYnTCdJ3qNUa4Egmk4TBcMjB/j7JOGZ/a4fe3j6+6+E5PkoqOrNzCCnAQLvRwhWCyThCaEM0%20HmMxCCzVapXAd3GUg+soPFchUVhRupGFlNPu+yMZX05HiFiEsIjy6SmB/TDrEw+KUzGlpx8kfxg0%20lpTEjBhNBoySAVE6JpqMGY1GRFFMNIr43K98jlMnT3Prxkfsb+/huR7VsEK90uTk6hmKLOegu8/u%207hZxNOTkyUXieMjO9jpZNmFpeYl2u82p02s89cxFatUmYbXJbGcV6TZxvRbgk+WWogDHCUswEhJt%20pmXodNKAlOUgOYNE6HLf4bg4lQZeUMVYKHKN63q0my2uvvcek9EIdBF6wv6xX2/9L8eZ0c9ZbPQP%207atvvsFffv0vyY0mqPg4VY/RaEhCzonFBdaeehI722b7h6+y2R9z6YVT3NzfQ939iNNrq+T5BFEI%20aqr0TzfDCqFy8cprIqKYSmSPJgEPKJMjSU0+4tMpZ/ooK1DW4giDEAr9gG+S5cV5+vOMKP9ypaAl%20AmYIsFmOciRqnHK4vk0aT8jjiC45nhG4jSpplJPkEzrNgH46phhoov6YuD/k9PIJlKeIdMKd9dus%20rq0w26lRMKEfjcnymErdpUpIToFPgBE5whiEVUhblpVYMMYivSnIluL8FGKn/Ww80jRiQGPR0mAR%20aDSGBEuPUbLHOItI84hJMiJNJmAKbJazfe8eP5ikHB4MqPiKLIlwfcHNmzeRxuGzn/k1/oeX/ydG%20/X22Nu/QmW0wGu7RO9wiDEpSvt1u8+wzz7NyYg3HbVNrdqhVZ8CpTseilIqZ64YPS+gHPqlHWlmm%20v1dpaQArXRAeQtXAgHULKqqO57UYdw8Y9Q74xIU1RsMh19/4a65ecbn4iU/b008/A+HPx0IDP5dg%20ZAr9eemoVwC+f+Ute/ndt/nw1jX8aoVBb5/+4YhRPGJnb5fZ+Q5rrfN4tQrGcRjGE86trbK0eorr%20N97nm9/7Hr/qf5Znn32aIs1QroOUoCR4KDBlJoA2Ja9wBEKPcLfaQsFRtlDORSx92A+dysKU56x6%20mDuVWYN4+FhK9XCSorUUSUZmE3SSIYwlixNwPQIVoLOEOE8hz8nTiP2+xaQFVT+EVCMLQ1bkyGqN%20tCgNj66r0CYnyxOkBW1zJtmEiYlw8HCkV5ajknLWtZl+OAlSCigMCA1TSd9KiRUPmaMHDbLCTPeD%20mDJEBk0GFGgKtM1QjsBxHNJJQq/bZzweM9fp0D/skY4Tunv7jIcRF158hkvPzdJqdhCO4oevvYoU%20hsA1XL12n97BFnmW4LiSM2unOHHiBPMLK7RmFqjX5qhWZ3H9JuBh9REH9sg3IMzjbvHHGoIfWh0s%20Ci3E1CNlEbbAURLHswRhFZtFkFmqbh2dzbC1e8B7b77KrTs3OXHuvH3y4me+IH7G1bafKzA6MjNK%20R72y3e3a965+yKuXX2f7YIdJkeGGAf3hgO6gz37/gN29XbrxEDyH1957h639Q/aufYggZWm5w8rq%20Sfpxl92Dfc7kaXmyOpIcgxWUpcsD8vYhFh1p9kdcUGY1hS5QSiGwKCxSWBwhyomHgocc0YO3m7Lp%20VYIWTIe2ahJyYlmUN1MwoUAFDu12k8PxEB1nJMMxxeEYaSQ1L4Cwgk4KlJRobXGlxHEkRZYTuB6h%2057D8RIdOe55QVaEo66wiM4wHY0Qu8Z0Qd9Yv5w9Rjv0oy0qLPPrFjVMeckogpyXaI7uDwkwNDxIc%20ceTdzkEnaBMzjA6J4hHRJMJaTTIp2NvtcffuOnmeU6vU0YXCdQN0IXjpxV/gC5//TaSVRFHM8tIJ%208mKBwHc42L3PtavvsL9zn6WFDp3Zec6dfZKVlVXm5xdpNmcIgyaeWwEUxpoHGZx4oG4+Mscb84ir%203PCwz45HCk6JmhJ9Ujol7w0E9SqKFtv3D/EVdObmCWtNDkYxO4d9em+/w/Ze96/OPfEMJ86cF8dg%209DMQR2bGKx9dt+99+AE3bt/i1p2bHBx26Q4P2djZZpxGGClwAhevGjJOJrx77X0MgrDa4KXf+A2y%20PObmnZv84tJLNGdn+Oj+XZbXTrK0tIRnDanVpMZilChJaGNQaroUjyivnuUhKynQ5EVBrjNc4SCm%20pLUSYkpYM20MsQ/bJew0ncIijEBIgxGGDE1EQkRCqnI0GtdTzM+0efLUGfr7PVRoGMWa1PVxtcIR%20LpWgilUaYQSuUPhIbJqjs5yqH3Lx/FN89hc+xeHe/gNay5EKR0jSJEfaCOtbRuMRvh8SuAIHA7Jc%20+cNhunaa85g5HQAAIABJREFUUh8D1AdJHBaLlEeZU0lVF2hyPSFNY7IiYRIn5IUBq0owM4o0KUEJ%20BEYrTiydZNgfMR7d4NJzZ4jjhG+98tes39+kXm/ywovPce70CYxJWFhYoEjGSKFYWFhiefkEc50l%206vUGQRDiuB5IhbGQZxrXdR6S88I+wmj9ePXvYXZUqojOgwJVlZyYdMC1iDDEo6DVmSUZD8iyFOko%20ZlpthBtwMIjY39zEEQ57O1v2wtPP9SrNzszP2lSAnyswSq19+fVb17/63b/5Nrdv32Z3b5utra1y%20RIfJSxNbxaMfj7FSUK3WGU1GpFZz+vQaX/rNf8TZs2f5f//yL/jg2nscDHqce+o8Vz/6kNsb96nN%20zFCttdBSkWNK1kdCocvRhYXN0QKmAj1mat7TtiA3GmXV9CAvAUvz0H+kkVO7pEDYRzT/qcZfEryG%20lJyJycgpEFbjG5j1q6jZRdZrMwTapZJIUgKSfsxoMEZoUEKhC10a93RBMhiTFWPqMuDi2ac4sbBC%20d6tLnufl/+dYjJBkadknprWlsIZKpUa9kuFPh/ELpTA4uFiUFEgrp8T89JS1Bms1mgJHSiw5hU0p%20bEqeJyR5wiSNyXXGJE3IjcVYRZFnjMcT0rTAakGe5wyzMa4I0QXkuSVNcsajCbVqi8VFy/r6Ot/4%20xjf4ps2ZmakxO1OjFnicO/ckv/qrn8NzA+r1JmFQx3MrCBUALlK4SHnECz3qPOVBqwuYR3rrjmpw%208zCTsqW6pqZ8X3kzCKnAdUH7VNttrDAkeUY8jjHGUqtUEXgc9Af093c57B6g86z91DNP29rsSXGc%20Gf0URm8UX/43P/j2S+99dI3Lr7/B/v4utcDn+UuX+PSnfoFqvYIb+Lzz/rt8/a9f4db6PYwtsNai%20lIPneSwuznP/zm1u377NOI7Y2Nzk9IUzdFaW2NhaZ2U0YLYzj3EkE52TKY2DwmDR1pILU7qQjwgg%207HQG0NRzJARSih9xJdspyZQhkUi8IxXZWB4dZm+BnILc5KA1ZAVSgycNzcLl4tqTfHj9Fpv7t5gM%20o3I+dWZKJS5NkVZRiAJhBdWgyny1iclyXOEwHkZ4XoBSLmDK0bbWUugS+CZmQjyOiXXMxEyoVCp4%20boDjODjCw8PDl7VpL5udMmJ6mi0WGAw5mowUrSckeUxeZGRZTJYnFHl5kuZ5yV9FUUTvcIA1As8L%206B4M8B3NqH8XT3n4bsCdW3do1tv81m/9Fq7rcv36VTbW79Hr7jDoH5DGMedOr3L+/FPkmaZeC/Hc%20EEf5COGWaqco931pH7Jl5vYICFmrHxLY6lHvlH0EkOR0NtPUnjF9SVFS3EipsK4EzwXHRXk+vq8x%20WiGVR2IzokEfrxJy6sxp1u/d4d6tW3zxN3/TNhZ/dsaU/MyDkbF27d0Pb9y6vnGXv3njNd768D22%201tdZXV7ilz71i/zub/8Oz5w+Tzfe57Df5969uyx15hlGQ3Z7XTzHJazVGPT6fOPf/jsmSYxSgmq9%20wu17dxm9EuPXK6Qm4972JvMLS3ihYihGRF6MRxUtp34ie6Saiel8Z/HAJ+dIiStcMEezn6cy+PQK%20XAD5kW9HlF+ceNAzUnbH5xQkZkKRJUgjCAuFygoCY5CF5amVNZJhyl3/Gkk+Bl3gKwdH+fTHQ6yw%206DzDcXzOP3mB3/zsrxF1u/zyL/0yrUabD6Pr5XLVnpq2q+pS8RIWIzK0yUnyjHE0xss9PD/E8zwc%20x8ORDhWnjmPLZamlOBLw7VF+SKYTcpNjioSiyNEmpzAphU7QBfhhBSvAcRwmaYyUkqXlBULfZ297%20j2QyIc8KdKZRSnF//R7dbo9+t4+UkpdevMTS4jz3797i8hvfJ/SqPP30szz5xAWM1ijpo6ZLI2FF%206eFU09VuxUOO6CEQlSV42fqiEdI+XDH3MSJ7yiEdOdDFw1Ygg8RICVLhzMwixgMyXVBoDbnBEQ51%2036fTaGIdQOfsbNzj9ctvsrO9yT/8b3/LnnrimT9R/k+/UfJnFowKaz+/M5781Z2N+7z62g94/d0r%207E8i9np9nr54kf/+t3+HtdWTWODa3Wtcu/oBH374Aes7W8y2mjypzrL16jaTPKVRrzM87HFH3Cao%20BAglSNOUWrPJ/Y0N/EaF2kyDjZ1tzo2GBNLFNy5RfUJN+uhpA6WgLFMEAmElSpQObC1cDAplFNM+%20y+lxXCo1Gs2jLRKPWQIFaGvRwjAmYpzGJEWOEAJfejiFJSgk1kBuFE+fO48eZ1z94Bp3bt2l3+2h%20Ah+JInRDRpMhSaZp1OpcvPg8GzduUglC7t27x7e+8x38WoVqNcQPPZQrcT2J4zs4nmD55AoJKToz%20SA0yd3Bd98HsIc8rJze5QuFIMe1ROyowNdqWsGRsgZAGjMHIDCPKAW/GOKRpirUOeZ5ibEG9XscW%20mqIo+PDDDzi5fJIkyuh05lmcX+LmR7f4zne+RZIkXH7jNS499yyjYQ8lHL74hV/nhUuXmEQJ1loa%209TauV0G6FRA+1kz77QQo9XiuWnJdZVZ0lEE/NG/aI8z5+JVxahB7CGzmyAAqBWQphdbUmw2cWoPx%204ZA8yQkcj+VOB+PC629e5ta16+xsrvPPP/iQbrfLH/yP//OXV596/hiM/l6WZHB5bxK9dO32Tb77%202g+4/OYV1ne2yK3hM7/66/zBP/knOAL+3b/512TjMUtzM6zfv8u9e3fxfZ96vcpTa09QCWu8/vZb%20dLuH1FtNBoMBBYaZhVnmq8uMixgrJP3BEK9W4eCwy9Ub12k8+wLLzTnG2YSa7xMKB1eWoybILVab%20qYavUBKUnB7tP2JELq+eSjgIWYKQAryjdjBrQRpSk9FnxF52iFYCGXjkWY4VEiGcksh2AoajBK8a%208PnP/TpPrZ3nz//Zv0AnmkE/wpMu1hha1QaeUPR6fb75zW/hF4ZsENHtHvDutQ9JbIa1GuUpvNCh%20UvGoNiqEtQDvpovrO4TVEC8M8AIXLwxKLs538EMXKaHiB9TCCq6QpYtaa4wSKMdBOtPyL8tR2uIJ%20B8cBqcFkE6q1kNnZWQqdISUkSUwUjViY69BfWGQ8HuM5Hr/2uV9hbmaO3uGAra0d9vb2CLwKzz/7%20DP/8z/+ML/3DL/LCCy/R6x3iCpidnUVJf6r8lWbUo5Vv7dR2oB5pmXs0MzK27NM7GmsiRXl7vNZ+%20ZDrBtNu/mPKGCnCVC5QzmpJ0QjQeYYqM0AuwRpKYjPeuvMvdmzcokoiZRp0kSfmrr/9btrb3+P1/%20+gf2l7/4j8QxGP09id08t7mSbHa7vPfRDa7evsX6aEAcesSew9xshzPnnyQR8P5bb/H1b3+Lw909%20Lj71JGurJ2l1OtTqVfKi4KNbN5HK5ROXXuDG7Vu899ZbzD2xRq4143GMCASO6yCzcmmg2dlZ2rMt%20hLQkWcI4idiPNV7NUqsFgKFGFeEqrCxlecFjXOjjAxAND8jPo9cpA448MmpbrNCkImNEzNBOGBKx%20l4wY5mOkI2nUQxxCitGEOI7pjYd89N67vHjpBcKwykxzhns371NxQ8bjiCTPSze2F5DGKXfv3kWP%20J3z73jdRniJzLAUW4UikJ9DKEpORp5ZYJCTDCSpwCSo+XujhBT5u4OKHAa6vEBWL61nqQY16UEEa%20S5rmZEWBlYrclmbHPC8wucEzihCFTA0mKnAjSTE2eJ6HKQpajSYnV05QJCme7/ClL32Jd668zfWr%20H/Hd736bWlhjdnaOhfklzj/xJJ32LP3DHv/gC1/kky++xCSKqfgVWs06aZpO9/e0x2xqpXigmUke%20GXZy1F+nEGJq8JQ81nf3Y+PHbBeP/EGUBZ48UlCVxJMwGo/Z395k4+5t8iTCcxWBJ/GkJGxUuHP7%20Fv/b//onbGxt23/8T18WAEVRfN5xfrp8ST9TYGRdl/dv3uTK1Q9ZPzzgMIrYGo/Zy1ISz8NrNdkZ%20jvhXX/86N95/j8x1CDttNnuHFI5lZWGeFMP2/i5RMuGzv/Ir/MrnPse1G9f5My/g9tY61lrEZFIu%201SwFRVrgVj1WlpY5sbrC9tYWG5v3afkV3KBBL5bU/JC2W0eicK2LUhIpHw5NewyQHgUl+eAijQD8%20I2ASoFVGZGMGesyuHrBrR/SdhLHKiDwQypDamHw44XBzm+7ePvdu3+H+3XsURZkBSekgrARtEIWh%206lUwhSWNEvJMI4WD8kPurG+wsrpCIaFQFqUkRioKIMtyIp1CasqpllKTSo1DhiwSnNTFTWNUAPkk%20Jqg6tPIG1cTH5gWTOCUzBqscCgRJUZAmOSbThNYh0Aob5TDKEQPD5DCiyHIa1RrPP3eJJEkYjUYI%20IVhYWMBxHLIs48P33ieKJjSbTWZn5zi39gQvXvwkve4hL1x6nsXFZe7fuwVBOXgtz/NHyqzyalAK%20DXoqLzBtUXl8NK6UctpfJ5HiUa7ooavVTgc6Cfn4kk1lkSqmHYei7E+0GlMU5RR0aSnylO7hLvfu%203QGrydMMP6gwNzvDndvrDOOIONHk29v8+T/7MyZxav+73/kdZhdXxHFm9F9Jst+I46/e3d7l8rvv%20cPn6VXppwjBN2ejuM4hilOvQTRPu7O+SRmN2JxFuo452Ldu9Lr3tiFhZlhbmePbTv8CFCxd47rnn%20cByPd69dwwlCxklK6Lpoa4miCJNYknGEMBnJKKYe1Ngxlo2NDWbCGnPnnmacxdzfvYudO0HhGALh%20EQq/BBRhkUbgCPVwNR9j0QiMMFghpuT09Hos7VTEL4hFzJCIAzFgS3fZt0PGjiESBWOdcjjoc7C9%20z+76Fv2tA9L+iLQ3Bm343vdfRcc5Z0+e5fy589y/ex+pJckkw1cOhc6pBCHLJ1bo7x1QazVpzXbY%20i3poYzBaYHKNsGXjqiZHuBJHll4oZQ0UOVYIpKNwPIX1LU4bKo5FMGEySSkmGWmalr1bnkMuJWmh%20SZMCkRny3CHJQcYFMjIQZ+RZhs40Iyasr2+wfm+dw90uM80ZdrZ26R8OaNbqFEGVZtPiOA5xlLC3%20e8BgMGBxcZGZmRm63S5hGOK55fOtVqtsQ9H5QwASlmJqqjgqzbBH2Q8PzItH0v7RnKbHzJC2bAQW%20U0vDw+vNEX39EOrQFpOlCF2gBKR5Sn+/x97OJv3ePnmaITF0Ztt0Fpe5e2+T3W6/PC6ky707d/k/%20/4//nf39ff7x7/++XT37pDgGo/8CsT08tIEfvtn2w09sTiZf/eDWTW5vbePUaqyefZL+zRts7+wy%20zArcWgPH9+hlOfnBHsJoYmXJ0ghrM0Q9ILU5Hx1u0zi1xNlPXOLppy+ye7DHK9/4Jq/+zatsHuwj%20PR+jFJM0Z5KMcUIXqVzMJOfW9RssLy6w1Jln3+ywvbfN6cUl8KoMhlHp32lrKm6FqqxQmc7AlpKy%20iRbwpIdRBbk9apCVD4T70gJoyMiYkDNiwiF99mSfHeeQnh2xNxoQFRn9wYDd3T12N3YYdPvkkxxP%20S0SR0gqqjIZjmpUqs7OzLLbnGXcH3NnrkSYZlfYsvvQIwyrVap2r+9cwSrGxs4uquBTWovMckZfT%203bQsEI5ACUkx0QgNMhdYpTECpKNxPBebg1SKTBsKlSHTgiyOMFrjuC4y9EmwpNpgCovMDFma4iYW%20L7V4mUQkBq3LFWezTHPv7iZ7O7v4yuPCuWfw3BBrJVlmiKIIKRykLEjTnIODLpcuXeLsmTXiaMTO%201gHNRgUpJY7joHU5ATLPc0yRIx2v3PPWTBuA1eMeIktZogk5BSP5SF+afJgRTaX8B5cUUfrPrLUP%20Wn9ATxvyDCbLUbZshxmMR2xv3ad7sAtYonhEURT0ej3STDMeDSjyFOV4jEdDjBUUWcq//pf/inv3%207vHyyy/bS5/6jDgGo/9cWRDFyz7Ony41ZsQI+7XLm/ftzXsbbPd7tBYWaVcqtFYFlcUFaneWubWx%20wX6vz6TIEH6FrcEATIZ0JX6jShg0ECZj3D/EWsv9UZdvXXmdKx9d5/7N27z3zvtMRmW6H1pDkiQU%20WQpZTrXdYH7pJFE6JhlH3Lt9h8/9+i9Tq3jcuXGTrZ1NghOrWNfQnRwysTmhV6FZqdEIatTU/8fe%20mzxZdt13fp9zzh3flPNQA2rEWCBAkCBAECQokiAlUXL0Qh1qWbJDCzui/S/YO2nnvVfa2SHb0W6Z%20ilazJZGExCYJEiRIDARQQBWGAmrMrBzfdN+dzuTFeVko0i1FdLcGSIFbUVGZVRWVmZX3fe/5fX/f%20oUNKTCxCNH9Yczu0OHp2SmxI76HCUGEZUTCi4JApW+yzVe6y1+xTuIrdg11mdUU9rWjLGpdYkkGC%20xaKNo6lL6qbi+NI6x1aOcf3GDaQWrK2s42tPVYVEwmldUJYlddOQZCkbJ45z48YNEgG10Thv8dLi%20VchCkaki8iLkohiLTAReepwUqDgKIfwo2hk4q3DOYGc1etYgpCfNBapVtApaZ/HGEzmJrxxUDtX6%20oIlCoU2LM5AIjxaeKErZWD3BA/dd4PWfv8FkXFJMa4zxLC72SNOUQX+RhcGA11+7SISk18lYW1uj%20LacYPHmWUxQFed6laRqapiKNkjmBbfHzQSqUCfAhtzQf54SAX94+HAERd3FMiCMZQAAlgQ/hDNaB%20baFp8NrgrMbUJaPRIcPhAXVdooRDKUlVVZSzms6gJssy3r9+iyjrkGQ9nDYoIRiNh/zHv/4uzlj+%201eGhf/LJJ+mtfvTNtv+kwMjgv3qznv5RkmR/lMt8+P7OraWfvvoqh5MZy5sb5P0B46ahRXDsxEm6%20a5ssbVzlrXff5sb+DjaNUMt9nG8RvsW6hnE9xeoaOciQQrCna3769lvQGqrxjNJonPQcFFPybo9Z%20FXq7fNYhihKWF5ZZjhYYTg843NvlxrXrJJGkbkq2d7dZW11mqdun1jWzqiFqE0ZNziDrsZB26SWd%20oPUhQikVKqUd+Ai8kBgMjdOMadiRNTuM2GvHHLgRt9t9tme7jNsxrW2YzUbYqoFSk7qINEmQRqCl%20pTQ13aUFZrcOGJcFbw/fpT6YorTg/PHTHF/Z4I3X32RrOKKtW/b29nnltdfopBlZ3iFOUsajGdoF%20R52MBD4SeGkQrUW0Oizpw2oIL8BJgYgEcZwi0phsdRFdS7RxmKnFVJYkErjGIxsDeUSjA2eS+IhI%20g2s8vnZYpxFaYTTgBNqHFOwk7iBEzP7eiMl4RiwyEtUJKQfETMYliwurOAvPffuvuH1ri/NnT/Pp%20T38SgSTPM/COfr+PMSHrqa5rVNohjhKCOzCEuB1lfP+n+WnxS0D0Ia90xHw7F3goO+eI5NGWzWjQ%20GlPMsE1LU5SMD/YYHh6gTYv1hqKq0VpjjCFSCcePH+eJzz1N9BffZvv2Hl4lQMPBwR5Zp4eKE37w%20/PfYP9hlePi7PPWFZ/yJM/eKj8Ho7+i6hXkuyZaogBfffmvp1Z+/xnRWcfyeU/ROnmKrmBLnHRrn%20KCZTssGAzzzxOKfPneWta1d49f3LVL5ld+823rcsrS0j6oTZ0EMciM8mScBLbGtopYBOisoThIUk%20zUiShDxNaHXIzxmNJgyWuyRJxqie8MJPXqTf79JJYvJowng8ZqnbxzlHnmVY62iqKcOmpoqmoT12%20fpOnvc58HPPYGEzkabGUumFIybvtLrtuykgXFKJm6meM9RRtaiIJRlisabFlTV1olJaggQY6UYIo%20HVnSQRio65bPfe7z3LOyyWR/wnvvX+XNy5eoyoqNzU2qquJ7zz3H5j33oOsGrS26nbd8SIjSCKzH%20CIdvDDSCpBsSLZ0XWB9kkQhwsYEGvGxQcURjLGba4JqGVknSjkAUlqQLTVXSti1WRggfEzUWXWki%20I5A2AiuIlaIqatp6imk1h7dHtKWmk3ZoW0Pd6jl/I4mihHPn7mVjbZUfDUdc++AKl996jcOD21x4%20+H4evP88u7d3OH3mHtpGo02NNhXeNogoJUJgj2wdxPzCIUjIOzT03Sv/u09Edx+YvJBzzZifw5FB%20+BpcBaaknR5CXdDOxoz3dyimwzuj4qQYY60KtVLbWxgkTz71NJ9/6rO88dbbXLx8mTiK6GUZZTmj%2021cMOjmvv/wq9XRGMS35rd9deam/+NGNtf0nFa62hfqDCfDuqORbP/wJb97c4uSFhzlx4QLbxRSb%20ZdRSoCNJlKXISGGNIUti1jfXifs5qpsg0jhYNpzHqRiZd0DFxGmOcQKPJMtzkjylwVJ7g1Dzrdhg%20gDMa07YoqWjaBu092cKA0mhGZcnO7i5CSBZ7C2RC0VcZi2mXzAhkbehGCRHQlDOIBT6B/XbETrPP%20vpywm0y4HQ25GR3wvr/FpfYqF+srvD57jxt+hyFjClFQ2pKmKWjLinZaISuHLyx61GImGlkJUhPj%20ZgY7bEgqSe5SIifIVMru7X3evHiZ19+8xNVr14mThDjJqJqWqqxRUUI9q2iqBqODqz+8kBzOWLzz%204ENtkHAhHE03JogenURYgTMW6QSxjJFCoasKPavwrcEbAdqD8URGYsYtdtIiCossPVEDXoPRHl1a%20qnGDryxee5wRlEVJU9ZkaU6edojThI3NTabFlLosGY9HPPnkE/zu7/63jMdDXn7xBXp5QqcTce36%20Fa68/zbj6ZD1jRXiJAodb87gbUjazGKFUCqs2Z1AkH6YPy5+eWUfQPgOd3RXNApu7tw5iqQVDk+N%20pELYCabYRR/eQhZD2uEe053bzEZD6rpiWk6Z1BVWSKwR9HoDmqZla3uLmzdvsLg0wBnL4d4eVVlg%202ppOkpGnKbpsaaqGYjzhzYtv0TpzvD8Y/MH6+sYffnwy+q+4brfGmyTi9YMZf/XX/5G94YhPPPU0%20K8fW2R6Pyft9qqaeiwghEgLpDcp+uDq9/9Q9DNYWWF5ZZGd4wKiYMq5mlFVB2zYkcYRrGyLrkErg%20qgrvW6xymNZgleDCuXsRzvPGa69y84MrUEWoPCWpW/qDJWSWsD0t2N054PjCCvWgYTouWIq7VK0h%20URFRqhCRxCSWStd4pWlTT3d9hd32kO16n71qxNBMOWwmDOspYzejyUPciPDBMCstuLrFlxpXalyr%20EJVHtUAjoDYYC67SMNP4OhQhGuPw1iOtwGmH8yDSGOPF3KRw1PoaFOBCBpLWW3NHeSDmmz4pJJhw%20ArK1wTqLlwKvg7DTi8CJSOnwssE7i7cGay3CzPXHRuG1C3+vBWFACIuJwurcG4trHZGG1lhsMw+9%20d3MuqjUMJ2OapqFIp9R1TZQmDJKEoij4/ve/z8sv/ZQ4jml0HYTQkUTrhg8+uELdTFldWuYLzzyN%20c2BsRVUOGXtHt1uT5P0AJFaDiH85JeRv9O3fPcHJ+alJihD24lyN11N0PcaVQ1w1pti7RTUc0c4m%20eN2i64bZZMq4mFFpT54uYqwiyzLW19dZX19Deti9vc21q9c5eeI4w2bCpx99hM99/hmGwwl7uwf0%20+wvILONP/59/y/bt2/zO7/yu/9QTT4qPweg/83Jw7tDZl8ok4ifvX+P5199gXE548OEHOX58E4kn%20ihTKGbI4JokkWaTmAOQRLtCPOpHkuSTNIpbynNWFBXanI3aKIfvFmEKXWGvxJsICVgj8TOGoAI3G%20UZqW26MDOnHKwtoK2humxTjc/EXB/WceZFKMmOzsEkvBoLfAbFpyZfw+XZly5tRp6rpmbzJBJJLO%20oI9IoKHFpwlvvv8e28Uut2Z7TPyMUrYUtqBEo5XB1qCx4CASMqimW4ed1OhpjW0kcSuQlcVUGl0Y%20TOtwlYXSgbHQgLUe4ebKbgRJHBMLian0vLHjruTC+YtJHLWSHG2EhLh7GMHLwP0474JvTUqQAhEp%20hFS41mBsG/rOrMMbi3Bho2Qjj9AKjMVqjTMGIQQuCmDoTPBpKadoqhZr7dyAGz6DpmkYHw4ZmlDO%20aI0hjmM6eU7TNLz77ruUZUmSpVR1hTGeTr+DUnA4GlK1M8bjId2FnOXlZY5vHEcpQRJFRC2oyKNi%20QCXzrHL5C8cjIeYpRf7Dm/buN8Q8XSFkU1mE1fi2xlQFZjahHY1xkwmT4Yh6PGY2LalmNcV4yuH+%20kEnd4GSC8IZWt0F4LxTXr9/g8uW3GY6nHDu2wuLiIsePn+TBB+7j2MYGZ0+dZX19g3Pn7iXqdCGJ%20+MELP+J/u7nF7/3ef++ffuZXXu4sDT4yY9tHekxr4F/fhOeul7P8ncMDvvn971Pqlgceup977z2P%201w3SGVZ6AzpKsTHos94LP1e6OYtJykKSspx3WOx0MKYlk5KOiukmCZ0sJU5iZCaRWUyFwaYSUoGL%20g7veGIMxLXhYHQxYW1lmcWmRJIupqmCTMN6wuLiAUpLd7R3GwyHnT57i6cefIHaS4d4BmxvHyLs9%20sl4XmQdCV/Vy9sspb77/Hhc/eJeX3nyNd25dZ3dyQGk0jW0oW4O1BiUkrmlxVYubGWTriFqBbCx2%200qBHFWZcQWkRpcXPDLZoMUWDm2loPba0YEB5iZIRkYhCMEnQ2oGZ1yQdRXD7+XzhPML7YBydvwSF%20EMg7TK5AeD8vkg1AJ/ABMIUiVhGxiGjqGpxDaI9rWoR1RE7O88EDWDpjcdrirQUXgMvNwStxEbpp%20QymAdR8C4dyb1tQN1lqUlBhjQvOKCieJ8+fuZTwKhQLaGpIsRiUKISFOI7IsZnfvNk1doaRHKYG8%2049IPP4M/zSCkwQsDws7rk7iztg+nSYfHzNtSDAId5k3XgqmgLrDlBFNN0NMRzXCfajjCVhXNbMas%20mDGdFuwdjNg5PKRqNDLKQKQcjiZMpqGcsqwqdnZ28M5z4sRJ7jl5kgceeICyqHjvnXfBeeIo2HyW%20lpZ4+utf53B7ix9+7wdceecdEhUdP7l5/A/SfvcPPz4Z/W38kHa+jiVT4JX9fb7zw+exwvPggw+w%202O9SjA7YXF6mF0XEXrC+uEhiPXkkyOZfmIuPwqwEDlhMEgo0pTNMbc5Bp8NCltDNIvJmQtzLOGwK%20JsVpCB1fAAAgAElEQVSYppzhncFHkriTE0mFihJM6tke73Dz/Q8oDkdk/fBnk9GYSAr2bm3TDkeU%20ayWduMtgI2f3+jbXbtwi6nTZ6OS0CD64dYut/V2u7t/k+t4WM1vSxBZySZLlKBljWk3TNhhviBOJ%20kJbEeoyxSBwqCSNoVDjE1MCoRNsYDMgaVO3wlUO0DmkFurEhyEzYIBrwBukl3nqwIOfGXekDqFgn%208NbjvUN4T3Sn9TaE4govAmDddUKK5u2x3kGEIFGK2IbvgKodIgqljkIHgWcUBZuLEkE/hBFzT948%20JVIKnA9aLO89av7DW7Dzj63mSugo+rCPralrbGuDLsnC2soq2vkQ/ephVtU4EtI0dJ2VbUkvz5nM%20hly94ZnMRqwtr7CxscHmxgYDVtCuRUUpcZQjVDK/yxKEsISvVt1Z84sjYHJHYOagrqCdoZsZuiqw%207RQzG1NPJhTDQ2Srg1dPW+pWUx29bx220RTlGOclxnr2D4MIMk1TThw/wfnTZ4iihGI4Znd3F2s9%20t4Rg+9pVsrTD+Qce5Jkvf5nf/NJXqIcTvvkXf86f/N//F21Z8cyXv+JPXLhPfAxGf9OYHUtuWc+L%20V67wwjuX2KoqPv/Yoyz1Oww6KYtph9Vul6U8p4+gA0SRIAXm5TFzweCHROIARYuikVBIzZgOq3HK%20UpqybPtsu5JbxZAbWA7qMtgUhCBWMSry7BdDtm5dR2/vQlPTGSzRSXs0s4JqWlFIga8NWLj+7gdc%20fuMST33mCdaWN7h+8yYiyXn3xg12D/e5fO09dqcjtHK4XEInwjhD2umAV5jKUrZhs4TwOGVCeqK3%20CGNw1mFTiGRENLNEpcMWFt9ajBEkJiLSAmklzgSjqSAOm642cDbM1d9KhI2etw5h5/EY1iHnAkPv%20/J2RSs5DTaS7wx7hjQ8iTRfA40iRHHlJLD3KWyweqR2xj/A+yGrwEOOJvcA5G9ItrcNbQja2AyEd%20SoaiJ2/Dx4+kuiNSjGRoI1FChqxsa9HoEHUiJXVds7W1NT8RBZMvwmJri5ceISOE8lhnyfOEui45%20xKBNiTMVyAYpWxo9o9tfJMq65HmPRPaRIkUKM7/L0qBEP7rfvAVnsF7jjEU5jS9G0NboekZdTTFN%20QT0ZMR2PKaZj9KxClzVFVVPWGmM9QipMbWh0QVEL+oNlvBdIFA888BCPPfIJsixjNBoxGg4Zj8d0%20O306nR4Hu7tEUUQcJbx9+S22rl/j05/5LOePbfLg6TPs7B7yzW98g9tb2/zWv/odf+qTD4mPwehu%20ZTXWVygOgRffeZdvvfQzppHiwU9+ipPHNoibirMbG5yIu2hnWESwCLTG0VOSeD7RKxGe7u4Xmk0l%20OSCdwMiYmpg1qVjLM06xzNt6jxWZsOwVOyKliIZUakxthtS1pjIaYkG8uUJXKmRj2Lu9C3XL6uIy%20o91D+nmHtfP3sLO9zXuX3uOTDz3KyROnKWvNxbcucWtvh2E5xccSm0lcrGiNoxlPIZGQhiJIY2ua%20tkQIP+8d0zS6QQmPMWHjIxNPlKTQOGThoQYqG7Q5KCIR4azHzrdWygdwUk5hnZ+fesIo4iGAiicA%20jzsiXbljgZDzt+WdfrCQ4+PnmT7Cz7sMj/63QzABwnkwhsh64vnqWzduftIBZd2HY5cP8SOWuU0+%20+CWQXuAajXJi3kEXspCED9VKzs1JeSFx2hLHMQKJc0HVs71zmyhJEDKcxjpZjGxbhDRIFRMpyXg6%20CS0hicRLQ21mjAqJp+VgusfyygpZt8egv0KeLxBHPaTsIEWGkhnOzP+fjrxttsGaJnBgukFMxqTO%204nSNLifMpkNm4zHFZERVVRweHmC1o5hWDCcFRdtAlCIjga41cZwyGk1oqpJ7772X3/6tf8ljn3yE%20N9+4yHe+8y2kh1QIOlGErQoOtm6R5zlKKd5++x02l1d5cVah4pSHz51nY2WVNy5d5vm//mu01nx9%208i/86fvuo7+5/I8CSh8pzmgILzXI43vA9956k+ffeIOpg+Nnz3Hm5D0cT2Me3NxgEIe8wGMiok94%20cncRdIQgdh5lbdikCVA4hPAo56BpST1EQpF46AA9r+iIiB4ZxtX0kpR+nrPU6bKQdkg92LKmrWYY%2025DnKc5oiukUbx2dNGT0NGXF+tIy9509zzOfexphBbu3dxn0BkiZUNYVjbHc3tulbjVpN6e2hqIu%20cUogkxgvIMs6xFKgixo7a4k0UGmqwxLZWGTt8KXFlRapIXERsgVTWkQLdqahckQuIiNGWolvwGuH%20qR3SCSSS2Ku5SRZ8a7GNRXnudLvJI1CaN95KFPJoM3mHUwp+KmE8WBtOLUKFeFzviaUiURHKEUho%20Y0lkhDIC1xqEhZQI5SXemHAqMh5rXDCWutAyghcoL3CNCRzWXdVAcq7lsTYAUJIkWGNCTXdV4Zxj%20YTAItg0h0FYHOUIkg/HUtAgBWRYTR5I0i8nyjCRWgEXrhta0NG1BpUsaPcM6g7aGVuu5Yrulbiqs%20aTG2xZgGayp0W9I2U6pqiq6nuNkE5VtwlqYqmE7GTEdDZmVJ02rGkylVaxhOS/bHU8rGIqIYKyRG%20g7GSpm7w3rE0GJCqmIPdXWbTMcfX1hnu78+3cDVKCrppQlXPMHXFxtoakZc4Y+n3eqytrpHFCW3b%20cng45N133sF5T5qlnDh7+kdC/sNna/+jgpF37pwQYghwq535WiXHD4Fvv/Vz/vR732VsLPc+9DCn%20T55hQSqe2NxgVcYsolhGkgIp0BGCDDEvR3TI+WlCzG1EAhF4BTW/ea0PXiADkRd0hSCRkKkI5QO5%20GnvBcnfA8sICWZwQKYFuK3Q9m/eCOeqiRElJN+viWkMqIu7ZPMH60ipYKGcl16/d4K23LnHt+nWU%20imhbQ6NbqqaZN4bMjxLWEyuF0BYzq9HjGaao8EWDrD2JAVe2QZejCZyLBls5XOuIXYSeaWIShJPY%20yoGGmBjhJLoySCNAO7y2CBviKpSXYMAbF0YvE/gh5QXemEA0O0jjhFQl4MC0hrqsaYoK0zRhPEOC%20djitsY0G41Hz3G5TNRSTgkG3j2strjYI54llACLhAk9lmxB5iwdnTCCzrSNWEYmK8a0GJ+7kBVlj%200XULDtIkJU9zvA2nJYEkTVLSJMMYi/MWbU1QPkuJcxpnDUJ4kkQRK4lS82Q7RwCguqZpW7TVGNPS%20uopJMWY8nlC1LUIq4jgUYHp8MPFajXcGZxt0XVBXBXhDHgkwNfVsyrQYc7i/z3B4QBxFKKnYPxwy%20KatgklYxcd4hHywSpR2a1lCUFdaAM46Ffo9ICHa3bjEdDRnkHbppQieJQGtm4xHldIJta2IJg06X%20xcEgfH+to5iGMs/DvQP29vdo65a80+Hy5cscHBzgtf791aXVP8gGvT/8ZzumGWe/Gkl1J2PlCH0b%20Y//1IOn+yVX47W++9iJ/+dMfY5KYe++7j2Nra2z2epxf6LAADPCkCBIgZp7x40AdsaZHITS/dFkc%20ToBSPrjKj0JqbAhxGABe5XjpqOyMpi6YSUs3TTh/71lOnFrn3OlNfvDdv+bKzW0Wuj16q6uMdvdp%20q5KFtMP21ja+0bx/6T2yOOHMmbMhYfDVVyjKGYuLS6Adworgzncaoxy2Cd+J2MVBtewMaINqLdJ5%20lAgxqkY7nBTzToq5eTOWpFlCEqcYb/A2aHJsqSl1i4ssnThnoTOgnsxwLqz7tW0CGMk4NIJEinJa%204K1DCRESA1xIcVMqIiEikhHdbk6ylJAkCYkKEbJKqZDdPT+tOOdwzszHFajrmtmsIkkSZrMZs6qg%20adrwxJcCb0MSQRylqESSpylCZVgvME5jG0tZzeYtvIEFVEoRS4WI/J2K7PF4TJ7npGlK0zRMp1Os%20tfR6PXq9HqYqcMKjrCCOI+JYkkQe7xRt61DS0LaOumzI84RuLw9iRlcznc1YVn2ccESlZlZpZkXL%208tKMpf4aed6j31mkKmfYVpPEil6WkqWK2WzK3mzKSppSVAXDvX2m4wlOu2Di3Tvg+s2tYMT2gqWV%20Ne47cRqnPZcuvc2161u0dUO3s0iqYiIJXrc475iNDtn6QDDp5iSRwrc1yhnQDVJIsk5OHIGtKsqZ%20ZjytaK2j2x+g0g7FwSGzsiR3hm6nxysv/IjpZATW8NQzn/eLp06Jf5ZgdDcQ3X0dVOaPXF/xg0tv%208Fcv/oTrBwd84rFPcfbUSVazjM0k4bSEZaDvRRi/QsghwrnAZYijBWuI9vTzemh3B4wkeu6cTiJB%20PM+iPgIuAWTOsSITmv4iTnluNhNapyGL6HcWSPQG/8Pv/HdcvvwOzz//PFs3w0zuveZg/wDhBJNx%20wagecuGBB3nmmWcYTSdcfu8KrbZMhlPqtsJXGucNRrQ4LMTBwxUhadoKqw0REFuP0TrUJaeSmGB6%209S4QtViLjxxRRxHlEbYwtFWNqQyxV0QqRZoQkdu6mq7KcFJhlUM7jW0t3mm8MHivWO0vszDocWLz%20GPecPMH6+jqL/QHdXk4n63LfvfeTpjmdLCfLQti+vCuONSQdBm7pbhd8XdfBYGwsRVEwOhwznY6Z%20TWYcHu6zu7vLaDxkf++AcTFh//CA0XhEayxRElbzadqhl3Vo65qmqjGtmYNeINa1M5SzKpDfOURR%20wmCwGLRj3lOW4RQrhEMJSSQVyXzcN42hMAbdCKRyxLGgaQ1Na6myhCSJEZHDJwKkR4iaOKoZTypG%204xnLixMGnUVOHvcoIVERGKsZjWbgbeBy4oRJMWVWlUymM8qqRhjPeDzl5o0tDsdTTp9bo7uwyLET%20p+nkPT547yo3bm0zKwp63S6x8OSDLpJwAo2QSNNSTYZEtqXSLd57MgU+EkQyIlUK3dRMpiUq7rG0%200MfMKTqra9YW+5w9c4r1kycpqpbX3rrIwY1rvPKjH2Drgi9/9VnfOX1OuMnwJTn4+7WSfCQI7DZL%20+fbPXuJ///Y3qfKURx59jAfvf4B+HDNQiuNp4IZ6QD5fPTPnNLw/GsfuDjwPkvy7HEN3nZBCuD1C%20EkVH8a1Hn4ihlyUckwu0PcfY1wyrgsIYlIQlH3PPyiqDRzoo63nttdd459JlZqMRSZqGdbuXOBnq%20ew4ODhhNJxgTChoPDg6w1mK8xjgTIFJZhI9QHqLG0xQt6AYVJygHvvFI4YiEmkecBl5HHVUnW3De%20oNuGlAThQyOJ8hIai2kNiUrophmHt3eJkSRJwmKnz/o9G5w7c5b7zt3H5uYmZ0+fYaHfZ21lmRMb%20x0U/6f7DLS5u3/DT6ZThaMTWzm1u3LrBja1b3Ny6xc7ODpPJhIPbu8F7Z8NJMUkSvPdorWnblqWl%20JbTWFEURbu4oZHDLuY0ljaMQmRuJIJg00HqDtwaPpo0VeR6jZEJTQVXOiOOawWBAf5BxuD9DJYI0%20yfGZRdDi3SFN1XCg9ihnU5YXV1gZLIaxcg5EUgS5wtXr10mEwInQ1TQram5c32Z7Z484zbBE5N0F%20qrrlrUuv8NZrlzi4vUuuUrpJxurSMguDAbapmU0nRHhc2+KbGiM9wswbbrVG2aDV8jKUgfY7Hbr9%20ZVY3j9M0mlvbO3S6fT71+OM8+unH2Tx5D6/+/HV6ecLFy5fYvXqV13XLYpLwqc+UvnPvff/TP/tt%202g74Fy5f5t/85bd49+YWn/zC0zz2yKMsd7uoScnJhZxTUSCbExfGsjtlYmHUu8uXeEeSNw+vCsFV%20H3aB2jsAZZBYAUoJormYL42DZ8zg6XpJT8R0o4QmUqRK0msaxjd2sRKe/tSTPHj+Ab7zV8/x8osv%20EztwZUMznSGE4IPr1/jTP/t3IAUHw32McUSEEP4QOm/xwiG9J5KhRVbQIiuNMw7lPdIR4jOkh8ah%2061D2ePRCk3EUNmLG4iKN1Q7pJSkxpjXMJjW2rIm6Azr5Ao9/8VlOHT/BhQsXePD+Bzlx4gRLgyU2%20u8v/6BqTY5v3iGOb/wlz9HDb7+7uMhoNufnBNa5fvcprr712h98wxgSNkYhoqzYor/sdhBDo+enM%20u3CaFp47PjMMGKPRVoffi2KcEehWIkSoILIekkSglEDN66eiTNDtJggliCOJMY5pO0F4z2Q8JEty%20lnqLnNg8wZmTpxl0e+xs73Ljg/c53Dmgl6UoIzAGZrOaw70R48MpvcWI69e3OBgWlFXDtQ+uUw7H%20LPcWWekvILxjoZMTC0fblCTCc2xtNZDU4zFtVWKNoalCuUAUxwgl6Xa7rK6tsbR2nGOn7uXEqfPk%20eU7VaHq9AfnCElUx5fp77/DoQ/ezfesar/7sJxxUBSmGy6/+DFEXPD3o/xEbJ97n7zHK9h8VjEr4%20X597+Q3+jz//D7x5/Saf+fznOXvf/fTjDlFtWI4TNjo5fSCygRsKRyFxJAMO3qc5GDk/VwMfSfPm%20ByV11ILqJQiHFnKuqRVHVVZh7AvxPKQCBiJhJckY+YRaNCjniVvoxzk2ElgLvU6XT1x4mIO9Qy79%20/A2WOz2aoqTT7WJbzc7ODt1+j06nw2w2C2ORlEFnYw1ChtW2EAZvPaZpoTXE3odGVxtIZH8Uqm8F%20NoQdIb1AmDBuQSgn7Xd7TA5GTIcTIplweuMkD1+4wGMPP8qZU6f5wlOfo5OmHBtsCPXLgfEf0evE%200jFxYulYeOez0LQVN7eu+62tLd5//30uXbrE66+/ztWrVxkOh3diQNI0JU5TkiTBGIPVFqObEGYm%20JGYuR3C4uRk2QkpFXRlmRYOMBHmeQ5xQlY6yHiOTFlULTKtwVuGNI8tSpPjQdjQdDtm6doPt6zcZ%20H4w4uXGC8eGYG9e3ySNBMa1RBnyjacoWbwTWCKaTksmsRfu9oImqNUpExEgW8i5ry0vknZhiMqGt%20KrJIsbG0xOkTxylGQ7Zu3qSpKujkZFmH/sKALMtIsozl1VVW1o/TkNK2NVVV3SkPqOsa5wVrS0vU%20xYTHHnqQtx+4n7cuX2L7g6sMkhg/m9HpdHjkC19+Tp0+I/7ZgdE+7vD5S28v/Z9//mdcvH6Dsw9f%204PHPPkW320XWmtgZ1haXGMjQvxp5jfRqPp/NW0kJYDRPA70jcBFHFNLdkcWOUEqPIo64w3W4O8bP%20+SZJCPJEskDKYpTRqxR7rca2LV2RoSqDTxXD6Zg3rrzDG5ffYjwes7q+hp3VdwykKg46HxlJzFz0%205wlbPOcczgZyWiqFmp9ujG6CiE8ovA4rbj8nkVvXEMmUyMdBG2Q82misacnznEHaxVQt9546x4Vn%20H+CJT32GJz/5Gc6fPc+xePG/+gayRqOi+B8dnNIk5/yZB8T5Mw/wzNNfBuDyO2/627dv893vfper%20V69y+fJlbt++jW5npGmKSuKgO7IGYxqcl8g45EcdpTNqb7FOYozFOE9CAJxWK+rGoF1FnDuSXAZr%20ByE3O0tmJLEklsHjJyyUZcnB7X32t/c5dfI0i/1lkijFmBo9mxFbCa1jMizQjSURCU3tIHFoY1FS%20kXYT3KymnpWYqqGXZCwvL5BKR4xFOovwmkh6lvp9Zt0OnZVl8jxlcXGZxcVFsk4HFUcIFePjhMgl%20tChUiBC4kx8uZcTq6irj8Ziz997L1599lk6i+PGPf8xwZ5u2mNA6z9gozj8y9itrq6g8HSarq8t3%20tuJ/B1KAf3Aw2pkc+M5g5U9ulLOlf//dv+KnP3+FBx79NL/6K19BeUFXhtW7lJBmMRKP0o5+HOO1%20uTvnPCzO5jyR404l1f/PaXvn17tGPDXnj47y+IQH5hnGzni8NGCC9qarImymaEpNspQjYsn27lVe%20ufg62/u7bK5vsHpuka0rV5HaUhyOaYsZaZxQlxWTyZgoSYPtQojguzJB1CfndTjCQaMhS2OUiNBG%20461BeIWQEmEkdVMhfWidRUmUg1RkrPVWOba+yX/zG7/JIw9d4NGHHuFUtvZ3+gT7KADR33Q9eP/D%204sH7H+ZLX3yW6zc/8BcvvsVLL/2Un//8dT744Aqj0QSjawbdGOM1rfHEQiBVBB6MDn1tvgkG3DTN%20iKIQ2RHGuGAMboQLVUqZwmmorUZLTxJBoiTYGd28h7QK01qm44LZoKKXOdIkY+/gEF1VdFSGrlp2%20DoYMp8XcRhK2pcLY4JeTEUmao4SmnIy5duUd2nIFgaEfJzgnqMsSbS3Hjx0j6/dJkoQ4C0WUDtBZ%20jsq7GO+YNRqXxHil0LUG58jzLktphm4MVdWQJBmT4ZClhT5fevoLDLe3OTzcZzorWBws8foLP+T2%201k209cyaamnt2HG/eeoUx8+e5szDj4h/UmB0oyp9NFjh5dnwt//0L7/Fd3/2IrGQfOrEKU4RRGmT%204ZAqg87KAjYPgq9YgK/BxA4/H20kaj6Cze0Jfr6JPgrW83cB0J2v1n0IZj78u+Luk9McmYwUVNag%20vSOKYzKRMaPlQGmK1HDx0mVefu1lhtQ0CvbGQzY2Ntk4cQJTtVTTGqka6llFhCAnph7NQo9ZFKGk%20RIoY5x1Gh9OaENHcmKvQ1qF1qMJOVAQWdKvn63WF8IKUmOMnz/G5zz7Fl7/0JR59+BPcu3Lin1X3%20+n/JderkWXHq5Fm+/mu/waVLl/zFi6/z/PM/4pVXXuLa1SsYa0mShCzt4oCyLBBC0OnlIdZEzKUG%20HrwKMSjWB4tJ285QUY/SN5hY0UlCJnhjLFmk6OYdmsoxmUzpdQZggpr6zOkON6/fwNQtbaVphCNP%20O0S9AVkbNFrj4Yi2rMF7lAiC0CyJSPMMYQ2T0QHt8BbdNOLU6bN84pFHWT95Eq9iCilRa5uQ5tgs%20Q+Yd0qyLilOIk+APVJJZWwLQ0R5Tt9iZxjYtUigiBFVV0bSGJM44d+YUn7j/fi7+vEDhKW5eY+As%20t6cHXHzrElZGGBUTLyzw0OOf4V/+3u/5s598TPyTACOHP9fLOy+/NZs9/hc/+CH/5pt/xt6Nbb7w%20+Gc5v3GME50BB+UYrTxGhajP2rUYmaPch6Bh7/SIWZSP5haCgCXmiE6SwfworUP6o8JEGdhvcbR5%20+yUg8h/u3SzgVIT1grrR1K6lTT11R/LGB2/zk9de5Pb2LWIRMa2mDEcl5WjKQ6fvYziZMh6PUcYF%20Y6kxRB7yOCHNOrTWUDU1rmkginAqDuFhuiVJQlKil45UBq+YcnMzrJLoomYw6PLQAw/wxS9+kV/9%206tf47IPhiWSd4+Prw0sIwYULF8SFCxd46qmn/fb2LX784x/z0ss/5aWXXmI0ntDrdekPlqnrktFo%20wsrK0nxsm1tuTAAnpQRRpDBOYo1HY/Gtg4YwLpkQcySaFqUEbeFoRYhjaRpNUZRUVcUbr77O6XtO%20sT437X7117/Om69f5PWXX0NrS6/bBW1JpCRVEtu2FOWMbt5hdXmRMxvLrC0N2DhxkoXVDUSaIfMu%203f4C6cIKKu8gkhyVdVBJGkoFVDQnRQXShURQHNA4/KyhnhTU0xm2qel3c4Z7eyz2crTTfPbJxxnv%203mLrg6v08px6/zZLx49xZm2ZD25u44ViYXWVyc5tbnzwPmc/+dhH/2R0t9jxlZ++zKs/fQUax698%204Yv8i2d/jRUyDnZ2caki7kTEUuK1CYRu5ELfuQ1Ms8Teibhgzmf7OUg11gaNkfPgQpVOLMIRWql5%20ARmAm+uQ5taGu0WSrXfUQIujQjNzLQ0WI2HrYId3r77HaDIiyTOUgTzN6GwucHJlHSkE3swD5aUi%20jgXGOqx1CBkxmk6I45goinBSkqQp3W73jg6mPBwi4oQsTpDOo+uGRhvSOKaT5fz613+TL37hC/zq%20V7/GfevhFGR90M0oKT9GoL/ptHTqlDh16hRPPPEkl99+0//sZz/jueee44UXfsTW1haDQY+19VWm%200/EcfIL8IY7DaGqtpakqoixC2MDVGe/wyoAxYDw+S9GNIVGSum5RKpzfx6Mpt7d32d8/ZDSccO+5%20lEce+STvvfc+3W6Ppgn/VqfXxVQNbV3RCoHIM7IkJu3mnL7nHu4/d4aNpRAM2BksYJXCRyn50jKD%201XVkbwG6A4hjiDOI4g+P+iLUZ0cuC6ZNJDiBGBjyQUVeFJi6wumWST2DRFAXLcfPnuCxxx9lvLeN%20EJ5qNqFfLrDSH7CfHtJPc9YXFtBC0M3Sjz6B7bw/dwREf/H9Hz3+5//u33Px+vs8cOFBvvblZzl9%208h70zgiMw/qw4pbOYhuHy3WYqo4qz0XoqA++qA8rPv2d5k9PazTGWYTwRErgVYSXEAtHNO+490eJ%20Yf4u8lrMU2skVLQMXcHE1ugEGueYtg0X37nM9a1bGDxxHFFOJmAMG5vHOXXiJB+8+S6+NcQqCmZO%2074P0IFLzOFOLyjKiJMYYg7OWqgyhbnVZ0e0NiGQIGZtOJ7i64dQ9p/ja177Gl575Is9+8Sus5/1f%202IQdva2NIY6ij5Hnb7mkVFx46FFx4aFH+dSnPuV//OMXePHFF3njjde4desWg4Ue3geRZNM0lKXF%20E3ikJAkBKsKqeb6TxHmPa8IyIvIKIodTCq0NZdnMNVAGuMl4OOLYsRM0tWZtdZPr127x3b/+Hpfe%20fDOMhU0L2iKEotPJ2dzcZHNjjfWVZY4fO8bm+hpJGoe6pyQmynJ6iyv0VtegvxDWqZ1uCIBTKrxo%20/Jwg9aGG2MdpiF2xjsgTgGshgW6HyLS40QEn8/MMt2+AVUyKMQ9eeIBbV9/l6ntX6WUpbVGQZJbj%20y0ukSysQK9LFRc6fPPnRByMpxPsOf+47L71y5Rv/9htcv3aDXq/D5z/zFA+ev5/J7j7MSiSCOMkD%20xaND7o4zNsRCILEy8DxyPlYd5QyKOdfj5it6Yyy10chYoOIUIRIcjhaLEvE8g+cXpZBehpNV7SwG%20SYVh7CumsqWUjt3JhGv7W0x0SeNt+FwaQ13XxNozPDjkrf0Jt6/coBrP8MbTOoMwjiiOiKKIpnEh%202VEIrDZ45wJZKiOMAy8jUhVRTgqk8zxw5hxPf/Ypnv3Sl3n6qc9xevFvr5r5GIj+865HH/m0eCqZ%20zHkAACAASURBVPSRT/Prv/7r/jvf+Rbf//73+dlLL4aHhHPzptjggYtUMOB62+BaF7agMkSvWGtx%20rcYIBxaE8Fhr8C5YVJpa0zaGtmnobaxz/foNfvrTl7h16xYXf34Rpw1ZmqJbyz0nTrK2tMjJzWNs%20bqyxtrxMf9ANkSl46PZoEcR5Tmd9k97aOnT7AVREBNF8TXz09HYfdqR7KdEIvJCgLMaFqUEJAbGY%20e/4GyGiBjinwmaLYukWWx3zisUcZHRyiRiVat5Szkt7yCv0sZWc6YXljg+n+Hov7O94vr53/L92s%20/b3ewQ5/TiLef/Xa1St/8v/+KTeu3yJNM/qDBbIkBRdGjKTbYXQ4JF7shqeNc+ChNZqinVHEC/SE%20RwmQXv7ipuyOADJI8aWUc6OsQs27rcIPdceEeWf/T3h4BA2cp5KGChjRMlItQ9+w00y4crjFO9ev%204J0hzkJEK0Kjk5jIhFbZ8cGMajxDaEuiIpwzaGuRUmKko2kN3SylqUqcC27/TpqFCNZGY6uGSVFy%208vgJPvf4E/zaV7/GV774K9wzByHr3Mej2N/DdfrUveL3f/9/5Otf/7r/4z/+Y179+cu8/PLLjEaH%20dLvdIDWRkrpsSKJgVPXeI5VEeXCtx2qwSgSLDuBxWBvEmN472rZCCdjbHaKblu9/73msMdR1y9Jg%20IejVnnyI9dUVjq9vsLq8GLhDb1FxhFTBiNuoGNXtMljdpL++Dt1uuJFlDGk6PwnJudwltIoELApR%20uaFKIRCrQql5EK4NLyHhiQd9aAq6x4/BtEMnlhxeu86x02c4d9+9XH7lYtBH6RY3K7GdGZHRKKN5%205ScvcOXmTXyve2X9zFkefuwz4iMDRg5/TiO++vbtrT/6D9/6Di+/9jqNUTRVg24qvv3t59i6scX5%20e06zubTEYHUZF0ZZhJJ46Zk1NXvTEf2uQqZdMhHU0kfHmg9PSZ5IhN1+rmISKfBKEiOI5kyTwocE%200SMAOxrNBBgcDY4axx4zbvkxO7Zgqx7x7nCLK4fb7DUTzGSKLaqQoFi0NFVNOzO4GoSx9PMOxrco%20JxEyQRIsHCaoMcNN7MPTFicohlOqsiRTMcuDJZ556mme/fJX+I1nv8ap5fVf+GZ+DER/v9qlkyfO%20i//lf/4DXnn1x/4b3/gGL/z4h9y8eZPpNLQBp3FER2V4a0KkrfJIHMaEum/vJNZonAtaNWssUTRP%20zLSBnJ7OGvp5xu3bu8QqIpIxs9mM1eUVnnjiCRb6PdI4DrXhTfP/sfemwZrd9Z3f57+c7Vnv0n1v%2071Jv2pGQBAYEAgwyMBgE1rBjA7ZnGGcmqUkqldipVKpQpVJl5sW48m7ArsyEZBY7dnmdGMbYYJuA%20EBJooVu9q/fbd3v2s/+XvDhPS1CTBQwY23O/Vbdud1f17e5TfX73t36+1FWFtJIwitGthFIHtHbt%20prOyAp3uS8tyTsoGzXvT/NP5pi3gGgMFSVNW1kiQzXInCKz3WObQPNVQolAS1esDDikUwWhKXZTc%208YoHmK4PuXTqLJ0wJJvNkDog6fZIt7d58do1tr7+JHUUcfy+VyK18nfec7/4sQcj4/0jWogvVvDI%20V574Ol/40p9Tesc0r3Bas3vXKrPZjG899yzbW1ssdXrccstB9t16CDM3/rOyAeBvZdCfH0kKBE6C%209hC4+V6Rv7nm3+BApNIIqeeOMhbhGn50IOR3Tc1ozoOwwlHNA1GFYp0pl7Nt1kXO1WLExeEGG+UE%202hGxMcwGKenGJswqKEAUlmJq0KWnHbapyhSsII5jRBBS1BXCe5I4xlcGLRWRbvy3srqg3+rw2le9%20modf93p+5t2Pctveg39rtqP/LuqB+18nHrj/dXzjqa/43/7t3+YL/+GPGQ7GtOM2WohmjuIaAoSv%20Bd6pBpAvNdbbOZakQZFIKXDOU9cO70ApTV7UFJWl1WsjPGxvbrN7cYmNjQ2OHDpImqbUVY0OQ9rt%20ZL5HB8ZZWgu7aS8totrtpgckBSIIkEjyokCFQTMLdgbraryrm0GOBIGmE3Vfytxqa6hs420nVIBX%20gtqVtHQLfAUixJqU/oHDXDt5kv2HjnDbnWtcOXuWSIdMZyPSyZi2DtiaTbk+m3EtTRlbS+kt97zy%20Xu685/7vb5ftR8EzkkJcAPjTZ579rc/+y/+V0xcuIoKItK5o9Xvsu/VWwlaLaZpRGcN4MuXUubNM%206hIXSDq7lwjbLcq6JC9LvBCoQBHoaD4ME80o29OgKzzY+TFrkyAJAgGBl8092JwGeNPWvGmy3GxW%20G2ZUpHgusM6GS7nhck5vX+PkjUsMTE4dCExVwaRApCVVVkFWNYTF0uJzg0lLZOWI5o4bdVk1jU2l%20YO5P72tLN0lwxlJlOcePHOUXfu7j/ON/+Ek+8Mg7xe7uwuNSiJ2I8DdA+/cdevyuu+741G3Hb8MY%20x4vnz1NmJVhHEicIIE1TAMIoakwua9s0iKUkCEOEF00D24ExjihMSGcztArQUlJXNQu9HkuLC8ym%20U44fPTI3ITDNrWQrZjAasrRrGREE7Lr1FnQ7QQcRhBqhdJPdz+8cG45ShbMlwldoYQiUJ1QWfZOI%20Zw3CGcR8qdZZg3MWi0XrEAsEIoAoQQYReEUoIzavXWVvt4MyNS9euIjznnanS1oUHLr1MIPpmK3x%20hEOHD3PrsWOs7N3LgQMH3q2j5LM/tsxoWNVPVUI+eOLseX7nD/6Itc0hIoiZVTWFsQyuXaG3d5VD%20Rw5TmZrBaESoAxaXl/j26TNcnw05kE/Ye3g/S0tLBC3JtqmZXr+K3y/ZFbbpobBaUhcVynoiIQmU%20RKrv4FnY7+gn3cyGZPMvts6RFQU+0lipyXBcZcSWS7maDbg42+LabMggmzI2BZmvcNOMXmEJjEBZ%20gbUSagu1R3uFUhFlWlKUNQGaKIowxpDOUmSg6Xc7oGpGm5usrq7y9z/0Ef7+e36GO4/d9unlIPmV%20ndf/b2JAulXsf8+trKzs9a979U/wm5/710zGQ2xV46VEqAjjDNoLAh2idYipyoYcUGWNHZSSxGFE%20HMeUZY0KIqSzlEVNr9vm0P79tMKAK5cu8vyzz/HqB+/HqxilGr7U8vIypqxoLS02qwY6bHC88xzH%20z68QhPdIOfdlEw5s2QSduZk2UkFlm/4Sje+etgY7NzrwQmNFU2IapZrgpSKIQLZLgs4CshizeugQ%20C+fOk2UFaVlQ5CWXL15gsdvhvqVFBrXh6osvcs999xG1u78C4Ix5RH4PB7Y/9GDU0sFnR1n5mf/r%20iW/wtSefYZwVOBXQX1xidxSxtrWBDhsM642tbWazGb1eD59l1N6Srm8wsAUb6ZgDtxxiZc8KrTgi%20ChVntjeYtnrs6fXpi5AkDpqrfA/GejxuDpO389JNoWhMCBE0Ey6pcUrigpCcihEpV+shl/JtRoHj%204niTS+MNNmdDZnlGVuaYuoJxRjmoiGaG2CqMaPAVuObCXiOIkhaVL7BlhatKkigiCbqkRc5wY4u2%20CnnkTW/lPe9+lDe94WFuX923kwb9LdBDr3ujeOh1b+TA6l7/Hz7/BZ742teYphMQCqGgtu6lwVWg%20g2ZCaiq88SgJ3nqKPCcvCvq9DnEYUGY53vuXECdlnvOtp7/BkUP7ufXWW8myDGcsrSimKkqSOEZF%20UTM5U/MbTd/0J8TcHBLvkN5iXYEp0wZ1a5vGe6gjQtWFoNXsIYmm3WFds1F885IB17RCmumch1gh%20WwW618OajJX9Bzhw9CjPPftt0rwkKwuqjRt05V4W9u8jFJob6QxTlgjVBCD5PV76/9DLtKnhM5//%200l/s+9y//S0urd2gu7TMPa98FR/52Y/S7nfYGmwzS1NGkzEbm1s43/BdxumMhV278EpTWMtwmrI5%20GjItcogjonYb5x21txTWUIm5kd/cHqaSzcjdKJpGuJZYKbG6eciVgkoJZpSkomZGxXo54tx4jWvF%20kFnoeHGyybmNa1wdbTKrGohXnea4SQrbM+zGDDWrEaUnsoLASZQRiNLhK/MSP1rTsIazWUqWTom0%20ZmVxiU9+/Bf52Ic/ymM/+YjY1ek+vvOa/+3SsTvuevzO2459qt3tcPHSZa5eu0q706XTbTOZTHDe%20o3VIEDT/L5WUzZquNRRFSZzECNVYPCnhacUxy/0ecRAgnGU6GhKFAceOHSPLUuK4mba2koSw00Yv%2074YwanaK/E2AhUTMm6cSi8CAKcmzMel0QDEbUZcppq4IZICSqsmupAbm6GEdoYIArUK8byiazb1m%20M+3xdUWdzTDTEUkcIFXIC6fPMJvNELqZyg2mU5CKzkIfFYUcv/0Ojt51zxpKP/1jK9Oee+HMg3/8%20+S9y/cYmYdQGGdLpL2FRaK3ZXN9gOBqysv8AnaTDrMgZjSeoOGZ9c0C716UVtvFeMRqnzOrLbOcF%20V3YvcN/xo+TUzHzNuMwY6wlLcUI3CImEINHR3BmkSUOFaLhGQkKNoaAitTmj2ZhBPmHqClJtmYSW%20sbOcWb/Cpa01htm02VsqatSkxAwz2Jqhph6XmzlDW6IdaK8aH3ShMKZGOU+km5wsn5a0kohHHn6Y%20d/29d/Lxn37fTib0t1yHbrtTfHT3yq8evPXWX/7N3/x3PPnkk2wPx3QWFimyGbU12Mo3ppTeNtvx%20NEOLJEmo6oK8qoi1oNfrsbq6SizBZFNC4Tl35hSX77iT1dXdBFLirCXSzU1i02f4jkGMl3NXQFBS%20zJuiGuF0w/TGY7DzisGSVjU+hAjflG1aIiQorUEHc49BB8407w0OlEAEgBZUUmB1yMKeVe554H7+%20/EtfJlABVVFSZzOUBFOXtNodTJFz5omvfGZrNPrMyup+jv3Ea8VfazA6eXHD/9G//wLPPPc8C4vL%20DPOK7dGE02fP8fVvPoWwJVVVcPiWo8SthK3RuIGlI4iCgDTNkUFI2G4TtyJkqCiF58ZgyPp4wCQb%20s2/3Eod3r1ImHYq6YJJNaClNpCRJFM7N/PSc7tcwro1xGG8YZkNEIEnLjEE+wbc0dGPWpyNOXHiR%20a7Mhw2xKmudI5xGzCj2rkamjmlmiUuAzS5kXCAuhUGgh0Si0Bi0DbFkxGQwQ1vDKe+7mPY++i7f/%201Nt48Ja7dgLR3wGVZU5ncflX3vmex37l+O3H/ec+9zm++MUvsr6+jpbN4EI5iHWAVqrxnrMOj2dr%20a5tONyGMI6wpKfMcW1foJEErSbvfZTIac+K5Z9n7yCO4uqLV7eCsRSndjH99493kvcD6JrP5Ltum%20+TdhpRRhpIEArRxBGFGKhnAZCTUnVChePnEAW1dYa0DMz6fwoCVSewigEI7cQSUVr3n4YU6cPMXm%20xgaTyYS41WJtbY12WWOShBNnzjCrDCIIufPue3no3AX/k+9+9/+RdLsf+JGXaWubM/8nf/Zlfvv3%20/oALl69QC8nmaIIRElTIjfUbTF88xy3Hj3HH7XcymUxY39wEKVFhc0SaJG2ch7KqqZ3H6wARBVil%20qLzl2uY10irDmDm21TkclsoZ0ipnmE8ZFSmDYsagmLGdzdjMJmzlMzbzCVv5mJHJqLRA9hLqRHF5%20vMm3zp/i+YunMaFgVmTNTdgkxQymRKkhSh1qVsOshtIhaoevPa5uPOBpfPwwZYkEuq0W9951Fx/+%20wPv5xIc/+umjSwce9t6/xM7Z0d9e6e9AqSzvWn38LW992+OdTutT586eBe+o6xprLFEUEQUaVxvs%20HAuSFTk61CRRDM5gihJvaoSf42qAONDMZlN271pmaXGZMAzBO8J+HzqLoAIQDXLYefBivsxo7dyQ%20woGrMbbC+cZnLwwUIoowQR8RdZBhjJbzA1or8c7irMU5R21qhLdI4ZDCNicOdUY+HVGMJ3jnqEtD%20v9fHGsfFFy+SFjlCaYRSRN0WvYUFTp05y/kLl1he2kWn1cV4x+LK6t0re/c+/iMNRuvbhT93+Sr/%209nd+jzMXLjUMFSdwKAIVM94eoaSmtWuR/tIiZW25sbmNxaOjGOMcrVYLpSRlkZOlM/I8w9rqJUdG%20qaDTTSiLgsHWNtPRCIGg3WoTxAFOCIyz1N5jvKWyhsrVGOcwzmC8Iem0mFUZUis6y322Z2O+/tw3%20OfXiOQzN7ZLJSswkw26O8ZtTdOZICvBpRTFJUU6ghUYLiTQOV9X4skJUNSYvWen3efRtf4//+p/+%20U37mDW8XLRl9EdgJRH+Hdc8r7nv83rvv/tRzzz5HVVSkaYYzzc1abSwqCGh3OiwuLZClGWWWEeuA%20QCpMVeGNQX3HqL8qC5xz3PuKeyjyGWGgCJIWLOwCHYEUTadgDld23mO9RQd63j+aH2y6JuvRMkDo%20FugmEIUqaG4nHThrMcZiTY1Uzc8FBi1BYpt1gDylHI4hL9G2uWkYjcYcO36cbz77LDqMGIzHFNYx%20HE1Y3LWC89Bqt7ntjttZWlxkeXWFIEk4ctvtP7xglFfDpwL13bsDF25MPvU7f/jHnLp4la1Zxqys%20mM4KukkXXzqWk0VsWZMJR+oNVocQhcyKksoZ+r0erSRmodvGVgVlNsHWObbKKPMJdTahzqco50lU%20xHJnAeHg2pUrXLx4CSkD9h84iBASZwy2qnFVRS9MKMdjdrU7hAhMWSGcYGlpkeFoxJ98+c84ceIE%201nhMUWBmOW0rMYOUemNKVIKa1thJTjdsM53MiOIIX9eUaYp2nkRIfJpTjafce/g4/+hjP88nf/bj%203LH3lp3o85+Q9u4/+PgD993/qU63x7mz59nY2qa3sIRUAWleNm4qUoI1UDviKKKdtDBVTV0Ykqg1%20396GpcUFJsMBEsMdtx3BVBkiipBLu6ilorZ1Y/8daIq6oqgrVBCAVLi5Ba+SCWHYIQr7hOEigeoS%20RSGhmi8AzyfBN+29hPDkZY6SDXhOe9/gR6yH0RQznEJaUM29AoUOcFJz+Lbb+PJXvkZpIAzbpGlB%20nuXs33+QheUlhqMBDkuQxGRlzYOve+jxH1rPKAm/265kbYZ/+vkXOHnxCle3NqmloLXQw+kMpKcu%20MyokSkIrSsimBTfqDVrtNkIGSK9wVuKMIB1lVGmBLxxCObwE13gX46qA3ArKUQr9iqV+j36ygMBx%209coaw80tDq6ucvjgPtphC0xNOU1ZaneJvCSdTpBRxEK3z2B9m298+5tcOneRKivxlaHGNMeQgUfP%20DDpzyNpBYfClo6IiCkLiMGJjYxtpHItLC2xcugplzdve9BY+8tj7+In7H2TvwvJOIPpPUMfvvlsc%20v/tulvpL/jd+4ze4fPESYRii44S0qLGVo9/uIltd8ixlNJoQa0WchA0gPwlIs4x+J0EHiu2tDdbX%20rrC0uIAtc0Q2I0g6BEFAVVf4ufGnDBRSafzNG8y5qaQgbEpA7xDCopQDaedX/GJ+wuCazGpu8fWy%205necxkFpsHlJiCRK2qRliXWWoja0u4u8+rWv5/d//w/Q0qBkAE4wHo6Ium267Q54y7XLl7j7/lf/%208BrY3plHhPzunYEzF67ypa9+lTMXL1Aq2EpHUGdE/T67D+ylTBNCEdDtLLA2GOFzi6uB3DZ4WRVQ%20Z57RNENrSV1LnEnwOKgkxoO0AlE56mpG1AoIugskKiBSCrzFFRXbgyHj6xu4NGN1cZGjtx5kWlVU%20RYmrDN1un0pKJlnFM8+d5Omnn2GYTxChoKiacjDPcggsVVbiaosp3HzL2uBthrCOfDylEyf4subG%202hrtOOZtP/UOPvK+D/CeNz6yE4R2xAc/9rNiYWHB/7Nf/TQnT55kdXUVrCFNU5JA0o4TgiDAWINx%20jqqqGE+GdKJljK0xdU27HTHc3uTyxUssdLtga7LxNt2FRdCSwFuMtaggxEtNA9/x83a2avrTQjTN%20aekbbreWzakH80a4EvOYY7DGgAb/nYvDzkNVk+clWV7iJxNCoSirCh1HWOcQgeChh9/A17/xFGde%20OEOYxBTGUjjH7iig0++gkwgfhtx1553/n8/t+yrThPhuNMCLG8Z//kt/wZ/8xVfZmk4ovGH3vhX2%203rKfxV094kDgbYGkItASqQPa7Q6tpEF+FsaBCnFeUaQFTgQ4r5smndR4LecjSI3UikAKkiBAC0Vd%20lLiyIlYh3bhFEoRgDaPNbS5fvIBw0G01kTkOIhySaVnx9W8+zRNPPslgPCEImwdaFyXSCco0Q1QW%20V1h8UeNLiyst3ty0hLaouV1SMU1ZiNu8953v4h/+/C/y9lc9tBOIdgSAVJLjd93x+L133v2ptbU1%20nnvuOXav7CLWqjGgnLuKCCExVYF3Fjk/9o4CTaAgDgOcbW7Ldi0tELQSaqmJ4xYiUI0FuZQ0xr+W%20l88ZX3amEELCHIXyElpEKLwT4BVC3SztBFY04/4wDAmDsJmklTV2PGU2GFJMp3SDuPFiEwKpQ2pj%20GU+m7NmzF2cdF85faK4bshyvBEGrNR/+Sdq9HufOX+D82dOfunD69KdaUfiphV27H/+hjfa/feo8%20X/36N1nbHOIDhfCSxe4COjBU+YTlhQ6vePD1tKOQ4aRgY1pzcX3A9iQlDFtEcURuwDkJHUkt9Etg%20Oi8MaN/EpViiFOxa7KGFY7i2xeXxkOXFBW49dADV6xGpxuu9FbdwQvD8M8+xfWOD/fv2cNvRY+TG%208I1nnuEvv/YEG9sb9JYWKbKCLE/xwlFUOXhPpZqRvbCaurYNRoCmuRgKSShha32D3f0lfuHjn+D9%20j76Xu/bfuhOIdvQf6YGHXyf+S/tf+doavvLnX+bIoQMU6QQvBS0RNw1oIVFKo6RiPB7Ta69SFSWp%208vTbMbPxhCuXLnKk20UmHcrRBrGvoNcD1UK4plxTUmLFzdyI+ee5rZWAxkFQ4pBYJxBCotDN1rVS%20cyqEIxBzqwoLNs1JxxPqvGjAhDQN7jAMyeuaJGnhhcILeO1Dr+OrX32Cjc1tCjPA1I48K3FasjWZ%20cO7yZc5fusKhI0eJkzanz7zAL/6jX/K7971sn/1XDkZXh/hvffsUL5y7TFkLWq0O9z1wN4PtNSIE%20P/mGN3P/XbfzyrtuJ9KaSVnxlyfPM/jTv+Ty9oCwt0g3SEgHEygqSFrNw5PgvWkafbJx0GgcYx2L%20/T77Vle5qi/x/OYWo60hVx1kCz32r65SVyWtMKbfX2RkLIPBkKtXr7K1OUDGEV994husrW/R6XQJ%20ZMTW9hZVXRHGIYwzCIIG5RbHYGQDxW/I7GBKTF0xms64df8BPvjY+/jwY+/jvj07gWhHL6vMC6Ik%20Bprs+TVvflj892Ho/4c85fSJ57Fl2TjSKg3a0up0aGlFOZ0QST9vYmvqukbJFlJ4hlvbTIcDFnoL%20lNNtlLcEWtAAljzKORRRgw6RNxchBW4eQOx8kitp/OKcUA26ucEcNUuTQja/hgNjcdMpxWBENRoj%2085rQQT6boQPVmEDW0/k+U8CzzzxHlhXkRUVZlljfrAiUdUU3WmIyGfHtF06y98B++t02w/GYZ775%20NNcuXWT3vkM/WGZUGj75zAvnePbUWQbTgiDu0+3topg5fC555ase4P1vfw/5aINn/+KbFLMxemGB%20/qFbSPp9SGJsoCFJCPpQq7x56YOwGSWaBgCCrFFzprW1FlsbDh08TCQjLl++QpVlDAdTijRjqdtn%20od9jOByzub7Oyq5ddHttag+nLrzIYDLlxsY2WsUIocnGGa50SCtw1kClm50hD9I3IHbKOZxKSryx%20KOs5tP8gH//Zn+NDH/ggt3R3GtU7+m7dDEQAcbexB7//odeIf/5rv+b/u//2v+Hs6ZPkdUXHGkKt%20iYIAhcPLxjRyNpux0FoC6yjSjE68QJZlrF+7StRfIBJgvENiUN5C0kGpAHxjAGF9Y6skviMz8nP2%20uxXMFxybG05rqoZ6IW2De/Yeiox6OqUeDLGDEWo6Q5eWwEO336eyhiLNSCdTzr14kdEk49nnnmdr%20OCItckbTWYNLCTTT6Yx2XtDpdFleXGLvyioK6LQS2kl003X1BwtGl4b1Z545dZrz1zcoZUSnu0B3%20eS9eahaW97FnzxGE7rI9vIYVCVFLM6kl1y5vUakWYW+VaW0QTtNd3kfWqSi2hqAVwluEtzhXIsVN%20zGzjXT9Lc2rnScuKvKgIowhTlWwNJly9sU5RV+xd3UWRp1R4Ll27TrvbIu506akAtTFobGG2p83a%20epBQ1TnlNGvcH8oa4R1yvteEaR6W1B4qT7/d5qPv+yDve/S9HOnu2glEO/qeddt994r/7L/4J/7X%20/8W/4Otf/RqjIKWfJEjnCOKAbr+HcpatrRusLvYRGLYGKb1OB6xh7dp1dh04RJTEWClI65q2EKjd%20GmLdVBKqKcYUsmF5vWTz3tAfLRYvPEo4oMEiK2+QqnFaxjuYTXHb29jBADnNCIqKuG6+OVsBa+s3%20uHxtjayqOXHmLDUgg5D9+w4S6C02t4bNKUoUcm1zk9Jbbjl+nKNHj6FDzdb2JrtX9nDn7Xewurr7%20r97ABhhWPPXMucv7fvcLX+Lp0y8SLS4TLa6g2l2idodJURG12hihSY2ltbRCd+9BNivBty5usZEK%20UqvxuodMliDoYHyIkyFShASqwboGAmKlibRCeY+xjhLFidNnuH5jHZSmrGpKUyGVYjqbcGN9nTCK%20EErT6fVxwDidsXtlD0Vdc2Njm7oy2MrgKoMpKnxlkE4ga7BZwWK3Rz6eEqDoRC3SaUqoFLt6Pf7B%20Bz7Exz/wIY6t7BfWOXbYQzv6fnTkttsfF8586tTp00xGI7SSeO+JgoDpaDiH8IXYskIJ6HRaKAmB%20UhjnGAy3ufXwLYDA1BapAoosJUTMlx3lS3WXcBasa/hF3iOEBQzeVyhXE/ib/C8DVQnZDHfjOvna%20GsX6OnIyo2MdQWXwwwnjjU1Onj3Hi1eusLaxySzLEFojtKbd6TZb4E4wnaYIqciKEickKo5wXrBv%20/36KMqfVboGQ3P/ggzz09kfFD5QZjTIePH3hMmvDCbrXJ5OavKpQShOFCQMmnNocUVy8M2TIngAA%20IABJREFUQhxp2rMcKeHF9W3OrKfMfEAR7kZ0I1SUYCWIokCqNtJWKF8i6xjqGCUqlKrBZKgyoxIS%20LwVYh8NhlYQwRktPKCWtJGJaliTdDuMsYzweY23N5Rs3yLIMbx1i/iEteOMQFsS8PdVNukw2hvR7%20Hco0R8WeXhiCg/c9+ig/89Pv5vBKg/3YwcDu6K+i9/3sx8VsNvP/8z//NWpraIURl65c5b47b2e6%20udFM040lqwxRXhIoiRCCwDoME06fOMnxu1+BiARVlpLOpjgEzFLai7uQQdRA0eZnIzepkwiBEhXS%20VojKgLVQG8gyGI0pZxPqNEUUJVFVo8qKcpaRbQ0ZXr3B+nDIMFDkQqKlwkhJWWaMi5KgbKy4lpd3%20I9R5JuOMylmcgLKskWnOaDIlimKSbgsvJYePHvuPns33HYyurg35+lPPs7Y1Iu7vIrfgwwi9tMS2%20KZmGzeLW2rVrqEgjQk3tHYOZofA9RNhDJREqinFaUjuLETmooLF0chXCpFCnWFFSC0PtCmyZoqVH%202gpX1Q1Y3DuEUwjZlFWLu1fAGtr9BabjISdOnqI2JUtLSywvLjVQrKq5AxJ1M7LHOoRzCOcpi4JA%20KvLJjHYrwRYFnVbEo48+ykcfez/3Hzq8kwrt6AfWJ37pn4jB1rb/rX/zrxlNxkTtNpMsb8xDbUNs%20xHlCqQgCh9LN8q9OJGvX11nZe4ADR44xKUu8F6SjCTqu5y2FkCCI0DpsLv1v+nAp37iClDk2LRBF%20RVgZRFHiswyZpeiyQeakwyH5aEI1SfFZCZWhnURMnW9u04xhWpakWUllDbUTBFHC4T2rJO0udmuE%20UBotoDA14+mMaGObvbfsIWn3WN23n2O33fWDBaPS8cmTpy9y9sU1rIzwQYQxNQjFxmjQ7Ch0u6Bg%20KjzOQVUbiCLUnl109QqoFgQCJ8XcfsiiXYLyPUwxQzmDcCHetWi8OyusLaDuQDZFmgbZ4V1zGOiN%20wQuBFwLrPMsLSxw5coxQS8qy5NSpF5iMZ0zHM3Tt8LVr/KnsfGpgHcI3EHNhHXEUNlwaPBLPw696%20Nb/08U9w3+49O4FoRz80/YNPfpLLly7x+d//fVb37WNza8hCHOGdobIN76ioPZUFKxSoACEDrJec%20OnOB3ftvoa5sAyrM0sYOazIGIamlaugViDlgBBAeK2psXSGLGlXUUFaoooKigLJmtH4DW9VURUmZ%20N5BAPE0JqDSuKEgnM7ZnM6Z1hU46xHGL0XTGNC3Y3B42CBU8SqrmZMU2PnTDyYR+vozx8JrXPsTK%204aPiBwpGL1yxn/nWiQtMC0fUWWJqIUpaRN0+6XRGe/cC7SjGSUElHD6J0IHGRSFxbxHrFIYaJ3wD%20kgsUoZ4vbyHxdQyuxluFFwmGmsKUeJegTQs9FoRliA4rdBhAGCGqCm0t2nmKoqKMKy5duMSRw7ew%20Z2Uva9euU5Ylg4sXaXcXkLVFGtvYyniH8G5OhRT0+gtMRluNle9kxkOvfRWf/MTPc2Bp8dM7r8+O%20fpjqrewRP/exj/mN69c4/fwJOkGAVxopPEoHIDy1kJQWSguBU2wPUhbQXF47T3d5N3e+4hVM0xwZ%20aMrplCBOkL4ZTCNuOn/Il17yPJ8RCIgsyKzAjzOK0RgzSzFFhXSOqiopypKyrrBeNG0naymNYTrL%20qKqKMAzpRgm91RWs1GyNZ8zSlCef+gabG9tUVY0Wgto3vPogCKlKw3g6ozPLufeBV/0/PpPvKxid%20OX+VU+evUfmAqha4QHH/fQ9w7PhxsnyGq2sCKcirnAoQ7RZ1EDBxhkpIlA4wwuKkRIYCGUiEAusM%20zhuEl1grcU43sHwrkJUntwLlFLGtUVo2gP7aUFFiK0OR54i6ohACm+e8ePoMl86/SJmnbFxbp9fr%20oeI2lCV+nmqql9jYAikF0nuqqiAKQrY3NrnnjuN84ud+jrfc+8qdjGhHPxI9+PCbxIcvX/Gf/h//%20J6ajEd1W0mBrhUd5R+UM07xESoV1UFcZtffU3vLcsye4/e5XYKqahU6HoiiQqm6AbjS+jHr+WTU8%20WaK8wFUl5TTHjKa4cQppjjQOLQQqCjEOMJbKOGohqJynmAejws7pqlFCnefUdU3lDZPJBGNhY2OL%202s5dlAFjDJW3JFHY8O6HU4LWEI/8wYLR9ZHx3/r2GdZHGUHcZ5TO6PSWeO0Dr+L4kT7aQTUFbT3O%201hg8JoywEcyASWlodQRCW9AKAppDWgzGVhhnyPOcsq4xXlAC06piWGRkxoCzGC2hiCjClEJItHNU%20zjUXyAi08wSysW7Z3txE4pFCkE2mhErjqxzpHc2O6ZxkJxs3EYUinU3pJCH79+3hox/5EO944xt3%20AtGOfqT6yUfeysVz5/k3/+pfURtHFGpEoPCmpsoL6sJi6rkJaCtgNJ2xsLzExtY2zz7zPLffeQfO%20WEIdzNlITdtB+Cbzr42hrEpcbaiLmmqSUm9PcLOUsHIkHgIkQijWblylDjQ+jgmTFqXzDCYjrm1s%20MhyOacVtEBIRl2yMx8R1hZWawWBAECb0FhbI85KqNmgdIi3Y0iClJgwFk1lGOJ7w3ImTvHHvyl8t%20GG3NysHVYc1T568yJmJp1x5EfZ1+d4mldp/pusVXKYm3xKGk047QWlNhCNsa1QaDbmiIoUKHcytw%20oOnOxA2n2jf3aqX3pAjGRclmmjGpKrwQuL17qMuKPJtRz2aYWQ5ZSlAYZF1RTadsb24wnQxZX7tO%20d2mBbrfLYH2TbhRhbXNE2ADxfDMCvem5JiWL3Q6b16/zC//5P+YD732MWKidt2VHP1J1VveK93/4%20w/7555/n5DPPoLUmkCFgKIzDVRXWS7yQdDodsnRKqwd5afjTP/tz7nrFvWxvj9i9vISvLdJ7pDV4%20Y6jrgjLLyKfNSYcra0RZI0pDS2o6rRBhHOkkY5alFM6R5SXTWcqoqhkUGZuzlO3JlDTP6HVqlA5p%2064AgjlhZWUFGCVfWNrBCIFVEVpTkZYEIQmSgkbbZ2I4DRTEcYozhhRde4I2PvPn7D0YlfFJ1ogt/%20+EfPPviXL26Q7D7KeukxQZdudzf9GKqsptXWtCNBK3K0k5pYG5RoLKe1D9Ba0mkphHSNTcq8TyPn%20xvd+vh+RB5LUQeo9aSdhGoWMi5xJXVF1WlitqJ2hLnNU7egK6BpJUFuSMGBczvjat57kd//wD6jr%20usmKAoUtDYKQ/sIC19au01noY8q82cfw4IqK6WjII695HT//vg9wy+LCTla0o78W7bntNvG2R9/l%20L1+/xngwwMnGOdl4RRB1qDxkpaPIHaaWTMYFYdIlzTP+5E+/wnvf/SjtIKBOU0Y31sjzlHw8JpuO%20qPMZzhlWl5fJpym9VpvxaIqLIrLKs729jZYBuSlROkS3O4TWMTh3gSsbW2RlSVqURO0WVkje9dh7%20OHj4CE8+/U2eevZZZmVJ0o5Jy4qiytlzaB/DPGOUzti77wAHFm/lwx/6KP/bv/vfuXj5ElErYjoa%20fv9lmoMjU/jVs5ssXtyaUsY9SidpS4kM2nS7fZyBSEE7kfQ6gjioSEJLrDyR9CQqoBso4lABBkVj%2066OQaJqSiQYDjgVymkCUC8jwZFLQV5KJCBkax7gssN4QSY8SFpMVFKVBoKhlRF5mbGdTdC/G5RJR%20FgRGoqxBhAFpXrOwvMpoMiQKNUVR0mm1KaYpdx49zkceez93Htu5N9vRX69e84bXc+LECf7wd38P%20ZQwmK+jFMdksI1TNUes4zZF4lPFgPFlluHjpKk88+TQtHRA6x3h9DVXXhM7QCjVaxeTljK2tbSIh%20maYzwk5n3g6xRMuL1LUhSGK2R1OGV68wTQvWNwZkeYVUIcJZJpOMvbt3cX1jk3Fecv7iiwxGIypr%20KS1M84Lde/dy5vw5uv0uOg65cv0Krz98K5/73OeYzMZ02y2Ud8ym479aMDKw+Oy3z3H+0lV02MJY%20j4w0oQhZXl4EAa12wEJHEeqMOBC0AkESNL73LR3SlpJg/sc1e6J+vrbubsIObg4giQCvBBoIgVgK%20Ytmi5Ry+qijTEmNMM01TjsLaOekuoipLtiYTrm5sEHW6eJfhopLQOJwpcMaTZymtTgLG4LRESyiz%20DOEt73z72/nYRx/bCUQ7+mvXwSPHxTvf+U7/zFNPc/XCBcJ5kzeII/Jpigg9ZpjT7iS4OkImCSII%202Rhs89zJE/TiGGUtsfCs9vo4B5k1KAd5XVJZQdzvsbW5RRRFXL58mdFoxP79B5FCo8OIqN9nvL7B%20JM8pBRghUVo3/OzCcvrsBdYnYzyS0WSCwSPDiNJ7CmM5e/Yss6Jm3/6DPHDsGP3FZXq9Hi+cOsMT%20T1xDSsl0OuXKlSucP33KH739ju99A7uCR1ILz58+z9X1bUSwD2RClMTEBhYWW0Qh9DuKdgy4mlg5%20OlFIOwpJCAhu/iG+6eoLPEo03SLvm0NU7zxeNAxqIZogJGh63AFN5hUp2ZyNhAmBaLzOayXxcYAU%20AicVeV2xNh6wMRqgWy1EVoMMQVvQFlOWOCyT0YgwaXY6kihmurnBa++5l0cffXTnrdjRj2+69tAb%20xDve8Q7/Lz/z60RhQFkZVpeXuDaaUDtJZWukj3FVQeBbhHFEURSMpzNCrYilJIgTRKgZj1Ly6YhQ%20CvCGdpwwnOXc2B6Rpinnz59nOp0SdRa56657aLVa1MbTXt9GRjUiTpld36CuDV4pgiQhqhXZNKeo%20DLWzoAOKrKC0DhGF7Nmzj9e/6c284t5X8oY3vpHWvgO40Yjt4YDPfvaz/Ps//mPyYcHGjXXWrl3n%206O13fO+Z0RR++doGXLy6ybTw2FZI2OoQhZpW6Gi3IloJdNugRUm/HZGEnk6gaBMQMr+Wcc2HlnzX%20NTE3WbzSNqwUZ5GiAUZJBF40wch6iAT4QBJ2O7QKGBYpmXWoKMTqoHk4UYvtqqCQgoV2GztKcUpR%20CwdC4rUkEE0kD4IArKfOc/bu3sVHPvgBHrxzpzzb0Y9PMgh4x0+/ky9/8U+5eOYMwjjK2hLGCbWt%20IdBUQFkUqCyn3W7jpEAoSRgnCGuZ5hl1WVClM1phwOKuZbQUxFrzja9/gyLL2NraIi0NQbtHZ2mZ%20e+57AK01Tzz5NGlZU9aGykBeWWrrGtChkCRxFycdAoNyttkjMo52u8OuPXu565X38uCDD3L8tjtI%200xn/5//yGywuL/Hkk0+ytrbG6u7dOOcwZcXW+sb3V6alBk6cu876OMPrFo4QHbYQytDrdGgnmk4C%20cQChM+xqtwmo0Dia4bxCOYVygjmSaB6H/Jyg9jJC4OaP1Lyh3XhEvfx3CWkgUbECHbdwVYH1Fbnw%20GOXJvSPodRnWJfHiAiJMQGuclFSuwZR72WRkC0t9pqMhiVaYquStb/8pHv3pn955G3b0Y9ctd90j%203vyWt/hff+E00sPG1ibdpEWZVnjvmFUFtnYEUTS3Q4ppt7rEcYvh5jrtMKDV69Pv9eZmjZKtwRZ1%20VnD5yhpRGJLOapSKCHTEYHvCmTMXyNKc82de5OrF6xS1oaotpjQIpalLg/ee2SRFBwHWO0prsUrQ%20SiL27T/E4Ttu400PvxmvJIPBgHMXzvO1J75Kludcv75Gv9tDeIiCgGwy5dLFi99fMBpn8NwL55kU%20oFp9hIwJdIT3NSsru+j3YzotiJWn3wqJMKibTWonkM6jvEQ58VIy1MzSG29efzPm+KZMa9CZc49M%20P+8nzZknsVTIueecFZI6blE5O1+w9NhYk1NzbTIgXOhhS4cPAtABtSgItUQRUGYVQgi0ElRFwT13%203M5jjz7KLb1oJyva0d8Ive0d7+ArX/5zzp48hXOe2nkckrquqKzBW48pDXVpSGSAqw3j7QGz8RQf%20xyx1+8RRSF2WrK+tceq559le36Tf6mGMIyRudphqw7UL1/n8tS+QZhlBEDEdzDDGUtYWJUOUb9A6%20SikW4oZnnZclviixStJJunSTLq0g4ZmnvskwmzJOZ5R1Rafb5dSpkxw9epzpdEo+neCMZZrOuHDu%20PIMbN/zSnj3//6THDH51WsCFa5tkVkHUIdRtpNbgYNfyIr1OQCuCyBuWwwBBSohFowlv+no72WQ4%201jfroGIemITgJoHDzxMm6y0Kgfce6V0TiJwFFNJ5YqkpLbSEZymOmfmazSrHCItot9gaD1mbDFlZ%20XqEs0maZSc/X7ANJGChMlVGkM3YvLrF55QpvfughHnnNq4WfJ2s72tGPW4fvu0+85rWv82dPn6W/%200GW0uY2UqjFsdB7hmvKomubklWPkt9koc7J0SpmlrF++yuFDB7ntllu49dBRzLSgI9tMt8fYzJKE%20CaYqiYOYftBltDUk0CH5dErLa1Ah0yKfs98rVGmI2xFVaZt+i/F4Y4mDgFYUo72gmKUUVQl4Rlvb%20LO7eRZHndFttyizFFhUSQSuMmGUp4+0B+Sz93jKjKfzysyeu883nzyCXD5IZEElIXVd0+m0WFzp0%20WuAqWFkIEBR00GgawJPAvWzHOzdinI/S8B688DT+l81naDahPQIhXFOTNUSol0s2C4n3oAROCNpB%20QBwFeO/JvGFtPGLl4P5mp0hpyjnzJe50kVmGry1aSJaWemxfu849d9zOBx97jLQ0vpvonVC0o78x%20etd73suffOGLrN+4TpgkOFNjS4GSgkgpTFYhCJAoBtfXKbIZQaBYXlqg3+7RChJM4VDKcMv+w5hh%20Rb2ZgXOYWUmbCJVahukG3jkKW6A8LC0tI1AElcQ5T6fXw1rPjcGAIABlPfuWVxhOx0zzjBhFrBUB%20UJuaqio5cvAgK/v3cubcWWbjEXWRU5Y1pqixDrx1XL10mfUbN9h/7OjLPbP/t4cxK+DK9U1KJ0kr%20qJ1qIN5aEEfN3lCkmn5RMzFz84+XMODzr+Re/qI320DzoNN0cJqGtgccct4mkt/1e5ptaQfCEQIJ%20zQpAs8YuMMJTCkcpPSbQOKlwonFxFXN/KC/n/uOhJp1NicOAt77xYQ7u2cOenUC0o79h2nNw/6d/%208q1vQcybxzqMcM7jjMcWBjMrqcYZxWhGPcmaABMkTDZHCCc4eusRDu47gCsd65fWKMY52igip4h9%20SOIDIq9JnKLlNW2h6Qct9rT7HNq1yu6kS1A5FlTEkd17ObZ3P3v6S/SThNCBKCsSFbDc7dOWAdlo%20grYQS006HHPu5CnWr14nlIpWGCGd5/9m782a7EyvK73nnb7hfGfIORNTFVAEauDcKlKiJKrl1mC3%205CnsCP8F/QX3T2j/hPalfdHh4cKhVtuWWx1WUw62mhLbDFIki2QVCjOQ45m/6Z188R6gWKRk+1Ko%20OCsiIxEJIIFMfGdj77X3WgvrMUKyN55AiCxm8/9/ndHpJXzw4ccEmdE5QcxypJQYJRkNS6pCMchh%20oBO5nGp03LQ+klfZTGJTkDYfCpti80khSkPaJ5dGqVMSxE86JOKGOwogFWaz/jdaoZQgOmiDY217%20bAzE4PF9UuYL7wl9jw4eay2ZUjT1gnffuMV/9Lu/y41iW4i2+PuHYn/vn/zjP/xP/us//uM/YX45%20ZW9njM7SLZF2DukDPnR465EIVIjYdcO14xM+f+892rrjT//8f+fjn/yMZrpibAp21SBttmOEjW+S%20jxv7fiGo3YI6HzA0AyqpWLlAgWJkMhYhcjAcooYF2mQ0yzlXqyWx66gyw+5wQEdgd3eXxvZMl3MG%20WtNmhtB30Pf0dUNeSiYHO1zV6d7o/7MYOfi956dTPn74BGEKoszRWY4QgkzCeJAzyCWFhtJstF0v%20C0okpWm87G4Em66GX+p65OYXRD7hjl72VYG0gYsiefnykgOPgSRrBSMUWmtCFHTBUbs+5T+FQLDJ%20bpMQCd4TYsS5Hu08ZV7w27/5Td67+/b2qd/i7y3e/fX3xb133onf/tZfIHWWMtOsRbkW6T3CgYgR%20owSZMLR1x9npKX/5l39JV3c8+/gh+9WYqhhSCkN0EYHEKJWU9dEk4bhSaKUQoSJah2ubZOwmILYd%207WrF4uqKO59/h2t3bnJ4csxoWPLtv/4OF0+eMigL3tjdYVTkCJMlcrzpUBF0gNUqcUahtzjVo6Ng%20MZvz8Ycfferr/VvHtPOWf/X4yTMurhYonaegRamIOJQMjKqCIkt8dLZpfmTYfLqoIOr0YyFfjVnx%20FTeUmCIFKNJiTb18C+m9jC8HvJTz5JApviymUe3VGQASpZLw1fqIDR5pNEYqBIFcSTItQYHJUkCd%207VpuHB/x+7/zj7iWse2Ktvh7jd/+R79DORhivUspNTGZFuJTd4NNXtciQnSexXzFj370AU+fPCP4%20SGZyooOwoXCDSsaGUUtQ6fbuZb5jURX0vsfajuFwwGhnhM41g0HBzRvXOH38gLPHj3HrNQfDIQfD%20IaFtWV5c0ExnHE52GGU5wVoWFxf4pmNvNGF3OGaQ5QyKEhEhOEezWvPo4UOa5fJ//H/tjOZzz8OH%20j2l7iy0iMVcEFxExoGWgLFLqpSLxRTFuouO82oxovAq2jK9YoxTSJF8mFkSPiEm6L34+sWTDW4vN%20SBc3urUoIgi/2Xil7INIRAhB8NA7S9d1hBDAe1xvN583QEj/kFoJrPO8+/Y7265oi9cCv/qNb/DG%20nds8vP8xZWYSrxrSWCU3HtciCFCQ5wX/5X/+n6KMoWtazh4+YyANdtGgbcA1K6QPxBDwtsf1LbZv%206a0HbymKnLIq2T86YHd3D5krFvMVbd+Q5wbXtnz8wY9ZTK9wIqK8Z1KWxL7j4sUpPgZ2rx9z/eiY%20xWLB87Mz9MYfybc9B5Nd5k2D6y0hBE5PTzl/9vy/euOd0d9djM5OL3jw4AExRnrrUTrDAUJElIyU%20ucJsIrw1QIhIoX650YopkNW/6nE2SrSwKUARRIip+rwsYPKTu8jEMaWiEwEpUzHzpC2cj57oPDZ4%20uq6jaRqCdUTr8NYivE0ZbJtI3q7r2JmM+O3f+k3eLNW2K9ri7z3evHtHvP/1r8WPPvoIaTKsapMN%20rNRoqdIJDClX8OTwGn/4h/8xfYhpumg9w/EurDr683NUdOAcrrd426VL7a7BtR3OWVbzBUoL9nf3%20yLKC8eEuz5+9oG1bYoy8c+8uL85f4JqGZdfg2vR3mV4uOZtdMZmeIx/c5+adt3Btx3I2o7M9vXXk%20WUaR56y7nrrrMFqzmi+4uLjgjXfe/ruL0flsxbPzOQFF8J6hUnQikOMwQKEEWVpSbaYwgfjEoIif%20H36Sq5tKpSjt9BFREmJyV0ybtU0tkp90Ri8/h/y5M2yNetU+OQI9gR6w3mF7T/ASgYHYQ5RIoUGm%20W4IMcHXDrVs3+Yff+MZ2PtvitYAZlXzhK1+m/Bf/IvE7m/FMxKQoCDHSeUcMgWo8RGrJ+bOnTIYj%20QmdZfHxGHgSTaogUhhAFJmRkYshASoiesLFhNoMcrE0zHfD2Wzd4J4o0w4lIu14TrKWoBizXK2bz%20OX30XM5nLNqG+48e8r/+n3/G9370A3YPj7EiovKcvaMD3rr7Nj/6wQf4YOlsi5SSrmlZLhZ/N4Hd%20wR9958ePeDHrkLJCO4Gsl5TaUGSGIRXvvlGhHASbRjWlBcH5lCMWYxrVgkg8NuDRQMQIgbObMUxB%204wJ1V6OUohwUhBhQIg1yEsBbBGHTEUnw6YCyFRGrJS9Wc067NVk5Yvb4Bbb2qFDQu5am7hlJQ9da%20jkcT5GJO13T8F7/ze7w3qYRP50pbbPH3Hl/++lc5OD5g9fAp14ZDpss6JYhoSSCSlRltW/PFL77L%209OqM3UnJ7Oo8manKVBCs6ahxhCg2dj2aKASoDJQEGSkHBeAQMtEfMUZc72mbFFutR2NicGRCMDi+%20xhvmTYQQ3LOe4D0Pnj7m/d/4NZ5dXLJylrntITP81fe/z5/+xbcYZQXrZo2NnlE14PT5C2bnl397%20MQrw1v0F/+zp2ZT5usVlA4QE2btUQduOcTnBd9AGS1toVr3AmGT7Qdys8GMSpr5c2KtXZNBmdNuQ%20aSnmJOAkyBCIeIxIMb2CmJJdo9rMaxJ8JCpBrwVLYEmgjp6mi7R1B1ZgG0vfe+ginbXIEJOBWtty%209/oN7t66lf4+20K0xWuCW3duiy984b341x8/xQhJoTWu7yF6IgEpDQeHe4xGI5SMxODJM0WR6URT%20xEhDS2sEXmukLlH5ADMYk1dD8sEAU2TpTic6wEP04MH3DtN05H3PajEn2J667an7nnnTol0giwIl%20JDu7u1y7eZOv7+zC4T7EyLRekf/Jn/DX3/ku73/+S1xdXfHt736XJxenyBCZXl397cVIwv0nT9L+%20f71eU5g9pIhEb0EKmlXHwe4ezoGNjj4KFp2kyiTZqzujl2pYT9jYZf48OZ2qcoRXmWUxFQwfUBtW%20SUqRrrjDy04r3RvVMtJpwYzAWeyY+45eRFZty7ppCM7T1jWh6ZKp+LpmYAMxBmzdcu/zX+LevXvb%20p3uL1wpKKb72q1/ne//qW+nWzxiiEOgokAGMh1vH19gfjsEHemsRSqKzAi8sznkaGWiKDL0zYWfv%20mNFkH1NNIC+SJ71i4/HjeLk6AoEKUNlA5Tyj2RzfNDTzBc10ip2t8PRENjQIsG46Zu1zxPQKbwz5%20aMjhZJc7t27yW7/xm1xeXvLTj+7z7PQFWkhOnz1ndXoZh8f74pfGtKdPn3JxcQEhokQ6QQy+w+iM%20vm/Z39shycYCvXcsG8fOYEi2oYy02CR8x0gMLgnzZZrLAjLxQiFlKUkBuVIoqciQSCnT9yNsmqjw%20Uqcm6YRgZQRzAmeh4el6zjL0BCNplj226xEhEpoe2ft0JNlZVAy4tkGGyOfuvMl7N7b5Z1u8fnjv%20vffY2duFRY3WKdUvkwoVAspaTiZ77FYVGkkfHShBh8eJQDEoyQpNee0QubPD7t4xYrwDwqS+IYCL%20PgWobnoHKTc8sFJEIxARdDVCNy35aMFgUNEO5rj1mrBusV1LZgbEKAhdi607graxUfaJAAAgAElE%20QVRkRUEeJQNpePCTn7FarVLopJAoAufPT1FKTv/WMe3FJgo6yzVGCVx0BN8jo2IyHHIwniSRnu9Z%20LD3CWYa5QI9zSiGJRJRInU0Mm7V6SHFACAkqYhDECJp066CUwqj0XXjZCH1CakuiBCegBc5xPO0W%20PK3nLLXCCs16vaZvWqQDaT3aR6JQxCAwURA7y854xL27n8NsS9EWryFu3LjBG2+8wfMf/ZRcG4TS%20FCiMiEjnGZmCSVmRmwyvBVZBHyMYQ3W4j5mMkW/dhiwHmUNQm4s/UAq0VkCZXnz4Vy/CJNFKW2wh%20SZ3URJKZjGw0IS4WzF+cU19Y2t6SS402OUYrXPDY5ZrLp095/NOP+ODffY+273jx9ClFmbGwHbOr%20K8q9na/9UjF6uuSj09NTuqbGyAHB9wS3IXiM5NbxLSYDnZwWQ2RVrzFCMqtrylIhsgxQ5BuuSMqN%20IYhIZwGwOVpUMcnNpEpE9csUjvjJOy9+PkEEemAKvHArLtqahW2xusJay2w6pV2sECFDdg7RWozf%20zKEBXIjcvvkG797b3hZt8Xpicu1E3Hv77Xj+4X1knpMVOXkfqGQGwTLJSjKp0DGZrQUJXsTECR0f%20wWgEeQlKp5f9SxPDDdUrHERrEcJ/8kIUMd31KY2QAtd3aCFSQdMaqiGiHFD4QN13GBdxXYfrejIv%20kC4gJVQoDqshH373+9TWkmVZKliiZTWd05/PPsqOdz89ps3mNaenp6xWK0KucM2a3mtMjDgtKIi4%20ZcNgnJFpg3cQomC6aMgzTawUXkvQijxNnEljFtO1UNgcLYpPyWM32rMY8QGCkHiR7icDYIE2wEJ6%20HtZXPF1NqV2fVpRCs2o71udzwrJJ3Na6o1+sUE2HicnqX0u4d+9zvHPr+rYv2uK1xVv37vLdPCcf%20SGLdoZsVw1yjtOKgGqIDBO/xMcDAoAcF46NjODpMV8TWp8M/k8YzIdO9X9dZbLOGtkPLgFZJgB6k%20JCpNNAF06qSkTjbPeJlaGakofGBPKKZPn9F3LRJBluUI4Qi9JXORKkrGWUmuMkRZsnSW0mQ0qzVX%20Z+ecHO9+ujOq65r5fE7drJAxIwZDICcIQVSCxeU5F8+fM1AH5CNFiBIXBJfzOnUhakAw4iVFRIgg%20Y8r8FiLxRC+V9CEGpEhX2ekbCEGm+yGnJB7ogDpaln3H3Fuenp0ybdbIMsdojRYK1UXiukd3Edf0%20iKbHrxpE26B8QMbkrX3z+nVGEi5X9T/dHw7+yfbR3uJ1w8HRISozFF4gshzvlxQoBplJI5rU9CJ1%20RqooyHd2GZwcw3AIvYUy34wdPc4rglR477Fdje9asuhQISbulYiNYIXE6YagM4ajCV4liiXEgAkx%20kd/jIYUQDLuedQQX6qS0cB67anCLJdQdxkekNLgAzWJJUQ2IvWM+nXHCL5xMP336nAcPHlBmOVoK%20VAzIYDHCg20YacP//e1/y+XzF4wGFQTFatkxHO1xftXw8OkVT8/XnC08qz7xPFFJnFB0QWEj9CF9%20kV5InJQ4IfFGEzJNKwW9lnSkFNqL2PNoMeVn58/42dNH1KsG1UPmJLLxqNrRnE+5+vgJpvPkNtJP%20l2gbsOsGW7dkWmEyxfvv/wMAtoVoi9e2M7p7l529Xby19G1DpQ2h7TnZO0AjcD7JLJyIkGl2blyH%20yRichSIHHM631HS4PEIuCQV46ehiQ6RHKs9qeYmSHmkiZ9MX1LYmCoeLIfkRSUBJ7Mu7QimhyKn2%209ygnE7Iip+97MqlZXFzRThcMhGZ/MGJSDJAuMC4GFNpwcXb2yg/7U53R5dUVTdNsNmkSqSLRerxt%20sL3gC+/e4/TpA/7iW9/iavqCb3zz6zT9kgePzzg5OWLZB4KIRBy9V4xyqAxkGoxSOJ9mUIVKhDYb%208V6izLBS0m66oYXtuWpWTNdLFl1D23cYDJnRSYzrHJUskGtLGTR10yGdRnYOeotyEWMUXdNy4+iA%20yXi4fZq3eK1RDgtOTk44O52mMAopGWhFrtUrG5CoJDI36EEFZZFGMpfokNC2WCwOhVACaTwSKHLN%20IJbotkbajklV4uoVDsn1w31CUSCyHLXhmCDRKYhAkCqNbUIgxyPyVY1f1MTGopEUUiOsxy7WiUMS%20Au0jMqZzHgj0XffLxejs7IKmaZNUIzhUCEQRyYQhzwxv3bnFmzcP+Mu/+rd88LOfcv3Nm5zcOiav%20DnBUzJYzlk3Poo6UK8u4UIyqjOFAkWcwKPQnEpLNn2k3bw64WqxpvGXlOpZdw9p2dN5hkZispIoZ%20A1OwbGtsGyi84vLJKdoGaDzCR2LT4/se5QMm1zSLBXe+/mUO9/a3T/MWrzXU8aG4efNmnP7oQ5xz%20qAhGZigp0UYlXkhL8uGAfGcHyhKUAe/BeuyqBhGQJiMCKgpyJRFKQpbRPHrIiwcPORiPU1EbVFS7%20e8SNcj1KkZZsHryzxOiJMpDJRM0wrCjGI+x0Tj9fJgN+pdEe2tUS6SNSAi6ksyGfFlrtuv50MeoC%20fzSbzQghIITGux4fFQLNYJhxcLDHl750wOUVvLh8wb/799/hX/+bf8Pv/uP/kFu3b/D8dM5o/wZE%206CP0vme+6pHrJUZ7tApMRuXmfiGt60MIWO/ovcMFS1QSGwM29HQ+ENBErSkyk9aYyw7tBL62yCiI%20refFw6dIGylNxqppCL0l9BblPSpoXG+5d/stJor/Zvs4b/G6Y7I7xnYt0QeEUFjbEWOgKAqiTPYg%20elCQjyowGQDOBXzf47oeRUSEtKo3yiOigLaDuqa9mPLg+z/kTClObtwk29tBCMXg+BhRjBAybb29%20d8TgcN4TZCpmuVCb+J6CLC+xUiL8Jqw1QujdJzZBpItt6SNCwXq5+nQxmjX8s/l8iRCC3GTUNhJd%20TwwOES1lbviX/9t3GO9P+PxXv0h1tMO//NP/g//hf/kTfuO3/gNObr5JtwqJPDMgVZaicaVD64AQ%20nqfTGqkEWhmUlgiRUg9CkAQ0fdMmglsmCUj0ASEjwQpkTJ2QDx4tNHlV4LxnsVigVMHAZCwuV6mY%20uuRiJ7xilGd87tYb7MGWK9ritUee53RdR5YbtJXYukEoSTkaEJTAETFFgShLEJJgPb0PhNaik5CC%20IDxKZaigEj8yW9OenWKvFuzqArteo9Y9i+acxbLjnZ3DtIULG9WEsxAsMQaiVCAVGA29A6PJi4JW%20KVzTYrs+6VaDQCMJQqRRTSlE9AghWK/Xny5GTeO4nE5xziGzJO3wMWBtz2q5YLGc8t/98/+e4e6I%20G2++we7BIfloxMNnL/jn//MfY6oR490jdFEyGFaUw5yi0phSYrKIUpCXg40PdUae56hMoTVomQz8%20c11itKQ0BiNAh9QT6pjOCnRoiL5lMBigR0MePX9BjBElJZ21tH1PdD4dXUYQPnDj5Dq3b97aPsVb%20fCYwGKTX0HA8xiw6hGgpqwozrGilwMpIphXkBmLAbRT4USiiMkQRCEonYzUhEDFQdz3L5YqP7n/M%20WycnDLOCQVXxdLGkUTLdJtU19CHJrILFEbBCIIJCKUX+ksg2GvIMrTXee5qmoW/bV69LKSVaSMxG%20j6oQNPUvjGnL5ZLVakXf9wh6rAVlCoSI9E3NYjFDZBJZZDw+e86D81OG411MNcZmAlWOWNoU4TEL%20NbFeg7QE7RDSgYxEoVHKoLTGZApjNNok9bwmUijBQGtGRlMiMER0CBgkpQycTDL6rkaVOSI3fP8n%20P8EGj9aKermm6zrwPsVkb0zb7t6+w63j4+1TvMVnAqPRiGo0ZOglYnmGygyjyTi1PEriY0zFQxsg%20SToyo3GFJOhI1IKgFU5LyDQqBvphQRiWiMmQ8uiA4f4hBM9oNCQbZNQykotkBISzRN8TCMkxMkp6%20pcikxqhNOREgtELKzdmOda8MFF++LqWURJ9kY03T/AJnVDfEjUNicA29iwy0wSi1EcsGxgcTrI+I%20TJPlJQ4FWqNVhgsRqWQi7nuP84Eo0+8TWiK1QJmCGAXOC/o2IPoOCIgYUHhUbykUDKQgCx7tPMpb%20MinIJdx3DX2/JK8GRAU//MlPEKZgbzdDhzW+68FGTJ5mYh0F14+PuD1S20i0LT4bnVE5ZFxWFGtP%206yBTmrIs03/CIvnG65cRYSEFZZDplJITIjJLGlBHROoULZaPKsLBhK/97j/ELldEJZnOV7gqJ9/d%20YeE6TibX06gmNJlVhOgJeByfKCtgw24Ht3Gi1MgoUEGio0RECchNkLR4VZystb8wpq1rbNORCUXr%20HIO8ol6u0FpTDIfkxnDj5A2+/9MP0EWJ8oq2dujCEqRhNN6lbWukyciLEpXleAK9V/TOEkRA6xbv%20HeWwQkrJcr2iKDJGwwGua3F9h9eQj4ZgW3rXMRhoXEgEXB4lg+oQhKfvao7G+wipKfpI1nrcdMmo%20GLK8vODa/g7Ejttv3qINYOT2Qd7i9UewnlBbHv/0PtdCRq5MigEqh2ADedAwb+BiBTt7G97IoTbK%20CIInE0lkm+qIp8wN+fEB3XoBQ83KOtSkxKgcXQwYFsPkt60KyDUqyxhoSYbHRosQEakB24KCEJIF%209E5R0ixqYucwQqMkOO9QOsM7h9E5mdK0bfvpYuR6i+t72qYhqopBUaKkofcpOXJvZ5f98S5G5Myn%20a3QXMeMhWmiWq5Z68Yzd3X1yrTDW0nc9jbVYwibLMaDHefLRti61jx6ME4guQB8YF0OibWmXNYQO%20IwTBRWTwaKVo24AUIEXA6JK9yV7yv+49i4srlBOEzmNkBiEyGlXs7+6xDSPa4rMCoRXDnV2edpZe%20qaTIKArwPWQl1jtM22J82CjyHa1NkdgFFuEdMQqiEEitkZkGDbLMUQzw2A1XK5Eyw+gBUhWgcnBJ%20BQIpZ14IiQwSpVK4JEKCa/HWpeIV0/2TQkHYdEqbWhA214UhBLz3ny5Gbdu++qBS6tXHbNfTZhne%20ez74mx/SLVaUeUEM0E4X9OsOkw3Yneywvpzjix6tso1HNUijUFqDieQqfRFlZtLRVMxQSm40NRET%20JNZG6tWSMhOUZU5Yd1jbozLNoBwjRcS2PYRIZkow0DYrms4RkLSdJTcG7z37e4e8cfMGxbYYbfEZ%20QVcozP6YtY4scQSjiDsDFlhUOWTtO7p+ReEahExmh63t6Js+CV+9IwQQSqODIFMKYRRIiZQaJQRC%20J65JYEDkrxTrNiaZyEt9afDJuE0INteQ6Uygb9vNz+lX5LkPG996Ij4EPAGHx+LSmNbZP/qEM9pc%20QQ6HQ2w0LJdLbNOSV2mkujw9Q+gSaQPWNQTjkMqAd7i+ZdlNIQiuzmdE65FFTl4MCFKAUchSYvsF%20WWWI1hEEtE1PcI7owNuOmRRoAvQ948M9xjs7RNVicsiLDJllWJ+MwxftGiWTJW1TW+LGh9vbDllm%20+L5nb2+Pa8dHW1PHLT4z6IF1sMhRyXLVMhxWhNJgjSRt6gXWtsyXU3baMYzGFF7SNR1B6hTvJSVS%20a4wxCKlT7NEmqTDlrwqESEH1yTYjySSCTMVEBJ9ew94iY0AoBU6C99jVGrdukzA1BAIxuboGTxc9%20fXDY4DeFyONj8t/2y/qffjKmBY9zDmMMXRuwNnD91i2++tWv0jQNP/7RB6wvavJqjFIK6yLWWoQR%207B/ss7u7z+H+ER988AHPnzxHRokSPV3fEUREVYamcQzjhEyYRKj1jmbdUK9q6B2K1DXFtmXqFXHV%20E51lPCiJIhILg8gkF5cLVospRPsqqqhpHUpm+Nglktw59nd2eHO45a63+Oxgvq55dnZGPh5Tz5ao%20qqKTkWgUNli0UfTRs7i6pBhVFIOSgdF0RiJCTO7yIrnMe5J/iEQQo0BlOVH4lwNhkl0JvTHkT4fc%20Dp/MEa1FBo+SyQ2SEGBV00wX2KbFRMBHOuvpg6ePm/fB4wj4TZGKm0AOodT9V8VIbKJ8XNfjrKAw%20Oe/eu8tvf/M3efbsGY/vP+TFwyccHJygi5Jl17JoWkzU3Dy8zt27b1NmOYuzKevzeXJ99MkSM0hB%20LjROKSpdUqocqTOGhSKTNbGR9LJDeo+KOW3Xc3664PzpJVVpyG/eZL6c8+jyObuHezSrKW2zJF3A%20i2R4GyRSS4TOCB6kEOzt7r7KE9lii88CltMZ08tLhlqzsBap1avXb/QBrQTRR/xyQX12RlEWMB4x%20MToFnbpAv8lOyxBolZNJjdAKH3tAEDbWPknvFjc8T1Lqx40eRJBkILnSqRB1Dns5o57OkdahhcQF%20T2072uDoYtq8eUFyAREyGf8jkVohcvNnr4qRUpu7gJA8rKWULJdLHjx4wPnpGfVqxc2b15kMhlzM%205vTOMhwMUSZnfnnF92bfZVhOOHt2Rl93uBDQnQMNxmiiDWifQafovCMvM6rJGLKMhehpXSB6RcwK%20hPZJZxMtN978HO9/7X0ePLrP4oPAZDLGdy3NusZvnKEUAiEzRBRkZgC+ocgH7O7ubp/eLT5bY9o8%20OVfIPqJjIobLrET5iIoiicRjkoVwOaOPguz4CLm3Q27AK4XyiccRWiefIpmcWK2NhM1BULL6ickU%20MYZkACljknCIZEmdC53W/XUHiyX11Zx2tmQQDUoZvOtpeksbAj0RKyMuRNyGe/KbtxACobO/96li%20lGUZxhgyKen6lr/5/g948ew5XVtzeTYlOEOeVfS2w9lAH9Y0dsFy1UHUePsILTSZKZExIJVCFwZl%20NA7QYoCwhr5LBSTfGyGKCmMawBFEAFmBkfTB0nuPLMbkO4c0Dx/xe7//B0jl+cH3/30i1/sG5yJ9%209FjryHWO1AZ8S55nVFX1izFuW2zxWkO6QFVU2OkKZTJijBSDAZBuimzfISMUWUZcN9S9I1Madseg%20DEW2kW9Ig1Q5UQi8SEGoPgqQm7BUIRApgD4JZWNM6dHpl2DiJu3HWViuWF9Mccsa13RIo5GZxMVA%206yxtDHRC0MeYtKeENLLhU7CHd3Rt+/6rYhQF1G2bDhSjJMsUR4fX2ZlM2B0N+Yn8iKZ2nJ0/o9rZ%20x2Sa6aomKkNTd4DD6BIbJRKVWi+tcAisF/gA9IaudXgpWa3WnF/cx4sUX63znZRAQsBUOda1ZOWQ%20lTR876OHdFLx4YNH9M2UR48e4WIgLwdo75HC4G3A9okMk0IxWywZlBXPW+L1YluPtvhs4Pz8ksfP%20nqPnc2LXMDk+wklJ0IrWOqTUZIBwAe8twnrq0zNwHYO3biF3d0FrYu+xrsWUBVqqlOwjAamIMeK9%20Q0mFlskNIASP8A4VYyK9tYB1B5dXLM8vaeZzmtmaSTVEB0Vd19iuZVqvN51RwCnoQ7rcbnuLMJp2%203aF0Osp8VYy0lmRZhpQdd+7c4ejwGpPJLtOLSy5enDK7umB354h2vub89CmDnUOOTg6ZLXvaeUM2%20OUQKg/UCFyLRS7TSSGFI3aSibSXIDKk0USpi1EShkEaBVng8ymyutb0mOsuTq0s+fvGU9uIZoxL2%20hiYdYpqMullje0eWRep1j5Qao3KMCUjboXXGYb4tRFt8Rviix5fx6fNniYOp11RKUsuAHo+Qw4re%20t0giIsqNOj/Se0vbrAnTwNVHHdXxEbv7x2kiURqsA2vp+haUR+jk8SMBpSQqUxA9aiOCxTtoe1gs%20sBczlpdT6tkM13ZU2SCFsAqB0Gka6r2jDo5ebbginQIjRVDpx0alrd7PF6OiKBiNRvz4w0f4oHj6%205AV4mE2nSB8ZjUZ43/PGmyc8v5gzvTrHSoOXBZiMrChpu0iUkigNUmtCnhONJuqUMCBCjjIGoQxB%20itQVbTxqBVCOx0TpaJsVLgSKKtukh3h2bhxTuRWr6Rmz+QV7+xO+9KUvcefOHda149vf/ktm0yXa%20GJTw+F5hHds0kC0+MwhKsGhr1LCkOQuY0rDOJN3ApKhrBHojg8pUhtoUj05Egrf42YzaO/S6pxrt%20IosKsgIyQ2EKCF06XJSvsnnAxiTxcAFmc+h7WDe00xmrqxn9qkY4T47Cdj12Y21SmIy161jZjiZY%20vFK0rqcnpHsllTyShFYU1QA1yP+nV8WoqirKssQYg1KKs9NzXGcZVUPuvPUmX/nKVxiUQ27evs3D%20Fxf84IP7TBvHrA7MlGO1WCHMEJkNyPMBMsuJxiTPXCmIKDJdIVSGkDIFNWoJWqQoIhxBCbI8B2FB%20CMpC0TYr6n7JxEBTL3jz1jV+//d/iy9/+YucnBxicvjBDx/zV3/9PbKsw2iDjBaHYN202yd4i89O%20MQqBputAJcF6zAyjw0N6nV7YypjNsWHqTrRMfkYekD6gwmbjddnQZxeYvCIvS/LhGMYDMCoVIhk3%20mWEiuR66AC6yvrxAWItrOlzdEruezEeUMkitUDqj6zo8ApOXrLuWWdswrxusdzTBYUWkFwEXA05I%20pFIMhhW6LP7bV8VoOBwym802Xik9zjkOj474+j/4Fb76hS/xztv3eOedd3h2dkbrPKvbt/CPzlm1%20a46PD1nWnvnKY7IKU4wJWuOEwAmFLDLyLMd6hVZZcpZTkBU5WaEIItD7GqMjZSGxSgOBQSEY5BnH%20uwdc35vw/t3f4WhcsrM7RmjB1fQSbUr29vb4xq//Kv/6z76Fs5bCZJi8oOn6LYG9xWcGDz+8z+nT%20Z1ycnSOjQEjN4fEJi7phICJ7OyN0Z5O960aYmkVNFCCCI4sqJehEB84R6xVu2uD0HJ1veCAZk43G%20RljrncD7SIwpcNVbi+gtmY/Jr0wnL1pHZNmsaHtHFBJtcmb1isZbepHsRoJMZz7WB6IShJCOlquq%20Qmj1yWq/qNIqvCxLrLXs7Ozw1a9+lW9+85u8+7m7VHnGIJMc7e1w69oJ69bz6PmUQVFydPMWi1XE%20PTlHmiFS5biYZkaUxhRD8tEIu+qJmUFoBYRkxG8UkZ4YI3lhyLJINRhQmpK9ScHR/pibN45563qB%20aiF2Dav1ghhjOh8wOUWRc+PGDUajEVcXl4yKgmI8oe+SAkZuC9IWnwE8+fBj5i/Oscs1WYiYokT6%20yM9+/FOKIuNgZ4zuLZWLjKWmkBqlJcEoMg0HMiBCADKIa4TMMEKBTmk8ysjNnePGlyipylAY0Arb%20riEEpA8IITAqUTDWpUPGsiyRWcBGMIOCzgeikgSlCcEijUFLoEuJt5GI1Kkzgp/TppVlSQiBvk/Z%202e+8fY/33n4HieD5s2csri45Otzl177xa/za197l+NYdzPCA7/7gPqvecnExoyyGoAYElZOrIh1k%205RmqKEAVhDwp8osyIwSHEFAUAqNzYsgYVYK9Uc7NazscTgoK7agKRVUIfB1ZzS4otEREh9IKoqTt%20akY7Q977/Ft8//t3aeuGoshBdEznS8488Zra1qItXn+cP3yCv1qyZwbEpuHW3hG5E1w+eoExgmdt%20g7GeiReMlaZUBq3TSFdlkk56SgHWS/oeoiooyiHCaHwMlOMKj0druSGVk6ZMSoXKC7KD/Y2Bfbri%20RgiElOQ6w2hBzA0KsCGijaGxHTZ4uuBYtzXlsCRE8Bu72iBi0pxuThNeFaPMMN3d3d3N85ymEYx3%209snLEWcXC5qhw3Wev/nz/4tVF/Ayw4wPyYuK2aLm6VmNo0IVJUENUPmQrBhQlAVBJ1/r3jsClryQ%207E6Kja7MMRkaxpUm15Y7NycMMjjah2EOfa3JFGQSVrMZx3sVksB81ZJlkohmumzo1jWmHPDW3Xf5%20+PEzAp7Wznm+nDFr4aTadkZbvN6I1vPsowcsLi45OLpB7yK337jD3s4+O5dnKC1wKIz2DGzcyDHA%20uySMdb1g0dWQZeAVfWuJoSGaGus86/UKZMTFkK6upQQP1iazQooCtTfCaQEkEzdLIGhJLHLIM9Y4%20dDlAlhV7+wc8fviIdVMjtEDnGW1nCSq+GuWcTr7ZRVF8uhgdlOwZY6JCMygHHB+/yc8evAAhmUwC%20N2+c8NaXR3z84gonMvyLmoVVqHyME55ycoIZHjNdOlwwlGYIQrBuanSmGU8qcu8Y5S05jlI69icZ%20d25VvHGtYGcIpQZDJFObhO8qQIhE7xnuGPpmgdCRg4nCRYezgZ1BjnOBtg2895W3+MHjxzw6fUQr%20hvx0dsmzdeRuJTDb53mL1xiPvvM38fTBYwo0WZ4jteBiNWdWr1jWNdE5dkdD5rNzJodHzKczKqWQ%20IWJiRMiMxucom1PpDNtMORiN8E3HSCiGoiDPDG3bIhDELlIoQ9u3tE2DGuVM+xlLX9PbpDVb9T3T%20Zk0vBZQ5a++pg6fxgXI4pByOqLKCKyHwIeCCpwsBU5Q0sce6wLioKPJf6IwAbt++g+3/HI/j2bMz%20pBnQeWiiIeg5vquTXaQKSB15/OICGyW/8rVvsGgFP/7ojKgHKCPwrsUoxWSgicLjVqeMK8uN0Yg3%20r4852su5tldy7VCxW0GhYFiAEREtJC8nq5jEv2mTYDW966htR91b+hAQGvpYEIVEjuHtL36eq9iw%20cgsW3nK6XPBsMolvbu+NtniNcfbslOn5FUpp1m1L2zaovEBog+0judHMp0u6zvLo2SkZgbX1VFmO%20DC39umMnq1heLZnkBYOsQEqN8zVFPmA8GbCaL5jkQ7RSrBYrQt1TyZxMwXy+Ro4NmZBABAGlzgiV%20oiXijcaThPPYnrDxv37p4hgFyCzHEOmCQ6kMomM4HLO/v//LxejGjetkuSYrJiwWC/KBQJiC5WLF%20xeWMa8cnrNYrXISTG7fpek+eV7zzzj1+9uAFhzsrTi/ndPUVO/sTRHB0y5pr1w/50hfe4O4bBYe7%20mv0dw6iAUQajAkoDKvTsDTIUAr2xz4SNGV0Ai8TKgpUrWLYdq7ajawNNI6glROfovebunUMenh+y%20XDyn7654cXpBd32yfZq3eG3Rny7jD3/0Y5brGpMNaFrHet3i+sDlxZzz55eMRyXtYsW4ypkvVhzt%20Tqi7Hik8oe+ofcvMztG9Y3jrTQaTHawNLJxl2VyxWszRWm8OnyWuc3R1w92AAi0AACAASURBVGQ4%20YTyqyEXJ89UlrU6p0I13dDGkVGg8ddfTxYgTm7ixzhNdZN332BBBSYIAhKDvLSI39NZSjYYcnhz/%20cjHSWnN0dMT+4R1syDm9mDHZOyTiWLeWDx+cMtrZxWQFl9MVKh/wuXtvU5WCZw8/4sXDJ1TjCXlp%20kO6K45MdvvLlX+He2zvs78DxBCZloCogl1DIyKgQDDUoMoJv0LxU4iezprDRxfQYnBRIDcUwZ1Ll%209B0s1p7LWY+rPU2jKTJ449Yxs8s91i8W/OzjJ7j3P7d9ord4bTGbzXj8+ClKF1jR44NAqZzzsznR%20/oRHD56wM6wYZBk3jq+zW+1xuLuDmzRJq4agr9f8+Lv/nnFeokzG2ek5drVmr6rY39mlaQ0Q8F2N%20tZ6qqjhdzLFnZ4wHI8qdETPXYo2mdZZlW9PGiM8UXYwsbItVkjp42hDQRY4qBHVvaW2fVvrWITKN%20jxEpBb21jPd2OTg6/OViNCgKhoMKKTXjasJPPnoGpkJpx2jnkNYblq1knOcolSMF3L9/nw9+/CHC%209Xzh7Ws0qzUnx0N+/Ru/wt27GVJAZuBwF8p4xY52TLIhg8yQK8gEiJg8UggxtUIbph5S4BshUkpB%20Gw2FAAMMBPgCCqVQsUDpQLTQtJbbt444fbHP49kpP/7wAYv2t3kcibe2GrUtXscR7fSci/MrkIZ1%205yiynGo44eJ8yvTskq7pUF7wfPoc4QTRO/5quUApRbNecnx8jPA954s1XRGQ+gLlI6vzC26dHOOy%20jF5EBqMRmTE0ywViZ0I7nzLr1yz7NcNWM1vXSQPnLYu2posQc42VsPY9vZJM10u6GNk9PKCUitZ5%206t6iMoNlwwVnybJEGs3J9WtU1/fFLxWja9eusVrV/Oz+D/jq+9/k2slNdDHk7GqOEzVkOzR9T93P%20MHqBEJF2XXOwv89/9gd/wGI649aNQ04OBVJC5mE8hjwDVpfcfmtAZVpyHTE4QIK36eTcB8jyT8K8%204ZMVmAKQmLA5Ck3BB8n/14CcCIqBgjVM+569YcXJ8QHz5xPOnr/g8Vnk+lvbOrTF64fmtI4/+N4P%20+fijB9jGYr0kixKjB7SrNdE6dkc7DIuc/Rv73Ll9l93JhOl0ynhnxOPHj7m4POPpkzN2yhFt9Mya%20nnFR0ErF2bomXF4yHA5AK4ajip9+9FPcsyecPj9DS0WZlZQCZosVQmosgTY4eiB4R8gUTorEL7vE%20CeW9hd7TuY37RhA474h9wEmSF36Rc+3mjU8ms5//wo8PDyjLkqvTBzx9+pz949vockI+3McGw/1H%20Z9y8/Tn6bk3XLLhx/YQv/uav88X33uTmCVyeHmEklALKAny/xM5XnNw64HNv7yOwSDQhpvqTxHiD%20dLcAqcL8fBF6Gba0+aCKkEdQkf+HvTeNsuy67vt+55w7v7HmoecRUwONeSAJDhI4iYytKLJkL8WS%20YmktxYmdr8pHKF5ay/mQD1nJWl6SHVtyIjKWqViSKQkUQQgkAZIYG41udAPd6Km6a6569ab77njO%20yYf7qgGIpCwxCkMptXu9Hmp41XXrnv/b+7/3/v8phabaxlEoV+K5EAOzucuGKdi/MEV3dY7La5u8%209ubbPHjirr07ey/+xsXm6gYXz11ka6ODm7m0J6Yo84JRWuKMd0BDr0E9jHjkwYeQAlbX11hZWWe/%208tl/6CSjUtKczJE6w+Y5azsDYjdDolicmWNqcYHF/fs4fOIoBsu3LrxFdzRi5Dl4jktmSqwjGRqL%20wGIdhVaKXBeMsgyjFTZwKYRF+B6msOzEQxJjScsSIxXa2kr6KE2QvgslhPWI+e8HRp7ncfToUa4t%209bi1vEqiQ2bmAh545AnqrWnujw3b2ztsbS7ziZ/8PHecdNjegoYP22vgKYNDSZmmWAHTEw4z0wvU%2065AkBc1QIfBBVBopWkORWcCihMB1q0oNuyu7K7BjnW/Hgiwr00pPgKISaJLkGBzAoe3DvhmP3mbC%20/PQky5MtLJKXz5zjv/jkXRxusqf8uBd/o6IclRTDhGatSZzEzO1bZHNtnbjbZ7LeRAnQpcAal5WV%20Daw2rG2so9yImZkDnLj7Tm4sbzJMDW5hmJ+cRuGhBESBz9z+I6jAY2uUMAt0h0Oub2zghQHh1CRx%20HNPr9RFhDbfVBATCdcCRZElM1i/JjUZZh1SXOIGPNZreMMbJcxzfq4YqjUb5PkWe4MlKGSBs1pmZ%20m/3eYLR/ll9pt9u/kWUZhoB+b0R/tMTbV5cZjTSN5gxpmjI/N8H0xEfJh9AMQKcGSY60BkyO5xpa%20jYipiYBGA4IQAumO85tqeU/I6qHe9z8obSVvCRUYjXGpSprEuIKzVOqOwiIwKAy6GmZnSgliC/um%20Qq5tZZw4dpTtlQ4rb9/g5Te2OPrR6X8+Bf/93i2+F38jooDnnnmWbz77TXxcPveZz3H63vvZXtvi%20mT/8MhvLK8y2p7BWcPPmMrduLNNoNLDWMhyNWLq5QfObL1MUBUlsqdUaZAkY6zOIY6xxuHx1GSNK%20OoMdiGqkOqM+PY3re6ysrBAPhjSbbTaHAyK/hhWKkyeOEdRrvPn2BVxtaDTr7IwGTDQnGWQJusjA%20cUmKErRGKIV0BIUu8AKf0hocx6PVbnPk6NHvDUa+4jcPHDjwG81mm0K06A0LRFGlWWHQxBEeSpRs%20r21x8c0lHn/sIGUOukjwlcVRFulofE8SeALPA1WtvlCxPlUFJu0YXOx7ldn3iwp/xh8lxmQRlXul%202H1YiwU84RMKqLkQOoIo8JmZmWHr+iYX3r3GrdPTvzrV2gOjvfjRDzMwlJuZfe2Fl1jZusl/93P/%20hM/9xN/F8zzSAwnT7Ravf/tV3jpzlv5gyPzsAsJKhr0+WVbieQ0Qgu2NAUopZib2IYuUMq/ceJSC%20vIC1jR1SnRAXQ37/j59h4cACq9s7FKZgNBoRhAGr/U3mWnMUQlDonHOX30EFHoXRFI4lHvaqjfwk%20JilzClstwiLU7cqmMBorDKXWSN/FCphbXKDRbn1vMCoNT0202ijporyIJLdYFZJpAcIlyzRhUEcY%20xfVrSzxw30FCD3IEge+gyPBcSRg4hJFLUEkd3QYhB26nO4r3/bkb4/IM7JgPqmbaDQaFBLz3dmPG%207wMQxuAIjSugrqANNFxJ7ksO7d/P6uUVzp5/i3ceOMLJB6YJ9+71vfgRD9mQfOv//CZnvvMan7z3%2043zs8SfxXUV3ZxthJadO3c0dR49z+f4H+NbXX+DMmTdxcZhqTVGL2gyHI4pc0Kq1sAYGnR6T9YAi%20H2GNInSbCFmSpkMyC1JFaBRL6+tY10GXBuG7PPzYo3Q2t7h8+TKRH2EUbO6sUGKZnpmjkJpuPMSr%20R2zHXYy1lQSSkghHYrFoXYn5CwmlNYSuixWCEydOMLkwKb4nGDmSZ72xYWOv08XxZymEg+v55KXA%20dTwsDmHN58rVG5x5Y44f/8QJtHYpyxzHFbhKEvkeUSDx/MpWunLYrlwqb9dd9s+lPxjAIqypzObs%20bs5kUIJqFBtTkUa3P338fNaOZVgyfOXToMqMXDRzs5MsLMzx8jsXeO2td7j/nmm74CDICxrB3pLI%20XvyIxrK1v/2b/5q7Dh/nn/7yP6YW1tjeWMMKCLyAUTLEky4PPvoIhw8f4dSpc1x8823WljfY6Q6o%20BXWaUUhRaHRhaEdTSAzGaoRRGKFQwgVH40oXEcCoHNGPB2QmpTnR5Kd/6h/w93/mp+lsbfPF/+N3%202NzcJNcldlWyvr3FZq9TuX/YksiDJE+xUlXWRlJWvIoFKyzGWNzx2RVCoHyPEydOfBCArTVHP1Cq%20OS7T0zPE3R5ZUTLqD5HCxUgH6TcY5BInbLHeifnqcy9SWnBclzTPsNZWwv6+Q+hXKx7Vl9cINIiy%20AhRRvu9RVMXx7kMUYM17hJF1QDtjD6cKuPT4Ge0Y5ioflUqs3McSAr4AW6REPuxfnKU10eblM2d5%2050YMkj0g2osfybAaWMf++9/+AsvXlvj5n/k59k3NI3PNdLtFGDj4rkQIw05/h053m7mFBT7/k3+X%20f/Bf/kM+/OTHmJtdxJaSPNXIQhDJgJbfAuujnBqoiLJ0GaWapLDEuaafZLSm5zhxzz3gebi1kJ/4%20O5+nP4o5e+FNlrfXqE3VaU03eejxh/nYUx/n0PHDzO+fp9lqsDxYrkQURcXhGjTWvpdxWCkobWV1%20XxQFExMTHDly5APfuyOEvLr7j9fPb9mVlRUOHz7MjdUE4Yako4xCC6z1iOOSsD3NsbvvZd/B/Vx8%2080WuLhUcXnSpN1qgY5QEz1F4Lii5C0bluORyQJo/lxq9lwEhxgy2kON2mngPbMZkk6mWicdAZJHI%20sSqdRVmNM06eAgXonCLLmZxoc+Lkcb7+3J/w4stnuOvwR2zD3RuA3IsfvRAKzp85y7PPfJWf+txP%20cueRkwy3+/ieQhsNZU6uSzwvoNmsozVsbm+iC0Gz2eYTP/5j3Hnsbs6++iZXL14h6Y+wGuJBWgn3%2046IcB2Mz8lKRA8oLiFo+0vNIy5Lp+TkeePg0TuDztWef4fqVq2Q6I9MZaZrQnGmzOL9A1K4zMTuL%20VZJvv/wKr505SynAWoNFIMZgZMaNp6KoTFeLouDQoUMcPHjwg2C0+5edfvLqV77yFd58awXPm2Vm%20eo71Hqhag7I0WClBK1Q4AW6Nk/ecYnPrFt9++TVmP/s4Mw1FORJVZlTZMeGMPbkrMBJjEHFuE9AV%20IMkxKlT1pRSVPQpGIHZ5pNuD2aLyWULCuLF/G8wsKOmNDeYcIk/hSUk/HuIHEUeOHePM61N849sv%208eipYxw/vbB35+/Fj1yUq7k9++obHD1wiM9/5rMUvZSaFwIlo7jD1FQDK1zieITG4Loe0guIrE+R%20lLjS4+Sdd3Di4EneOfs2r774Cp31yl325vYGIy2w0uLIyr/QERGLh+Y5ee8JRqbP5aVLHN13guN3%20nuTbr36HKzeuo63GCz3cwKMf91i6tYSRglqjwYNPPMzh4yeYWpjjlTdex1pRMSrVbxgBxlTeaNZa%20gjAgKwpOnjzJ7LFF8V1gtLK6bs9fvMHNW2vcXF4nbAakacpgs084fZAkyZBRHac9wWg04pvfeo2P%20feRhvGiW1869y4eeeBy0pR06SGWRaiynSwVG1kqEGJdUH3wdGJPVjD9SopEVda2qJMrudtxEBW5m%20l2JCjuFNVhmVsOC6WFP13iIHIinpJSOCIGBhqs2pO+7hxef/lLcuXOLRuxfs/r3saC9+xOI7f/w8%20Mi759CeeqrYMogBJtVQqlUcGlHmGDDwaUYssLRnFBSrwcRwfoSVxMgJtOHr3UQ4e3M/1qze4fOUq%20OyYhH5iq3e5Urq4Gh/m5Azz88GN865UXiIIG/e6QM6++ST/uEPgunc4WSkK8vIzruvihQ2402lo2%20O9vsnI359kuvUGg97p45WFENJBssdmzaKJXCj3zKFPYdWPyu7109/fTTvH118+n//Qu/z2c/9zNc%20vrbKi996jdnZA2RaUqQFrVaLPMspjCEIQrK0JC8dHH+KODUI6XLqVANdFEy2BbUwZXrCR2BIkiGu%20WyfPx2S21Uh7m+2p1tDGBZdAkFMiUBQYtpMembIIxyW1OUooFKIyiLQGaUy1RoJAS0UmBVoKcqDb%20Mwy6I8pRjqMtTb9GIEOuvX2ZSxfO8dijD3NoMvy1vdt/L/6/isRa3PEOJgUMv3LNrl+8wb7JGRbn%20F1CBSypKesWQYKaFbAW49Yj6xATNqWnCZoOo1aI+1cZr1BCBwvEVVhpKkWNVgdt0mDk8y4nTJ8FR%201KIa290OaZbgKIdavcbUxBSj4QirDfUwYmtri9XVVYbDIYPREC+K6A8GKKFwpFOdXKk4cvIEWVly%20c2WNs+fexA0CDh07ihWSm+s3cVWAH4YMBgOieo1CFFjHMjU3w3/9T/4xs/sWPnD+nEGsf/fa9WX8%20oMnE1ByPPv4hri71SNKMRhQiBKTDAUHUAl9VE5Rek36/pNAWKydZ3ynY6ML+yYhR3kW6LlmZ40lL%20EIZowPOc8Xi1eR9l9F6JJgWUWAQKDZWKnAsZGQZwpXObXaoyrvFmv5BoIdGiAqGSangyzwwm04iy%20BJuTm5i59jTHDh7n5Zf+lD955mvs/8WftEdrrkjKjNDx907HXvzQQleE7RiVgPN9u3zxCjN+k2Z7%20miQekbqWcLJBa6pO2AqJJmqVp6DywHEqZ9gx42GNQewSqonBDFPyQUoyGtHr98gGmkc/9iid1R0m%20Zie5duVdbi3dIBkN6fb6+KHHwWP7KG3K1k6HLMsYmRFlUdAfpAzjlNbUDHEcI9OSxmQbz40o0Wxs%20bHD1xnWU57Nw6BBPPfUUd63dw8WL79DZ7hJEEcqV5KOcIit5+MRRZseyIR/IjB77yFO/+zu/8+8Y%20DDPuue8hdrojtrYHoEIK7dLtxySjDCdoIN0aaQZB2CYtKmNG11XkeZ9mvcHRQy5Wp8xMBkhR4joS%20RzrkaYHjKIQdE9Lve1ghsQiMEJS2ApcSKIzBaIiTjDQvCXwPD4kzLuqUqOAIIbBCUErIx2XcsICt%207ohOb0hWaLSufMQ9L8R3FefPvsaVyxd55MH7Ob4w+WuudPZOx178cLtm7ydslzJ75cwFepsdZuZm%20qM9OkAqNagbM7ptjYmaCYG4CNaWQLQkNCXUgBGoGE1lMZLCRQNYFtASi6eI0FESW0tdVM9p4tJpT%20TExOMDM/Q7PZRAtDHMfcuLVEWZYM04TN7S0Gw0q3LM0z8rxECMnmyipZnuOHERrL1s4OF995h6s3%20lxiOEpTyCKKQu+++h+mZGba2O5U5pBD0Br2qdFOCn/3Zn+UTn/vMd1EkTpIktFotfuLv/CwbGxt8%209dmv8dbFZVqT+ykKB0d5NNohWVlSjjKk9NDaVvWVddDGMow1596+xkOn72EyjBgkEHoS8Cui2dqq%20FBPcZnws4+bZ+6js3ayn1JqyMBgjSIYZhS5peCEikNVzicqHTQiBGU9z735+QeW6G49SsrysfMIF%20lGUJwwFHjhzigQce4pk/+hJ/+qcvcPzQEXtsUgptLEruUUh78cOJ3WFfM7DsLK+yubnO3MIs/mQD%207Sua0zO056eg5lU3d636JKOo2ufWYqVBY7GiIqXRFk+4uFZVCjyuIqy38CYC7JzD9VfWUCrCa4cc%20mjjK3P555g4ucPGt85w7e4bl9S38gcNgmIB1cZRLPoyJ05RmK6Q1MUsS9+n2YsQwxnY6DNIRvWSI%2074e4nsfW1hbnL17AC/wqi5LVmS3LEhVKpqameOTRR7/nNZFJnrC1vc3y8jJf+MIXeOedd2i1WrQn%20pvCDiKwsSLMM1/EpshLfDUhHKdIqrJGkmUW6DW6t9bixbCjw6I4khfVBQVZqAt9Fa13NTIvqYdhd%20hv3gy4UAhJVIK1EoHKtwrIuwVQvfom934+y4bViO014DJBqGcU6c5ZTWgHSQwkEpgVQGpQQPPfQI%20M9P7+Y9/8Bx//OWvVzfHHhDtxQ+7VNvW/3zzwpLtrm1SC0PqU028iRq0PeoLbVjwIAIcPT4YDhIf%20YX2k8BF4SHwc4eLLAM/xUcrFSEWpxl2kSKHaEc6Ux/FHDzJ1tE7haXrFABFKDp04whMff5JPfv7z%20tCYm2OkNWFvvsNUZkAxzdCEwhcRolyBsYaVPqSEtDHFSoJwArMJzfYwQOMplY2ODK1eu0O126Q8H%20DEcDGu0GhdYcP1H5L36vcKSUXL16le/8+q8TNuY5eecjTM0dZ2Utptls4vt9BmtdvHASKauyy8YF%202tGUIscoy8Rkk2zU4+131ziwsEjdV8RZpW+itCRwJLrMMUK9Z6r4fiAapzVq/DYXgVASqQXtegOD%20JHJ9hM2rnpuw74ERCjPOiFILvUHJzmBAVmqkdMBKql8C33Xp9raZn1vkoQef4Mt/8H/x5S8/z6MP%20PmIfO1XfQ6O9+KFGttr91f7yFjIvmZmZQfgutYUpaAdQk+/tUHmqusF3t6BkNUQIDlJUQzEKQWns%20eAO9yqJ2x/NuH7QZUD7UhhHFZkaS5jieYnZxjma7gVBgXnuVwSim0+uQl0Ok7+EoTVnA8vImaRYT%20NWq4vkfgKyamWpRYcAVaQH2igVKKYlQQRCF5WdDtdvFqPq7r8uDDD9HeN/c9z5r6n//Fv3zaDSJW%201re559SDWDwuX7nFa6+/Sb01TbM1zTDTpLnBVTW0drCuj8XDGIkb1HA8hZCW4aDD/Pws05MSaS2B%20I4h8ibRVRmLHhJ34ABF9W9QRKQRWG5QUSCmwVuN7Hs2ahyMEwuYozFgIspIhKYWgsIIM6MaGtU6X%20TndIqUEpF2skaDsmCzV5ljHRnMBxAt595yrrq5sIBMfvvOfpyTp73bW9+KFEcSm2nau30IMRzbBG%201KwRTbdxFtrQEhBBqg1WGZSq7uFdPkKPH2a8nqmMQGiDzssxDyuqERgx3p7aJbkTEC54QcXtGKtJ%20khiLxhjD0WPHmJmZ4fCxIyBhfWsTay3WCkbpCM8P6I+GJHmOlZLZuXnuPnUPvXhItz9AuRLH83Bd%20h6IsMBi0NQxHQ5Ii48ChA/ziL/8jjhw/9j3PmTw4XROPPPIIzWaT6zeu8uK3XmBl5RYIS7fbIY4H%20+IGLzRKwmnQ4oBGGKFl9h5HnMoozLC631nrcWhuSadjY0Wx1DUgYjopqtBTeuzKY3d4XUKIoK6Cx%20Ba60OGiELgiVrGyGyuL2RCdIrAUtJMYKClM9yyDJGAxThmlRya5JHznuMFhtyNKE9kSTsF5nYXE/%20Bw+dZGtnxO/9/p/wzFe/tXdC9uKHE6vYnVsb9Fe3CYxDo1ZDOAJ//wx4EJclmYBCaVKTgzKUZJXe%20sku1L+6CdCoJnl03as9zcV2BdQylMuSqUkXFq+hb0QJa4E5DfcbDbSi0m1PIHOsYtnqbzCzO8tGP%20P8mp0/fh+h5WUGkSSYftXg/pBIRRk2Gc8c7ld7lydYntnS7WWnZ2evT7/TH9YtnY2qLb74EUGCwH%20jh7mnntPfd/LIgEO7d/H4vwsGxtrHDiwDz9QhKGP5yo8X+I44EYeUhg8XxAPOwid4WGJe91KSrIQ%201OozvPr6JW6uwlZP0x9JLl9PcHz/fdyQRViLHM9RV9mRxpoCrRMcqUFnKEpqvoMwKUWWYk2OEAKk%20g0FQWEmJpAB6I8PKWszyWofMKoKwjjEuWVqihEfk1/HdyigujmP+7Pnn+fZLr4LymZ0/wDAx/Mt/%20/QVefGvHart3Vvbi/02iCJbfucbqlevUlEczqiGUoj43XZHUAah6ZQ3vOA6e72HQqEBQ2BjtFPRM%20n5yCkoK1zi20iUGnUIwwJBgKtMgYMqDLDrHsYYOs6r7J6mvIFrTnazRn62iZk5mEsOYxGPXY7Gxy%20+oFTfOozT1FQsLxzC6/mU2u1GJYJjuvjBRGFNnz9xRfY6fQwCGZm5ystpeEQz/NwHIeyLPFCH20M%20n/r0p5ldXPi+dIh6+umnybT79NXrS1y7vszK+iZKRUT1FvXGJIEfoa2g2+mhnACBi5QKISUWibG2%20UvQY76RoU1DmOffdM03SH+FIA7ZESolS1ccbU3XBrNW3Sy4pBFJWk9pCSIQcTxJJgZJq7PFksap6%20WSiRjHLYGpQsre9wY61DP7f04pJRapEqxHdrlLlla63DrZu3uHTlEu++e4Xr11cxWuGoCKV8tjY3%20GcYD0jTm0Mk7nl5oe7+mrUGKPRppL/56Y+nlZdtbWqPthDRcH9dzCGcnYHECAijdKpupqKFdza5K%20SNBxLCU53WRAZnMiJ2QqaiCNB6kG4SIQDHQCTjVEbNE4lONlKzDCVg6xEigNRZpTJDlFURD6PqXR%20JFmCkXD8zuM89pHHcVyHl994hUa9hbWSQpcMRwOmZmZAWgbxACsMxhrcoJIHQQq2OtsURjNKE/Yf%203s8v/vIvceDgge9LhTgA8y3EQw/eb8+++S43br5Go6nIdMFwsM3kdMT0VIvNjS6YrGL0rapkCIwB%20fLQoEdLH90KSeMjZ89f41MeO4OMiOj2M1pRlyeJcE9dR+ON5LaxDYQySEiUUxpa3V0Oq5To5Hgeo%20PJeM5yCAFNgZwOr2gJ1hSlwKjD9JWQKOwsGtCLf1LstXllhfusVwsINROUmSIEWIkBpHBkzMLODc%20WMIUDl9+5kX2HzzA1M9/1h5s7rXX9uKvN9bPbtqli+8SjTTR5Ay2LKr7vFmrumYK9HhjqgKgDy5Q%206axAOYrZ2hzDNCXvFUQ2grU+xAVal6jDcwTCULQVrlvN8IUYLBpLWY0ASAHCwal71FoRaTchS3JW%20N1apRQ0c32EQ9ymkz9E7jvILh36B+x9/kC9+4UsUawatC4qRpTfoYzH4vk+e52RFRkPWSbIUL/Qq%20iyJrybKM06dP86GPPPEXnqnbc1d3330n+xZmaDVCJJqd7XWQCZ5fo16XKKkpdIYc8zXSGhwTYNDV%20tKGSeKJJkgsy4fKdV7f56GNTdGOBtBqth5RaUa/5tBsOYVRt9Vcb+lVtaqxTjS+NuwC32SU9lqQF%20uiX0+9Dp5+zEgl7uMsxhZCS1ySbdrYSV5TU2ltfZvrXOcGuHQDq06xMoz6K8jMBvMYoLkszSbk/h%20eA12hgmR2+C3/+0fMz2xwC/9/fsJ9wSz9+KvpTSzDK5t2ze//Ro14zFdbyK0odCaIPAgcEFC+T4w%20UmNl9/dWwWUl/5Hl5NJQF/XKdWcHRpdHXH3jAq7jc8dn5winQ9So4ogKC0pYdD7CemAwlXChqLik%20ej1iFCWMeglhFFGaAtd1qbWbxPmIm2u3mJye4LEPP0YQNfhn/+zX2d7ZZmp6GqMzBnFMc7JBXib0%20+z16vR7DUYzwJLVmg2EyotVu86EPP/mfvEy3wejonCvuP32fvXjpBkvLXSbaDZrtBVCC4WiHZjuk%20s51VQ4RGI7RGYXCxWOshypx0GOPg4zguL37nHHcc/zgLk5P0kjUMz8fwIgAAIABJREFUhn6/SzMK%20aU/UaTQ9wgACDwIfXLcq9eSuBjbjtY4C8hwyA4MCljcSVtY75Ebg1SfBrdOzJdtxzqW33mZ1fZvt%20jS1sqomEQxjN4AiHQgi2NjcwpiSKckZxThjUmV04zPziOr1+Vdtev/QWX/jiczSjKfv3Pn9AhHuy%20R3vx/zA2L920b770Blkn5diBEzQcj3w0ImrViCYbt0npQlXzcu74YDq7/KWg2l6ICxAhNtb4dShX%20YPPMFu6NjORiynbcZb6xTHjfPrzjQAi2dECBMv7tsRpjLGqXxPUcfD9ESYeg5hL3B2TG4PsejvTJ%20ypSVrQ3YgjcvnGNyZpJ6I2R1Y5XRqEsYBQgh2NraIopCsiIlCAJGRYLn+5SDPg88/BBPfvxjf3kw%20Anjyo09w9vw7XLv+DRbmD9GemGFpeYvRKGdu7gj9bkJZZBidY62p9K0FWOOjS7cS755oY3TKVjfm%20zfPX2ffUYYypo4UhS3KywtJNRgRbGb4HYeTRqPn4Pjhu1RUwotp/LQpI8owsL0m14N3lLbQbEIST%20eEHIIINr1za5cOUWtzY7rO8MMFbhCY+6F6DcoHpVilN63SGOCFFKkOcOg+GAnZ2UyakObtCiPXmA%20fmeH1tw9vHVuhX/zb/6A2an/yn7mo7W9cm0vfuDYubxiL198h+3VdU5OH6OmFOlggNYFYX0aAo8C%20jaMcyrFmjkRUQLQrSjG+A/N8hNeMcKUki+GNl9/h6nPnuUsuYHrQWenw4le+zWHu5459x1HjsSOb%20lYiaR9W1Hpce+a4QPTiOhxCKfq+P5/kYLNu9PtIXNGcm6PR3uHDhAl/6vd/jk089xcREi9dff5Uj%20Rw/RatU5d/4sw1GPtMhQStFo19F9Q5ZlKM/lySef5K57Toq/Ehid3OeKY8eP2EbjNaanJ1jbWGPp%205k2kE9JsTOMFAq0NuqicQFwkQjpok2CMC65DkecIZfCDBmffusxddyxwx7EG2ShBqYjCWrKkJB6V%20CFngOhmeG6Mcixc41cwDFm0tWlu0NRTakFuH2UMHWduxXFle4+rNi1y5ucFqb0ApA1StSdDeD1JS%20JgWdfkysY1peSNNp4tci5tp1rC7pdjsYO+L60lV6/RxrXJJ+jikiWu0avURz4a1lvvjFP8SWn7Cf%20+vi8UHLvYO3FXy0G1zbs2dfOsLO5xb65eVpujXKUQlagfEVa5oRobKDIxytNAqqsZVfp1FQ6XkaU%20eNMh1sZ00pI8E/htjztP38Hcls/yxoCwHtJLhjg1n8KBDJABaJESKLdy5RA+Uryv/BBUO57Wwfej%20atfTFvheSNAMKI3l7LnzfOlLv4vyXFbX1lhdX6HerPGZz3yKzs4mL736LRxHQWGqDpoxOL5HkiQc%20P3mcT3ziE3+p6/VdG6Kn7jrKY4/dS3vyIH/0lW9iTUoUNBgMt3FVQKoKjE3RxmJwKs0So7Da4LiC%20uJsQtUK8wGH55k3Onr/GqXvuZHNDEboKZTWCqhunhENmStIkx5gCNzMYYdCIyghXuQjpIh2XQnr8%20yQvXWFrbYnVtg7S0CC8gas6TGUWhBYMkR1qBzjSu8ZhoTbLQakOS091cZ2l1h0F/h+3tTWq1Go7f%20Js89hHFJkpJ2vcXGRoeGN4EXBPyHP/gapelz/M5fsfunEaG3d8D24i8Xyc2OvXj+HKs3l2iEEbNT%200+RbORSSdquBdARxHBPqSbzIIUsNTiDHHa9d3XduTwhbIclNxigvaDSnkA3JtNMkfBC4CXOHp3j5%20lddoNBQnnzgAk7ARZzR9H+EqsjLF4iIcWWVauy+u40ntYteFMDV4QY1G3WV7Z4u3r7zN+TMXKZJK%20qqfRaFIUOefPneUP//DLTE9P4jk+Qjh4XoBQEMcJbuSRlQWnT5/m8Y89Jn4wMLr7AG+8OctbFy9j%20dZ9mzaFe94nThKjmE48ShFMghCQpB0hR4jigRA5FjikM1mvjh00aUZtXXr1KkQc8/NBhDiwAOgNj%20EbIaWLRaIVWIFzbJihTtOAjHpRAuw0yzvLHDjaWrLG/1ubbRxQkipNuoOnlpZbmCNegS/FziKZ90%20EFOmBcNhnytLHco0pRZ6tGYaPHDqFFcuX+bcGxeYah/AEyFrtzo4ok1/x7B/4QSdraskZcFjT36S%20reE2/8P/9K/4ub/3SfuZxw/tlWx78Z+MYrVvz7z0Eq9+59scP3KUowf2Mxr28f0W1lHEtsQ3Es91%20yHcGhCsh/kIdNCQYUqEppMRzJMJWUjkKhZUuflCR2RJw22CGULQSitOS06cfxW+GMFkRT5OeT5nm%20SKGQToRUVce6KEpcO56GdEC7GbnNsMrHIrA6xKfO22de57k/exHpGqb9eZxA8Av/8B/xW7/1W3Q2%20erz0wusYqYlHPVzfx1GCYTokbDTZ7G4wvTDDRz76kb/0dfsuMGpH8lcmJ6PfePvtN9hY3USLOvFg%20B+k2aDYChqMhurCVmL4VGJGjzRBdjpBejdDzceyIbKgxQpKXhrPnrnHz1nUOH7Ac2Nfg+NETzE23%20cCSkKaSpYTgsaU83GWSwtjni8o3rvHtjnfXOkMIohBfhRIsYKciKhDwbgckJPJ/A9QiFxyhLKj2k%20uCQbpAxdgy8dAj+kXmsySlKuXFuh0D4L+0+SDUp2uilK1PADj6jl0elsEEV1PvyRR3nwoYOsrL3N%209Rtn+Xdf+ioq/zH7+ANHRaOxd+D24nuUZct9W5+tizdePcPrr57h0L5DHD90DJ2lKKGQUpKkJWlR%20UA88phoRYRhVaUpanUbHUZSiMpwoqbrwqjSgFEJIFJXfoNzNamoWK0DXASHQvkWG1fscLMo642Fh%20QV5meI5CeQ7kJZRVJzzP83GF46BwmJ2Y44UXXub5Z15E4KDznFEv5d4Td/ONr7/A+TfOV3N/pWEw%20GpIXOb4xOL5D4EfE8RClXB544AE+9OSHfnAwcpV89u477kAIS1nmWFHQHXYIapUZo8BgTTUPZLWp%20dsRkibGKMk1wQ0mWjPCEIKjX0WnCoLuFI0O+dukc9bqk3TrLvvl9nDhxJ8ePH2ZiShIoj2e/cY21%20zS2W1rYYxAXCqeEEUyB9stzS7XfwQpcglNSiCISHKasVlf6oxOYCLUqKtECnBXGiMZ6P7wYoWc1A%20ra+v0qxNUfOmGaU72MJSjxrobMSwv40QKfc/cC8/9uP3sbgAs3OPsX/fPkaDLf79f3iJq1d69vEn%20HuD0nXuStXvxwWgsNsVbXz9nn/+zb9EKajx0+nFGw5jtzQ5zk3OYkSV0PTzfx5GSOM3Q/T7Nlg8q%20Aqo1CoEYzxgZlNHjRTRQbgVGxtw2ykFJgQpDfNdDOGN7oN0h5LHWl5C7GvL2tnQP1q2G/XJL3jfI%203CEfGQ7MLXDj2ibPPfM8g86Qiek6nf4Ok602nufx/PPPs7y+TKvVIisLtClRSpHrEl1ojKMprabW%20iPj0pz/NoSMHxQ8MRlKIq/feefx/fPLDT/zqzZt/zNrGAKHqhK4EY/CEwHclujTkxlAaMa6VXASW%20IgEjUvzQw1OGoU5pN1o8/NBp0vQAg2GX9fUN3rq0wrtLXabeuILjucRpwnavi3J8HDfEyiZGR+jU%20Q4kanmtpBRprU+wooxg72FqjEYWGsqDoZ5RSo4yHUj5ogdUORQLdnYSsUIz6UAxTPCnIE4fAm8CX%20mu1kk1pgePCBe/n4x0/TqMGtW+AoweLcAbLmIpE3zbs3l7m6+nXO33vMPvLIfk7OV6C0Phjaucbe%205v/f/ngfkfO+6N+K7Te+9g2e+8rXuHbpXe44coIzkxeYnZhi3+JR4s4AVUpc18FTDtoUjEYpmdQ4%20aYvIgC4MRgiEsyvLbFH2fUaDY2JbakCYcautyoKEVJVI0u6AHu/xQpXml0UqB4ulTAtcG4KBvFuQ%207OSQurTdNqOO5Wt/9Dw7az1mp+boDTuVk7QUXLr0LkurSzQaDVxXkaZDgrAaIB5lQ0pjSEcjombE%20qfvu5sknn/wrXVn19NNP893ZEc8Kv/n0N77xHVavL7O47xBz8/NYDEVZVKmjdMizHJ0VYxQXSMdB%20KYkuCxAWKQxpGhMFPov75/nIR+/g8LHDzMwcw0iPwShnZ5TRT3IGaYkb1pF+A+XWQIbo0idPBelI%20kCcZjcCBMkGakkAqAk/hYCmSjHyUYXKglEjr4eAjjYewLhiX0UhTFApd+mQDSxqDJ0N0XpLEO3he%20weOPnuTDH7mXQwdhMIBkFOMpjyKrpEkWD0wSNOaIRwWXrlzlxq0NMlF/2m8GTy82vD0g+v8DMR2v%20W11koeNFz+6+bfnimv3OCy/x/Fe/zlf/5GukwwJf+uxsdtnZ7jM7vYAtLC2/gS0NRVZidInjOXhR%20gFMLQQlUzQdHIKQcA5FBjuWZq2ngMTAJMTahGN9yuzY68n2st7QIWQkLVg4dBimgyDJEOTZw7MD2%20tT6jLU3NtglMnWf+49c49/oF2u0J+v0BO90OtXo1V7TWWUHbknq9RhwP0VbjBy6FySlNgeNKRnlM%20e6rFL/zSz/Njn/3EX+lMfF+91R9/7A7x8IOn7dLSGjNTDVwHlpaXyXKNowKUcFC2pLAGiYtSLnkx%20Iqo5GGPJhl0cqQk8lzTu8PrL3+GeUweJM02n12WUZ2glEMJBuC6+qsYEkiQjH6a4MqIWTOD5AUmh%20GfRjNocDpJNQqwfUgojQdymKHO2UoCyF75CNLJQOWBedC6T0sdYlzw0aF6F80Dm+4+JLRWdrBccd%20cd+pgzzyyN3sW6iGLHXZZ6JZx3UgS6Hd9ri5OmRqts6Ju+5gba3G8q1LPPvcq2xuHuO+ew7bew/u%20LbP9bY+wNn/7Z6yTgitvXbdnXzvPudffYvXmBp4IOXnkDiYnpsAqzp29QNxLuPvYCRrH7iBULkEQ%20IRSV2WEGRT/Degq/VcMb+5UaVKVSIXcNTQ0I588JFI3rtbFv4O2JYWF5/yJJJdMjsMaAVnh+AAXE%20mwXxdo5f1vF1jbMvXeT8SxdxTUAxLMmGGaFfY3u7i1AS13UphSVNU5IspdmskeuMvCxQrkQLje97%20LC7O89RTT/2Vr+1fKP78n33+M3S2BwyGhlsrGwy6m2gjCaIGgd/E80Bri5IWYUuEKTCFU+2ZCYMp%20YgK/ji0Ltla3+Rf/6/9CLspqoc8P8aMGOC5JFpNmBQhJ4EfUojo6L+lvrZKPQOITKIlJDYaSUdJH%20xyP8qHKvrfkRk/NzLN/skGuN0B7YgDLXSOXjihBTWLQN8L0ajpOiZIHWA6K64OTxfXz0yXs5sL8a%20nc/zPjAiTVNS6yBFiOd5TM95jNJtTOmwuDjH9GSDleUbvPH6DS6+eZXOj3/ETk/43HmED8wlGVsg%20xd4o99+muHXhpr108QoXzr3D2+cvs3Zrg3NvnGff7CIPnH6Ia+9eoRCayclJdnZ2eP311xGjgsXJ%20GQ7u20+jVq8UE7MMQ4YVChsViMJFNEG5Y6NSIbCy4o2Eszt89L1Kx/eD1PitdtcEXo7NK5zbGkjs%20QHd1hMwjZBZw88oaL3/jDI72saZgc2sLx3eQDqRxTr1Wo7ApRpcUZYlSAtdTDPsJqrL9IUlHtCab%20/MTnP8vBEwfEXysYPfLgaS6cv8yZNy5y7eqIRuiSaUHkuwShAm0oy5IyTyiyjDBqkGdDHDfA9x10%20kZAOCsJaRLPmkRbDKjX1fWSgKExKkiQgHcKokpZN0wFppwelwrURgfCgAJ2UFHmC60NY83CNohym%20JN0RIz8nCgTkDhQCJWsIAoTWWAIwIVaDI1r4IgAlSJMOmg2OHq7xoSeOc+8phyItydIunmPwaoIi%20SwmCCNcrGYy6OBhqocEWEA+H+G7IkUNHGU3OstPZ4o++/A2OHVtgODpm7z4Zioa/y8PtAdHfpjj7%20Z2/ZV156nVs3V7l1Y4VLFy6zubrN4vQByrykVW8x2Z4giQdIYTCiko199dVXWZycY9Dpc/LwUWYn%20p6gpnzwuyLIEIweovAbWhxoIV2JdKgFBkeMhkGNNeT0GHiHE7RxIjv8mEBitQRusFShhK/EjATqG%20MoP+ckF/I6PFDGlf8+bLF0m7BS4eg2FMPYxYH/UZpgNmJ+e50blM6cQYN8f1HYT0SPOcJEuZbLQZ%20JDG5LmhNNPnPf/qnfqDr+heC0WjYw1OGfmeDwNX0ekm1mT/coRHVaDUjut0+UrhEYYS1OZ7jUOQx%20ZSHwvACjC7JRQdSICF0oKdFJTJ7n4Ea4roPVlnyUgxaYrIRRCun4B6DqCO1gCk2AoBE2yLO4Ghhr%201nBx6G2N6JoSKetI0aRIK/mRejgBVlEWltCr46g6eVYgZYzvJuxbDPjsZ+/lgdN14kEfV6TUvAKl%20JK4DXjPA9TSOlzI75yIcUS3tlpYiU+SZpSwKVD2gES5ycP8Cb79znnevX+Whh+6yjzx2gsVJRK/A%201qQVDWevivubHKsXe/bbX3+F5557nmatwZXL11m9tY7NXZrBJKNhysL8LBMTE6ws36Db26Ze88nz%20hNbULK47werKGr2NHTo3Nzm57xAnjhyjNjNNLS8ZvrtNXTvg+lCCrQEeGCFJrBpnOBVXZG8boAoM%20mlLn+Cqo1j2gkgmxTpUFlVXSZHMIcVlfirlxfoV6OY2xgkvnb3Dp/HUc4VXbFVIyTJJK9VYotnrb%20eJ6HtoIwDNnorFfSJ45HVA/R0lAKg+s7/Lf/9L/hwPED4q8djOqRRzzssrF2E1f4+K4lSWMG/RFR%20FNFuz9NqBsSxZjjsoJwI14vAWoy2aKGrGQdcbLFL+1ussWg0pbSg3LFio4FhAmGd0I+q2YnYUKYx%20LgG+UDiew/ryMq12jVoYsbG0DEISTc6TlxKMh1A+nqphTEBZCKSoZEe01mSjmPnZGkWpCUPNE48f%205I4TdTADAq9LKwwI/Yh6vU694RJG1X2BkwMWad3x6DzoEpIM4iEM44Is1ayubXD6wfvo9XZ449xF%203njrEg89fNo++Mh+5uuCwljcPWWSv3Fx5cIV+9KLr/PuuTXIXUzmcenGLZauryMMjHoxYRAgUTh4%20/Kvf/N+YnKqzOD+FJcdFsL65ylS4QFhv0HQi8jjlnTcvsfXuKncdu4N9Rw5TP3IUs7ROf6NH/egs%20zhEfOwLtQOi5aF11zYSo1qTA4oiqheYrp8qbtEWUIG8LYLPrkkqyXdJZHrJ2tUNDzRDZNq98/QJn%20vnmWwK+RJTnalpTklKJAixItSqwwY70ii9aGdrONEZqyzNDSYPOUNE/41Gc+yb333/cDX+e/EIwW%20ZkIxM9GyZRqz3dvEyAhtwHEFjlMtttbqAUWZQi9DI3EcpxJ1siXGaKSUaF1S5hJpfIytxgIMAiN0%20lW7K6oIKERCJgFAEFKYkLwoowHMkruPS7XepBy55MiKOB3hhHYRLOqq4IWMqAX7leAgryIoS33cr%20VC9KQk9T5gPa7YQHH/6/2XvTIEuzu8zvd85597vmzaWy9qqu6n2RWmqptSAJCSQhIQRSIMQygAeI%20YQB7bDwMjB1hWxrGYRgHjvAHxo4Jez74w0RggvAYEyyDENpbS69S79W1b5lZudz1Xc/iD+fNqmqG%20mEGDWhAzeisysqoiK+vmve/9n+f//J/n+R/n0UfX6fUnKLPDgfU+K70BSRSSZZBl0IZDYvbnpVoS%20ylePTIsS8iqkqEMOHT3GlY1tqkZw4uQpLl/d4lN/9hQvnRnz6Bvvdu99YyiMc9TakIbf2dX2t54X%20evGa+9znPse5sxfAxIRiyMtnLzPZm7K9NaeYGlaWlzEBBCLANBWLWcnG5gZ3nHqErNfFugLhFNPd%20GVVTEsqu35JjHJFWTDcmvDx5kcW1GasXd1i68xjDzoDycs50UtI5OSBdhaqCJMOv1HGCSEgsPtUC%20IQiUwPghtl+DJFtuqAY7dhTTinzsOPfMZYbJAVYHQ57+/GWe/uqzFAtLpAJqqylNSeNKanIaUaFl%20jRENWvhAn6IoyLoptbNo3aAx6Kqk28340A9+iIfe9JB4TYoRwKNvepgvv/4+/r8//DOm+Zgo7TMY%20rRInIfliSllqAiXoDvvM54UPcMJHySopfRXXDVUOYSzQRmGdREhJKBxSKJwVCCHIshRpHVQVorZE%20SqKERBhDXS5QouGO08epqopzly4jnEEGCboC25p2rb1F3AnhCAKIE0FDRb9vkezw0OvWeMfb1xn2%20czppwbH1ZZaHHYadALk/MW0nqU4YBLlHRoQI43MenPTDizSFOIUBUDSgomUG3S6TuSHtjIgubHHt%208i6/c/aP2Lx2h3v9Q8d44Hj/O/Dob/F15vGL7mtfe4LrV64zGAx45KG3MuwdwJZdnvjSb/PKSxcY%20dAckUY9qYQlVRlOUdLIOuzsT3vnO97C80uWpZ77EYJixstpn9cAa5Y4hCVJcYTFOMBguEYaC2eaY%20FzfPcOPamPWtGUcfPEVydA1bl+yMt4nWuiwdTXxsbOBbNzJfb2ID2vowQrV/Trq2NcthuqPZ29ph%20Pq7Qe7AUHGAlWeP8sxMe++yTTCcVg+6I8d4elc4pbEHhCipKGlFghEdJTmhUpMjzBlkKtKgJgoCi%20WqASyXe98x08+tZH/1rP+7+3GL3xkbvEj3zsI66sDf/m01/BBQFpGlPXFXu7O9RGkqUDBoM+Zd3g%20aGgagxCKQAistdimwViHVLFHOyjCMESFggDhtxgEAcVkj1AFPn7WKSSBV1k7TWUqTp4+yqHDS5w8%20eYqTl6/w6T//AsVkl97yCWoTUTc+NMpaSxAqgkgQRAZtZlixR2egefCBEe/8rnXW1yEKS+46tcbh%20kURXhjTwAMiaVl9mQajW2ItABcprzxxo22CtBimQQiIIEU5z5EDIaJBw/kJNMY+48+RRVgarbG1d%204yuPvczZs1d56f673RsePsHJlVvqOWPbsLnvXN/2S89gsdu4reubPP/8i+xtT1lfP8TpN9/PfD6n%20qTQmkIQq4f77XsfVS1voxtHrDpnsToiDiEAJdGPodoe88x3vYXfvGi+fHVJWORubOzSFYxSNyLIE%20oxv2tmcEZcCS6EOQQONY7DWc2TvLxqVtDt59jAOnjzBaTtF5zXyrRgwEdWAIo4hkmBH12newbM2u%20FnQDVQH5rGI+XlDOKnSlCZqYcjvn4dNrPP/1OX/0//wZkxsF0sVcuX4dGUClCwoxp2RBJebUoqCS%20NbWosWgUEMcxYHDOYaWlbEpOnzrFT/zUT3DyrhPiNS1GAB/68HeLtbWjrrf0O5y5cJUir7mxN6Us%20c0SY4tpMxiSJKcsKdIULYqzTaKMROJIkJkwl2laUdY2UHlqK1uMmdI2r59ggwDiH1gYlIrqdIcOl%20FdJ0idGBlNFKypHjXU7edQ/9wZAvfeXrTKeW0WCJG9sFSimMbRBWkqYxjZ5jbMVgWHHidMSb3jzi%200BHoZoZTx0as9v3PmMUSUxsCoVCyLQwSHAG39t5qEBIpLKH0aMy12cKGhl4UUTYQCjh9PCKLIs6e%203UGnmpW7TrGztsITTz3Jc899mgsXHuK73/WIO3IEDmR8J6Lkb+DKr+HGO3tsb+8yG+dcvnyV0WCZ%200bGDVKVmd3NBEMQoE3JjY0qvF/PBD36Qzetb/Omf/huOHTxJr9MH63BSoZuCo0dOsLmxzXQx5cEH%203sC1rYtMJjtMJwuCOEAsHPWsodot0RGoXkovTKCyzPZKelmHYivnzPbzbJ/b5NSDd7J84hB0YD4z%20EBlKsWB6ZYZIFCJTmFB6/Y/2B6cxgipvKBc1urIEIiRwGSfXDnDtjOOZx55lb3NGHAyoakNhaoR1%201KKkpKB0CypZUYsKTUWDaUFGRRj6EDNXl+SLnDRNectb3sz7P/y+vzba/0sV2H/ZdfjI6JPG9T6x%20O5mzmOdM5wvKoiZKMpSMQAjCKKauNabWBIFCCUFT12RxzPrhdbqDjMqUNFUBTvs5gK0xpsLakiA0%20bTxJgUDT7aesrS+xtr7McLVLrefESYCxgm6/x+p6l72pYWNrj6XhGmnWp9PpU5Y1ja6IshDtCrr9%20mIcfPsSjb+5x7LhleSXkyKGAtYGvMdVsQhYHCGsRwr0qblI4gbV+QZ5zDVY0OLE/y5AtagqRKOoG%204gCiwO/di0PIohRdjdnc2kKFaxw6ch9xPOD551/mma+/gG5ist7oE8Men/wOt/3aX2YG0+u1u3Fh%207xPXr26xeW2bnRsTFpOSleEauganQ9K4RyQymgoilXJg7TB5UTBaXmIxz3nu68+jG4MSCpygLit6%203R5pmvLyK2e4ePECRZGjjSaKErqdLhSa3c1tdnfG6FogXYiSMU4HFIuaiJBmXhM0kn6YUe1O2Xrl%20EuGsob98EFvUhColsAH1rGI+ySnzhnzeMN6ZM5tUlIVFlz4NAxODSxA2QjUh4TzgM3/4eV558RJZ%20tERVC8qqIQwDZs0MTUEpZlRyRiVyGlnSSI12Dcb5UH/fDTi0ayibkje/7c387M//LMdPHf1r7xz8%20pljUNAvRpiSvF+im8psHxL62QZHGGWVQ0QQNSvkAaWs1SRqxtjqCKKCocorZnKausSbAOd8WOSlB%20+OB+pQSj0YijR9dZWT2As5LpfAerHGfOvswsd+RlzOb2gmvX9+gOB+R6wak770c3iqIuGI8XRFFF%20khiOnUh597uWOLqeMxpMuePIEqMMysIRS8NSf4DRZfuYHTjTTiG86ExJ5SMcPKjHYtEWv25bhAQt%20x5SGvt0y2q+J63X9M1PVCY0V7M5i8jJgbfUwaRxy5sxT/N7v/gEvPXuSd77rDe597zjynXL0Gl67%20ZwpXLGomuxPG4zH5okSIgF7SJ+qllHlFJ4qpK8NsL0cJH8kqrODGxg5hFnH+7Dkeft2DfOD73s8X%20PvNFqqJg1FsmRFLMSy5XGyyvDOh1V7h04QqrB4cIabBJwuHhOoudCuOgFpJrkx3ms4aDvXUGIkMb%20QyLAlA1lvqATxww6GTuvXOf6pesceesDDE6s0x0tYY1CUIOEJG9QAAAgAElEQVQIaQKJEjml1Ghn%200Y3GWosgIhARUsZESvLpT32Vsy9fZnNjTNqxhFFGZQtyPUfFloUu0EKjMdj2l3OmXeRofHjbdAdl%20PEGVdGPe/o638s73vfVbct8K5/7qi8K+8coN92v/3a/z1JPP42zAbGZwLsbYiE62RK87QgjFpUuX%20UEqgq4KkmyEl9Ho9hJJUjaWpBVXpd61laR+lQhaLBaFyxHHIgw/cz4mjR9jd3SWfF3Q6XaxU7DUF%20Ml0mz/uMJzDPJZXVhB3BcNTj2LFjlIXh/EtXCaSikzh6A8073nWae08H3Hl4wfGDIWvLXe9+NhBg%20CSQ4owmC4NUC11c9xRbrGm9QdK1mn+CmC9q1+d0GqJoG4wRxFGCBjc0pFy8tuHK9S7GIsFRYU5JG%20lsn4Bs99/Ql2blzh3e9+G9/znrdz712xACiqhjQOW5DmWi/3d65vig+6gptPG4pFyeVL13DO7+1z%20zuGsaIcd3uburEA4P5G1VmCNxJo2iUx6B7x1mlAqrl6+RqJi4jDln/+v/xvT3RmhigjDmMl0h7X1%20FXYmm6TdkNFyjybPObyyxmRrj/k8956zxiIax4H+GifXDpPpELFoMHsFKjeM4h7rgxViETCvC8ZB%20xcF7TnH8rns5dN8R9gwUEYxZEK3EzOyY6zeu0F8akiY9djdm9LM1IjJeePwcf/57n0ZpPzAyztK4%20itpW1ORoUZLrMSULauY0osBKjUGjXUVjK2TQYKkRgWVztsmP/diP8uu/8UnWji1/S27MbwoZPXh6%20VbzrHW9xT37tSRodMFpaYmtrTrfbIwoVYSTpZB2Wl5eoqoJCGD8OLBcgLFHcYTpZgAsJgw7O+lS4%20TiLoZR2UtBw8eIDXPfAgp0+d5OL5C5x58QyuakgHXQoZMS0Vk4llsYjRTezFXp2ATjbg+PE+X3ns%20DPfdf4oXnvs6aaL4+MceQesx3axidRgwSBTRzcmnJRASJcCpkHYvUuuIhr8or/eaKV+EENIT3G0x%20ArzGQxqU1D5AHYVE0OmGrK4NuXotb/P0DEoKwjBkeXmVu+68F338BJ//7Fc5+8pl3v62N7p3vOsB%20DiyH3gLpXPt/f+f6K10O8svG5eOS2SSnmFbUdU0gAgggDkNUGBIFAUiJEj5ZVFeaxlhM7agah6ks%20tbGgveK5amqSJKEpKzqdlLtP3cXVC1c5dGCdLOgyn5bEUUqTWOZTg9AJ5dywbRbECq5d26Va5Gjd%20HnzCgjTs1BPkGJaiLqkM6A1jkn4XV0luzCdERuCUpCgrzr9wjrPnNzh84R7W7z7FiYdHSNnhxnSO%207MDa6jLGGUyVc+jgOjEJzz19ja995Qlq61DWoG1DYytqk1PjR/lallhVIYSnT3C+JTM0WGcR0qJt%20TdJRzPIFD9x3Hx/68Ae/ZYXomy5GAD/1kz/GxvXr/Mt/+a+4srmJCHtYHTPJ5wip6WYB/V7IxOY0%20BpRyuNJijMFq4zsg4ZASVCCwxlGbisbW9Dox2jTMi5xOt89Dr3sDYdDl4oXL1C6kXNSMx4adnQXG%20CoSMaXRIMw8xeYdzL2gCm/HSN75BQM473/Z2Dh6APE84tJawvARp5jfZem9hu4DSq5xuuqIdt9Yy%20OHELGfk0GXxBcrc8ivtfYo0mkBKp/MJJ2iLSTVPkMnQzR1WBMwZtDFXpiELF8soh4jAgTrtcunye%20P/qTz/P4U8/w8Z/4qHv93akQQjCrLL34Oyz3v+sqNnFVmTOfzJlN5lTzClODEAoZKoajHioMyZKE%20OE2JQ+89lW06h7BQaWgKKGpDtaiZFyX5LKcsGrIkoMwXdLMORjdcuHCOc2cuMVpZ4/nnztLvjChK%20TRz1mBcT0rRHXs2YjGdkaUThapzR7cHi2olvCEqysA2JaMiLgtpWBNkycZxQzWsW0wJjoJAaU2jy%20xYKtZ2vi65c4Mb6bg3cdYnh8yLRcECSKne1thFWMjh1itlvx7Ne/wdmzr9APehhnqG1NbUpqk9PY%20goYKLStUZDDUOGkRzrQLJBu/TFI5pBTsTvbo9BI++sMf5QMfef/Pfytfv2+6GB3sCfHL/+UvuDvv%20OMX5i9e4cukGf/Inn6WYzzG2JAx8L4poCKVDKIkKpJ9yaUsURUgRIoRAKUmSRDgrvGYpgs2dbZ59%207jkG/RF3n76XTm+EY4sbN+Zsj2FRBDSFAKEIo4jACsqJZevKgosvXabXd2ycfZYf+Ni7eeThiCsX%20tjl+rMvBFegmELYIw5jGq1Sdz4Vx1t6GPiRuPy8Gi21dP64V4d+sPrcVIuFAtQIlgUBJ104ZJSGe%20zF4aZsxmOaW2aG1pmgZjIiAgkimr6yc5dvIennr6cf7oj3+fF89d4ft/4APuPe9+iFMHvkNv/6Ug%20yMDsGq6uKuaTMUW+YDod05QVQRDR6/UZDkYknYy0n6JCvxZLhtwytu8H4CsILWBgaBV1lTKfp+zt%20BcynC6pZw2TqC0vWjdndHBPGEadOnSKLhuxsL3j2medJkghB7IlDURGozPvCMKggxDlH5RxCBqSd%20lCiKkU5SSQuRYVZVyHpCKWqkdThZY4xBxClaWoIowyjHmQtnefbKS5x+3V088u43sHp0SCfrMjjW%20RTeC3Ru7fOlzT/P1p7+Bw1CTY0WDpqZyhUdEosKKGisqtNU+uVXUIDUysARIjPWBaUGkmM/GvPPN%2038+PfPyHCWL1L/5GixHAsZVM/OLf/SEArm47d8eJ/5Pf/b3f59z5K2xuVayuHgahCUJ1s73RWiMM%20aBMQRR6V1E2JMYYki+kt9fwTrmB7b4+vPvkUly5tU1eOjas77OxpimYJoQbEwlFpBVIREVE3htlW%20gZSOjb3LfO8H3sN733OCxdTQCXOWu33S0DdYzmmEkyjh/GLNNifm326FZBur67dymtYXtI+qhLup%20sn9VQcL41hThU/j2b3ZhoJPSKtM9THcuQLRrYqxKWCwWZP0uy2unOHL8IR77ypd48ez/xZNPv4MP%20/8B73cP3Z6wP/wKT5RqkCOA/MT6pmcFiF1dMKuazGVWe0+gK3RRYbUiShP6oz9JoRL8/JEgFKuZW%20ANltLZ0Vt1I4HL6GBLEXswZdiAc9yjxj59oecXKAva09JDHHTh4lTQa88NRZ3v+BH+DMCxc4e+aq%20v49lxmK+wCDodIfUtqDWOVJarPOBgEZaRCNxwlE6aETAyrBPR6Ysduds3NhC1IZUJsRhQigl87Im%20wpAliv5yj829G7z80gtsTa5w7M7D3HXvSR54+CEqAc888TW+/KWvMJ/U9Hp9FvMJ1pVo19CIGiMq%20GlHhhMbKhoYK4yqsbhChRUqHxVA3FbVZAJaH7nmAn/ypH+fYfd/6Yct/sCfBWneHlOLc4RUh/sf/%20/ue449QR98lf/5+5/NI5dpVABSlKdZAi8VlHlSGLMpq68T1zqEA3GGpUP2I46jMej9HWsDedMJ5W%20nD+/RRqPcDpksQhpTEAcJ9imoc5rTLUgih04i3AFKih525tex/e//xj9GHZ2Nzh2tMfKMCIElM+c%20QgiHEuomXAaJbMf5TtCaD/1Ne/P3CExbjPbBkaRVa7v9r3VYXYNwCBXcCr9q/0ESA1QgNFGY0hiJ%20VCkWRW0Ux08P+drXrvLkk09DtMRo9TSbm9f5V7/zKZ588mV+8IPfzevuP+EefniVQ61g8j+1RICm%20gJ3rlcvHleeCFjV1WWJ0jTMVQSLo9/ssrfQZrg7JeimEbSRQCLZd0eqEXyGNEOyfGQrQFqy2VEKg%20hEAkkEaQdBVZtIKr4XIkuXJxi+29TTr9Faqm4bGvfJkkGCFUTFNXJGmfZq5xzqGtYDavkAqk8sJc%20h8A0NXqhmeUWaRz9JEGFEhs5CnJyVSKVo8Ag6gUBBVlnQNjPmOsCKyVhorDCsL1xnYuXXualF5/l%20lZfPUjeOp55+mbqoGQ5HTKdTcj3FUGKdQTuPiAwaS4N1xv/Z1Wiq9lB1rQm3ojE1vX7CT//MT/Oh%20H/v+U6/Fa/sfXIykFOcA9maLx5d6nUd+9ie+T5x5+WX327/9f1CWM4QyRFFAFMUkiVedCiFa9y80%20umJ5ZcTBowcJ45Cd3V2iNGL7xhh04F8EGWF7jjRM0M675J3TNLXFaguuoqEmCC1px3HocIcf/sgx%200gD2tuYM+xFS13RjP3b3TZT1jZSQrz4ihfBmXedvlJtrq8TNAxTdoqf9QiS5FTm8H//pSaj91L2b%2035oggDACR+nNwtIrdrW2CBmAFLx8zvHFrzzNuXMXGC6vECTLRJmlKCrOnB3zv/+L/5fXP3Sad77z%20Yd705nvcA/fGv7nc4R/v/z9lAXu7xgmrSCLojfy3/o+B+97dqX5jtlf9WjVrmE8K8kmNzS1oP9OU%20gAhD+p2EldUlRgd6qH7o17PuByW2WdBSuvYI2j9o7M3XWygIlX+tcRbtHEoJhFCkA6CGE3cdxDnH%205XPbZN2YN7zpDfzR738OXWyzsrrO5uYNf+AFGc5JqqpEG0kSKRACIS1CWIyxFGXpRbRKMG8seuca%20uyomFoqwo7Ax5GVBU2qCRqOSIfFyynxvSlVVFPWC3qBDqFLSLGAxnvP4Y19jVlTM54ZubxVtanZm%20N1BRjZYlThq0MFhbe4KaBofGonFK4wS+ZWsakI4wUgRhlw9+6H384Ec+hGjf+39ritH+tdTrPLL/%20+7//c/8ZX/zCYzz/0iUWC9sqNg1hlKCUZTGf0+n2sbWmaRqOHjvEez/4fUxmY37/D/6AOI2RgUKF%20KWm8xGLmmM4KTNqh0RLnDKaucE6RRDFSObSbo8KK/iDkwx9+lOVlyOeQhK21XnsNdRS2U3nh2lG8%20vw2d8zyQuA0Z4W593i9E3u7jsAiPsG7zAu3XIYlCKdFyRcLnqBuLExKh2vhP19zkpBrnRZNRoJAR%20PPbY0zz70lmSJAMZY6VgPN0gSfrUTcWkMHz1qWucuzzma0+c4+1ve+DXHnzg1K8loWY23uKpJ56k%20KnKw0ElSsqTj4jim1+vRH/boL/WQoSOOY5IkJOskdDL1m8ujWwXtb+N19eLYzaYV2xsTTOFoCout%20HMoGRCJASYmSgqWlDoPljNFyH9n1kavGaCwCGYj9iLGbU1K3X4ac53OaRiMCRSQDf8jsx7laA8Ii%20ohACUA0cPH6Afm+Fsy9s0hmOuPf+e3j8yy9x9333UuQNm9s3KCuNDAOsCxn219B2grG2lRM4jDEY%20rYliRZRGlEWBFRqRSWQgKMqSfDZDOEma9WiM4fLuNerQ0Uk6rK6uILYMdVMyn42J0xBjNLX1gyKl%20FLP5BOdKsiymIPehh62bwFjfMhpn/Ge8z1RKgTACqx1COuJORtaL+NGf/Djrpw+9ZkfbN6Uz+qtc%20f/a559w/+ae/xZceexoZDBEypdNZBhlRzkq0cYRhTINlaWmJ1YPr1LqiqBrysmI2LZGqQ7lVEPSO%20cWj9NJvXp6ThkMXMkiYjqkLSWEPWURT1dY7eEfDjP/E+Th5PqcqaSCpockw95fjRHg++rs/qildG%20C/StLOG26bqpN2nvQIHA7OtU8MsZGmeppWN3MkZYyBKfpRQGkjSULVKyVKYgUApFgEVirfTZwwZe%20uWA5e+4G1zanODLCdBlLQtaDT3/mBT77uS/QHfQpy5K15TUOrBzk85/5ImVZUxcaayVZEiNcA6Zk%20ZZRy/Mgyu9vnefRN9/KmNz1IIGoCKZAywNSOxbykyLXn5pIYbTxPhzDEsSLNYtI0IooD1tZWCAJJ%20FEWoQPp9W0oQBv7PaShb4zEMR75+C/naIK9P/+GTrixLTp44xcbGBmncZbZXYhqHLQXKSpQLiFVA%20loSkieTYyTW6owD6QOBwoUXEoj1ILKqdhsoW+d7O+fljBmrd4KwmCEOUkDRG46xBSkWgImgErhII%20DfNduPDShJ2rFZFc4YkvvshTT77IdC9nkZeMJ7s4oXFohCzRbgKuBOHtFbQ2C0GDcA1hoDyXiT8w%20lZMI67DW4qwkSZepaksWJfQ6XbIwJYlDMIZFPqMsc4I4AqEotaXUDq0ltZYUzYI6XGCkRzu+ATMY%20W6FtjbUaK/xjSrqRR3O6pqjnPPDAA/zqf/vLfOBHv+c1xdjf8hyL73nn/aL6lX/ofuVX/wdefPkK%20S8tDdjeuMFo/wmh5wHgyQ+sKiyMMPZLIpznbu+P2dghJ0w52lLG+eojDB49S5te869g0VPWUJF2B%202lJWE44cX+Ltbz/CsRMp2nqCzugMYfDCRBe17vt2xYuwrfDNk9e3f7jb7s7bgNFNHVHZ1DTOYhpN%20UTW42pKlMaNhnzhUKAz7QZ8OSWMs+9qBxkBRVlzZ2KTbO0BRKlAJ1sIXHrvAF7/6JL3lFc6fP0+/%202yXr9njL217Pl7/4OLNpiZ03RINDOBdjraWuFlzf0MxnUyQRYXycg4fuQddTrC78Y05D0kzitI+c%20DJUvQqJdYWxdg3X+RtR1w4Vzmy1iMLclHwiCICAQIVJKJJYwDEjSwAUhSOVQyhGEguFSl8Vi5h9f%20XSGEIEkjlpaWuPOulX/vjfyVz110ly9f5dL5i1w4dx5jHA/df4MTJ+6g2Juj2tSESChvTnYe28Rx%20yGApozsMoIt3tzvRol91c1gm3Ku6cnC3cX7twRSqCKRq23gIVeAjbtrsaSvdzR1mUQd6o4TFRFPP%20C1bXlxhPd7h69YbfcAPEaQfrNOPpjCRW7YSN1oXtEK6VsrYV3Tkfq+NbSO+FFNJhhEAqTX99xFK3%20T1kUbOxcJ5KKTpphhSY3FWFjkUGIthZtLTU+R6smp3a+LRPtc+Ncg3bG80KiIc0SqiZnc3eT1dVV%20pjsTsm6Hn/6Zn+Z9H/6e33ytEfBrEqrzwffdLy5e+nvun/3WP+fCKxfprhxiMd/zc1jhVdZWayaT%20PYy0rT8mJAgT762pamwj0HXNYjqjLkqMbVha7lCUnnzTpmawlPE93/tW3v1ev8DRuhyhGrCZv6FU%20QuMEixJ6NcioPRXd/md3k/9BiJtje/dq6OjbLuEl8VEU4WRAWRQ+nyYSNwG/wSGVQiDxMzVBIP33%20bzRMFiVB1MG4iMZKAgUvvLjJ5x57gt1JQVg2HDh4mMVswjxf8Id/8Bmvz6otMhtibETdREgUYdAB%20XTHZm7I0HLG6eidNA0UpqSsvXIukbH1zEUI6rG1QSvtd68IRSIEKYqIoJYwUaZqgTU3TNNR1TVMb%20/7lpMFoiyChLTZ4b8gLC0Ad9WWdwznDp4g2m0wlBKCnLnLouieIAIS7wmc9GbrA8RIUBgVRcv36d%203e09sJbFbIG0kkBI9rb3OHvmFdI4Bit4JbjGPace9lGrZQNWEKqAQEmM1igFWT9i+WAPem0hkoDV%20GIwPw0P4BAhcK0a9NUm7Oe0UYBuHDIV/W1gH1uIzyjxFgPSrp1EgpSTqwsqBmGpu2ShzDh1f5sTp%20w2RZl0ZLrl/fpGk0UgrSpIuh8Vo14dX0ri32+7/2I2Wd82vesQ6c9IeHFNjIcejkYU6dvIPp7g4v%20PPsc070xum4wjaY2NYHSSN3QGEtjoLbOZ4O5hsZU/vti2x1qFuu0t3xgKesCJy39fp+NG9dZX1/h%20Z37m7/L+D7wflb32rfxrlvD1Cz/3PrE9nrjf+q3fprFztHXkhUOplDBNqBaa2XxKaRrCIGYwXEGF%20Cbop0Y1Fa8fOjW3G2xX5RNPpjRjPdgmCLoiGTi/hxB2HufvuiOEILj07oZs6sKGX8DuBUgGVsSxq%20qAykApwUSKf8HWh9YfqLo17RktLOgXUWhWjVRpAlEYEMSYKQQgZkSUoYKg/zne/HG2GwxoHzIaDG%20wnQOe3sFMuhQ6ZDuoMsr5ws+9edfpjIhYdrDOU1R1qweOECoAkaDEbqsSeOYphQ02qvzrJQESUqa%20dFnMNL1uSidbosxBawkuQMp9XkRjqJDOINycIHL0OilJJ6OTRqTdgH4X4o43+WqXIayPozA1zBaw%20mC2YLwx1ETGfNSwWC4wxONv69ZxECkGahCThGp1ORl7MsVaTZhHPP/88f/Knn2dz+wYyCun3euSz%20OVVR0u/1CAkIhGS8s0soFbO9CcePHiMKIjYu7nH5lS3uPHUHjao8MayE/5B+BJ/2Y5IRN+M0EA4r%20TIuMHA51Mx36Vf3Z7RojB9Y6pGthsfURw7LtQ52z7V879i2MCOiMYGmSsreToyLBo299iL0dzZVL%20N9Bac21jk7ys6PY6zPIxVvrxiBfZ7gdn+dVD5jarirWm5TAdQigchvl4h+3JDQ6UI0ygcbEjd3Oa%20XKOrmjhOkKbB2RBjDNo4GmuxwnnSmqblvzw579GRwQgNwtA4TZam1HVOFCs+/mMf47/4lV98IluS%20j3w7uMHXNG7w5372Y2hX80/+6f8ERHTiDsY2OGcIAkkc++THsqwR0xkq1Ax6I+Koz+52Tj7R1HqB%20kBGINjkyUFRlRRhFzBcFX/zSLi4YcejgOpOxRgV+GqZNg3GGvNHkVYRGYQTtydTiIeFVc3+53cIf%20l6olOFUbJgKOEIkIQ4I0JY0TIhRVU6MkNE3dapQCwiBEAtMZ7GwumC8c0zkMR12mc3jsqy9w6cqE%20E6fvZHdymeFSH63nzCdzmkXB0ZWDvP2tb+Xaues889jXkUsjZJDgrKZaTBCJoConxGGGbL1WgQgR%20YYKSDc5pcDVhbEhiGHQE/WHM6vIS/SXhpQa3xaXUFUTCSyA6ob9n+w1URYeihL1dSMcBwV7NbNpQ%20FhqtHYFKCMOY+dQjqrpUbbRvQhwOEC4hn4EKV5jlJXXtmE8Mi0nBbmQRRmPrBltrssgH1GdBzvHD%20Q+aTKV/74jMcWT1OP84g0O1kzKBCRdoLSHohJK0o1fk3lgva0VjLE7nbVari1oj05opEBzK4ldZg%20ARGom8JIKRUNGicEUgmcsWAkIoTuELrDgO2ruxw4tIQ2U8ylkuW1EVWjuXDxAmUj0Pt7YJ1v5D1S%2080E00gmE84S6w2FvWpM8hjLCYXC8cu5lxrNtkihkMtmjokCmAWEWUVY1zgmcaTyithbtrM8HUwKa%205mZ7iLA42rZdel4rCB3a5MyLMX/np/8OP/9LP8e3qxDBNxEh8s1es8L+38s98cCx03d/oixnPPPs%20N9CNoGkgShJUEPp+3oKuNEJFCKc4dvwk/c6A8c6MxaIkCTskcYpuLFHWR4QJ2ghOHDtJkiY888w3%20GE9qVpZXiUJJGktCJYEAJyoauyBMLP1+ShYD0nn9yM3JmWhvCm4VJGHbvXju5s3gFeMKnEVaUFYg%20LUSBIpQS5zSxCrDa20biIEUpgdWwe6PmyrU9pkVG1FllPoff+9dfYHMzJ0yX2d6dkmUZZV1y+OAB%208tmY6c4uG5ev8dA99xOphLx0VFVIHKUIq7HNnE4Gwi2484513vLm04QKnNWgK4wpcDYnigxLQ8XK%20csSJkyOWlxMGS5Ik8QsjHBZjK4wtCUKLVBqEvsljBIEgjqHTgdEIun1JmmVEscSh0brBWq80D4KI%20uta+LZKKKIoxWrOzs4M2irOXtrlydY/FTJPnDcXCoAhxWqErSMIeihjbQBZl3HfnA8RBxtbGLuvL%20q6wsDQgDr9zHNcjQ0h3G9FYSop5EhMaT1sp5zkcov0OeW2oLIbxi1bVaeXd78QEWRUORl1jnfISy%20V8pi2xD8xulWowa6MiipCIBy4dja2iHL+pR5w/VrN2hqQ1k37I0nqFBS2jlGNlj2NTwaMAhnfaJo%20SwW0uoObKVqubfnTXofJfMpktkvZFDS2xkrru0oJpW6oraG2GiMsvlFtQBlUKDC29vNDsS/MtVip%20vRBXaYpqgXEV3//hD/IPfvmXOHXf0W+rKOQ1Q0a9VP5Ipe3fO3UgFr/6j/+BG89nfOpPnmQ2c1RV%20gQpAqYRIhmgtCVSEUiH5LGdczJnPpjgjsbImkDHOKfJZTtBN6Q/7nL77DgDOnL3AVx67wLkzW7z7%203Y9y5GjCgQOQpJ58LKuCnb2KrR1FP+uQWYuM5b/1g++j81t/cUvuKNsiFeP1JkJKlArQ7B8ylkQo%20lJBoBEEQEoWSuoHZ2LG3vcd4d4aSy8xy+OpXz/L44y9y+Pj9SBmxmO7QGx6gXhRcvbLJ6eNHWaQp%20g6jDE48/zmpvnVPHTjAeX8HWNYEsWT/S5/77jzMbX+XOUwcY9vxjMSZE2BAVRqRdxWApYG0tY2W5%20w6ANknP7dITRKGUJgn1xgruJEqxpMLb2vi4RIJREBILekm/pOv2UtOMIQsPeTklV1kjVI0l9C2VM%20A6JmvsjZ2dmiqEqiuE9VTbBakER9pIxwzgvAQpVQlT7K1DYBupRIl7A0SNjdHPPsMy9w4uAK8SBD%20BdBYg0QTJoowaRFM6HD7ueqtjNFymw4M207NvAMflN8j1r7+dWPYm+xSFSW9QY8wDP1r74wfrkiB%200c5rl4TASQ0qRMSQpJI4kSAaVlYHHDmyznhyHms1nU4HTYVVnvvxgxWDavOscZ4uMK3RUe4/vpZd%20t87zm2WZ++BA59dJG6fbcH5BVTUkcQdj/MHpRby27US814y2bcWZNmDf+HZQeN5otNzlzW95hH/0%20q/8V9z9857ddnfYtR0bW2juEEHsAgRRPAHTi8PqDr3/9Dzzz9eeZTmeMd7exxjEarbA0WPZpc3mD%200Y7dnQm7G9vIIGHQG6G1wTYGFUS4ICXrDVr7Bmxu7rC3NyFNBuxsjTlz5jJNI0myId2+IE4iyqZG%20W0OaxiwPMpQApeRt+WnejCTwRkCPldvPuFdtEPb7qCyxDH2kmlCYuvFEpzVYq6kbDTJGBpJ5Dhtb%20JZevjrmypTHxOn/858/x9DNn6A3XqSvB9WubHDx8mI3Ll4mUIMRSzhfEMma6O6Of9dna3OTK9U2s%20UxRVThgI7rv3Tr73PQ8z6PVY6qeMhv02CmWGlCVpBstLEWtrCWsHUvp96QtQCwWEsKhAtMM+60lT%20a7zGRCikVKh2qiSFQkhDpcdYKpIgIO0EZEns4YbxYr+O82QAACAASURBVM/FYkGWdZBCMZ/PiZOU%20IIy5cvU6V6/tUFQBGxs7OOe3kzZVjdPmponaNpYojKgWFcLBqL9EFmYII8inM06fuINumhBGIbUu%20IDD0RzHd5RSZgJWaBt2StAJBgESi9lFRm0jKbWt+bopcncM6y+7uLot8QZqmdHsZQeDbeSl99LDW%20tQ8OxBdzqSIA8mnDdFywszMlDDpoI7l2fYvFoqQ2NbuTHQg14AuIwCH3EYq0OKGBxvuGlPVWAelR%20nMVghKW2fnNrlARo63etiUARxwlOOBptvMMe59GjdDjjRY1+AEOLCm072Nc4qTHC4GTN277rLfyj%20/+Yf8tCbH/gbkcl+y4vRfiF6FfyS4om1QeeTj7zpkU985Uuf5eLFcyyNlpjszShKzcponTzXWC1R%20IsJYCU6RBClWG8q8RKgAGUZY4UhCibM1ZTFnMZtRFAWjlYOooMOZF87y3IvnsfQYLnWJ0y6Vi1nM%205wTOrwrqpAFhsK+gNkhpcU7jrNuX6LYwf9/s6qG1QBLKEIXE1A7TGEIh/KI+Z1BhgFPe2FQ5uHAd%20vvrMFa7sOIaH7uRff+oSr1wtmMxqGuNw1mJ1yWxni0wKOmHMcneIrAX1vC3Oe2Mm+YxpOaMSNUkn%20QRBy150PkC8kTsOB1R6rKyEqyHF2lyw1HD7S59ixAcvLEUkqkcrDciGdz/Vub/SbpVYopAx9e8st%20wzBCtSyGIVB+4uWcwBhHqBSdLEaJkLpqMI0lLyviKCPNBixygwq6nLuwgZI98kIznc6pihzdNISB%20xOLfVJ1uitUNi9mU1z34EO949G1ILaC29OIei70FipDjR497DsVWJJmk0w/or2VYalywj3j8xFEh%20UVbcHJ8LTFsI2umVcO0Ke1+kmqah3+uyurJMp+NzuAT4xRLcCrsXzqBkyzE5B5WXkVy5dIOyhNoo%20jh5fY3s3ZzKfUpua6XwXJRxREPjH35TgGsJYgGiobU5/kLI33eLgoVUGSxmT2Q5ITRiAdjVhonDS%20F01rLc5BFPiftakasJ6CUFK0MSDaIyLnMNZQG0fa7bOoFrhQMFrtsz2+gREl3/2et/PP/pff4Ngd%20R383jKPf/Y+iGP27rtWlzidP33X3JyaTCc8/+yIqSHFGcmN7zGhpFeEEcdIBF2CMxWrQjUPJgG5v%20SG0DrPGWkiNHjnPP3fezsrJOWQnGeyX5XkV3eNC/Ac5e4fKVPbLOKqOVGEUPXRYoGRDGvhL5gWaD%20lI5AejQgWmRwa9Rya/RSV40XAkqFkoJASWQb0l9pP0jWIsRKyctnC578xjWS3lGidJk//9JVnnx+%20i+0949cDSwWmoZrP0PMFTZGz2B0TSsWgMyBJEvIiZ2d3h8ViD1uWEEVoDYcOnWLQX2W2O+Xg+hrr%20qxFRbBBul7RrWD/QYf3gkKVlb/Z0osLa+hbyu90w9yrcp25Nd269/W7yaAjTphfQTisVoQIhAgIV%20sVhU1LUBEaCdpK4lZQkvvHSeybRgeWkZXXvvXlOXIDSdbgdd59wYbzDsDnjTG9/I+9/zvawvrzG+%20sYOsHcPOErFKGN+Y0O0ucfTIMkJApWf0ljLSToSK5W3FaH9UrlqAuz9Fs7dWv7zqOXCtUdYiZatA%20Fn58f1OHxs0hFFL5wGE/mVLYGhZzzXyqmU4qsmzIzk5BEIZs3dhkPN8lySIW8xm6rjC6RgUQKEdj%20cqyrCSKY52Puvvs0r5x9ia2dDV730H2srS0jhCGIAyrTZsoL/xit3Q+IE2htiILwJurytqd9SYq3%20u3QHQ3Yne8hIEESSK1sXSeKAj//4x/jF//zvc/8b7hd/U4Xo216MAI4fWfvk4WN3fuLq5Q1eeeUC%20WkOSdCjLCm0MgQxxSJyTBDJGiQQhIxwJYTikaQLqypLFQ1ZW1kjjhMU0ZLpX0+0fYrZTUc01abpM%20WRrOnb3KfBKxspwhRELjHNoqnIIoFSRRAIQ0NDeDQqzxLYtv4VueCOm3g0iBNg7TeHjvLW4KR4SI%20Qma55Op1zfMvbbC1ZQjjZa5cMfzhH3+JyQwaI8AYTF1TLvzNKRHEYUivk4F1NLpCKbjz7jv43ve+%20h4cefpj+8gE2Nyc0Y83qgTuQLuDKhYscOrjEoYMJgwEIMWF1LeXokWVW1gRR3GouRUWjSwIV3iw8%20r3pDOq/FuT1C5S9LAXDO3gyYc86T1FJ6q00cKaZTwyKvqGsLbdxpntecv3CVuvF78O65724++tEf%204tSpk1y5eonr168ShwEHVlbJ4pgH776P9eU1rl+8wtXzlwhFQC/rIS1M90qwklMnDhFGMVWzYHV9%20RNoLIJGguK1F8+uefe1tCUGpbitGtwqua0WPQsj2Z7r14YvRbUdT27Za46UhQka4SjIe12xcnzBf%20aCKVUdcNR4+uE0aKRTHl8JED7Gxv0ZgKrSukcuBqGl0SR4qlpQHdbsq1jWvce+89/Mqv/Nd85KM/%20RBiF3LixwSLPESqiqGuMc6gg8DKPfcJ7H79a6zfXOL8yzLefDu0slfGrqcMwYDLZJo4DfvhjH+EX%20funneePbHv4bdzB+24sRwLHDo08eOHT6E+fPnmdj4wZxklCVFXGcImWAcBLrAgKRoFSCsyFFCSoc%204AhpSsNsVrKYGSYTx3yisSbC1CFWpEjVQRCha0lVChZTw+UrY1QYMVmU1FphpfL3ZuS5WyHCm29A%20vzVWgVXgFNLKVjkrcMj/n703DbYrO8s0n7XWns4+59xz7qBZSkk5Z1rpzLTTJo1tbMBUMXjEAy5j%20zDw0FLSL7ooiOqIj4F/96Kr+0REd0a5ucBEBNKaZyg24jAEDxvOQs1JKSVfDnYcz73kN/WOdK2Wm%20aegOfjjTZitu5L0ZUsSRztnf/tb3ve/zepsHEjWPiDEWSg3jKVy+OuZrT1wjK1p0Oqd55pkBf/6p%20rzAYGIxMCcIYhaMqcpp8BtoSRZIkCojDgP39XZqmRir/4YqigCOHD3Hugds4d//DDCcRg90MUxvQ%20DXfcfpSTJ2LSdkWn03D8xAJHj4aEkR9SI2ukMB6ONU9rFy/+JeSLpA1/3+fSz9C87sZTLj3t4KCL%20gEaHzGYlWVZjCIiiDsNRzo21bXDK58lbw4kTx0nbMevr6+zu7tDoBoljIemwkHaYjSasrV6nmpZ0%204jZJEBOKBGVSyklNp71At9tChYLeUot4eX6iDMRcx/P8v4n/dav+vLgYiXkhEjcHv7c6oltqbTe3%20Bfk5tsAYfI69lOgSRvsVezsTwiBlNsnodheo64qynHH+4hPcWLvKeDygKDOMrpDSIIRBSkcriWl3%20UvJ8im4afv7nf5YgkHz0o7/O+sYNEI7FpSVEGJEXFU3jGfNKKKz13ZwKJHXdYOYRWmI+G/XKBot1%20lkpX9Bd75MWYMFG8//3v5Rc//Au84tX3vCSs1N+QYgRw++mlXzt28p5f3djc4sJzF4miiFar5f+R%20VYRwAXUF1iikaCFIKCtLFLcIgwijLXlWMh5lFLMGZwOyaU0r6SFdRDHK0bWg3V5G2hab2yPWdvbZ%20HeXktaRsJHnhKEu/Bg4iT55USKSQN8/e8nnbttr5bYgUAqn8OrUoYXvPsbZV8Oxzu6xeHbI3kMSt%2025hMJX/xV+d56skN+ounmBYVB58PXVfosoSmxjQ1dZGR5zP6/TaLSz3W12+wubrKYDpmdfUqTz25%20zvGjd9BUC2TThuXFZdI4oL8ouO22Nr1+w+FDisNHWyz2/bCjbjKk0n4uNrfavODo9f9afF788/PS%20UubePYed83/8MQEgjCR57hiPC+pGEAZdNjaHrK/tYpwgSkKefOpJLl66yLXr19nb30MK0NowHA7Q%20eeNJrI0jcJLQBZSTnHyaE8s2okrIJxW6rDh27DDtdowTlu6K9HvhcF445kdRMe/2bqquv/509oKC%208/wj2vO/Di7tbrp7cE4inO+lqxns72WM9kuisMVkmtNfXGB7b5390RaNmfDEk19hOhn77ZU0CGWQ%20CoJQEQbBTRX77Xee5a677uRLX/kC166tsnJ4iaLMkKFkcekok2lGnmf+dSoflYXw4lxjrX9mKq+F%20kgF+OO4MVhhEIMjLKUsrPd7znnfxc//NT3PPw7e/ZJgO39CM5X/5XXeKIPh5p5Tiz//y76iqCqW6%20dLunSNMOVgvq0hIEiiAIMI0hkL4tNcogrKZpcmiMN3K2OmSzIVLEdBdXwBmmgxl1pFg4fIrBYJtx%20WTAa7zIYlEwnHYoiZZY5ep2GYystWrFgIfYMm0jecuZb4T+MxnlxYDazTCcVw1HJ7t6Ywbhkmguc%20WODQoWPsj+Ezn7nCtdUJrfQ4ZSGIwwRnGqqyQBcVaOMNc9YLFJ3TxHGffr+LkCdYWlpieXmZp54+%20z+aNDXrde1Ficd5lVBTjfcaThiA8RNIS9JcS0raab38sYSRvKrH/6decdWn90dR3hQdKXn9cS9rQ%207beJ0gll7fVAjXaoMCWSIXk5pNXqIAgYDqYMh2OsdSRxm7AfYIqKvd0hUR1wtH+IhIDJdMq0mkEW%200zIrJEHCeLditlvTX0yYDWv0qEWQHgyXb+3K3MGKX6oXenzgBVS8f8zo65zz0g9p0DgiQpTyb11d%20wyyH2az2frCiIE0jGp2DqGn0jDe9+VHyYszu5ojppGAwGDCbTeZJOCEqColjRd0YrIG/+dvP0O+n%203HfuPgbDHZYPL3PXXfdw6fIWcRx7fvbcSqKUQmt/BPYiRuEjhYTFaIPBgPEq7KIuOHRomfe+7138%209M/9FCfvPPKSgst8wwPfv/s7bhNK/ZyTyvKVr1xgd3fCbLrNwkJMHC0Q4GXCZV2RpAnOTWkai7Wg%20ZBspFVZUqEBQlxlpe4kwiDEmw2pHEgdIBKP9nGT5KHk2Zqua4uqKphRMRoadI4rFvmZrqaLTcvQ6%20Ie1EEipFKC1KeKSDlYKqqZlOC/YGY6aTiqoSVFpR1yEq7NNqLzOcwhe/eJ3Hn7xK3SQkcY+iLGn3%20IrI8Q5cFOEcUxbhA4rTDWX8A3Ny4TrsVcO6+e1lcOcT5Zy5Q5iXvevf7uP3OY/ztX48YjUY0pYBm%20zOEjp+kvBiBm9Pp9gsjM7y6DUmp+v704W0T+AwXnHyhHQt2cQ4gDM7Ewc22MAg1p2ycOT6cWGYDR%20gjBIkSqkHO8TRim9fo8wVIRxzM7WFsPxDgGSQyvHcXlFkWvysCGJE3oLy5i8psg1tqjoLi9iS8PV%205zbpLZ9lIU4YrBsO9xWkzLsVfVNrZOd0KiGCF/rRnsc2/8cK0cHvk2gaGiyOQPiVfpHDeFQwnRaE%20QYtKax/9XszY3LrO3v4W99x3G4+85kE21vZZXb1O0UzJa9CVpTE+lThpp4gKRpMJs2LI4tL9nD5z%20lrPyFMZUXLx0gb1hRV5m8yQaebP7w4LGeNbEXE+lrZ53YY4wCoiigDPHT/DWd7yVD33ogy+5QvQN%20L0Z5qf99mgS/8ubXnxKLi/+D+w//4X/lrz/zNa5f3mFYK9qpIE68V6qqaj80nK9p4yAiDDSmrIFq%20rl2J0XqPuhxjTUCgWqgo9qtoLRivj5HdFkk3ZbQ35bG9fdZX4aEHj/GKc4cps4xWq6YVVwSqQtgC%20awvEgV1EeAe30Y6qsTgboYKUIO4QxCllHaItfPFL1/mrT3+ZQC0SxSlZVtBqJ2TTfYpyCtax0OnS%20CiVVOWE8mKHzjHghoX9kGYThC1/8HEGUMhlnZLMK3cCzz1Y89tiXuf3MXZy77zSbN56ku+Djv9vd%20gLQNQhi0uelT9zMQEc7vvX8C0N/d4sZZa28Cwhxe2+IQSCUJEwjjAOcqGgOzvCLLNEJYZpOK6bRi%20cTHh5KlTdLuL7O+NKUrDkaUVBvtTWihaSUBVWjLT0IvaiCgiG5XEfgVKVTQ8d/4Kt92+xMqJHntb%20Y7rHlmgtzud/iJuCVV9swrnYUX5d/NQtjTN///FVuPmA3wANwtU44QPvnYWqhDyryLMG5QKUCnEW%20oihkd3cXIQSz2YQHH3yAy5c+znQ2oCwz4jgilNJ3uEVBmiZkRY6gZjHtcOHKJfaGGyz0WwyHu1RV%20w9ZOxnQ6w5j5g2ZuoBXOet2cFP6YJiXSeKqBCiXtNCFJE37oA+/lJ37yx+gf6b0kcXvfsJkRQBjI%20Tx18f/RQ/GuveOWjv7q/u8fq1eto7XBOohtDoAKSVnKTuyKFz7c3WuOsJVQBYaiwtsa6BiUhigRK%20zRMwnUZKBTLB1gJbGZQLkSYmHzdsrI+4cH6N48fP0O62aKUpWRmQNQYVdXBBTFaCUktYu4C2KVZ0%20MLQxoo1QXWSgiBP4y7+8xue/8BSQoMKU2bTAGE0cScpiSBIrokB6rKdtqKuSRheEkSRQlgcfOsf9%20997LuXMPsNhbYrg/IVQJRWW5ePkqRluc1WxvXWehI7jnnkOcPBGSpiVHj7YII0s43xoJYqQM5tsv%209fV0yxd0ROKm+vqgGbDW61mk8CJRqw/m2HauSm7mHZNf79e1n6Wtr+VokzKZSa5c3uHG9V2urK6R%20FwVhGFHkNZvbe1y8cIntrV3SqE02zVjqLaMrg6kMQguWFpZJ4jaT4ZTQhbREiq4qOu3E0xKkptXt%20ELUFYUsRJxLZ8TOTWuc4iU98nR/cxE2ZhpsXl4Ni5L/39gx7s/redNA7L0oUosEJTUCEdBH5FDZv%20jNjeHGObAFxAU1u0cQyGA66srnLi1DHOnL0DGSgOHznCE08+gbWWLJ+xPxggA0lV16wcXsIJSxBA%20XswYDPdZ27jOtRtXmcwmnveV1WgraEyDDCTtThsnHNPZFG1qojjw0D5dEkYSJwz7k33uvecufunf%20/CI/+9/+lEg6ya/xEr2+ocXoxdfyovy1u+99+FdxkqefepoiK2klqQeCVxVRMmcTaU2jNUZbr7Uw%20zm8YpCerS+dh4gI8HN35fI+AGGEFyimUCLB1QFNKjA6wNuTixTWGI02ULLC4EhK3uhSNojKSIF6k%20mMUYk+JkmyBsEbZaREmEmkfe/N3nhjx3aY3hoETJGElAmec0dYlzNaaZEoUQSuUpgs5Qlzl1OcVR%20I0TD5tYNtrc2WFpc5pFHHuT13/4ARw7fz7Vr6+wPxhTZjLIq0M2UxX7A2duXuOOODnfe1SJtQRB4%20j7pzPlBAzLkotwqR+wcH2HYO87LWx0t5w+Vcc/OCPzKnH3pT39xGLDEG1tcqskyS5yHXb+yxtTlm%20Z3vfFzknUVFMUZTs7+7TaE0UxkghGY8nxEFMLGOKsqDbWuDkiVMkUQvbOLLhmCMrh1k+tOhvtOEe%20cRpy+uxRalMhE0mUSI8BUQ55wKlyzy9KvMDx5e2nXnEm5+qkgwgqECgZIGXg+UlYAgKqXDAZGnY3%20Sva3C6pMIEyMMyELC8uMRkMuX7pCGAbcdc+9LC4uU9eazY0NVlevMBoNmc2mBEFAp9MmLzL29nZo%20tSIvrlUOpJ0TjRzGaKrGMMsqwiAmTVNa7ZQojtC6pqrKm/aO8WxCGCtULLFO8/o3vI5f+uVf5D0/%20/IMvefhw8FJ7QXefDcRP/Pi7XTtN+Z3f/lMuXbpCkqwQx4eoS0CkhEFCSIQUMZYI10DVzMnVrnle%20WqhXxjobIVyNFBmBUQgXQRVjHTQ6wGiJs5rZ2g57gzHbuxMefNVp7r6/zeJyC0cLXUOnN28K5h/n%20rPRokP1Bw2Ra8tnPP850UqKNIFKCui6o6xm2qimdIElAOYWuNGVZelZQOQFXEQWCqsjodltEUcDV%20a1dYu7HPkUOn6SSHEYTk4wF33H+Os6dvR7qSU0cTDh/pUxQZ+/uCQ8vt502G5vqZFyMN/5HjmnMO%20o93NYmStRSmvr4nDW3EE7uY8xX+5uZpZG7DOa7GyovC8chRFZYjjGAhIWws0TUNZaz+MbzRoQ5Km%20dDoLREYyqjJ2hvt0NjfIhmOm+2M6xFQuQ0TLLC2ucOXagEsXb3DPQ7cjnKNen9IEET0RE/cSUA5j%20vTI8iIP5ylu8KCdBzP8+7uaU6UD86ayksb4Y+I4ckjAlESHT3DDayRhsFpS5f7gpqQi6Ic5E4CLO%20nr2PqhD81V98nmvrq+zvrlHVBVEU0e12GQwG7A12abUSev1FtPXkByVAqhBEPMfhaHCSJAlppy2Q%20grquKIqMrMgp68IPrI3myLHDDIY7VHnBD73n3fzrD/8Cr3zoFS8LCvpLrhhpbd9yz52h+Hf/9u0/%20k6bp//bR3/g9rl/bJc8rHCuoEJAOa+aOcRfdjCEWah47hPHrZmexJkA6OxcVa4QLES71cwUXeRSp%20U9gGOgsnyIsdnvnaVW6sbfDqzXt58OGThCHs7RbYWjCbzRhNB+RlTmUKsrxkOJoynhYEqk1AjJQh%20daUp8hm2LgCN044qq1Au9TOsWqOcI2jFtNI2i0sJD5x7E8aWbG/vsnZjm+2NK8ThNdrJIXbXt2kd%20W+YNb3gNd90Bly9CGhekqSIMQ38TCeY30j9hNHQQ/fy8r4PNzfNnLQex0Ae8b+cEbr5dsha0tkwn%20JWWtaaUd2t2F+fsDUZTQaS+wuLhMVWfoupi7BB37kwFtGaKkojQFq+uXcYVmKe1x++HbyGYzdoe7%203Ll4B/3eIba31nnqsau88g1nGO1l6EhTy4Yl2SHtK6SLEdbitB9Bi3nRFHNo2k1dGQdyADXvJANQ%20fmvoa3mEspAPYHt9xvr1GaM9A3qRfqtLoBSVhiuX9jh/8SLXrl9jOiu4tnada9dWmWUj2m1Hux1j%20dMOhQ4fodDpcvbqKNjXj8T6dburNssYz2oUICaNgjhGWc1KpIMsyptOpF5Y7g4oUcRST5zPG2ZDe%20Up93/eDb+O/++w9z8rZjL5s4hpdcMQrmc6Q44iM/+9NvecvKcue9/+kjv8kXv3SRdr81Nz9qcBHG%20hjRaoWSLOE6A0j/jHH4OYGMvPnEGISzI0Fs95iZYJa3PRZPzp7quiYOERnSZ7mV89bOXWbs8JA4j%208nJG0WTMihGzYgKuIUgD4rSFVDFRvAA2RKkEoSVlU6GrGoFBSYNwNcbU6AZwIUZrpAMnGnSlqUvH%20hYvP8MAr7+P+++/l2NHbuHJhl4vPbjKpClZO3k7pcsrSsbMj2NnZQy4HGN1CiJA0lXPdz0ELNPer%20v9j98I8MsV8s/HPOEQQhYXgLTOase5F6W2HnDvmiBG0Fxgkms4yyLGm3O6ysrHDl0gWi0FE0OVJZ%20GlNT1yVVXdAKJc5ZiiJHBBFpEFCLCqsret0Od9xzmgfO3s8TX3ic3dEu7d0e7c4SbjDkiSeucteD%20Z5DdHvk4oyansY6jrk+cQjA/eqk5RQjAWTsneN6yxEgRYIzD6DkNVIBSvlMRAobbsHOj5Ma1KdlE%200gqPE4WC8Qj29ibs7G3y1LNPsr27xmS6z/UbG2xsb6KCgDBOWFruc9upQ0wmI8oqZzKbEESK7kIH%20Y2sfA68gVOJm7LaPXpZIJ8lmE6zVFEWBcZZWy9MsbON7urLKuePu2/nRH/sRPvDBH+LwkcWXVS5M%208FJ+cd0O7/uxDz1KO5XuY//Xn/Gnn/oqeb6PpEu3fYROb4mmCvyNHTQ0TXNTVevmyYmCEKFihHSo%200PguaM4ANs77qBz+SKJdAbohTlK67Q5Nqbn6zAApI5J2QB3WtHpdTh89RpRKGluRFQVlYTAOFIGn%20H1rr0xmE9CJBq7G2pp0EgCXPp5iyQcYxaRqz0GuxtJQymmyysbFGr7fIHWfP8Yq7X8NnF8/zxc9d%20YG9tg1Pn7uLSpStcX20RB5alO0+iFIyGM4YDxfEjbU8hlHO0qGS+AtPz5b76/1SMlJI3vVnOuZs/%20HxxRb3VRvsUQBHPDKWQzg25AqZCqbCiqmnYS0ul0aHda9Lopmzvr1E1B3AooiqmfP8kIpTxKJkZS%20ZjOclXSSlLQX0urFDKY7iNDhGsF4OqO/eJTF5eNs7d3gwjP73P2aZUxpyE1G2YxxVtFb6tJJPfZE%20RLdEizfDpm6lmqObeazUnKZiDMwmMJ1qqolgeK1EZzGhPkYCjHdgfW3I5UurbG6tMxjvMprukPZC%204qTLLJsRRR2iVkJVTNjdHdDUM7a2NohiycMPP8Q73vkDbG2t8bsf+22fOKvmzPEgQgjhZWjW+tz7%20JkcKXyXj2OfljaYj8jKn1Yp583d/Fx/6sQ/ynvd938synOolV4yyybZrL7xQA/He97xWnDpzwmX6%20f+HxJ6+xcfkqE5fR6zYYl9IYhTARSoY4aXFWIUQDrkGIyLfmymGdz4gwTmNNjRPlvBj5RjwMLVVd%20UueCiC6pWCAMuggSIgVHThzizLmj3HVvgopg9XrBhQsX2N4aeBSGUx4Z01hvl5ivpnxx0jS116iY%202iCCiJWlRQ4fWWb5cJfllQ6v+bZ3sL5xjcuXVzl//jyj3We4fHGfTmuR48dv58zdZ1jbWOP67hbH%20Di3OvXM+kamuNcb4gb0F78rHzL8OQpbif7gYHXjxpH8g+5vhed4sd+uI5hA3iZkCLyoschgOp+RF%20hQo686OFvdlpnTt3P3ffeZZPf+YvWVtfpd1JqJ0iTRIENXk2IcB5QmZoUEIRpwqrNFk9Ze/6DbrB%20Au1uDyskg2FGXQrCYIHzT1+nf7xD+4iATkQ+mbG1PiSb1XTbHZKFiFZPIENvvwkCPBXU+mOle37U%203TydKJ/B/l7N1tYOs12LnK5QjgSDvRmb62OuXNrm+rVN8rxEhpbGKVpJH6tLrLNks5q41cJZBTLk%20wup5Xv2Ku3n41a9hcanLA6+8l0df9whXr17myfOP8fjjX8NaaIxGNn5O5NzcEGsMaStEybnKWghm%20RY4xhrNnz/LQw+f45X/7yzz8mru/rhAVdf7vW1H6K/9cjP5/XgeFyDl7uxDyZljco4+cEP/xf/41%2099GPfozf+s0/Ym1tn6JUBHKRIExJoh5VVSOd8DqQg+5A+COaUJpK+62PNQLrApAJSgQ+6RBLlTc+%20pgdFNhmjqEnjPpGMqIqctevb9I+0KE8kGGDrKm6xogAAIABJREFUxhYbN7Yoy5JWq+s9YNrQ2Apn%20ZxibI3WJEDVS4RW3oU8BjeOAMDZMsh32n7uKXG147Mm/5ezZMzz6bW/k0FKfT/zJk3xleJEkVKio%20xXhUMhzkZJOSeqHCOJ8bjwyYTqY0pkdoFE6JOUzL3CxIzpm5Ec++oCAdpGY8Py9OMv95TsgwN29U%20jXDN8yMPfTT3fAycFzAcZ2SFI00VMvSJIlZ4ek4UR5w6dYQkiSnLnDBxmCLDKkmZj1nptzFVQRpD%20q5sQuIB8NmO8NUQAK1GPlcUOtggoK8Pm1ctUpeHEySPsDWZcuzbitlaffnsRZwXZOKcqZ0ySingU%20kvZSokTR7iS02hBHcxC/nSstDJQ5TEaGfFqTTzWzaUU+gXqWMFwt2VzdY219h9m0Jitq6kLibOA3%20o5VBRYJpNiNp+yQVoxsmoz3iBO44dZogjphlE9a3rrK1vU5ZZ+impNGWKEpoTE3TGIwpfJcqw7lK%20W6EigRIWK6DWFRbNsRNHeOe73sqHfvxD3HXf359p9nIoRC/pY9rzC9HBde+pWPz0j73fHV1a4nd+%20++M8/sQqzhjCaJFsmmFsQhR3kGFIWXt3tApiZOi7IBkkNBpQklAGIAtP7tNeMGkxmEZhiRAixFlL%20UWlqNUUoS0sozn/paS488QytToxTDbKyRM4hmgypBChDnGgIGmzjMJWjKX1YXxCFlMUMlGWxm9Bb%20FpQ6Y3vjKtXOOmJxka3tdS5fus5bv/d9YB1JpHA6ZzIesvrcJnv7U1YOtRmP90Fo6iag242YTBuu%20X8u5+84UKaAqHfG8EdKmAsAID9nyiBR5Uxoo5l2Pel7TZA42/sp3Qto1BKHBNTXOaKKkDUQ0WlJr%20/2c2N2fMZtoHL4QwGo9ZWOqRxC22d7fY3R/xhx//OLu728RxRJVN6HdjVnoSnQQcWVacOn6Gxc4C%20RW7Y3pmxYYaUWrE2GBIfSqGTkHZ7bK6NKUKHNoK1wZDuYsrjj19i6dhrOX1nyM50gVa3zawaUJuG%20aelgECGkIAgLglh6rlWkPJS+sYwGU2KVQpWQjSLKYcBkCNsbOfvrI248W9LUAWU9D+gMFCoIsLKh%20NCW1q3F1DlIwyybeBVBVRKLG6Zq6gSvXNmmahjiNqaqSj//Jf6XIxuwN96gbhwgigsjgdIW1BhFq%20VKg8jyryeYF1XdPoivvuv4+f+qmf4Id/9AfvkJIrvMyv4OX0Yqva/swdp0Lx4V/4ARZ7ffef//Pv%2089jXnqOpLElrkbqqsda3roGMiDvehqDriqLMCOMF/4h30vuV5iMV4RTMuUZC+IG3R3N6kZsTjZ8t%201F7w55BYpbGBjwA2tsY5h4ykJygqA6LxnjPVIJXBOpCBor2wQFXPGI62aXU0J08dYXHxLm4sJMym%20BfnOEBbP0lSOa1c3KHPDYr/DLHdkM02SLCCs9mGRgcQJyPOKVhIxHWvGQ0gjiMIA6xzSOpSczx+4%20hdL1y+zg5h7pIA3llgpgHpcjuCkKnE0GdBZ6RGFIXXtuuQwk1LC2abh+Y5+qVgRhTF40NNaRpm2i%20OAZhWN+4ihSN19goPeeRl/R7fQ6fPsZrHr6HbqxoqorpTHP8+FFOnzGcv7jJtcub7GVjNoZ7RKJi%20mGVUjcShiKwlbAKoHRcvXKN/+E76h2OKugYbowKYZiVGG1pJG+ECmkoz2i1oqtoL7kTIQrLE/giG%202yWT7YLBVsH+5pTBzpR8IgjcMlqDNpaahsaWaFlRU6JdiUZj52RGi/HjAFsgqTA0VFkNCtx8I3a1%20yImigCD0UUjdXp/xZEBZzYjjiE43RalbJl9tS8aTIb1ej+/6nu/h3e9+N299+3d/zzdDIXrZFaM4%20kh85+P5HP/h6cccdd7n/43//XT75yc+xt7dPr3ec3b0hmJBu7wjCacaDMVIE9JcOkZX6lgZ3nkd1%20ELDuACnsLTSpMHPhoJ89OSvRjaRx/ihYqxDb1NS6QrsKYQxogQqcT4+wGtNU1HWJMQ3OQj7zLUQQ%20QiddIAlS0rDLPXfcw3e//l9wdfUG/d4RFnsnWb26y/mnr9NOD9PpHGd/sEssob/SJwoyhOzQSeeu%208dzSCiPGo5LtrYBOO6W3AMZ6mV4YKsAgb6qN50hdDLfyVf1NcnOVj0O5W+t+AaStnt9OElBVJUpJ%20ohaMxnD9+h57+zOC8DCddJnByLC/N2Yy2ae7sIy1mqXlNnm+j8tylNQEgeHIoQXe+B2P8IbX3out%20R/TbERiLFAmd3jH2hw2f+OTnGA8HjIcjNnY26SS1R8mgqQpNgYKggTDkwnPnOXJbyvEzx5lNBUIm%20RCogCSVJr0NZ1GTTGUZDQEQkFhFWIAxcOF+yuzVhuFVQZVBMLJOBoZj5MFBtCrTTNDajZkatZ2iR%20Y0SBURWNrRDUOGGw85wPjR9KWbxXLEwCpFTUdU1WZQhhSVoRcayo6pIwVARhm6apKMucOAkJAoW1%20mr3BDufO3cf3fd/38c53vZ2HHr5P8E10BS/HF22tu11KceUNrzsszp79RXfXXXfxG7/xMS5duky7%20fYQwiCnKCcYUdNIFAhVTl9nNaBo5vxWF9QmLEuWFZdI/oYTQOHswC/EfRGkDrAjn2iWfDGFljXU1%20zjXgNPpgK2M90F6XBbqucHOx3eJSz0dfB4a6zHju/FNcfOoxTp8+xd133sPp2+6knFZ8/qkvc/36%20gCTuEoQp165tIaMOQQiShoVOzOGjp+kvHMALfcZXkdds7YxY6LWIU19ohfLpFdbMuchfZwy95c3y%20jvdbwkac75+kU961HiaYxlLVlijq4oDdbbhyZcD25ow47FPWEisd+awin+ZcuXSDpLVL0grotAPq%20xsfh4AzdhRanz5zgNd/2EN/5nbexszGl3w4RxpJnNeOpZXfnOpeee5Lz649xODjDzniACtr0el0s%20DePJCIlkKUwRgWM6HbN67Sr3j45T1gYRSHIBUdwln+ZYA7GICZIWtoLBDmzeyBjtljx3fp3Z1FBn%20AiUTAplgTYqVCRbHKB+gRY0RBbXLaVxGIzKcrHDU6HkxErK5GfxphUfNCATIAK3tPPstJE1TLzkR%20HnkbRQFVnQGGOPFHwKYpKUuNkIY3vOF1fOCH38/7/9W7fzaOw4/wTXa9LIuRlOKKNuYtgVKfOnEU%208aEf/V533/138B//p//E1au77OxskyQrpEmXsmrmsLIYnJmD2Q/EfV5bIoTA2YOEDIkjwM39Wt7m%20EOBEgnQtv862DmsczjUItO84nCVUCuks1mhMU2J1Ba5BKb8uHg5WOXXmJEeWl2gqyfKCRdcl08EW%20n/qzC3TSZcJwkawIkMESUva8q5uStLuMrqeMh3scWjnCnXeeJoq84jlJIh/r7WA0nrCxE5J0DtHp%20QhpD43eFKPuiIiSeZxJ17hZ4zHmA2kHM2IEcp26gqh0yiJABDEdweXXCtWtDplNHt9unMD49dzLO%20iKIYKSWz6Zi6Ftx28hRxbCjLjHw2Is9zrl69yp/+ySd4+qttTh9dII0cNA11bclLxZWre8ymA452%20VtANjMoxad2nrfqULmOqRywkHeKuz1CrrGR1dZUnnz7JbWePE7cSppOCoB8RCj/cb3LJ5nbJ1Qu7%20rF4cMNrVuKZNmUc4G9M0gtI4ZKgIIkVlK/JyysxlvhNyFY3L0czQrsA5/z4bWyOFRokGMQfrOyHm%20BV7hrMM0Duc0QahQKkBIi6Oa68N8eGPaDugupAwGewxHu9xzzz286c1v4Md/8kd41atfKfgmvYKX%207QtX6lMHXdLJY0KcfPtdnDj+P7rf+q0/5vc+9mds76xRVxmmCVAyodVdpKkq5Dzr3BmDEJ6Wh5NY%20IRDWb+Kkk14MOV9dWxGg8KtWSeC5MRZwNVJapPDOddtorNA4U2N0iWtqhHQ+XUNpTp7tEwQD6ibn%206JFDnH7VA7SjhN3tfa5f2+Kppy4RypSFdoyKIzZ3B7S6LZLlPlk1IJEWR04U9VlZjn00kW2IYklT%20H8gIHPuDCXFLcdj1IFAkydwaaufgP8EtQeT8CX7QDPljq3xB0uo8fBcktNqKxsDaOly5ss/Gxoii%20UERRh/FE0+32iBO4fMUfT+JQoOsGLDz91FMEgWAyybDa0kr8APza1Q1uXBoxvfck0hTUxczbIESb%203UHBbDjFOUeYRkxzwyDfx+xYZvs5BTkJgkm+Q2/pKK1OyP5wh2efvcjJ207R7UBZttAFjGeCzY0d%20rj63zdrqHntrFdUsoh0dZbF7mErXSBnRCEOpJxibEaoAK2uKIKOwMxpRoJ0/mmkKHCVO1OAarKiR%20OIzTKIxPh5UQCI9fsdqihPJRUNbSNBUI//4lrZBZNqSVhjga1tavIiW8/g2P8oEPfIDv//5/wfFT%20h79pC9HLrhhZq98iZfCpF3dJB9+/9pGuOHXig+6uO0/z67/+u5x/+rqPzRaO7b1Vknbfb8nc3CRp%20JcjAb5fMfK/tvMtd3ORCK6Ro/H1qAxzxXOWtcdL4OZMwCKdpitIf2exc4yQdUjgfjyRLpJpQmxEq%20WuS208d58P6jHF0+QhK1CYOUP/rDT/H0M9f47BeepX9Y0u13mNU7ONtGKDh24hCHFhc5eiwlbRuC%20KEDYuclTgTaGMIrJK82NzV0KXTIrF2j3EhbSABH4N1wcDO7FgZvdzjHRzs/P5joif9PcEjs2wmuJ%20tjYtVy5vsLk1xpiYJOoShD2qqqGufHDp/v4u1un58L5CyoiF7jKBhKq0VEWG1Zp85hhSY8qM9faI%20bgvk/GwTxxGtMKQVlx6NgsMow6SckmUZoQ05fGiFxXaXaT5klAUsdFI6vS7rG5ucv3CF4eQUWV4x%20nlY89tgFNjaHDLczlGnRDg4RqRRdJwz2Mz90Z0ZFQUVGRYa0BiKLVZpKTX1HZAsMBU7VIBocFdY1%20COllJNZqEM2tdFs5z0OTEmf9/tKHIwisc1jXYKym002om5wsH9Hvd3nr276fn/iJD/HItz30TV2E%20XpbF6MWF6O+7jh1D/OtfeCOvevU595sf/T3+4Pf/jO29S7RbR3BuhiKZ32h6zn5OEHOqtUMghME5%209Twlt0IQ+nmSnltJLHN8hvMnHdEgnQFdAT4bSypHGEiCQBJIEIEhiEre+fbv5l+9+7288r4ugYXt%20NXju6XWurj7L0cMpr/+OH2HpyF/xlccvM52McFoRdCOOHzvG2RNHuO/uUyjVEEaOOAGtIxpdIUWE%20NppWGFPWOZP9CZUuyaqAxULijgQEC/M4ejlHqvrwpZtDe4dDonx5mqNEDv5rLFy+btjY2Gd9bYeq%20hDBaIE46ONuiKA1Lyy3OP7PD+sYWV69cIu12WFxMmU730Lrh2JEzGO2oK80EKIsZs+mMwAlkY5jM%20KnppjziCoqhoav96AhUhpWRUTNEy8uB5BysrPV75ynvpJAkXzz/DcLLNwuJpDh1a5sLFy3zm775A%20K30WScza5gTjOkynIdr0CIMOTqTUWiGNxkpB2JY0TYmkIFANjSuZNiOM0USxwrgC0xTU5DhKlLAI%202WBdibU1IcLHIaFxtgFbIWQNc9SbwlHVJdYZWq2QNI3RxlDVM6bTAhl47tO5c/fx3ve9i3e+8+2c%20vfPUt0Qhelkf0/6x69sfXRQnjv6Mu/eeU3zsd/+IL37paVYO3cne/h4gabc7GK1pqpowjImCGBBo%20azHa4SweHxEIrC4py5JYKZSUHp3hDODjrVUQop1DqYTZbDTPt/fg/abKidotVg4v8UM//P18+MPf%20C8bPX+oajp+A3Y0O6U7Ml778OWTc5zWvfZDPfuUJ6sYQdVYQYc3hIwusHFrk0qVL3HXPbfR7Pok1%20UJKqbiFki1AtUJVgRYcwWGQ2Dx/IKsFgUnHsUEirBWnbx1urYM4ikp77bawlmQ/VCgN5BrNpw2B3%20xP5+xtrmjDjuESQrWAFNLTFWESiFVBHPnN/ij/74v5AkCWmaMB3vcfzoIkW+z4Unn+QpU/t/WwdF%20kdNpt1joLVFMtwgwPtigbkh7KRQVVV0QJj0WeinLTY/xYERRVVgraccJ7X5C3FU3j0iGmr3RLrFK%20COKI3b19tJ0CCbVuoR1UOiQIAlwQUZmaRtc4Yz15UgpyZuRmSkNFI0uqoMCIxhdGpxFSEwofB+5s%20jaNBOp/MK7HoqkIKQxIplIRGNzjbICPJLMvodFKck9RN4Zcnyvj3IZAIKXnnu97GB3/k/XzHdz76%20LVOEvumL0XBYfPn0mZb48L/5Pl5x7oz73f/z/+YTn/wSoSowxs9WlAyQPqDeM2GswliBECFCBRin%20aUoIw5hup0VVlNz0vTmLcAJnA6wB0BT5GGhQ0a1o4TBULK8scupUnwdf+SoG+7D63BaTwZDzjz2N%20tHDy6Bne+PpHeO7KPjfWN9gbXSdutViUitpJVBKwsrKMCkJWDh9noXeYnR2YrU5J0xbddkCrBcYI%20VAhKRRgitGtT1ZDXEE5gOCpJEksrDb0CPHRIaYkCUIGkaRrqqiGb5oxHBUXhjb22cdSNANsH0cYa%20gTGCTrtHGMDa9QHnz1/kM3/9NwCcPfsAQaiYTsc0ZoaQNaduP0GWTRlPxgQqQQaKsqrRxiJ1QdIW%20GKHJqhl2MCUKQtJeHyRELbCipN2JcKGBxqGEm+u1dggF1DpjMhmTFTOUTNAmoNH+UGpdQOMMKEfj%20GmpToV2J0HreCVkiJIkMqYMZtchoZEMtNNqWaGFQOAI00tVAjRAl4Lse6Rqwmlk1pp8sEAaKfDbE%20UbLQSQhVQFFOWVxqk2UzrNX0+m2E1Ozt7xJGjrO3n+Tf/covc/8r7ubcg3d/yxWib7pipE31M4GK%20PwKwuNh65OD/f8/33CfOnbvXPfjgX/DH/+VTfPbvvkhVFiRxZ85GjoijGIFEW4UUkiiOsVZSliVG%2052hnQSTYA2QGFuE8B8k7v7zJMQpilHIgLEYqolZMGMc4K/njP/grPv2pkLVrV2nKimefOo8Sigfu%20f4jaLGHpYlxNbXLipMfW/oCk3cHUsLa2Sft0n52NHVZXt8kzPzdZWFigFbVxVhK3usRJizTtELci%20wiQibkHSgSQFIxRhJIhiQRhaAuUTPZJIEoZgTUxdS2wTglsCq+aRRAIpfSBkEPhjntFQl3D16pCv%20fOnLPP7414jDiIcePsepE8d57rnzZLMhKhD0e22+/dGHCELBpz/9aTY2dxAoDxKTDusKSlMzmjac%20ue0O+t2YtJWQxF2MFYStgMs7N6imJboRSCMwaKazIZtbN2hHMYiGxlQUVQ4uIgi7hGHfY9OsQVPh%205IRaNGhXUWuH1Q2WEik8ZF+LiFpWNK5C49DO+Dz6uVlN2QKofMSQqIAS5zSSBmcNx/pLVEVOmZXE%20oSOJEgQVdV0haJhN9olaESAYjrawruLU6SO8851v4z3vfQeveu2935JF6JuyGAUq/siLh9zW2tul%20lFeOHRPiF3/pLbzywVe4j//xx/mTP/0kVy7fIGn1iSLJaDwhDjto4/lGjfaxM1EUoKVFNxVIMacC%20+sGLEwJr/FDSCksceeync/Of45hWK6aqKm6s51RlinA1wsGxo6c5ekwym8y4vjHjk3/5JawLuO/c%20qzl8W8y4+CqXVveIU0jimIV2j3a3y+7gIuOhTxA32jGeTKnzKdYE5MUWUoQgI4SSqEiRpCHdhZRW%20J6S30kEFliCUSOlQEsJI0IoiojggTWKstSRRTLfrE1K09jMjFXichlT4LqyGCxev8dhXv8p4ss/h%20oyd4+MFzPPLqB8lnY9Y3VonjZfb2ttjcWOPQoS53nD2ObsYUxQCpvCcwbEWEgcBZw+7+Bg8+8i5e%2099qH6aQJk3HO7v6I1dVNPv/EE5T5CG0jQkIskiJ37OxYFtIWgVTEiaLJDdYYwkgiQoGu515BCY31%20AlUtav9wkRqrGpTAG6ZdiBUWK7Q3p847YGV9BLV1OULWCNcgZOO3qWicq5HOkE9LrGlIopAkCSjL%20EaN6lxaK5ZUlyrqgsTlFmdHvd3njm97EW9/2L3nzm9/IidOL39KF6JvymPb127YXetze9KZj4u47%20f9J9++tfxe997I/49F9/nv3dNYRsocKIqNXBGkFe5hjT+GBJoXAYpPR4kIOU2bnkyJvzpaCqirmj%201GKlh6Y3RmHLAmsaAhuwv7tLv9+n14nJy5iNnV0CZeguaR5+6GHitMdT569QlJp77rmHWsP1Gxvc%20SFKKomFnuE8chEgRMp3NqCuLMxFx2KHfW8FYRa0FjbbUlcEKBSKhakI2dzRCeQOnn3s5VCBoRYIo%20dswm+5RVjtNzw7D0K2glJFHiWD6sELIkTWIaXXDj+mWG+5vcdddpXvfoqzlz+giHDgkujzStVot2%202mcy3me0P+DalcvsbF1kd2+DJAkRMmKWZUBNrCySmiAOGY5HPPHUk4yHI9bWNylrQxB2MBgCJQkD%20BVagrANbM5tqbJWz0O5ghfM+M+kwrqFpMqaFoa4VMopwssG4yne30nd8tzpdCTb0JEhpkc4QWoty%20c0qB0zhXeDyw1ECDFI23CjlvRtZaE0cBQjYU1YwgsBxrL1PVOdt7N7BY+ksLPPrww7z9HT/AO9/1%20/dx2+/K3fBE6uMStKJZvvevZZwbu9//gE/z5f/0bnrt0g42tAWlrmSRewFjlIVtS4qyg0RBE7Tme%20RKKU8h41a33uhJRoawkihZCOStcY613crVaLOEwITEgxK+h228RpzHQ68YiNQLBy5CinTt5GkrY5%20/8xzaCO58+77qcqap556lrS9gBUpRiuWl1Yosprd7Qlh0EGaNmUVUGchjgQhYy/WVHhKQCSRQUgz%2011Ep3zHirJ3HUyuCQII1VFVGU5d+VW0N1mnPEA8aaj0gjDUqsFhT4GxOO1WcOrnE8eNLLC2ltFuS%20G1cvMxxs0e912NraYGdrg9NnjpPnO2xsr2FdSFU7srz0KFpbIGxBGjU88IqzdCKFsQ3DwZTReIYK%20UjZ3xmgTEoQprra42hLKEGEgDAJ6nS4qCsnykqpxyKBNY0NmhaU2AUGkgByHnmusJLgA526FPEZR%20hFIewWaaGmsav2U1BoMfkKMaBA1CaqSYz4ys54EvdDrk2ZSyzIlCRxgKrKuoqimlybj77rt557ve%20xjve8TYeed1d/1yE/rkYff31d5/ZcL/zO3/In33ib9jdnTKdloRhh1bSQQgfP+RjihK08WhSj3qV%20GGOx7v9p79ye5Dqv6/7b3+Wc091zA2YwAHEjAEKUQIEWQQikpchUJaZUcmyV3/xgv8d/Qv6X/AEu%20J6mUU6nETiwltkWZoEiKginFlEyBDEESAxDAXPtyzvluefi+bpDxiyu2UpbT+wWFATA16OmzZu+1%20114rh+kpa4pmMPMNvXeE0CJaU9uGtWoTqwymttx/cI+kEseOrbN/tE87HvO5Z57h2ee+RGUH3Lnz%20EXu7h9y+/T4hBE6eOk9SAw4PWwaDEe3EMz4MrIxOELqG2QEMR6eBYRk3TPaxTlmImVOcq6KrKnqX%20EmmktcboBMEjKubtVHIo8qo5Bofzs2zLIrkzMMZjrUOrFoljYhwznT5kdcVQ6Vi8dxKHe7uQEusb%20A5S03L1/l9ks4IOg6xErK0MIjmETGdYR1+7RjffxvicEIUTBNCMqOyAkoTY1s8MZXdszsitoUWiE%200WjE5vYJDo/GHE47Wqdw0dJ7TRCLUkKM4+ISaghJgdSQdO5yU8qjnhW0SkQ3hTBDyJoxHz3OCFHF%20DEb0KLK2KI8Xkb6bkVKgGdRYE9k/eIRnyrWrz/DPvv4Vfvu3f4uXfv3aU/9UDluXYPQLrD/5k9vp%20j/7DH/Of//g77O9NGDTr+ADOBZRqUHYFFzRKGaxpECy9z29uVZJBu25GJNCMGmyj6VzLdHZE7CNr%20gy26Ykx/ODmkaixNU9H2HRsb6/gUGY1GrK0eYzab4VrHh3c+4szps2yfPMPDw5YPP9zB6gatGtpx%20xKgVtKxRmeP0rSWmASlU5YxFindqjkKOISHGLhwcCdlDWSmDFkjBoZQQ/JTejUECg4FGqYTzHcZa%20pmVjOFzRCFMmk/sY3bK+bplOd6lsYHWloqk0u48e0E4nbGxsoJUnhCNm3RRRA5zPWqEQHATHmdOb%20TA8e0Lb76ORw3QyUoWmGOJ8wxnDixAm0KPYeHnCwd8CoWkGJwXtP0wy5cuUKjw4OePjogMNpi0+W%20KBVJTAmenJVzHYWPAilvTfNtokJSoK7UAoxSmKFSQJLDRUesNJnOdgsgUhIxJUNOAO9z9JQ2cO7s%20SV76+lf5rW9/ixdeuM7mKbPshpZg9Heve3djeu3mW/zHP/ov/Pn/+Et27u9R2QHD0XH2jsDYVYQK%207wRjRzSDDFhH45Z6OEBrIalAFI+yEV0lnJvRzmYoBlg7QETw3hfzrPyg+BK9NBgOqfQA51w27dea%20qmoQXaNU1qjEoAgegtfEoImhJoUKSUOUDBAahCqPIZiSGZcN3VHz+J4cWpAv8nO6hUgm6GPsSRQP%20KDpEOURlZXFMnpiymE9rh+g2n0SkGb07om6ErePrrKw2HB4e8OjBQ5qm4eyZLcbjTzg8eJj1RG2L%209x5rcurIia0NXDdhfLTPbHpISpHKGIwxVFVFXdeokF+nvu3pOgfJUNlBkWFIzogTRUiCjwnvIj7m%20+G1UKgZxsXRCFCfFhEQpDwM56bfk8ClJhN4RvCOR+aG6EUL0ODfDWEFUIIYerROH411EIhcunOWb%203/rnfPvbv8GXnrvK9hPVEoSWYPT34JN+8iDdfPWHvPK917j56hv87P0PsOYUzXAzW2kky3gSaTsw%20dsRwtMbB0RhlTLYzFY8UMIqpp+97ghOQEtKeSSia4QpNVaNE89RTT5GSMBvPePjwIQd7hwvQImkq%20u1pGC8m7h6RJ0eYzlVCRokXJoABSBclCMsWjWudxU6VF0sc8/UPEIuhM0JfzhEQGGVQLklfTSCRG%20B7EnaY/Rjqg6hBbPjEEtTLpDNIlqUJHFwyMtAAAN3ElEQVSCZ9bPWButsH3yONPxffZ275UYJI8Q%20sVqw2rB98jjtZMJ0NqabTUkEtAjaCI2taCqLFmF8eJRtXrXF6JqQdKGgNRFTHCs1IWVf85QSqaRr%20hCJUnf//JQkSU3a6TAmrs++TFiHGSN86XHJUGJpG49wBiY4QPLbS1LWldzN6N6auDU9//gIvvHid%20b/3Gy3z5xjW2n1h2Qksw+ofslD5K6b9/98/43iuv8/1X3+a9D+7RzqaIbLC2eoKYanzQiG4IUdAm%20ny646HJCqV74uFE3w7ySD4EUIsYYhsMVhnWD1prxOEcXd7OeyWRCcB1aF35K1fRtTonVOgcLZsCp%20SMGQoiF4jVYNWg1RUhegmhvPW3yUT6V+hIVzgWARUShl8sfJ3U9iRpIZSL7B0sWhh+RIqssJq6qD%201BJlhjGRtp/m5JRKk2IOgVxfX+fE9jopTLl7938VQ7OIlnwjKMCJE8chepzrCN4Ro19YrzS2oqkt%20VmkePHjAZDJh0KzSNEM6F3E+opTJo5fK94WxJMJGeZx44r1fgJGI5HSWlBZ3wsF5rNY0VY21Fom5%20E0spoU0AmZDo6bqOrpuARNbXV3ju2lW+8tUX+Je/+TIXL51n66RagtASjH5xdbDHm3/wh//t+vdf%20fYPXbr7F7t4YLUN8MLSdEILFB40ydc5bRxFL0kxVNWirUMYUo/wiO0h8pkuZHI2zB06MSIkDUsVe%20KCVFCg1JbAYjKWNYnIdQGlK02YdHD1DSkKIiJb0ApBhNzmYvJmqLzgibU1PLyJiSy2Ak09IhZZ8e%20o4SER1JHkB4lpTNKLUE6gpui6yyi9MnTz6aYuuLyxUt87ulLPHr0MX/z7k842NsnxoBRCu97fDdj%20dX2dlUEDkkjB40NPcNlBs7aWqrI0Vc3h3j7j8RgxhsoOiQihZKKlEv2RSo5b1mvmUMZPj8ZzQNJS%20Ip1Kd7S2skLbzvC9QxvBSAawvu/xzLCqI6YObYRz587wwgtf5le/coMXXnye6y+eXwLQEoz+39ad%20j7r0yvd+wH/90z/j5qtv8vHHu2g1YjTapO0BMrmcxOIDOYerGKCZupi5qbnLZMA5h/c9MUZWR6Pc%20EaR87T/nkpxzOaXWjhDySCeicwcQ5rxRHscyGA1RymaDuDB/MA0xmfxgFkCMMWbiVrJcQUlVOqOQ%20OSNaYpqRpCfRYSUgKkDyROkhdUTpETqSKt5ONiIp0vYzUvRsnzrJizdu8Ny1X+EHr7/CO3/9Yx59%208oAQHNZaYvJMj45oBgNWhk22WU0J5zpc15OIWJWlB8ePrRNCYDKZcXg0IcZEZRvA0DmPsXXuhpDy%20awajhMr3zRE0gpRRVUraydyKt51OEElURjMYDKiMKhHfnkSHMT1XvniZa9e+xI0b13nhxRtc/vzx%20JQj9A5VZvgSfrZTipfyT828HAngfXj5/tpbf+92X+PVvfDX9+O2f8pevvsVf/Plr3Lr1M2I09C7H%20aWs9yh1K1MSYxXWCIfqeKHrR8SgitQGlDLPpwYLn0DofWibAGqGqLH3X54dLMgckOdiHhAYVijda%20V8SYhoTOVrJI8WEyIBqRlL8e4bGbpTKkmP+tEEg4hBZkhtAD2ZFAUgTxqOSIdFlRrnKXJCoSfY8L%20juR7bGWoDRwdPeS92+/wyf27TMf7+NDivUPplGOMTCbOQ3D5PCdlAaEPLv/EjCnfEwrUg4aEYjor%20t3MmolQkElE6EWM+3RABKfNXThhOpRMqcUyLrimW5JTE6prJhnMx0Ic9+j4wGo04++QpTj2xyTde%20/hov/urzfOVrX1wC0LIz+sdZN2++n/7q7Z/yb//df2Jn54B7O3tMpwklDcoMFoehk/YIH3tAMidR%20iFIteWuktV1wFEopJAou5HFG24q2m3tW6/LQzklsUwhtgxKbRzg0KeauSESB5O4JnU1CAik/5Jm6%20JolGYgYvRT6JEHqCtBC7PKqlHqMCIolEGeXo84pbB5yfIRLLwx+wVtMM6rwJU9B2YyZHRwXYPUop%20jFW4tsMYw2iYubMUPG3b4px7PMYSOXZsFWOydetkMqFrfekyczCntZaQYu74IPsIfYqo1/NOaJ7P%20NLeOSTlwwPUzkEhTaTY3j3Hp0gVu3LjB11/6GlefvcK5C6MlCC3B6JejProb0utv/Jjv/On3efPN%20n/DRhw84OuzyWQYJU+cASa0tVVVBEpwLxEiOVnY5b96qBltXSFI4H7KnT2UJqSR8JEVMCqImJoXE%20KvsuRQNiiieRIZVuQqERZT6z2ofHD23etllioIxsCcSXUa0npnyhLmGGVhGjEoEAKadeGJXAeFw3%20Rdnc7fUhX7KL1ph5dlrRMa2srCxW+9oIru2w1rIyHKE0RB+YzSYLwAII0WfZRMoOnUoZYkiEEEBp%20jDEgkkMsYz530VqTFEVT5QsPF0swQQEsfP6cBJ44fZJTp7Z4/rlf4dde+irXr1/nqcvLMWwJRr/k%209aNbe+kHN2/x2uu3+KtbP+HOnTtMZhN8DBhjaeohSlX0naPrAiEprNSIrql0ndfUPhKSzmcPRtP7%20DpTCKktSGny2gI19DgEY1qso0yAROhcggLIGIwoX0yI5V0SK/3UJdEzZ+1tJlbsocucDgURXwiBb%20JM6ygjmG7HJJAp0fZIreJqny55IdJDMYZlCc82GZmM8nNUgi+jyiLYh9kUWibUqZ0E/lgl5rQess%203CTlztLHsOgmQ8gjmqkyad33PT5kO9hBpZlOx4TQoZWiqiqOb67zzDNf4JkvXOab3/wG5588zdVn%20zy0BaAlG//Rqb583f/jGu9ff/vH/5C++/wo7Ozt8+OHHPHq4j+siomtGozWGg3XGRy1KapQ0+fwk%20aNJckKjBJZcdA2IOESQYRFVYVaN0TTv1WVqAxsfSUVmLVtk4rfOeJKmAScwxjlqhkgUx+D6BlOgi%20lRamZcRy/pBaBFc4lpLYq7LtLpL1VHyKg5l3H3Puxtam5MbHom+Ssj3Lgsr19XV86PG9w3uft4pS%20yGaVP08IjhDKxlH0IjobEYzWuNATvUN05oRCjGglVJVhevCI0cqAc6ef4PLnL/PFK1e4evUKX77x%20PJ97emsJQEsw+v+n7u649O7Pb/PGGz/krbdu8bOfvseHd3bYfXREiAlrNxAqFHUOSEyWmBTRJ3wM%201AOT5QJJ4YKQnCIkjRGL6JrGjDL3kxIu5NuzpLKwz8VAMxwQUoLoCBLQCEkJhnwyEfoEymAkjzcK%20j6eD2BNTh5E+W6qmQErl8l9S6ZwyV/S3wSh+iveZa5viojPSWlBlbNzb20PrzP0YqxdnKzF6Ysmh%20m+uujMkkfggB5zo67xjWDZ3viN7lMZJ8uLy6MmI0GvCtf/FrXHrqSZ5/7hrPXL3CmbMrSwBagtGy%20YuTSz9755Patt9/hzTdu8fPbd3j95lt0Pbg+EpLBmAqtsulbSolpN8VYi7UVWg1IUWVSOpWQQZ9P%20O0A9FvYVziXGDEyRVM49wmJkmhPhJINS9nG3QSCmPluspg6r81p/EWjwadApndL/CUT544/N/+fg%20klI2oEspZAU0kY2NDUJwOb7ZdYToMsltFForJKVFl+WcK3ybL19vFpPWjWVtbZXTZ7Z5+unLPP/8%20czx//RpPXbzAk+eX4LMEo2X9ncDpB69+cPvn733AG6//iLd+9Dbvv/8B+/uHdK0jJBitjYgBYhSC%20z4eeSmq0GqDEYs0guwjExyrjOecSU0LZpoCCL0BQwCGoolkSlCo2GkoBviRXZLHfZ8GI0gnxKeBJ%20i83UZzLZSnckxLL9ejx6PQ6VjEymB2g9H7viQiU+vyurjSUGR9e67CFNZDRa4+zZs2xvb/Hss1/k%20yQvnuHr1Ck9//jKXl15BSzBa1t+/7t8n3b//kHdv/5yfvvM3fPzxDj+89SMODifsPjrk6HCKdwqt%20GqxZQasKEYvrAyGkxwQxLDZQCZvvuNS8c0lQ1Mokky1dlUGJKYDg8wo/BiR1KOVzFBM87qpKpyKS%20O578m+x2mTmlx4CUYvjM340xj3YZnHLst9a5m0vErM72fcltiagUObm9zcWLF7l48SLnz5/n0qWL%20XLp0iZMnT/Dkk5u/X1f8m+W7ZwlGy/oF1/sfH6X7n+zy/nt3eO/2R3x45x4ff/QJ93b22N8bM512%20TCctfV8MxIhl1e0RsQyHG8SYbTtCLET0QrdkiSELKefnEznt1BU+KBvRz8HoM28iyarmEPwC/B5v%206x5v7yqT+awQXB7DQgAJiBG0lsW2rG40KytDNk9scv78WS5cuMD2iU2+cPlzbG9uce7cOS49tex6%20lmC0rH90492777nbu7uHfHL/EQ8f7rKzs8Mn9x9y7/5ddnZ22N19SNcGxkeO3gX6rqPtZwTXg6gc%208a0s0eecOIXOSu0USRLz6l48IU4fp89+GohEyqYrFAtWgPm4lrkiJYm6tlRW0zQ1o9GIjWNrbG0d%20Z2t7k9XVEWfOnmZz8xhnz57m9JlTHD+xyYnj6/9+daB+Z/mdXoLRsn6Jy/v08v17R9+ZTCZ0neP+%20vV32D6fsP9pl7/CA2XjCwXjC0f4RR5OW6dGU3kd855i2PaEPuBiyWFAcs24fkbDglIwxi3FQRGia%20Bmstg8GA1bURq6urrKysMBwOsVaxubXK2vqIra0tNjY2GI2y0+Pp01vfMEZ9d/kdW4LR8lVY1qLL%206lv+1eSIf+19Th/JKu3MH7XdAYhfbOnmB7/zjd32ybXfN1Z9d2mruqz/m/rflDjuA+MNcecAAAAA%20SUVORK5CYII=%22%20preserveAspectRatio=%22none%22%20height=%2236.641%22%20width=%2244.866%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "fe61d1d0-cda7-48cc-8074-d33f2631dea1",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -2056,
                "y": -640
              }
            },
            {
              "id": "bd57c978-7b58-4774-90aa-1c0f42ec1e79",
              "type": "basic.input",
              "data": {
                "name": "led",
                "range": "[8:0]",
                "clock": false,
                "size": 9
              },
              "position": {
                "x": -2064,
                "y": -448
              }
            },
            {
              "id": "d7b9ac96-ed28-4c08-b7c2-50e1accf1500",
              "type": "basic.input",
              "data": {
                "name": "rgb",
                "range": "[23:0]",
                "clock": false,
                "size": 24
              },
              "position": {
                "x": -2072,
                "y": -376
              }
            },
            {
              "id": "35c52a69-a45d-41fb-9ece-27c3078406bf",
              "type": "basic.input",
              "data": {
                "name": "w",
                "clock": false
              },
              "position": {
                "x": -2072,
                "y": -304
              }
            },
            {
              "id": "94edc7bd-b8d4-42ce-b1a0-2e6f11c293b2",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 1416,
                "y": 296
              }
            },
            {
              "id": "30b6d3e0-b24e-4e75-9496-777cf7e2f90f",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "52",
                "local": true
              },
              "position": {
                "x": -1344,
                "y": 56
              }
            },
            {
              "id": "e3d84bd1-95a9-406f-9695-0643120e4abd",
              "type": "basic.constant",
              "data": {
                "name": "LEDs",
                "value": "512",
                "local": true
              },
              "position": {
                "x": -136,
                "y": -192
              }
            },
            {
              "id": "e0888965-98aa-4d28-a8b5-143420fe9f16",
              "type": "basic.memory",
              "data": {
                "name": "",
                "list": "0\n0\n0\n0\n0\n0\n0\n0\n0\n0\n0\n0\n0\n0\n0\n0",
                "local": false,
                "format": 10
              },
              "position": {
                "x": 320,
                "y": -536
              },
              "size": {
                "width": 152,
                "height": 232
              }
            },
            {
              "id": "3af27ab8-0b94-4f21-a58b-209fa453a2fd",
              "type": "aa600748508f5363f948ead138b33002bd6ff9e5",
              "position": {
                "x": 1264,
                "y": 280
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "f75d6677-2751-4a52-a190-f0c360fca690",
              "type": "e3daf22cb32a89f1267830f36f9b813d22018b8e",
              "position": {
                "x": -312,
                "y": 344
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "692fd1fa-8b28-4178-93b9-1ed4fcb561bf",
              "type": "basic.info",
              "data": {
                "info": "## Neopixel-512\n",
                "readonly": true
              },
              "position": {
                "x": -1976,
                "y": -736
              },
              "size": {
                "width": 640,
                "height": 112
              }
            },
            {
              "id": "0e2657e0-86ed-4bf7-a453-0aa34ae5994b",
              "type": "81613874c6152f06c06ed7014bf4235900cfcc30",
              "position": {
                "x": -472,
                "y": 360
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "a89b57f3-33c2-489b-803c-7df96531c38f",
              "type": "b959c256104d1064a5ef7b38632ffb6eed3b396f",
              "position": {
                "x": -848,
                "y": 344
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "485c83aa-4aba-45c8-8741-546be772e412",
              "type": "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6",
              "position": {
                "x": -672,
                "y": 376
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "772d9e97-c989-4842-9a0a-c28995f2c5a1",
              "type": "21cfcc19a4ad14c5fb5e8cfebd018ec356fe7542",
              "position": {
                "x": -344,
                "y": -80
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "0c45a35f-982f-4989-93b4-4c612315cdfd",
              "type": "81613874c6152f06c06ed7014bf4235900cfcc30",
              "position": {
                "x": 192,
                "y": 184
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "45457e1d-edc1-4930-8015-1a1832a8aa20",
              "type": "7292280c50b0eb1d3e838c26c03fed9d24d1ec1d",
              "position": {
                "x": 936,
                "y": 56
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "31acb700-9b79-4943-b5ad-e9d23b3ca635",
              "type": "a936f644f92fe3680cca2c069380788002455af2",
              "position": {
                "x": 552,
                "y": 104
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "c556ed37-a8f5-4898-be20-92dec6726c48",
              "type": "a936f644f92fe3680cca2c069380788002455af2",
              "position": {
                "x": 40,
                "y": 448
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "18aca8f3-a56d-46bc-8018-d3438483f0e7",
              "type": "3b630a3c35b04c9bdcc4afaf4a01b0b1b8d06887",
              "position": {
                "x": -1344,
                "y": 152
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "331ca3b6-3ce8-4e11-8a4d-9f1833616b33",
              "type": "81613874c6152f06c06ed7014bf4235900cfcc30",
              "position": {
                "x": -1768,
                "y": 168
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "c1a0c062-fc3a-42d4-a155-d11e410b8b32",
              "type": "71b7bbd252f33ecfb4d092351ff9a2b524221077",
              "position": {
                "x": -1912,
                "y": 224
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "cceba91d-6940-4fff-9171-91392f4e4b60",
              "type": "basic.info",
              "data": {
                "info": "**Init-tic**",
                "readonly": true
              },
              "position": {
                "x": -1888,
                "y": 192
              },
              "size": {
                "width": 120,
                "height": 40
              }
            },
            {
              "id": "94b81aaf-35e2-404a-9269-0d6b869d5faa",
              "type": "basic.info",
              "data": {
                "info": "Tic generado al comienzo,  \npara arrancar el controlador",
                "readonly": true
              },
              "position": {
                "x": -1936,
                "y": 296
              },
              "size": {
                "width": 232,
                "height": 48
              }
            },
            {
              "id": "68417337-1c59-4431-baa0-55315cf029c9",
              "type": "basic.info",
              "data": {
                "info": "Espera superior a 50 us  \nIndica el comienzo  \nde la trama\ntrama nueva",
                "readonly": true
              },
              "position": {
                "x": -1352,
                "y": 224
              },
              "size": {
                "width": 192,
                "height": 64
              }
            },
            {
              "id": "b902d59a-832c-4eef-813c-bdfd8d532892",
              "type": "basic.info",
              "data": {
                "info": "Evento: Comienza  \nla trama",
                "readonly": true
              },
              "position": {
                "x": -1208,
                "y": 152
              },
              "size": {
                "width": 144,
                "height": 48
              }
            },
            {
              "id": "23348f3a-7d16-4c71-be59-43390247e423",
              "type": "basic.info",
              "data": {
                "info": "Evento: Trama anterior  \nenviada",
                "readonly": true
              },
              "position": {
                "x": -1856,
                "y": -16
              },
              "size": {
                "width": 200,
                "height": 56
              }
            },
            {
              "id": "3fa9b8c4-1a16-4d85-864e-31c183e56252",
              "type": "basic.info",
              "data": {
                "info": "Evento: Empieza ciclo nuevo  \nBien porque es el primero  \no bien porque ha acabado el anterior",
                "readonly": true
              },
              "position": {
                "x": -1656,
                "y": 128
              },
              "size": {
                "width": 280,
                "height": 64
              }
            },
            {
              "id": "16fb9d62-5a0c-4eaa-9d6d-b7c38b06ceb5",
              "type": "basic.info",
              "data": {
                "info": "Estado: Refrescando los LEDs  \n0: Dejar de refrescar  \n1: Refrescando",
                "readonly": true
              },
              "position": {
                "x": -904,
                "y": 448
              },
              "size": {
                "width": 232,
                "height": 64
              }
            },
            {
              "id": "147bdc79-104b-4b5f-ba7b-428c118407b0",
              "type": "basic.info",
              "data": {
                "info": "Trama completa enviada  \nParar refresco",
                "readonly": true
              },
              "position": {
                "x": -1112,
                "y": 432
              },
              "size": {
                "width": 208,
                "height": 64
              }
            },
            {
              "id": "be6c8ccd-35f7-4240-bb5e-3e2dd2d81fb3",
              "type": "basic.info",
              "data": {
                "info": "Trama nueva:  \ncomenzar refresco",
                "readonly": true
              },
              "position": {
                "x": -1032,
                "y": 200
              },
              "size": {
                "width": 160,
                "height": 56
              }
            },
            {
              "id": "b4f7c70e-51e5-49a7-a85d-ade4e812b80f",
              "type": "basic.info",
              "data": {
                "info": "Arrancar trama de datos  \npara el LED actual  \nGenera 24 tics, uno  \npara cada BIT",
                "readonly": true
              },
              "position": {
                "x": -328,
                "y": 248
              },
              "size": {
                "width": 216,
                "height": 56
              }
            },
            {
              "id": "9df681e4-7576-4a5a-8726-1d841da3f7b8",
              "type": "basic.info",
              "data": {
                "info": "**NeoHeart**",
                "readonly": true
              },
              "position": {
                "x": -296,
                "y": 416
              },
              "size": {
                "width": 120,
                "height": 40
              }
            },
            {
              "id": "ad4fb8e9-89ee-4c04-b925-d87c238a0206",
              "type": "basic.info",
              "data": {
                "info": "Evento: LED actual procesado. Pasar al siguiente (si hay más)",
                "readonly": true
              },
              "position": {
                "x": -520,
                "y": 520
              },
              "size": {
                "width": 464,
                "height": 40
              }
            },
            {
              "id": "d7b0cb2d-a6af-472c-b3ee-3cbcff2f5dc6",
              "type": "basic.info",
              "data": {
                "info": "**NeoBit**",
                "readonly": true
              },
              "position": {
                "x": 64,
                "y": 512
              },
              "size": {
                "width": 120,
                "height": 40
              }
            },
            {
              "id": "e0157575-d17f-4a37-9efc-37c893686cde",
              "type": "basic.info",
              "data": {
                "info": "Esperar un tiempo igual  \na un bit del Neopixel",
                "readonly": true
              },
              "position": {
                "x": 16,
                "y": 384
              },
              "size": {
                "width": 208,
                "height": 56
              }
            },
            {
              "id": "8828dfce-027e-4094-a955-cf0f932d6b94",
              "type": "basic.info",
              "data": {
                "info": "Evento: estamos refrescando  \ny ha terminado la trama  \nanterior",
                "readonly": true
              },
              "position": {
                "x": -696,
                "y": 296
              },
              "size": {
                "width": 232,
                "height": 64
              }
            },
            {
              "id": "7005a876-a1bf-4d12-b692-00e50f64f7b2",
              "type": "basic.info",
              "data": {
                "info": "Se ha comenzado  \na enviar el  \núltimo bit",
                "readonly": true
              },
              "position": {
                "x": -192,
                "y": 400
              },
              "size": {
                "width": 200,
                "height": 56
              }
            },
            {
              "id": "9107ac0f-b99c-4c56-aa0a-c30887920c11",
              "type": "basic.info",
              "data": {
                "info": "Número máximo de  \nLEDs en la tira",
                "readonly": true
              },
              "position": {
                "x": -192,
                "y": -248
              },
              "size": {
                "width": 160,
                "height": 56
              }
            },
            {
              "id": "6e7e702c-e2e8-402c-94de-1d77876f0d68",
              "type": "basic.info",
              "data": {
                "info": "Contador de LEDs  \nIndica el LED que  \nse está refrescando",
                "readonly": true
              },
              "position": {
                "x": -368,
                "y": -160
              },
              "size": {
                "width": 184,
                "height": 72
              }
            },
            {
              "id": "89c1ac10-c0b8-45f0-a750-8e8dccc9c745",
              "type": "basic.info",
              "data": {
                "info": "Evento: Incrementar  \nnumero de LED",
                "readonly": true
              },
              "position": {
                "x": -312,
                "y": 104
              },
              "size": {
                "width": 176,
                "height": 64
              }
            },
            {
              "id": "0121a182-30cc-43c9-8d19-dd285fbddf09",
              "type": "basic.info",
              "data": {
                "info": "Evento: se han refrescado  \ntodos los LEDs",
                "readonly": true
              },
              "position": {
                "x": 120,
                "y": 32
              },
              "size": {
                "width": 208,
                "height": 48
              }
            },
            {
              "id": "128fe6d0-4019-4782-a1b3-f4b2d9de6cd5",
              "type": "basic.info",
              "data": {
                "info": "Evento: Cargar datos para  \nactualizar el LED",
                "readonly": true
              },
              "position": {
                "x": 296,
                "y": 160
              },
              "size": {
                "width": 208,
                "height": 56
              }
            },
            {
              "id": "cb241d70-652a-4ff7-8b63-10da8bc8cfe1",
              "type": "basic.info",
              "data": {
                "info": "**NeoBit**",
                "readonly": true
              },
              "position": {
                "x": 576,
                "y": 176
              },
              "size": {
                "width": 120,
                "height": 40
              }
            },
            {
              "id": "e79a0559-cad4-45e1-ba57-b1c864386061",
              "type": "basic.info",
              "data": {
                "info": "Evento: Desplazar un bit",
                "readonly": true
              },
              "position": {
                "x": 656,
                "y": 112
              },
              "size": {
                "width": 240,
                "height": 40
              }
            },
            {
              "id": "725a5101-3d6e-4ba0-85e0-ec43b7064a9a",
              "type": "basic.info",
              "data": {
                "info": "Evento: Bit nuevo",
                "readonly": true
              },
              "position": {
                "x": -144,
                "y": 320
              },
              "size": {
                "width": 160,
                "height": 32
              }
            },
            {
              "id": "77d6c064-a6a1-4673-b6f1-4efa3b40897c",
              "type": "basic.info",
              "data": {
                "info": "La señal de shift está  \nretrasada con respecto a  \nload. Primero se carga,\nluego se desplaza",
                "readonly": true
              },
              "position": {
                "x": 592,
                "y": -8
              },
              "size": {
                "width": 200,
                "height": 80
              }
            },
            {
              "id": "6e5f8f09-d635-411a-9c48-8bdd6e83feeb",
              "type": "basic.info",
              "data": {
                "info": "Último bit ya enviado",
                "readonly": true
              },
              "position": {
                "x": 192,
                "y": 464
              },
              "size": {
                "width": 184,
                "height": 40
              }
            },
            {
              "id": "f85aa49d-38b7-43a3-8091-5dde40cf2337",
              "type": "basic.info",
              "data": {
                "info": "**NeoReg**",
                "readonly": true
              },
              "position": {
                "x": 952,
                "y": 192
              },
              "size": {
                "width": 120,
                "height": 40
              }
            },
            {
              "id": "0c1b8424-9313-44ff-b89d-6c3214a8a3b5",
              "type": "basic.info",
              "data": {
                "info": "Registro de desplazamiento de 24 bits  \npara cargase con el valor del LED actual  \ny enviar sus bits en serie",
                "readonly": true
              },
              "position": {
                "x": 936,
                "y": -16
              },
              "size": {
                "width": 320,
                "height": 64
              }
            },
            {
              "id": "555af9da-b70a-482e-91d4-20d8488fd444",
              "type": "basic.info",
              "data": {
                "info": "**NeoCode**",
                "readonly": true
              },
              "position": {
                "x": 1272,
                "y": 376
              },
              "size": {
                "width": 120,
                "height": 40
              }
            },
            {
              "id": "b1c9bdd2-6a3b-49f8-b438-2aabdc3f00c2",
              "type": "basic.info",
              "data": {
                "info": "Codificar los bits. Cada uno  \nuna anchura",
                "readonly": true
              },
              "position": {
                "x": 1264,
                "y": 224
              },
              "size": {
                "width": 232,
                "height": 56
              }
            },
            {
              "id": "13bc1b52-8b75-41ff-ba35-10540101e371",
              "type": "basic.info",
              "data": {
                "info": "Bit a enviar  \nal LED",
                "readonly": true
              },
              "position": {
                "x": 1056,
                "y": 56
              },
              "size": {
                "width": 120,
                "height": 56
              }
            },
            {
              "id": "1742266a-d1c0-4eca-95f5-6a47029d3e02",
              "type": "basic.info",
              "data": {
                "info": "Acceder al valor  \ndel LED actual",
                "readonly": true
              },
              "position": {
                "x": 80,
                "y": -64
              },
              "size": {
                "width": 152,
                "height": 56
              }
            },
            {
              "id": "1b123900-6eec-44f3-888a-1b8cf3ceb6cf",
              "type": "basic.info",
              "data": {
                "info": "**Memoria de LEDS**  \nContiene los valores iniciales  \nde los LEDs",
                "readonly": true
              },
              "position": {
                "x": 312,
                "y": -592
              },
              "size": {
                "width": 256,
                "height": 64
              }
            },
            {
              "id": "37547055-36ea-49f8-a4ad-da61ea9e6317",
              "type": "basic.info",
              "data": {
                "info": "Valor RGB a enviar al  \nLED actual",
                "readonly": true
              },
              "position": {
                "x": 576,
                "y": -192
              },
              "size": {
                "width": 200,
                "height": 72
              }
            },
            {
              "id": "44fca2db-8800-4700-b181-6c68c8d442a2",
              "type": "4b42bc095e94414966651de69488c1f12781b6c8",
              "position": {
                "x": 352,
                "y": -224
              },
              "size": {
                "width": 96,
                "height": 160
              }
            },
            {
              "id": "6dd7a3cd-fd7b-4947-9f21-c53656ae37e8",
              "type": "60578c6aa29be13c7fad436432cb69f30df9b382",
              "position": {
                "x": -136,
                "y": -96
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
                "block": "3af27ab8-0b94-4f21-a58b-209fa453a2fd",
                "port": "30015f0c-ca0c-4bd7-bd68-d3729733bdac"
              },
              "target": {
                "block": "94edc7bd-b8d4-42ce-b1a0-2e6f11c293b2",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "0e2657e0-86ed-4bf7-a453-0aa34ae5994b",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "f75d6677-2751-4a52-a190-f0c360fca690",
                "port": "ec5088d0-ccc9-467d-8861-00b938157810"
              }
            },
            {
              "source": {
                "block": "485c83aa-4aba-45c8-8741-546be772e412",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "0e2657e0-86ed-4bf7-a453-0aa34ae5994b",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "a89b57f3-33c2-489b-803c-7df96531c38f",
                "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
              },
              "target": {
                "block": "485c83aa-4aba-45c8-8741-546be772e412",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "e3d84bd1-95a9-406f-9695-0643120e4abd",
                "port": "constant-out"
              },
              "target": {
                "block": "6dd7a3cd-fd7b-4947-9f21-c53656ae37e8",
                "port": "eb9f9c33-e717-43f0-98eb-dbd9c278fa8c"
              }
            },
            {
              "source": {
                "block": "f75d6677-2751-4a52-a190-f0c360fca690",
                "port": "b74629e4-010c-4f92-a8f1-1d8ab3438765"
              },
              "target": {
                "block": "3af27ab8-0b94-4f21-a58b-209fa453a2fd",
                "port": "bf4872ff-469c-4f66-bedc-2c585ce46ca7"
              }
            },
            {
              "source": {
                "block": "f75d6677-2751-4a52-a190-f0c360fca690",
                "port": "b74629e4-010c-4f92-a8f1-1d8ab3438765"
              },
              "target": {
                "block": "31acb700-9b79-4943-b5ad-e9d23b3ca635",
                "port": "3018054e-b8d4-44c4-bf4a-6cea708d3781"
              }
            },
            {
              "source": {
                "block": "45457e1d-edc1-4930-8015-1a1832a8aa20",
                "port": "fa3c9b31-a09e-4df2-9171-9009e0555152"
              },
              "target": {
                "block": "3af27ab8-0b94-4f21-a58b-209fa453a2fd",
                "port": "ad5affb4-fc2b-4b5e-a057-a1f6f41e1ff0"
              },
              "vertices": [
                {
                  "x": 1096,
                  "y": 224
                }
              ]
            },
            {
              "source": {
                "block": "0c45a35f-982f-4989-93b4-4c612315cdfd",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "45457e1d-edc1-4930-8015-1a1832a8aa20",
                "port": "86356a6a-02fd-46a5-ace8-8fb5315d32d4"
              }
            },
            {
              "source": {
                "block": "f75d6677-2751-4a52-a190-f0c360fca690",
                "port": "ea220fef-742b-47b9-88c3-d3418b833492"
              },
              "target": {
                "block": "c556ed37-a8f5-4898-be20-92dec6726c48",
                "port": "3018054e-b8d4-44c4-bf4a-6cea708d3781"
              },
              "vertices": [
                {
                  "x": -56,
                  "y": 440
                }
              ]
            },
            {
              "source": {
                "block": "e0888965-98aa-4d28-a8b5-143420fe9f16",
                "port": "memory-out"
              },
              "target": {
                "block": "44fca2db-8800-4700-b181-6c68c8d442a2",
                "port": "d6caf020-a688-47f5-acf3-eef01b5ed850"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "44fca2db-8800-4700-b181-6c68c8d442a2",
                "port": "68ca0420-62a8-4593-a08e-122b2cfd6c13"
              },
              "target": {
                "block": "45457e1d-edc1-4930-8015-1a1832a8aa20",
                "port": "31162979-ed80-456e-913e-39e519026e32"
              },
              "vertices": [],
              "size": 24
            },
            {
              "source": {
                "block": "31acb700-9b79-4943-b5ad-e9d23b3ca635",
                "port": "d86564bf-ade9-4b7b-ad70-2bbb0c84bf70"
              },
              "target": {
                "block": "45457e1d-edc1-4930-8015-1a1832a8aa20",
                "port": "09cff4c5-5eb2-484c-a5b1-ceaa32d37cb6"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "c556ed37-a8f5-4898-be20-92dec6726c48",
                "port": "d86564bf-ade9-4b7b-ad70-2bbb0c84bf70"
              },
              "target": {
                "block": "0c45a35f-982f-4989-93b4-4c612315cdfd",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "c556ed37-a8f5-4898-be20-92dec6726c48",
                "port": "d86564bf-ade9-4b7b-ad70-2bbb0c84bf70"
              },
              "target": {
                "block": "485c83aa-4aba-45c8-8741-546be772e412",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              },
              "vertices": [
                {
                  "x": 152,
                  "y": 552
                }
              ]
            },
            {
              "source": {
                "block": "f75d6677-2751-4a52-a190-f0c360fca690",
                "port": "ea220fef-742b-47b9-88c3-d3418b833492"
              },
              "target": {
                "block": "6dd7a3cd-fd7b-4947-9f21-c53656ae37e8",
                "port": "26aba23f-8567-4e9b-bd45-c26724030f33"
              },
              "vertices": [
                {
                  "x": -152,
                  "y": 112
                }
              ]
            },
            {
              "source": {
                "block": "772d9e97-c989-4842-9a0a-c28995f2c5a1",
                "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
              },
              "target": {
                "block": "6dd7a3cd-fd7b-4947-9f21-c53656ae37e8",
                "port": "743b5299-2d89-4783-b7c9-12a5b36df406"
              }
            },
            {
              "source": {
                "block": "30b6d3e0-b24e-4e75-9496-777cf7e2f90f",
                "port": "constant-out"
              },
              "target": {
                "block": "18aca8f3-a56d-46bc-8018-d3438483f0e7",
                "port": "7ca578e5-8e36-4c04-bbea-144418c8e9af"
              }
            },
            {
              "source": {
                "block": "6dd7a3cd-fd7b-4947-9f21-c53656ae37e8",
                "port": "cc17ff4d-1c27-4dc3-a14c-da730d54750e"
              },
              "target": {
                "block": "a89b57f3-33c2-489b-803c-7df96531c38f",
                "port": "86eb8c81-17fc-4371-bd21-51f429191f3c"
              },
              "vertices": [
                {
                  "x": -1016,
                  "y": 40
                },
                {
                  "x": -1080,
                  "y": 64
                }
              ]
            },
            {
              "source": {
                "block": "18aca8f3-a56d-46bc-8018-d3438483f0e7",
                "port": "8c6fda76-1ba0-4ef8-a53d-7bc8a9db4454"
              },
              "target": {
                "block": "a89b57f3-33c2-489b-803c-7df96531c38f",
                "port": "3ae2d46d-7981-497a-899f-b60bfae0f43e"
              },
              "vertices": [
                {
                  "x": -1056,
                  "y": 296
                }
              ]
            },
            {
              "source": {
                "block": "18aca8f3-a56d-46bc-8018-d3438483f0e7",
                "port": "8c6fda76-1ba0-4ef8-a53d-7bc8a9db4454"
              },
              "target": {
                "block": "0e2657e0-86ed-4bf7-a453-0aa34ae5994b",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "18aca8f3-a56d-46bc-8018-d3438483f0e7",
                "port": "8c6fda76-1ba0-4ef8-a53d-7bc8a9db4454"
              },
              "target": {
                "block": "0c45a35f-982f-4989-93b4-4c612315cdfd",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "331ca3b6-3ce8-4e11-8a4d-9f1833616b33",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "18aca8f3-a56d-46bc-8018-d3438483f0e7",
                "port": "61d11f03-6fbc-4467-a947-d546fa6f6429"
              }
            },
            {
              "source": {
                "block": "6dd7a3cd-fd7b-4947-9f21-c53656ae37e8",
                "port": "cc17ff4d-1c27-4dc3-a14c-da730d54750e"
              },
              "target": {
                "block": "331ca3b6-3ce8-4e11-8a4d-9f1833616b33",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": [
                {
                  "x": -1792,
                  "y": 40
                }
              ]
            },
            {
              "source": {
                "block": "c1a0c062-fc3a-42d4-a155-d11e410b8b32",
                "port": "dde18e55-7d08-438f-a248-5f1d0c050689"
              },
              "target": {
                "block": "331ca3b6-3ce8-4e11-8a4d-9f1833616b33",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "fe61d1d0-cda7-48cc-8074-d33f2631dea1",
                "port": "out"
              },
              "target": {
                "block": "c1a0c062-fc3a-42d4-a155-d11e410b8b32",
                "port": "6c1206ed-2bec-4a5e-94d0-1d6aaa6011ab"
              }
            },
            {
              "source": {
                "block": "fe61d1d0-cda7-48cc-8074-d33f2631dea1",
                "port": "out"
              },
              "target": {
                "block": "18aca8f3-a56d-46bc-8018-d3438483f0e7",
                "port": "7697c4d1-f5f8-4a1d-88af-e367fe54e4b6"
              }
            },
            {
              "source": {
                "block": "fe61d1d0-cda7-48cc-8074-d33f2631dea1",
                "port": "out"
              },
              "target": {
                "block": "a89b57f3-33c2-489b-803c-7df96531c38f",
                "port": "9f09a4af-8f7a-45c3-af7b-293a244e76d9"
              }
            },
            {
              "source": {
                "block": "fe61d1d0-cda7-48cc-8074-d33f2631dea1",
                "port": "out"
              },
              "target": {
                "block": "f75d6677-2751-4a52-a190-f0c360fca690",
                "port": "128852cf-a106-4333-a58a-27d39afc53ea"
              },
              "vertices": [
                {
                  "x": -416,
                  "y": -128
                }
              ]
            },
            {
              "source": {
                "block": "fe61d1d0-cda7-48cc-8074-d33f2631dea1",
                "port": "out"
              },
              "target": {
                "block": "6dd7a3cd-fd7b-4947-9f21-c53656ae37e8",
                "port": "c90da543-4b9c-4f4c-a5fa-7e1166ee1dd3"
              },
              "vertices": [
                {
                  "x": -208,
                  "y": -120
                }
              ]
            },
            {
              "source": {
                "block": "fe61d1d0-cda7-48cc-8074-d33f2631dea1",
                "port": "out"
              },
              "target": {
                "block": "c556ed37-a8f5-4898-be20-92dec6726c48",
                "port": "aef376f6-27ce-494c-a34d-8704014e88dd"
              },
              "vertices": [
                {
                  "x": 0,
                  "y": 80
                }
              ]
            },
            {
              "source": {
                "block": "fe61d1d0-cda7-48cc-8074-d33f2631dea1",
                "port": "out"
              },
              "target": {
                "block": "44fca2db-8800-4700-b181-6c68c8d442a2",
                "port": "509a34b0-76d2-4908-8852-72651c1e4456"
              },
              "vertices": [
                {
                  "x": 232,
                  "y": -224
                }
              ]
            },
            {
              "source": {
                "block": "fe61d1d0-cda7-48cc-8074-d33f2631dea1",
                "port": "out"
              },
              "target": {
                "block": "31acb700-9b79-4943-b5ad-e9d23b3ca635",
                "port": "aef376f6-27ce-494c-a34d-8704014e88dd"
              }
            },
            {
              "source": {
                "block": "fe61d1d0-cda7-48cc-8074-d33f2631dea1",
                "port": "out"
              },
              "target": {
                "block": "45457e1d-edc1-4930-8015-1a1832a8aa20",
                "port": "2f6ae482-e884-4b20-bc74-48b86e061fea"
              },
              "vertices": [
                {
                  "x": 904,
                  "y": -128
                }
              ]
            },
            {
              "source": {
                "block": "fe61d1d0-cda7-48cc-8074-d33f2631dea1",
                "port": "out"
              },
              "target": {
                "block": "3af27ab8-0b94-4f21-a58b-209fa453a2fd",
                "port": "0600a484-aeff-4223-adc8-a43e14a447fd"
              },
              "vertices": [
                {
                  "x": 1208,
                  "y": -8
                }
              ]
            },
            {
              "source": {
                "block": "d7b9ac96-ed28-4c08-b7c2-50e1accf1500",
                "port": "out"
              },
              "target": {
                "block": "44fca2db-8800-4700-b181-6c68c8d442a2",
                "port": "1cfc5bd6-7964-47e7-a6d3-d86aa20d3bf2"
              },
              "vertices": [
                {
                  "x": 144,
                  "y": -288
                }
              ],
              "size": 24
            },
            {
              "source": {
                "block": "35c52a69-a45d-41fb-9ece-27c3078406bf",
                "port": "out"
              },
              "target": {
                "block": "44fca2db-8800-4700-b181-6c68c8d442a2",
                "port": "7ed195a5-d991-4330-9e23-19554926484d"
              },
              "vertices": [
                {
                  "x": 72,
                  "y": -256
                }
              ]
            },
            {
              "source": {
                "block": "bd57c978-7b58-4774-90aa-1c0f42ec1e79",
                "port": "out"
              },
              "target": {
                "block": "44fca2db-8800-4700-b181-6c68c8d442a2",
                "port": "8c2b72d6-036f-4a7e-a831-b9f2ae69749f"
              },
              "vertices": [
                {
                  "x": 176,
                  "y": -272
                }
              ],
              "size": 9
            },
            {
              "source": {
                "block": "6dd7a3cd-fd7b-4947-9f21-c53656ae37e8",
                "port": "805e1630-b09f-4b54-8275-367c64a4dd3f"
              },
              "target": {
                "block": "44fca2db-8800-4700-b181-6c68c8d442a2",
                "port": "e40e4149-95e2-480b-9202-2c61f664c5ca"
              },
              "size": 9
            }
          ]
        }
      }
    },
    "aa600748508f5363f948ead138b33002bd6ff9e5": {
      "package": {
        "name": "NEOCODEC",
        "version": "0.1",
        "description": "Codificador de bits para los Neopixels",
        "author": "Andrés Prieto-Moreno, Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22299.212%22%20height=%22192.77%22%20viewBox=%220%200%2079.166382%2051.003796%22%3E%3Cg%20transform=%22translate(-57.226%20-63.354)%22%3E%3Ctext%20style=%22line-height:0%25%22%20x=%2292.485%22%20y=%2294.244%22%20font-weight=%22400%22%20font-size=%223.159%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%20stroke-width=%22.263%22%3E%3Ctspan%20x=%2292.485%22%20y=%2294.244%22%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20font-size=%2215.282%22%3E0/1%3C/tspan%3E%3C/text%3E%3Cimage%20y=%2263.354%22%20x=%2276.786%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASMAAAD5CAYAAABs8lPQAAAABmJLR0QA/wD/AP+gvaeTAAAACXBI%20WXMAAA7EAAAOxAGVKw4bAAAAB3RJTUUH4gkeCwUT3xIIjgAAABl0RVh0Q29tbWVudABDcmVhdGVk%20IHdpdGggR0lNUFeBDhcAACAASURBVHja7L3ZkyTZdeb3u/f6GntkRu5VWVVZ1V3VW3V1N0ACBEiC%20JIAxDjQSSTNSNmN8GMqkpukvAB+pN9CkfwCUSQ8c44wZJM0MR0abAdggFgINdHd1V++1dO25L5Gx%20uodv9149eGQtDQwH1GwEkKcsKqI8IrIiPdw/P+f7vnOusNZyHMfxHwpjzZoU8vbHt0fp6GtVv/57%20x3voOP5jwzneBcfxk4QU8nZhi887wnnlaFtm0peRxRrAMN21eZ7jCIlSCkd5bzrSfwVACHW7/Bnq%20NkLeFvwoqP0tMLhWmMHXCp2+FLiL4vib+NkNcZwZ/XRHSv7yiPQrBUW7QfVPKrh/dLTdRb0if8yJ%20b6xZG6aDr42TyUtxPCZJc4wtGEUTkiQmmiQYUyCUS6EzitzgORKsJk9SomhEZ26WzkwbRwmklCTx%20mEajgUSglIunHJRS5U04CCHAyvKgExIpJZSvBsrtSgksGms1CI0QFkuBMQWF0WAVRoAQCikcpJQI%20oVDSQSmXdnXhGKyOweg4/pOVQ9i1iPQrMfnveqg3HdTtAr3mIG7XCX/PYNcGTL7m47wCkj7xl1MK%20DAUKl8JmJHFKHI1IxwlZEhONYtLxmEG3j7CGrND0+4ccHPYZjQekWYG1mvubWzQaNVozs8zNzdKe%206ZAXKYWBVqMGWcag10ObnKeeOs/qiWW0LqgEIb7nMBqNUMIiUDhldoTjOLjSQUqHalhDCIFAIUQJ%20JMADkLJotM7Ji4SiSDA2R+scbVK0NaRpjkFiTPk2JV0cx0UKD5CcWj1Np3HiGJCOy7Tj+I+NmPwr%20fSZfzjEUaEC8VGBeyimwFC+ZcWLj8YRoEpMb/VKSpQzjiDiZoK1le3OTLMvIkpQ8zUjGEYPDHsP+%20gCJOmGu2qfoBWmt6/T7D4ZAkz0iShGgSY4xh+cQKynexCrqDPr1BH8/zOHf2DDONGsOoRxyPOZWs%20YKWhKDKiJCXLHXKTYoTEd3wczyH0XYKggud5KOnSqDYRVk7BSAACIRTWCBCGLEsodEqWQZoVZHmG%20tjlG5xQ6Q5uCXFuKQqMLi5yCXJFb0jSnKArSldSuzJ09BqRjMDqO/z+Z0FbWuxXlCdoXDJMx3VGP%20w2jAKBkTZTHjZIJNNJOdHiI3IARGCYajEbsH+wzjMdpaAs9Da40nHXzHZTIas7+7RxxFBChm203C%20akC1WqWzOIfrukhHsbO3y807t7l69SryYJf93gHCUbiuS1bkLC0tcc45S6UW4lc8klxhlUW6FsdC%20oQvyNKFWqeK6LtWwSrVapRbWCIIATwUoHIyxCOs8BkZlYiQARb1WQ1uXovAotEtWeCSJQ5Iq0lwx%20iRMcY8lSgXYsQkisscTxhOFwzM72HtevX6dRf9O227O0mrO0WjOcXDxxVsq/C091HMdg9HMUO4zs%20sEjZjw7Z7O9xEPVZ39+mO+6yc7DP4bBLmmUgLUqCbxTzsslM2GBmYY52s4mXhGRVCyMPK+Cw30cC%20buAiXI/cSMYiJREZrheycGaRU0srrCwuMdNqszi/hOd5fHD1Q77/2g+JkxhtLQf9Q9Ikp1qtAjAp%20UuIkYvcgRyhozdbxPIc4HqOLnFpYIazWqYYVAtcnDKtUwgaBF6KEA0gMAk/6iCk/xIP7aaWGxZIj%20hYfnSlzXwbMOjnKR0kE5CeN4MuWTDEiDVJI8L0iyiOG4z3g84c47b9Pt9mi3ZlheXqVWq+G5wa3A%208zl35izznQWeeOLJP/Q8/0+Pj8JjzujnLnrkl4dMXpJYYmL2ogF3ejvc7G5yu7vF7cMtdkYHBO0a%20uU6Io4jJaICnYbZeZ6kzy3zQ5FSwzInOUpmxmIxUZ2zsbnJj/S6jyZjeaIgQkv5hjzzOELmlt9Ol%20Kn1efPppfu+/+RImnjBTazDfnCUdTtjb2WcwGpJqw/ruDt95/QfsHB4QpQlZljHbatOo1/GFpB36%20fOHXPscvf+azROMhJs1pVCroNGO+M89Mo4PvVgj8Okp6WDyskWU5JSTib8kPwWCn92AQ0/vCZuR5%20Tm4mdAe79IeH5HlKpjOyLEMIwWFvxK1bdzk4GPHBB9dIJhmu6+PIkkAfjQekk4yaqjHT6HDu3DnO%20nj1Hp9NhcXGZkydOsbB0rNQdZ0Y/wzHSydcOVfq7SckH8fbm+2wOdvho/TY3dzc50DFFRWErEl0L%202Rh2CUKHRrXG3HKLthfSqdeZr9VpqxrV1McJJDgGZQUuCr/hYbycrZ1t+tEIoVzGyRid5niFQDua%20oF6hMlNlp79Df3sHPUrwComOUnRSIJRDLsG4LoUpsErg10JIJYnO8POUmdk2T5w7x5NPPcnMTIs8%20S5hECUVW0Kg0addnCd0qrlPBEQESH20kGPXjEqFHLodHT0qMzkGUPBKifIMUCiVdLJJqpUlhCsbj%20PrnJcT1JrguSfEyuJ+x2N0nyCaNJRDHU+K5LUeR0u/t40ucg2qFb3Wdnd4tvfetbpGnK8vIKFy9e%20YmVlxS4tLbHQmeWppy/QnCmVOV3EX8HqNeUee6mOweinmIweK373gAnv37/JO9s3eHP3On0mRGlC%206hc4oUdQ8ZESiiLn9OwcM7Ua840WrSCk7Yc0vZBASnyjUBMBWmMBVFm+1Zo1KrUK8SQqlSohUEph%20pQYsSgiKLGfUH7CxscF4/wAzTvFygZgUYARWSMZ5Si+O2dnaJEET1KsEnoOrHE6dPMGvffbTLLTb%20nD59ijRLmEwmuK5Lvd6k0+ogcAn8Kkr5CNwpOS3Kz3pED/0ESbi1FmtBCErpHnCURChLRTYQCrTW%205CZHOS7RZIw2OY4rWJibQVrY3xuwvb3LaDAgyzKM1jRnGmhVYNKMVqPCiy98grm5BUAShiH1WoNh%2075D1O7e4/MYPOXX6pH3qqadYWlqg2pj/AtasIY55p2Mw+imJ1GQv+9L70wLz+Vv5zpffuX+DK7ev%20cXXjLjcnuxzOwMTTSEfgS4dW1aPZqNP0QnwEy+0ODc+n5XoEKFxrcQ2QG8gNgeuRFgnCyKkHx1Kr%20V1leXmZ5e5n94QBtDHnuI7XAFZY8s6RZwv3NDQ62NgmMZTZo0A5qpUFRgDaGNE0ZDAYopQhcFyEE%20xhg0OVJBs1mnVg/xfMngoI8xmmq1RbPRpjO7SDbJcVQwPaQepkFC2gdENf+BQqj0Iqmp14gpKEmE%20AIWLp3ycSossnaB1Co4mzSIcaWm2qqyurvKDVy+zs7ODJceiqVQD3FyRRDE20ZxcPskv/dKn+exn%20P0sYVhgOxjiOR7PewBjDe++/w/e+812+/dffoFKpsHrqJJ/5zKf/6uILl5idmceiel5Q/yPlHHNO%20x2D09zYTyr4ykpMvD/T+V2/vbvDmrQ+4cvca9/q7DG3OqGJIqz6iFlJzfOrSoxPUONmY5UR9hrYb%200lYBNengC4XSFqENCItFU4gCRzk4Xqk+pTanMDle6LOyssKzecrtzfv0BkPyfI8oTjCOxa/5qMyQ%20FimecrHKQ/ouVgpyXZAbixQOXuBTbzVpCc1YJyQ6x3UVYeAxmUTc+Og60Xyb1eUFPM+l2WwSOiFS%20ergE+GEdUOVtCiTW6hJg5FFqJP89fNG0kpMSa+0DHxFWgJimU9bBGgdXKSphgzSPSIoReZ4gHU21%204pKkQ1zf8MKl54iihCuX32U4HFOv1lBG8tIvXuKzv/hpXnjhJYwx7O93KYqMg/0dXv/BXbKs5Kes%20yalWfA4OdnnnnTd44/VXeeKJJ/jEJz/NE+cvtJ9++umvNtrza4PD/S8PRyNc16fRaPfqrc7M8Zlw%20DEb/1YFoPd/98ub+Du/fvcpr773F9d37TDyL26lTrdfB0VQaIc3ZGU7MzrMYNphzKsx5VTqqShOX%20oJBUpYsvHdSR7G0FRVGQFSmTIib3AgqjGWcxpgCbW6peyJnV06w+scbGzjbXPrzKnVu3iPb7SClQ%20DuSJZmJAGYl1HGrtFlXp4yBRrkduDbXxiOGthO7ekNFkRLvZYm6hQ6NWpz/sYbMxd+/dYqmzROg1%20aDRa1MI6GonEKf1Cj6Q/QohpZmQ/Bjzyb82OStn/KFMSWCuwGKR1kUDohUy8kGhyQJpNgAIhC3a3%20d/EDwYsXnyPw61hteO/dq0grqQc1Xnj+WdozDUbj0mO1ubHF4eEhd2/d5f3332ftzBl6vR7Xr19n%20tj1Du92kXq2g0wlbG+v8i+s3OHXmNOfPn2dufvHLAHmuEUhc128/++yzdmX1JPPLpc/JWrMmjku7%20YzD6LxX3sz17a/sOd7bu8o3vf5OJ1PSyMbFNSK3FVRXasw3OzM4w02zRDOvMVuq0nIC2qjDn1pgT%20DRoEOMri46BwsFhAYVGkTkHGhDgbg2OI0oSqE1M3Kb1igs4SWpUGtcYstVadoOIiPM1NeY1sNCYv%20DFpnVNwOEFBfnOeZiy9ydnGV0PXIsoxhHPFX3/sOWgmMA0Za4iwm1TlGWKIkQhaW+/fvEjoh3myV%20WrVBw5shywzSkTg4j4CRRUg9ffRxEDIf24uPy/2PgdEDMsnFdRTaJijp4vs+pRJsSiLb5DRbFQ66%20e3zw4RXm506ysrJM76DHrY/uYrKcfv+Q7c0NfNdFa83dO/fZ2dmhUa/zwgvP0D8cIIXBdSzLi7Oc%20OXOGwFNMohiJ4cRih1F3j/feHHDh6Wd44YUXaNSbrK9vcv2j69y8/gFra2tcvHjJnn3iHI35M8cK%203TEY/eeP3axv+9GQ25s3+eG7b3Dl6ttkjoaqS7VVoVFrE3aatBbnaMy1aXpVllSLjlcvgUP61PGp%20UfJDEgjwkUgsgsJaEAqJgwdoQlpeHQmMwjGRn5BJizveo4gP8B2H3e4G1F1m5lssnVmiO9qme5Cg%200wQtQLg+o0HObjRgLxpQHfXI44StzU3Wt7e4/P473N64i1f1qbWb6DwjymJSUyPAZTSOieOYIAgI%20wxAppx4ibVCe+zGCWjwCPAUWOyW25SOZkvgR8vox/ujB4ylQWYnRIB2J6/pIKXF9hwCXtACpDNVq%20SPfwgEF/gtWKzc1Nut0un3jhRaIo4v69O8SjMa7rYoyh3ghpt+rUagGOFBRFgqssc/Ntnn3mPIGv%20uHPnDgd7Oxzs9jl7do2XXvoE588/RaPRIMs1J5Y6zDbr7O8fMIpHvPPWDznc32Rtbd3OL85TrdUg%20nPtDxDHPdAxG/ylBKI0tjuHVN37I5XfepDs+YPNgk9pck3pVUZltMLs8R6PTxqmGKF8hXYeG8Xna%20XWBe1KhSI8CjLMYEDiXoPJSdJA4Si8RMT18XD2EyjC1oiCahqDChgKrEdUL2zYDYTTiMR+yN9uiP%20u2i/IA8zJnaMqDps9buIRDK6F5HnKT/IBYP9LlbDxtYm1U6TxvwsVlqEo8jHBYnOqdRrCJ0jZak8%20BUFAs9kCBDkF1bD2EHceq9RKvsugp08XYMueNPFAXhMPQEiIj5VvlscAKU8zXN8HCvI8J6hWqOoK%20h8NtdvZ3GA4i9g/7mEwxnqTsbvXY29vDdV0AsiwpzZoYut19XNelVqtx8flnCDyfXrfLYXebmXaD%20T3/qk5w6scLtm9epVwNuDw55+smzvPT8BS498wRe4JLGY5RyaFdDAlfSbp4qhYw0ZTAc8s6br9Fs%201VlbW2Nlde2rTmvtlWNF7hiM/k5hjFn7ce0DBtbWu9tcufIG//Iv/m/ubdzj5JllWnNN6o0qJ9ZW%208VoVqo0qKnBLoNEOFb/CrKpz0pmhTRUfH4mLxVKYMkOwQj3WwY4tuVsFyOlJKa2HsB6F1WgV4Kgc%20EGi3/BmJyBhEI0aHfbr9LpnIcZsekRAU4xFuWKfi1MlHEzZHh3iJpkhTXOlifAejBEsrJ9nc3qDX%207zHTatFsNvE8j7WVU5ybX6BdrSNQJJMM69lpafYxABGAtdip4mexWGuRyJLZxj4isP3klYxSCjAY%20LFKWnf8WSLKcKI5J8wzpKPLM0u31GAxH1JoNlHWJ45iNjQ2SSYQ2Gt/3yfKUza37bG1tcOH8E2xu%203kMITZpGvPba9zk8OMtg2MXYjNXVZV584SKrJxbxHIHNU3RRgHURKKTRGGtwXZegVqUSOESTCXmR%20sX7/Dtvb25x5YnCr1uhQnVn8Q9RxlnQMRj9B/DggiovsK3/x/Ve+/NG9W1x5603ub96nWq9wcnWF%20sxfOUmnV8BohKnRxPQ9hBUpDxQ2Z8zsshLPUbZPAhkipMEgKLFoenb/qQeEibClAqVJMe7CN6c1B%204VhwrYMSCqEkCoc00ER5RNUN8JWH63t4QQXHRhRRAYWHo0MmacIwi5nxq4Sui7SSltMmqFbwgwDp%20ODiehxKC/f19RFrg5gW//RtfJB8nSK0wpvzMR2BirEEJ+VhGUypqAivKx8YclV8PMyGL5d+r+X9s%20s1RMwajATN9ZWMskL4iTnMFowmgU4xCiXB8hxhijsSYjjmPQBcJotNZIYVFKMR6PefUH3+P6tfeJ%20xyPq9TrLKwvMdlpUKj6gMTrj0vPP8txzz1ANQ4yALM+n1gOB65TTAxDTnjthcNwQx/NI0glxPGY0%206vPOW2+wsrzKydPjrzYa7a/ihW8i/VdwK390fNYdg9FPFG9f/9C+/vZlXrn8PQ7HA4os4dOf+RQX%20LjzB3GKHZqeJdQX7/QPILQaNIxUVr8Ks22bBbzNHG4lLjkJOyy+DnOLLj+YHR4r2x4Ho0Zu0ECoP%20IytlhiAyJvV5zi6sEdmYdC9jNIxAuDgzs+iuoJCg6j5VGbLYWkCmhnQ4xgsDCmu4f/8+w9GQZr2O%20yQocq5htzeI5PkVu0dqiRNlEq5RCo8EWSKseU8msPcqIpmqYZaqMmeksoynJLX7yzMiYAqmKaeGn%20KYwlLwwWifJCxpMuFodaowU2YdCNmcQjijRjqIc0l1aoBB7D4ZDRaECjXuHEiRNkecxh/xCBoWI8%202q0Wo3GP23fG5MWEpaU5PvmLn6DWqGOtwBiB9DyCIMANQgInRLoeUkqyPEfrsn+uphTaFuRpSpZl%20DAZj9vc22d/bZKYzx6kzZ19qLp0uL3ym+Dzy4eC6YzA6jsfi1s6Gffvtt7n85pvc2rxLJDOUK5lp%20zXD69ClOrq4QBB4WmEwmeF6AFqCES9WrMFtrM1dt05CNsmtdOGRCIqbtonYKQ0dskZ2WZEeOHFGe%20vw9LmqMX6em9Kcu4UDoYAhpUaIk6C9UFTs2N6ScjdntdilTiqJBkygUtriwyFzapW5/u+g7d3iGN%20SpXZmQ7GGCZxTDqKmKk2OLNykl947hJLnQ5KOORGURhLURiMMdMPbKYA9HCA2tG2o8NMTEu3h6TS%200WvF44XwY+ra40WyFXpa9Bm0MWS6QFuBH1Rptjuo7UOEFGS5ZRQlWCmo1Stot8BzfJ57/hKVIGR3%20d5vbN28wHB2ipMUUKfVqFUdZwlpIpeazu7eJtHDp0iUuXLhAvVnDKAclPXw/xA/rD0DIVyFyyksZ%20WwKsVAIo/V1ZEpMlE1rNJtFwRK/Xo9/dIRoN6exs/e7yiVO2uvDkWRP3LstK+xPHYHQcDyLVxcuv%20v3vlq9/73vd45/33iKIIVfWoNes4FUUl9Dg8PGB702f19AmsViRJgvUcEApXuVSDBjP1WWb8kiWS%20CCR+CThHHAjiAS8ksGAeMraPgpB98G9ZgpSABz2lFlyjCKXLDA2GNqJiAzr+PKvzZxnmGXbXYxxP%20CGsuFbfKysIJGtalf2+Hzc11+tsHML9IJaxx8alnSEYRt298xLmFVU4tLuNagS9d2vUZelmfyShm%20PIpJwoRarVH+HgKwZgpCcjpEbdpnZkvOCGEf+IiOnv87MHkoKcrJjxRoayi0xiBw/Ar1xgyN5gy3%20bt5j1N1GWRfX8YgnGZV6jU+++Ekq1SoYWFhYojM3w3h4yGQyZnPjLr4rcZRA6wyL4eSpk3RmZrn0%20/HPMzy0SpynN1gxBpUG10sAPKijpg3CAskTjyOApRHnF0AXC5PiVOpiEtNel06qysjzPzu4+d+9v%20cuP6Ad1ul8Wl7q2FxRP4jv8V6f18lm3HYPSxuL5x17515Qpvvn2F7d0dcBS1VpPEZoyTMTYtELrB%20ZDikXqtw5uwpCsDzPCbGIKRAOR6eF+C5IS4hzlQve8B9WFAWpDEPkwH7SCYhDUKCFRYjy0TITDMG%20gcCTJbQ9KNm0wBOSivBpijp1UaeuUk52TuFWQ4Jqkzsb94nlBJMWpGlKdzRkd2uLJJ4gLBRZzsb6%20OoudOUInoF2t0wqrkBn6e4eoxHCw2iPLMrCSPM+J45i0MsGRVQQSSzHlvsyUmlZTDm4q20/BdgpT%2002xP8KOTI8yP+WbKjCgnZ5KX43GzrCAvNIW2FBb8sMrC/ApKHzAeTihyzWSSUg3KVpH/68//H7rd%20HpXQ48knz3HyxCIXLjyNFJr93S0qlYBonDEcDlldPcHTF56iUq/georVhVXcYB6v0sD1wvLUsQqE%20R+k6PwIhsNZQGFuqhp7CQQABTuDAoIvOY+Y6LRqNBgeHA7Z3Drjy5hs8fbGg2u9/eXZ25eVw9ufP%20za3++I//+BiBpvHddy7bV1//IW+99y5ROkH5LrnOEJ6i2WmxfXjA1t4eRpRlQrvTprM4zygZo0IP%205Tn4QUA1qNMIajTcKqH08FAoKxDaIk3Z5qEMZZlip7XXo60PR1KaACsMPCxOHpR48qiGe2DZkaSy%20wCJJyYnTCdJ3qNUa4Egmk4TBcMjB/j7JOGZ/a4fe3j6+6+E5PkoqOrNzCCnAQLvRwhWCyThCaEM0%20HmMxCCzVapXAd3GUg+soPFchUVhRupGFlNPu+yMZX05HiFiEsIjy6SmB/TDrEw+KUzGlpx8kfxg0%20lpTEjBhNBoySAVE6JpqMGY1GRFFMNIr43K98jlMnT3Prxkfsb+/huR7VsEK90uTk6hmKLOegu8/u%207hZxNOTkyUXieMjO9jpZNmFpeYl2u82p02s89cxFatUmYbXJbGcV6TZxvRbgk+WWogDHCUswEhJt%20pmXodNKAlOUgOYNE6HLf4bg4lQZeUMVYKHKN63q0my2uvvcek9EIdBF6wv6xX2/9L8eZ0c9ZbPQP%207atvvsFffv0vyY0mqPg4VY/RaEhCzonFBdaeehI722b7h6+y2R9z6YVT3NzfQ939iNNrq+T5BFEI%20aqr0TzfDCqFy8cprIqKYSmSPJgEPKJMjSU0+4tMpZ/ooK1DW4giDEAr9gG+S5cV5+vOMKP9ypaAl%20AmYIsFmOciRqnHK4vk0aT8jjiC45nhG4jSpplJPkEzrNgH46phhoov6YuD/k9PIJlKeIdMKd9dus%20rq0w26lRMKEfjcnymErdpUpIToFPgBE5whiEVUhblpVYMMYivSnIluL8FGKn/Ww80jRiQGPR0mAR%20aDSGBEuPUbLHOItI84hJMiJNJmAKbJazfe8eP5ikHB4MqPiKLIlwfcHNmzeRxuGzn/k1/oeX/ydG%20/X22Nu/QmW0wGu7RO9wiDEpSvt1u8+wzz7NyYg3HbVNrdqhVZ8CpTseilIqZ64YPS+gHPqlHWlmm%20v1dpaQArXRAeQtXAgHULKqqO57UYdw8Y9Q74xIU1RsMh19/4a65ecbn4iU/b008/A+HPx0IDP5dg%20ZAr9eemoVwC+f+Ute/ndt/nw1jX8aoVBb5/+4YhRPGJnb5fZ+Q5rrfN4tQrGcRjGE86trbK0eorr%20N97nm9/7Hr/qf5Znn32aIs1QroOUoCR4KDBlJoA2Ja9wBEKPcLfaQsFRtlDORSx92A+dysKU56x6%20mDuVWYN4+FhK9XCSorUUSUZmE3SSIYwlixNwPQIVoLOEOE8hz8nTiP2+xaQFVT+EVCMLQ1bkyGqN%20tCgNj66r0CYnyxOkBW1zJtmEiYlw8HCkV5ajknLWtZl+OAlSCigMCA1TSd9KiRUPmaMHDbLCTPeD%20mDJEBk0GFGgKtM1QjsBxHNJJQq/bZzweM9fp0D/skY4Tunv7jIcRF158hkvPzdJqdhCO4oevvYoU%20hsA1XL12n97BFnmW4LiSM2unOHHiBPMLK7RmFqjX5qhWZ3H9JuBh9REH9sg3IMzjbvHHGoIfWh0s%20Ci3E1CNlEbbAURLHswRhFZtFkFmqbh2dzbC1e8B7b77KrTs3OXHuvH3y4me+IH7G1bafKzA6MjNK%20R72y3e3a965+yKuXX2f7YIdJkeGGAf3hgO6gz37/gN29XbrxEDyH1957h639Q/aufYggZWm5w8rq%20Sfpxl92Dfc7kaXmyOpIcgxWUpcsD8vYhFh1p9kdcUGY1hS5QSiGwKCxSWBwhyomHgocc0YO3m7Lp%20VYIWTIe2ahJyYlmUN1MwoUAFDu12k8PxEB1nJMMxxeEYaSQ1L4Cwgk4KlJRobXGlxHEkRZYTuB6h%2057D8RIdOe55QVaEo66wiM4wHY0Qu8Z0Qd9Yv5w9Rjv0oy0qLPPrFjVMeckogpyXaI7uDwkwNDxIc%20ceTdzkEnaBMzjA6J4hHRJMJaTTIp2NvtcffuOnmeU6vU0YXCdQN0IXjpxV/gC5//TaSVRFHM8tIJ%208mKBwHc42L3PtavvsL9zn6WFDp3Zec6dfZKVlVXm5xdpNmcIgyaeWwEUxpoHGZx4oG4+Mscb84ir%203PCwz45HCk6JmhJ9Ujol7w0E9SqKFtv3D/EVdObmCWtNDkYxO4d9em+/w/Ze96/OPfEMJ86cF8dg%209DMQR2bGKx9dt+99+AE3bt/i1p2bHBx26Q4P2djZZpxGGClwAhevGjJOJrx77X0MgrDa4KXf+A2y%20PObmnZv84tJLNGdn+Oj+XZbXTrK0tIRnDanVpMZilChJaGNQaroUjyivnuUhKynQ5EVBrjNc4SCm%20pLUSYkpYM20MsQ/bJew0ncIijEBIgxGGDE1EQkRCqnI0GtdTzM+0efLUGfr7PVRoGMWa1PVxtcIR%20LpWgilUaYQSuUPhIbJqjs5yqH3Lx/FN89hc+xeHe/gNay5EKR0jSJEfaCOtbRuMRvh8SuAIHA7Jc%20+cNhunaa85g5HQAAIABJREFUUh8D1AdJHBaLlEeZU0lVF2hyPSFNY7IiYRIn5IUBq0owM4o0KUEJ%20BEYrTiydZNgfMR7d4NJzZ4jjhG+98tes39+kXm/ywovPce70CYxJWFhYoEjGSKFYWFhiefkEc50l%206vUGQRDiuB5IhbGQZxrXdR6S88I+wmj9ePXvYXZUqojOgwJVlZyYdMC1iDDEo6DVmSUZD8iyFOko%20ZlpthBtwMIjY39zEEQ57O1v2wtPP9SrNzszP2lSAnyswSq19+fVb17/63b/5Nrdv32Z3b5utra1y%20RIfJSxNbxaMfj7FSUK3WGU1GpFZz+vQaX/rNf8TZs2f5f//yL/jg2nscDHqce+o8Vz/6kNsb96nN%20zFCttdBSkWNK1kdCocvRhYXN0QKmAj1mat7TtiA3GmXV9CAvAUvz0H+kkVO7pEDYRzT/qcZfEryG%20lJyJycgpEFbjG5j1q6jZRdZrMwTapZJIUgKSfsxoMEZoUEKhC10a93RBMhiTFWPqMuDi2ac4sbBC%20d6tLnufl/+dYjJBkadknprWlsIZKpUa9kuFPh/ELpTA4uFiUFEgrp8T89JS1Bms1mgJHSiw5hU0p%20bEqeJyR5wiSNyXXGJE3IjcVYRZFnjMcT0rTAakGe5wyzMa4I0QXkuSVNcsajCbVqi8VFy/r6Ot/4%20xjf4ps2ZmakxO1OjFnicO/ckv/qrn8NzA+r1JmFQx3MrCBUALlK4SHnECz3qPOVBqwuYR3rrjmpw%208zCTsqW6pqZ8X3kzCKnAdUH7VNttrDAkeUY8jjHGUqtUEXgc9Af093c57B6g86z91DNP29rsSXGc%20Gf0URm8UX/43P/j2S+99dI3Lr7/B/v4utcDn+UuX+PSnfoFqvYIb+Lzz/rt8/a9f4db6PYwtsNai%20lIPneSwuznP/zm1u377NOI7Y2Nzk9IUzdFaW2NhaZ2U0YLYzj3EkE52TKY2DwmDR1pILU7qQjwgg%207HQG0NRzJARSih9xJdspyZQhkUi8IxXZWB4dZm+BnILc5KA1ZAVSgycNzcLl4tqTfHj9Fpv7t5gM%20o3I+dWZKJS5NkVZRiAJhBdWgyny1iclyXOEwHkZ4XoBSLmDK0bbWUugS+CZmQjyOiXXMxEyoVCp4%20boDjODjCw8PDl7VpL5udMmJ6mi0WGAw5mowUrSckeUxeZGRZTJYnFHl5kuZ5yV9FUUTvcIA1As8L%206B4M8B3NqH8XT3n4bsCdW3do1tv81m/9Fq7rcv36VTbW79Hr7jDoH5DGMedOr3L+/FPkmaZeC/Hc%20EEf5COGWaqco931pH7Jl5vYICFmrHxLY6lHvlH0EkOR0NtPUnjF9SVFS3EipsK4EzwXHRXk+vq8x%20WiGVR2IzokEfrxJy6sxp1u/d4d6tW3zxN3/TNhZ/dsaU/MyDkbF27d0Pb9y6vnGXv3njNd768D22%201tdZXV7ilz71i/zub/8Oz5w+Tzfe57Df5969uyx15hlGQ3Z7XTzHJazVGPT6fOPf/jsmSYxSgmq9%20wu17dxm9EuPXK6Qm4972JvMLS3ihYihGRF6MRxUtp34ie6Saiel8Z/HAJ+dIiStcMEezn6cy+PQK%20XAD5kW9HlF+ceNAzUnbH5xQkZkKRJUgjCAuFygoCY5CF5amVNZJhyl3/Gkk+Bl3gKwdH+fTHQ6yw%206DzDcXzOP3mB3/zsrxF1u/zyL/0yrUabD6Pr5XLVnpq2q+pS8RIWIzK0yUnyjHE0xss9PD/E8zwc%20x8ORDhWnjmPLZamlOBLw7VF+SKYTcpNjioSiyNEmpzAphU7QBfhhBSvAcRwmaYyUkqXlBULfZ297%20j2QyIc8KdKZRSnF//R7dbo9+t4+UkpdevMTS4jz3797i8hvfJ/SqPP30szz5xAWM1ijpo6ZLI2FF%206eFU09VuxUOO6CEQlSV42fqiEdI+XDH3MSJ7yiEdOdDFw1Ygg8RICVLhzMwixgMyXVBoDbnBEQ51%2036fTaGIdQOfsbNzj9ctvsrO9yT/8b3/LnnrimT9R/k+/UfJnFowKaz+/M5781Z2N+7z62g94/d0r%207E8i9np9nr54kf/+t3+HtdWTWODa3Wtcu/oBH374Aes7W8y2mjypzrL16jaTPKVRrzM87HFH3Cao%20BAglSNOUWrPJ/Y0N/EaF2kyDjZ1tzo2GBNLFNy5RfUJN+uhpA6WgLFMEAmElSpQObC1cDAplFNM+%20y+lxXCo1Gs2jLRKPWQIFaGvRwjAmYpzGJEWOEAJfejiFJSgk1kBuFE+fO48eZ1z94Bp3bt2l3+2h%20Ah+JInRDRpMhSaZp1OpcvPg8GzduUglC7t27x7e+8x38WoVqNcQPPZQrcT2J4zs4nmD55AoJKToz%20SA0yd3Bd98HsIc8rJze5QuFIMe1ROyowNdqWsGRsgZAGjMHIDCPKAW/GOKRpirUOeZ5ibEG9XscW%20mqIo+PDDDzi5fJIkyuh05lmcX+LmR7f4zne+RZIkXH7jNS499yyjYQ8lHL74hV/nhUuXmEQJ1loa%209TauV0G6FRA+1kz77QQo9XiuWnJdZVZ0lEE/NG/aI8z5+JVxahB7CGzmyAAqBWQphdbUmw2cWoPx%204ZA8yQkcj+VOB+PC629e5ta16+xsrvPPP/iQbrfLH/yP//OXV596/hiM/l6WZHB5bxK9dO32Tb77%202g+4/OYV1ne2yK3hM7/66/zBP/knOAL+3b/512TjMUtzM6zfv8u9e3fxfZ96vcpTa09QCWu8/vZb%20dLuH1FtNBoMBBYaZhVnmq8uMixgrJP3BEK9W4eCwy9Ub12k8+wLLzTnG2YSa7xMKB1eWoybILVab%20qYavUBKUnB7tP2JELq+eSjgIWYKQAryjdjBrQRpSk9FnxF52iFYCGXjkWY4VEiGcksh2AoajBK8a%208PnP/TpPrZ3nz//Zv0AnmkE/wpMu1hha1QaeUPR6fb75zW/hF4ZsENHtHvDutQ9JbIa1GuUpvNCh%20UvGoNiqEtQDvpovrO4TVEC8M8AIXLwxKLs538EMXKaHiB9TCCq6QpYtaa4wSKMdBOtPyL8tR2uIJ%20B8cBqcFkE6q1kNnZWQqdISUkSUwUjViY69BfWGQ8HuM5Hr/2uV9hbmaO3uGAra0d9vb2CLwKzz/7%20DP/8z/+ML/3DL/LCCy/R6x3iCpidnUVJf6r8lWbUo5Vv7dR2oB5pmXs0MzK27NM7GmsiRXl7vNZ+%20ZDrBtNu/mPKGCnCVC5QzmpJ0QjQeYYqM0AuwRpKYjPeuvMvdmzcokoiZRp0kSfmrr/9btrb3+P1/%20+gf2l7/4j8QxGP09id08t7mSbHa7vPfRDa7evsX6aEAcesSew9xshzPnnyQR8P5bb/H1b3+Lw909%20Lj71JGurJ2l1OtTqVfKi4KNbN5HK5ROXXuDG7Vu899ZbzD2xRq4143GMCASO6yCzcmmg2dlZ2rMt%20hLQkWcI4idiPNV7NUqsFgKFGFeEqrCxlecFjXOjjAxAND8jPo9cpA448MmpbrNCkImNEzNBOGBKx%20l4wY5mOkI2nUQxxCitGEOI7pjYd89N67vHjpBcKwykxzhns371NxQ8bjiCTPSze2F5DGKXfv3kWP%20J3z73jdRniJzLAUW4UikJ9DKEpORp5ZYJCTDCSpwCSo+XujhBT5u4OKHAa6vEBWL61nqQY16UEEa%20S5rmZEWBlYrclmbHPC8wucEzihCFTA0mKnAjSTE2eJ6HKQpajSYnV05QJCme7/ClL32Jd668zfWr%20H/Hd736bWlhjdnaOhfklzj/xJJ32LP3DHv/gC1/kky++xCSKqfgVWs06aZpO9/e0x2xqpXigmUke%20GXZy1F+nEGJq8JQ81nf3Y+PHbBeP/EGUBZ48UlCVxJMwGo/Z395k4+5t8iTCcxWBJ/GkJGxUuHP7%20Fv/b//onbGxt23/8T18WAEVRfN5xfrp8ST9TYGRdl/dv3uTK1Q9ZPzzgMIrYGo/Zy1ISz8NrNdkZ%20jvhXX/86N95/j8x1CDttNnuHFI5lZWGeFMP2/i5RMuGzv/Ir/MrnPse1G9f5My/g9tY61lrEZFIu%201SwFRVrgVj1WlpY5sbrC9tYWG5v3afkV3KBBL5bU/JC2W0eicK2LUhIpHw5NewyQHgUl+eAijQD8%20I2ASoFVGZGMGesyuHrBrR/SdhLHKiDwQypDamHw44XBzm+7ePvdu3+H+3XsURZkBSekgrARtEIWh%206lUwhSWNEvJMI4WD8kPurG+wsrpCIaFQFqUkRioKIMtyIp1CasqpllKTSo1DhiwSnNTFTWNUAPkk%20Jqg6tPIG1cTH5gWTOCUzBqscCgRJUZAmOSbThNYh0Aob5TDKEQPD5DCiyHIa1RrPP3eJJEkYjUYI%20IVhYWMBxHLIs48P33ieKJjSbTWZn5zi39gQvXvwkve4hL1x6nsXFZe7fuwVBOXgtz/NHyqzyalAK%20DXoqLzBtUXl8NK6UctpfJ5HiUa7ooavVTgc6Cfn4kk1lkSqmHYei7E+0GlMU5RR0aSnylO7hLvfu%203QGrydMMP6gwNzvDndvrDOOIONHk29v8+T/7MyZxav+73/kdZhdXxHFm9F9Jst+I46/e3d7l8rvv%20cPn6VXppwjBN2ejuM4hilOvQTRPu7O+SRmN2JxFuo452Ldu9Lr3tiFhZlhbmePbTv8CFCxd47rnn%20cByPd69dwwlCxklK6Lpoa4miCJNYknGEMBnJKKYe1Ngxlo2NDWbCGnPnnmacxdzfvYudO0HhGALh%20EQq/BBRhkUbgCPVwNR9j0QiMMFghpuT09Hos7VTEL4hFzJCIAzFgS3fZt0PGjiESBWOdcjjoc7C9%20z+76Fv2tA9L+iLQ3Bm343vdfRcc5Z0+e5fy589y/ex+pJckkw1cOhc6pBCHLJ1bo7x1QazVpzXbY%20i3poYzBaYHKNsGXjqiZHuBJHll4oZQ0UOVYIpKNwPIX1LU4bKo5FMGEySSkmGWmalr1bnkMuJWmh%20SZMCkRny3CHJQcYFMjIQZ+RZhs40Iyasr2+wfm+dw90uM80ZdrZ26R8OaNbqFEGVZtPiOA5xlLC3%20e8BgMGBxcZGZmRm63S5hGOK55fOtVqtsQ9H5QwASlmJqqjgqzbBH2Q8PzItH0v7RnKbHzJC2bAQW%20U0vDw+vNEX39EOrQFpOlCF2gBKR5Sn+/x97OJv3ePnmaITF0Ztt0Fpe5e2+T3W6/PC6ky707d/k/%20/4//nf39ff7x7/++XT37pDgGo/8CsT08tIEfvtn2w09sTiZf/eDWTW5vbePUaqyefZL+zRts7+wy%20zArcWgPH9+hlOfnBHsJoYmXJ0ghrM0Q9ILU5Hx1u0zi1xNlPXOLppy+ye7DHK9/4Jq/+zatsHuwj%20PR+jFJM0Z5KMcUIXqVzMJOfW9RssLy6w1Jln3+ywvbfN6cUl8KoMhlHp32lrKm6FqqxQmc7AlpKy%20iRbwpIdRBbk9apCVD4T70gJoyMiYkDNiwiF99mSfHeeQnh2xNxoQFRn9wYDd3T12N3YYdPvkkxxP%20S0SR0gqqjIZjmpUqs7OzLLbnGXcH3NnrkSYZlfYsvvQIwyrVap2r+9cwSrGxs4uquBTWovMckZfT%203bQsEI5ACUkx0QgNMhdYpTECpKNxPBebg1SKTBsKlSHTgiyOMFrjuC4y9EmwpNpgCovMDFma4iYW%20L7V4mUQkBq3LFWezTHPv7iZ7O7v4yuPCuWfw3BBrJVlmiKIIKRykLEjTnIODLpcuXeLsmTXiaMTO%201gHNRgUpJY7joHU5ATLPc0yRIx2v3PPWTBuA1eMeIktZogk5BSP5SF+afJgRTaX8B5cUUfrPrLUP%20Wn9ATxvyDCbLUbZshxmMR2xv3ad7sAtYonhEURT0ej3STDMeDSjyFOV4jEdDjBUUWcq//pf/inv3%207vHyyy/bS5/6jDgGo/9cWRDFyz7Ony41ZsQI+7XLm/ftzXsbbPd7tBYWaVcqtFYFlcUFaneWubWx%20wX6vz6TIEH6FrcEATIZ0JX6jShg0ECZj3D/EWsv9UZdvXXmdKx9d5/7N27z3zvtMRmW6H1pDkiQU%20WQpZTrXdYH7pJFE6JhlH3Lt9h8/9+i9Tq3jcuXGTrZ1NghOrWNfQnRwysTmhV6FZqdEIatTU/8fe%20mzxZdt13fp9zzh3flPNQA2rEWCBAkCBAECQokiAlUXL0Qh1qWbJDCzui/S/YO2nnvVfa2SHb0W6Z%20ilazJZGExCYJEiRIDARQQBWGAmrMrBzfdN+dzuTFeVko0i1FdLcGSIFbUVGZVRWVmZX3fe/5fX/f%20oUNKTCxCNH9Yczu0OHp2SmxI76HCUGEZUTCi4JApW+yzVe6y1+xTuIrdg11mdUU9rWjLGpdYkkGC%20xaKNo6lL6qbi+NI6x1aOcf3GDaQWrK2s42tPVYVEwmldUJYlddOQZCkbJ45z48YNEgG10Thv8dLi%20VchCkaki8iLkohiLTAReepwUqDgKIfwo2hk4q3DOYGc1etYgpCfNBapVtApaZ/HGEzmJrxxUDtX6%20oIlCoU2LM5AIjxaeKErZWD3BA/dd4PWfv8FkXFJMa4zxLC72SNOUQX+RhcGA11+7SISk18lYW1uj%20LacYPHmWUxQFed6laRqapiKNkjmBbfHzQSqUCfAhtzQf54SAX94+HAERd3FMiCMZQAAlgQ/hDNaB%20baFp8NrgrMbUJaPRIcPhAXVdooRDKUlVVZSzms6gJssy3r9+iyjrkGQ9nDYoIRiNh/zHv/4uzlj+%201eGhf/LJJ+mtfvTNtv+kwMjgv3qznv5RkmR/lMt8+P7OraWfvvoqh5MZy5sb5P0B46ahRXDsxEm6%20a5ssbVzlrXff5sb+DjaNUMt9nG8RvsW6hnE9xeoaOciQQrCna3769lvQGqrxjNJonPQcFFPybo9Z%20FXq7fNYhihKWF5ZZjhYYTg843NvlxrXrJJGkbkq2d7dZW11mqdun1jWzqiFqE0ZNziDrsZB26SWd%20oPUhQikVKqUd+Ai8kBgMjdOMadiRNTuM2GvHHLgRt9t9tme7jNsxrW2YzUbYqoFSk7qINEmQRqCl%20pTQ13aUFZrcOGJcFbw/fpT6YorTg/PHTHF/Z4I3X32RrOKKtW/b29nnltdfopBlZ3iFOUsajGdoF%20R52MBD4SeGkQrUW0Oizpw2oIL8BJgYgEcZwi0phsdRFdS7RxmKnFVJYkErjGIxsDeUSjA2eS+IhI%20g2s8vnZYpxFaYTTgBNqHFOwk7iBEzP7eiMl4RiwyEtUJKQfETMYliwurOAvPffuvuH1ri/NnT/Pp%20T38SgSTPM/COfr+PMSHrqa5rVNohjhKCOzCEuB1lfP+n+WnxS0D0Ia90xHw7F3goO+eI5NGWzWjQ%20GlPMsE1LU5SMD/YYHh6gTYv1hqKq0VpjjCFSCcePH+eJzz1N9BffZvv2Hl4lQMPBwR5Zp4eKE37w%20/PfYP9hlePi7PPWFZ/yJM/eKj8Ho7+i6hXkuyZaogBfffmvp1Z+/xnRWcfyeU/ROnmKrmBLnHRrn%20KCZTssGAzzzxOKfPneWta1d49f3LVL5ld+823rcsrS0j6oTZ0EMciM8mScBLbGtopYBOisoThIUk%20zUiShDxNaHXIzxmNJgyWuyRJxqie8MJPXqTf79JJYvJowng8ZqnbxzlHnmVY62iqKcOmpoqmoT12%20fpOnvc58HPPYGEzkabGUumFIybvtLrtuykgXFKJm6meM9RRtaiIJRlisabFlTV1olJaggQY6UYIo%20HVnSQRio65bPfe7z3LOyyWR/wnvvX+XNy5eoyoqNzU2qquJ7zz3H5j33oOsGrS26nbd8SIjSCKzH%20CIdvDDSCpBsSLZ0XWB9kkQhwsYEGvGxQcURjLGba4JqGVknSjkAUlqQLTVXSti1WRggfEzUWXWki%20I5A2AiuIlaIqatp6imk1h7dHtKWmk3ZoW0Pd6jl/I4mihHPn7mVjbZUfDUdc++AKl996jcOD21x4%20+H4evP88u7d3OH3mHtpGo02NNhXeNogoJUJgj2wdxPzCIUjIOzT03Sv/u09Edx+YvJBzzZifw5FB%20+BpcBaaknR5CXdDOxoz3dyimwzuj4qQYY60KtVLbWxgkTz71NJ9/6rO88dbbXLx8mTiK6GUZZTmj%2021cMOjmvv/wq9XRGMS35rd9deam/+NGNtf0nFa62hfqDCfDuqORbP/wJb97c4uSFhzlx4QLbxRSb%20ZdRSoCNJlKXISGGNIUti1jfXifs5qpsg0jhYNpzHqRiZd0DFxGmOcQKPJMtzkjylwVJ7g1Dzrdhg%20gDMa07YoqWjaBu092cKA0mhGZcnO7i5CSBZ7C2RC0VcZi2mXzAhkbehGCRHQlDOIBT6B/XbETrPP%20vpywm0y4HQ25GR3wvr/FpfYqF+srvD57jxt+hyFjClFQ2pKmKWjLinZaISuHLyx61GImGlkJUhPj%20ZgY7bEgqSe5SIifIVMru7X3evHiZ19+8xNVr14mThDjJqJqWqqxRUUI9q2iqBqODqz+8kBzOWLzz%204ENtkHAhHE03JogenURYgTMW6QSxjJFCoasKPavwrcEbAdqD8URGYsYtdtIiCossPVEDXoPRHl1a%20qnGDryxee5wRlEVJU9ZkaU6edojThI3NTabFlLosGY9HPPnkE/zu7/63jMdDXn7xBXp5QqcTce36%20Fa68/zbj6ZD1jRXiJAodb87gbUjazGKFUCqs2Z1AkH6YPy5+eWUfQPgOd3RXNApu7tw5iqQVDk+N%20pELYCabYRR/eQhZD2uEe053bzEZD6rpiWk6Z1BVWSKwR9HoDmqZla3uLmzdvsLg0wBnL4d4eVVlg%202ppOkpGnKbpsaaqGYjzhzYtv0TpzvD8Y/MH6+sYffnwy+q+4brfGmyTi9YMZf/XX/5G94YhPPPU0%20K8fW2R6Pyft9qqaeiwghEgLpDcp+uDq9/9Q9DNYWWF5ZZGd4wKiYMq5mlFVB2zYkcYRrGyLrkErg%20qgrvW6xymNZgleDCuXsRzvPGa69y84MrUEWoPCWpW/qDJWSWsD0t2N054PjCCvWgYTouWIq7VK0h%20URFRqhCRxCSWStd4pWlTT3d9hd32kO16n71qxNBMOWwmDOspYzejyUPciPDBMCstuLrFlxpXalyr%20EJVHtUAjoDYYC67SMNP4OhQhGuPw1iOtwGmH8yDSGOPF3KRw1PoaFOBCBpLWW3NHeSDmmz4pJJhw%20ArK1wTqLlwKvg7DTi8CJSOnwssE7i7cGay3CzPXHRuG1C3+vBWFACIuJwurcG4trHZGG1lhsMw+9%20d3MuqjUMJ2OapqFIp9R1TZQmDJKEoij4/ve/z8sv/ZQ4jml0HYTQkUTrhg8+uELdTFldWuYLzzyN%20c2BsRVUOGXtHt1uT5P0AJFaDiH85JeRv9O3fPcHJ+alJihD24lyN11N0PcaVQ1w1pti7RTUc0c4m%20eN2i64bZZMq4mFFpT54uYqwiyzLW19dZX19Deti9vc21q9c5eeI4w2bCpx99hM99/hmGwwl7uwf0%20+wvILONP/59/y/bt2/zO7/yu/9QTT4qPweg/83Jw7tDZl8ok4ifvX+P5199gXE548OEHOX58E4kn%20ihTKGbI4JokkWaTmAOQRLtCPOpHkuSTNIpbynNWFBXanI3aKIfvFmEKXWGvxJsICVgj8TOGoAI3G%20UZqW26MDOnHKwtoK2humxTjc/EXB/WceZFKMmOzsEkvBoLfAbFpyZfw+XZly5tRp6rpmbzJBJJLO%20oI9IoKHFpwlvvv8e28Uut2Z7TPyMUrYUtqBEo5XB1qCx4CASMqimW4ed1OhpjW0kcSuQlcVUGl0Y%20TOtwlYXSgbHQgLUe4ebKbgRJHBMLian0vLHjruTC+YtJHLWSHG2EhLh7GMHLwP0474JvTUqQAhEp%20hFS41mBsG/rOrMMbi3Bho2Qjj9AKjMVqjTMGIQQuCmDoTPBpKadoqhZr7dyAGz6DpmkYHw4ZmlDO%20aI0hjmM6eU7TNLz77ruUZUmSpVR1hTGeTr+DUnA4GlK1M8bjId2FnOXlZY5vHEcpQRJFRC2oyKNi%20QCXzrHL5C8cjIeYpRf7Dm/buN8Q8XSFkU1mE1fi2xlQFZjahHY1xkwmT4Yh6PGY2LalmNcV4yuH+%20kEnd4GSC8IZWt0F4LxTXr9/g8uW3GY6nHDu2wuLiIsePn+TBB+7j2MYGZ0+dZX19g3Pn7iXqdCGJ%20+MELP+J/u7nF7/3ef++ffuZXXu4sDT4yY9tHekxr4F/fhOeul7P8ncMDvvn971Pqlgceup977z2P%201w3SGVZ6AzpKsTHos94LP1e6OYtJykKSspx3WOx0MKYlk5KOiukmCZ0sJU5iZCaRWUyFwaYSUoGL%20g7veGIMxLXhYHQxYW1lmcWmRJIupqmCTMN6wuLiAUpLd7R3GwyHnT57i6cefIHaS4d4BmxvHyLs9%20sl4XmQdCV/Vy9sspb77/Hhc/eJeX3nyNd25dZ3dyQGk0jW0oW4O1BiUkrmlxVYubGWTriFqBbCx2%200qBHFWZcQWkRpcXPDLZoMUWDm2loPba0YEB5iZIRkYhCMEnQ2oGZ1yQdRXD7+XzhPML7YBydvwSF%20EMg7TK5AeD8vkg1AJ/ABMIUiVhGxiGjqGpxDaI9rWoR1RE7O88EDWDpjcdrirQUXgMvNwStxEbpp%20QymAdR8C4dyb1tQN1lqUlBhjQvOKCieJ8+fuZTwKhQLaGpIsRiUKISFOI7IsZnfvNk1doaRHKYG8%2049IPP4M/zSCkwQsDws7rk7iztg+nSYfHzNtSDAId5k3XgqmgLrDlBFNN0NMRzXCfajjCVhXNbMas%20mDGdFuwdjNg5PKRqNDLKQKQcjiZMpqGcsqwqdnZ28M5z4sRJ7jl5kgceeICyqHjvnXfBeeIo2HyW%20lpZ4+utf53B7ix9+7wdceecdEhUdP7l5/A/SfvcPPz4Z/W38kHa+jiVT4JX9fb7zw+exwvPggw+w%202O9SjA7YXF6mF0XEXrC+uEhiPXkkyOZfmIuPwqwEDlhMEgo0pTNMbc5Bp8NCltDNIvJmQtzLOGwK%20JsVpCB1fAAAgAElEQVSYppzhncFHkriTE0mFihJM6tke73Dz/Q8oDkdk/fBnk9GYSAr2bm3TDkeU%20ayWduMtgI2f3+jbXbtwi6nTZ6OS0CD64dYut/V2u7t/k+t4WM1vSxBZySZLlKBljWk3TNhhviBOJ%20kJbEeoyxSBwqCSNoVDjE1MCoRNsYDMgaVO3wlUO0DmkFurEhyEzYIBrwBukl3nqwIOfGXekDqFgn%208NbjvUN4T3Sn9TaE4govAmDddUKK5u2x3kGEIFGK2IbvgKodIgqljkIHgWcUBZuLEkE/hBFzT948%20JVIKnA9aLO89av7DW7Dzj63mSugo+rCPralrbGuDLsnC2soq2vkQ/ephVtU4EtI0dJ2VbUkvz5nM%20hly94ZnMRqwtr7CxscHmxgYDVtCuRUUpcZQjVDK/yxKEsISvVt1Z84sjYHJHYOagrqCdoZsZuiqw%207RQzG1NPJhTDQ2Srg1dPW+pWUx29bx220RTlGOclxnr2D4MIMk1TThw/wfnTZ4iihGI4Znd3F2s9%20t4Rg+9pVsrTD+Qce5Jkvf5nf/NJXqIcTvvkXf86f/N//F21Z8cyXv+JPXLhPfAxGf9OYHUtuWc+L%20V67wwjuX2KoqPv/Yoyz1Oww6KYtph9Vul6U8p4+gA0SRIAXm5TFzweCHROIARYuikVBIzZgOq3HK%20UpqybPtsu5JbxZAbWA7qMtgUhCBWMSry7BdDtm5dR2/vQlPTGSzRSXs0s4JqWlFIga8NWLj+7gdc%20fuMST33mCdaWN7h+8yYiyXn3xg12D/e5fO09dqcjtHK4XEInwjhD2umAV5jKUrZhs4TwOGVCeqK3%20CGNw1mFTiGRENLNEpcMWFt9ajBEkJiLSAmklzgSjqSAOm642cDbM1d9KhI2etw5h5/EY1iHnAkPv%20/J2RSs5DTaS7wx7hjQ8iTRfA40iRHHlJLD3KWyweqR2xj/A+yGrwEOOJvcA5G9ItrcNbQja2AyEd%20SoaiJ2/Dx4+kuiNSjGRoI1FChqxsa9HoEHUiJXVds7W1NT8RBZMvwmJri5ceISOE8lhnyfOEui45%20xKBNiTMVyAYpWxo9o9tfJMq65HmPRPaRIkUKM7/L0qBEP7rfvAVnsF7jjEU5jS9G0NboekZdTTFN%20QT0ZMR2PKaZj9KxClzVFVVPWGmM9QipMbWh0QVEL+oNlvBdIFA888BCPPfIJsixjNBoxGg4Zj8d0%20O306nR4Hu7tEUUQcJbx9+S22rl/j05/5LOePbfLg6TPs7B7yzW98g9tb2/zWv/odf+qTD4mPwehu%20ZTXWVygOgRffeZdvvfQzppHiwU9+ipPHNoibirMbG5yIu2hnWESwCLTG0VOSeD7RKxGe7u4Xmk0l%20OSCdwMiYmpg1qVjLM06xzNt6jxWZsOwVOyKliIZUakxthtS1pjIaYkG8uUJXKmRj2Lu9C3XL6uIy%20o91D+nmHtfP3sLO9zXuX3uOTDz3KyROnKWvNxbcucWtvh2E5xccSm0lcrGiNoxlPIZGQhiJIY2ua%20tkQIP+8d0zS6QQmPMWHjIxNPlKTQOGThoQYqG7Q5KCIR4azHzrdWygdwUk5hnZ+fesIo4iGAiicA%20jzsiXbljgZDzt+WdfrCQ4+PnmT7Cz7sMj/63QzABwnkwhsh64vnqWzduftIBZd2HY5cP8SOWuU0+%20+CWQXuAajXJi3kEXspCED9VKzs1JeSFx2hLHMQKJc0HVs71zmyhJEDKcxjpZjGxbhDRIFRMpyXg6%20CS0hicRLQ21mjAqJp+VgusfyygpZt8egv0KeLxBHPaTsIEWGkhnOzP+fjrxttsGaJnBgukFMxqTO%204nSNLifMpkNm4zHFZERVVRweHmC1o5hWDCcFRdtAlCIjga41cZwyGk1oqpJ7772X3/6tf8ljn3yE%20N9+4yHe+8y2kh1QIOlGErQoOtm6R5zlKKd5++x02l1d5cVah4pSHz51nY2WVNy5d5vm//mu01nx9%208i/86fvuo7+5/I8CSh8pzmgILzXI43vA9956k+ffeIOpg+Nnz3Hm5D0cT2Me3NxgEIe8wGMiok94%20cncRdIQgdh5lbdikCVA4hPAo56BpST1EQpF46AA9r+iIiB4ZxtX0kpR+nrPU6bKQdkg92LKmrWYY%2025DnKc5oiukUbx2dNGT0NGXF+tIy9509zzOfexphBbu3dxn0BkiZUNYVjbHc3tulbjVpN6e2hqIu%20cUogkxgvIMs6xFKgixo7a4k0UGmqwxLZWGTt8KXFlRapIXERsgVTWkQLdqahckQuIiNGWolvwGuH%20qR3SCSSS2Ku5SRZ8a7GNRXnudLvJI1CaN95KFPJoM3mHUwp+KmE8WBtOLUKFeFzviaUiURHKEUho%20Y0lkhDIC1xqEhZQI5SXemHAqMh5rXDCWutAyghcoL3CNCRzWXdVAcq7lsTYAUJIkWGNCTXdV4Zxj%20YTAItg0h0FYHOUIkg/HUtAgBWRYTR5I0i8nyjCRWgEXrhta0NG1BpUsaPcM6g7aGVuu5Yrulbiqs%20aTG2xZgGayp0W9I2U6pqiq6nuNkE5VtwlqYqmE7GTEdDZmVJ02rGkylVaxhOS/bHU8rGIqIYKyRG%20g7GSpm7w3rE0GJCqmIPdXWbTMcfX1hnu78+3cDVKCrppQlXPMHXFxtoakZc4Y+n3eqytrpHFCW3b%20cng45N133sF5T5qlnDh7+kdC/sNna/+jgpF37pwQYghwq535WiXHD4Fvv/Vz/vR732VsLPc+9DCn%20T55hQSqe2NxgVcYsolhGkgIp0BGCDDEvR3TI+WlCzG1EAhF4BTW/ea0PXiADkRd0hSCRkKkI5QO5%20GnvBcnfA8sICWZwQKYFuK3Q9m/eCOeqiRElJN+viWkMqIu7ZPMH60ipYKGcl16/d4K23LnHt+nWU%20imhbQ6NbqqaZN4bMjxLWEyuF0BYzq9HjGaao8EWDrD2JAVe2QZejCZyLBls5XOuIXYSeaWIShJPY%20yoGGmBjhJLoySCNAO7y2CBviKpSXYMAbF0YvE/gh5QXemEA0O0jjhFQl4MC0hrqsaYoK0zRhPEOC%20djitsY0G41Hz3G5TNRSTgkG3j2strjYI54llACLhAk9lmxB5iwdnTCCzrSNWEYmK8a0GJ+7kBVlj%200XULDtIkJU9zvA2nJYEkTVLSJMMYi/MWbU1QPkuJcxpnDUJ4kkQRK4lS82Q7RwCguqZpW7TVGNPS%20uopJMWY8nlC1LUIq4jgUYHp8MPFajXcGZxt0XVBXBXhDHgkwNfVsyrQYc7i/z3B4QBxFKKnYPxwy%20KatgklYxcd4hHywSpR2a1lCUFdaAM46Ffo9ICHa3bjEdDRnkHbppQieJQGtm4xHldIJta2IJg06X%20xcEgfH+to5iGMs/DvQP29vdo65a80+Hy5cscHBzgtf791aXVP8gGvT/8ZzumGWe/Gkl1J2PlCH0b%20Y//1IOn+yVX47W++9iJ/+dMfY5KYe++7j2Nra2z2epxf6LAADPCkCBIgZp7x40AdsaZHITS/dFkc%20ToBSPrjKj0JqbAhxGABe5XjpqOyMpi6YSUs3TTh/71lOnFrn3OlNfvDdv+bKzW0Wuj16q6uMdvdp%20q5KFtMP21ja+0bx/6T2yOOHMmbMhYfDVVyjKGYuLS6Adworgzncaoxy2Cd+J2MVBtewMaINqLdJ5%20lAgxqkY7nBTzToq5eTOWpFlCEqcYb/A2aHJsqSl1i4ssnThnoTOgnsxwLqz7tW0CGMk4NIJEinJa%204K1DCRESA1xIcVMqIiEikhHdbk6ylJAkCYkKEbJKqZDdPT+tOOdwzszHFajrmtmsIkkSZrMZs6qg%20adrwxJcCb0MSQRylqESSpylCZVgvME5jG0tZzeYtvIEFVEoRS4WI/J2K7PF4TJ7npGlK0zRMp1Os%20tfR6PXq9HqYqcMKjrCCOI+JYkkQe7xRt61DS0LaOumzI84RuLw9iRlcznc1YVn2ccESlZlZpZkXL%208tKMpf4aed6j31mkKmfYVpPEil6WkqWK2WzK3mzKSppSVAXDvX2m4wlOu2Di3Tvg+s2tYMT2gqWV%20Ne47cRqnPZcuvc2161u0dUO3s0iqYiIJXrc475iNDtn6QDDp5iSRwrc1yhnQDVJIsk5OHIGtKsqZ%20ZjytaK2j2x+g0g7FwSGzsiR3hm6nxysv/IjpZATW8NQzn/eLp06Jf5ZgdDcQ3X0dVOaPXF/xg0tv%208Fcv/oTrBwd84rFPcfbUSVazjM0k4bSEZaDvRRi/QsghwrnAZYijBWuI9vTzemh3B4wkeu6cTiJB%20PM+iPgIuAWTOsSITmv4iTnluNhNapyGL6HcWSPQG/8Pv/HdcvvwOzz//PFs3w0zuveZg/wDhBJNx%20wagecuGBB3nmmWcYTSdcfu8KrbZMhlPqtsJXGucNRrQ4LMTBwxUhadoKqw0REFuP0TrUJaeSmGB6%209S4QtViLjxxRRxHlEbYwtFWNqQyxV0QqRZoQkdu6mq7KcFJhlUM7jW0t3mm8MHivWO0vszDocWLz%20GPecPMH6+jqL/QHdXk4n63LfvfeTpjmdLCfLQti+vCuONSQdBm7pbhd8XdfBYGwsRVEwOhwznY6Z%20TWYcHu6zu7vLaDxkf++AcTFh//CA0XhEayxRElbzadqhl3Vo65qmqjGtmYNeINa1M5SzKpDfOURR%20wmCwGLRj3lOW4RQrhEMJSSQVyXzcN42hMAbdCKRyxLGgaQ1Na6myhCSJEZHDJwKkR4iaOKoZTypG%204xnLixMGnUVOHvcoIVERGKsZjWbgbeBy4oRJMWVWlUymM8qqRhjPeDzl5o0tDsdTTp9bo7uwyLET%20p+nkPT547yo3bm0zKwp63S6x8OSDLpJwAo2QSNNSTYZEtqXSLd57MgU+EkQyIlUK3dRMpiUq7rG0%200MfMKTqra9YW+5w9c4r1kycpqpbX3rrIwY1rvPKjH2Drgi9/9VnfOX1OuMnwJTn4+7WSfCQI7DZL%20+fbPXuJ///Y3qfKURx59jAfvf4B+HDNQiuNp4IZ6QD5fPTPnNLw/GsfuDjwPkvy7HEN3nZBCuD1C%20EkVH8a1Hn4ihlyUckwu0PcfY1wyrgsIYlIQlH3PPyiqDRzoo63nttdd459JlZqMRSZqGdbuXOBnq%20ew4ODhhNJxgTChoPDg6w1mK8xjgTIFJZhI9QHqLG0xQt6AYVJygHvvFI4YiEmkecBl5HHVUnW3De%20oNuGlAThQyOJ8hIai2kNiUrophmHt3eJkSRJwmKnz/o9G5w7c5b7zt3H5uYmZ0+fYaHfZ21lmRMb%20x0U/6f7DLS5u3/DT6ZThaMTWzm1u3LrBja1b3Ny6xc7ODpPJhIPbu8F7Z8NJMUkSvPdorWnblqWl%20JbTWFEURbu4oZHDLuY0ljaMQmRuJIJg00HqDtwaPpo0VeR6jZEJTQVXOiOOawWBAf5BxuD9DJYI0%20yfGZRdDi3SFN1XCg9ihnU5YXV1gZLIaxcg5EUgS5wtXr10mEwInQ1TQram5c32Z7Z484zbBE5N0F%20qrrlrUuv8NZrlzi4vUuuUrpJxurSMguDAbapmU0nRHhc2+KbGiM9wswbbrVG2aDV8jKUgfY7Hbr9%20ZVY3j9M0mlvbO3S6fT71+OM8+unH2Tx5D6/+/HV6ecLFy5fYvXqV13XLYpLwqc+UvnPvff/TP/tt%202g74Fy5f5t/85bd49+YWn/zC0zz2yKMsd7uoScnJhZxTUSCbExfGsjtlYmHUu8uXeEeSNw+vCsFV%20H3aB2jsAZZBYAUoJormYL42DZ8zg6XpJT8R0o4QmUqRK0msaxjd2sRKe/tSTPHj+Ab7zV8/x8osv%20EztwZUMznSGE4IPr1/jTP/t3IAUHw32McUSEEP4QOm/xwiG9J5KhRVbQIiuNMw7lPdIR4jOkh8ah%2061D2ePRCk3EUNmLG4iKN1Q7pJSkxpjXMJjW2rIm6Azr5Ao9/8VlOHT/BhQsXePD+Bzlx4gRLgyU2%20u8v/6BqTY5v3iGOb/wlz9HDb7+7uMhoNufnBNa5fvcprr712h98wxgSNkYhoqzYor/sdhBDo+enM%20u3CaFp47PjMMGKPRVoffi2KcEehWIkSoILIekkSglEDN66eiTNDtJggliCOJMY5pO0F4z2Q8JEty%20lnqLnNg8wZmTpxl0e+xs73Ljg/c53Dmgl6UoIzAGZrOaw70R48MpvcWI69e3OBgWlFXDtQ+uUw7H%20LPcWWekvILxjoZMTC0fblCTCc2xtNZDU4zFtVWKNoalCuUAUxwgl6Xa7rK6tsbR2nGOn7uXEqfPk%20eU7VaHq9AfnCElUx5fp77/DoQ/ezfesar/7sJxxUBSmGy6/+DFEXPD3o/xEbJ97n7zHK9h8VjEr4%20X597+Q3+jz//D7x5/Saf+fznOXvf/fTjDlFtWI4TNjo5fSCygRsKRyFxJAMO3qc5GDk/VwMfSfPm%20ByV11ILqJQiHFnKuqRVHVVZh7AvxPKQCBiJhJckY+YRaNCjniVvoxzk2ElgLvU6XT1x4mIO9Qy79%20/A2WOz2aoqTT7WJbzc7ODt1+j06nw2w2C2ORlEFnYw1ChtW2EAZvPaZpoTXE3odGVxtIZH8Uqm8F%20NoQdIb1AmDBuQSgn7Xd7TA5GTIcTIplweuMkD1+4wGMPP8qZU6f5wlOfo5OmHBtsCPXLgfEf0evE%200jFxYulYeOez0LQVN7eu+62tLd5//30uXbrE66+/ztWrVxkOh3diQNI0JU5TkiTBGIPVFqObEGYm%20JGYuR3C4uRk2QkpFXRlmRYOMBHmeQ5xQlY6yHiOTFlULTKtwVuGNI8tSpPjQdjQdDtm6doPt6zcZ%20H4w4uXGC8eGYG9e3ySNBMa1RBnyjacoWbwTWCKaTksmsRfu9oImqNUpExEgW8i5ry0vknZhiMqGt%20KrJIsbG0xOkTxylGQ7Zu3qSpKujkZFmH/sKALMtIsozl1VVW1o/TkNK2NVVV3SkPqOsa5wVrS0vU%20xYTHHnqQtx+4n7cuX2L7g6sMkhg/m9HpdHjkC19+Tp0+I/7ZgdE+7vD5S28v/Z9//mdcvH6Dsw9f%204PHPPkW320XWmtgZ1haXGMjQvxp5jfRqPp/NW0kJYDRPA70jcBFHFNLdkcWOUEqPIo64w3W4O8bP%20+SZJCPJEskDKYpTRqxR7rca2LV2RoSqDTxXD6Zg3rrzDG5ffYjwes7q+hp3VdwykKg46HxlJzFz0%205wlbPOcczgZyWiqFmp9ujG6CiE8ovA4rbj8nkVvXEMmUyMdBG2Q82misacnznEHaxVQt9546x4Vn%20H+CJT32GJz/5Gc6fPc+xePG/+gayRqOi+B8dnNIk5/yZB8T5Mw/wzNNfBuDyO2/627dv893vfper%20V69y+fJlbt++jW5npGmKSuKgO7IGYxqcl8g45EcdpTNqb7FOYozFOE9CAJxWK+rGoF1FnDuSXAZr%20ByE3O0tmJLEklsHjJyyUZcnB7X32t/c5dfI0i/1lkijFmBo9mxFbCa1jMizQjSURCU3tIHFoY1FS%20kXYT3KymnpWYqqGXZCwvL5BKR4xFOovwmkh6lvp9Zt0OnZVl8jxlcXGZxcVFsk4HFUcIFePjhMgl%20tChUiBC4kx8uZcTq6irj8Ziz997L1599lk6i+PGPf8xwZ5u2mNA6z9gozj8y9itrq6g8HSarq8t3%20tuJ/B1KAf3Aw2pkc+M5g5U9ulLOlf//dv+KnP3+FBx79NL/6K19BeUFXhtW7lJBmMRKP0o5+HOO1%20uTvnPCzO5jyR404l1f/PaXvn17tGPDXnj47y+IQH5hnGzni8NGCC9qarImymaEpNspQjYsn27lVe%20ufg62/u7bK5vsHpuka0rV5HaUhyOaYsZaZxQlxWTyZgoSYPtQojguzJB1CfndTjCQaMhS2OUiNBG%20461BeIWQEmEkdVMhfWidRUmUg1RkrPVWOba+yX/zG7/JIw9d4NGHHuFUtvZ3+gT7KADR33Q9eP/D%204sH7H+ZLX3yW6zc/8BcvvsVLL/2Un//8dT744Aqj0QSjawbdGOM1rfHEQiBVBB6MDn1tvgkG3DTN%20iKIQ2RHGuGAMboQLVUqZwmmorUZLTxJBoiTYGd28h7QK01qm44LZoKKXOdIkY+/gEF1VdFSGrlp2%20DoYMp8XcRhK2pcLY4JeTEUmao4SmnIy5duUd2nIFgaEfJzgnqMsSbS3Hjx0j6/dJkoQ4C0WUDtBZ%20jsq7GO+YNRqXxHil0LUG58jzLktphm4MVdWQJBmT4ZClhT5fevoLDLe3OTzcZzorWBws8foLP+T2%201k209cyaamnt2HG/eeoUx8+e5szDj4h/UmB0oyp9NFjh5dnwt//0L7/Fd3/2IrGQfOrEKU4RRGmT%204ZAqg87KAjYPgq9YgK/BxA4/H20kaj6Cze0Jfr6JPgrW83cB0J2v1n0IZj78u+Luk9McmYwUVNag%20vSOKYzKRMaPlQGmK1HDx0mVefu1lhtQ0CvbGQzY2Ntk4cQJTtVTTGqka6llFhCAnph7NQo9ZFKGk%20RIoY5x1Gh9OaENHcmKvQ1qF1qMJOVAQWdKvn63WF8IKUmOMnz/G5zz7Fl7/0JR59+BPcu3Lin1X3%20+n/JderkWXHq5Fm+/mu/waVLl/zFi6/z/PM/4pVXXuLa1SsYa0mShCzt4oCyLBBC0OnlIdZEzKUG%20HrwKMSjWB4tJ285QUY/SN5hY0UlCJnhjLFmk6OYdmsoxmUzpdQZggpr6zOkON6/fwNQtbaVphCNP%20O0S9AVkbNFrj4Yi2rMF7lAiC0CyJSPMMYQ2T0QHt8BbdNOLU6bN84pFHWT95Eq9iCilRa5uQ5tgs%20Q+Yd0qyLilOIk+APVJJZWwLQ0R5Tt9iZxjYtUigiBFVV0bSGJM44d+YUn7j/fi7+vEDhKW5eY+As%20t6cHXHzrElZGGBUTLyzw0OOf4V/+3u/5s598TPyTACOHP9fLOy+/NZs9/hc/+CH/5pt/xt6Nbb7w%20+Gc5v3GME50BB+UYrTxGhajP2rUYmaPch6Bh7/SIWZSP5haCgCXmiE6SwfworUP6o8JEGdhvcbR5%20+yUg8h/u3SzgVIT1grrR1K6lTT11R/LGB2/zk9de5Pb2LWIRMa2mDEcl5WjKQ6fvYziZMh6PUcYF%20Y6kxRB7yOCHNOrTWUDU1rmkginAqDuFhuiVJQlKil45UBq+YcnMzrJLoomYw6PLQAw/wxS9+kV/9%206tf47IPhiWSd4+Prw0sIwYULF8SFCxd46qmn/fb2LX784x/z0ss/5aWXXmI0ntDrdekPlqnrktFo%20wsrK0nxsm1tuTAAnpQRRpDBOYo1HY/Gtg4YwLpkQcySaFqUEbeFoRYhjaRpNUZRUVcUbr77O6XtO%20sT437X7117/Om69f5PWXX0NrS6/bBW1JpCRVEtu2FOWMbt5hdXmRMxvLrC0N2DhxkoXVDUSaIfMu%203f4C6cIKKu8gkhyVdVBJGkoFVDQnRQXShURQHNA4/KyhnhTU0xm2qel3c4Z7eyz2crTTfPbJxxnv%203mLrg6v08px6/zZLx49xZm2ZD25u44ViYXWVyc5tbnzwPmc/+dhH/2R0t9jxlZ++zKs/fQUax698%204Yv8i2d/jRUyDnZ2caki7kTEUuK1CYRu5ELfuQ1Ms8Teibhgzmf7OUg11gaNkfPgQpVOLMIRWql5%20ARmAm+uQ5taGu0WSrXfUQIujQjNzLQ0WI2HrYId3r77HaDIiyTOUgTzN6GwucHJlHSkE3swD5aUi%20jgXGOqx1CBkxmk6I45goinBSkqQp3W73jg6mPBwi4oQsTpDOo+uGRhvSOKaT5fz613+TL37hC/zq%20V7/GfevhFGR90M0oKT9GoL/ptHTqlDh16hRPPPEkl99+0//sZz/jueee44UXfsTW1haDQY+19VWm%200/EcfIL8IY7DaGqtpakqoixC2MDVGe/wyoAxYDw+S9GNIVGSum5RKpzfx6Mpt7d32d8/ZDSccO+5%20lEce+STvvfc+3W6Ppgn/VqfXxVQNbV3RCoHIM7IkJu3mnL7nHu4/d4aNpRAM2BksYJXCRyn50jKD%201XVkbwG6A4hjiDOI4g+P+iLUZ0cuC6ZNJDiBGBjyQUVeFJi6wumWST2DRFAXLcfPnuCxxx9lvLeN%20EJ5qNqFfLrDSH7CfHtJPc9YXFtBC0M3Sjz6B7bw/dwREf/H9Hz3+5//u33Px+vs8cOFBvvblZzl9%208h70zgiMw/qw4pbOYhuHy3WYqo4qz0XoqA++qA8rPv2d5k9PazTGWYTwRErgVYSXEAtHNO+490eJ%20Yf4u8lrMU2skVLQMXcHE1ugEGueYtg0X37nM9a1bGDxxHFFOJmAMG5vHOXXiJB+8+S6+NcQqCmZO%2074P0IFLzOFOLyjKiJMYYg7OWqgyhbnVZ0e0NiGQIGZtOJ7i64dQ9p/ja177Gl575Is9+8Sus5/1f%202IQdva2NIY6ij5Hnb7mkVFx46FFx4aFH+dSnPuV//OMXePHFF3njjde4desWg4Ue3geRZNM0lKXF%20E3ikJAkBKsKqeb6TxHmPa8IyIvIKIodTCq0NZdnMNVAGuMl4OOLYsRM0tWZtdZPr127x3b/+Hpfe%20fDOMhU0L2iKEotPJ2dzcZHNjjfWVZY4fO8bm+hpJGoe6pyQmynJ6iyv0VtegvxDWqZ1uCIBTKrxo%20/Jwg9aGG2MdpiF2xjsgTgGshgW6HyLS40QEn8/MMt2+AVUyKMQ9eeIBbV9/l6ntX6WUpbVGQZJbj%20y0ukSysQK9LFRc6fPPnRByMpxPsOf+47L71y5Rv/9htcv3aDXq/D5z/zFA+ev5/J7j7MSiSCOMkD%20xaND7o4zNsRCILEy8DxyPlYd5QyKOdfj5it6Yyy10chYoOIUIRIcjhaLEvE8g+cXpZBehpNV7SwG%20SYVh7CumsqWUjt3JhGv7W0x0SeNt+FwaQ13XxNozPDjkrf0Jt6/coBrP8MbTOoMwjiiOiKKIpnEh%202VEIrDZ45wJZKiOMAy8jUhVRTgqk8zxw5hxPf/Ypnv3Sl3n6qc9xevFvr5r5GIj+865HH/m0eCqZ%20zHkAACAASURBVPSRT/Prv/7r/jvf+Rbf//73+dlLL4aHhHPzptjggYtUMOB62+BaF7agMkSvWGtx%20rcYIBxaE8Fhr8C5YVJpa0zaGtmnobaxz/foNfvrTl7h16xYXf34Rpw1ZmqJbyz0nTrK2tMjJzWNs%20bqyxtrxMf9ANkSl46PZoEcR5Tmd9k97aOnT7AVREBNF8TXz09HYfdqR7KdEIvJCgLMaFqUEJAbGY%20e/4GyGiBjinwmaLYukWWx3zisUcZHRyiRiVat5Szkt7yCv0sZWc6YXljg+n+Hov7O94vr53/L92s%20/b3ewQ5/TiLef/Xa1St/8v/+KTeu3yJNM/qDBbIkBRdGjKTbYXQ4JF7shqeNc+ChNZqinVHEC/SE%20RwmQXv7ipuyOADJI8aWUc6OsQs27rcIPdceEeWf/T3h4BA2cp5KGChjRMlItQ9+w00y4crjFO9ev%204J0hzkJEK0Kjk5jIhFbZ8cGMajxDaEuiIpwzaGuRUmKko2kN3SylqUqcC27/TpqFCNZGY6uGSVFy%208vgJPvf4E/zaV7/GV774K9wzByHr3Mej2N/DdfrUveL3f/9/5Otf/7r/4z/+Y179+cu8/PLLjEaH%20dLvdIDWRkrpsSKJgVPXeI5VEeXCtx2qwSgSLDuBxWBvEmN472rZCCdjbHaKblu9/73msMdR1y9Jg%20IejVnnyI9dUVjq9vsLq8GLhDb1FxhFTBiNuoGNXtMljdpL++Dt1uuJFlDGk6PwnJudwltIoELApR%20uaFKIRCrQql5EK4NLyHhiQd9aAq6x4/BtEMnlhxeu86x02c4d9+9XH7lYtBH6RY3K7GdGZHRKKN5%205ScvcOXmTXyve2X9zFkefuwz4iMDRg5/TiO++vbtrT/6D9/6Di+/9jqNUTRVg24qvv3t59i6scX5%20e06zubTEYHUZF0ZZhJJ46Zk1NXvTEf2uQqZdMhHU0kfHmg9PSZ5IhN1+rmISKfBKEiOI5kyTwocE%200SMAOxrNBBgcDY4axx4zbvkxO7Zgqx7x7nCLK4fb7DUTzGSKLaqQoFi0NFVNOzO4GoSx9PMOxrco%20JxEyQRIsHCaoMcNN7MPTFicohlOqsiRTMcuDJZ556mme/fJX+I1nv8ap5fVf+GZ+DER/v9qlkyfO%20i//lf/4DXnn1x/4b3/gGL/z4h9y8eZPpNLQBp3FER2V4a0KkrfJIHMaEum/vJNZonAtaNWssUTRP%20zLSBnJ7OGvp5xu3bu8QqIpIxs9mM1eUVnnjiCRb6PdI4DrXhTfP/sfemwZrd9Z3f57+c7Vnv0n1v%2071Jv2pGQBAYEAgwyMBgE1rBjA7ZnGGcmqUkqldipVKpQpVJl5sW48m7ArsyEZBY7dnmdGMbYYJuA%20EBJooVu9q/fbd3v2s/+XvDhPS1CTBQwY23O/Vbdud1f17e5TfX73t36+1FWFtJIwitGthFIHtHbt%20prOyAp3uS8tyTsoGzXvT/NP5pi3gGgMFSVNW1kiQzXInCKz3WObQPNVQolAS1esDDikUwWhKXZTc%208YoHmK4PuXTqLJ0wJJvNkDog6fZIt7d58do1tr7+JHUUcfy+VyK18nfec7/4sQcj4/0jWogvVvDI%20V574Ol/40p9Tesc0r3Bas3vXKrPZjG899yzbW1ssdXrccstB9t16CDM3/rOyAeBvZdCfH0kKBE6C%209hC4+V6Rv7nm3+BApNIIqeeOMhbhGn50IOR3Tc1ozoOwwlHNA1GFYp0pl7Nt1kXO1WLExeEGG+UE%202hGxMcwGKenGJswqKEAUlmJq0KWnHbapyhSsII5jRBBS1BXCe5I4xlcGLRWRbvy3srqg3+rw2le9%20modf93p+5t2Pctveg39rtqP/LuqB+18nHrj/dXzjqa/43/7t3+YL/+GPGQ7GtOM2WohmjuIaAoSv%20Bd6pBpAvNdbbOZakQZFIKXDOU9cO70ApTV7UFJWl1WsjPGxvbrN7cYmNjQ2OHDpImqbUVY0OQ9rt%20ZL5HB8ZZWgu7aS8totrtpgckBSIIkEjyokCFQTMLdgbraryrm0GOBIGmE3Vfytxqa6hs420nVIBX%20gtqVtHQLfAUixJqU/oHDXDt5kv2HjnDbnWtcOXuWSIdMZyPSyZi2DtiaTbk+m3EtTRlbS+kt97zy%20Xu685/7vb5ftR8EzkkJcAPjTZ579rc/+y/+V0xcuIoKItK5o9Xvsu/VWwlaLaZpRGcN4MuXUubNM%206hIXSDq7lwjbLcq6JC9LvBCoQBHoaD4ME80o29OgKzzY+TFrkyAJAgGBl8092JwGeNPWvGmy3GxW%20G2ZUpHgusM6GS7nhck5vX+PkjUsMTE4dCExVwaRApCVVVkFWNYTF0uJzg0lLZOWI5o4bdVk1jU2l%20YO5P72tLN0lwxlJlOcePHOUXfu7j/ON/+Ek+8Mg7xe7uwuNSiJ2I8DdA+/cdevyuu+741G3Hb8MY%20x4vnz1NmJVhHEicIIE1TAMIoakwua9s0iKUkCEOEF00D24ExjihMSGcztArQUlJXNQu9HkuLC8ym%20U44fPTI3ITDNrWQrZjAasrRrGREE7Lr1FnQ7QQcRhBqhdJPdz+8cG45ShbMlwldoYQiUJ1QWfZOI%20Zw3CGcR8qdZZg3MWi0XrEAsEIoAoQQYReEUoIzavXWVvt4MyNS9euIjznnanS1oUHLr1MIPpmK3x%20hEOHD3PrsWOs7N3LgQMH3q2j5LM/tsxoWNVPVUI+eOLseX7nD/6Itc0hIoiZVTWFsQyuXaG3d5VD%20Rw5TmZrBaESoAxaXl/j26TNcnw05kE/Ye3g/S0tLBC3JtqmZXr+K3y/ZFbbpobBaUhcVynoiIQmU%20RKrv4FnY7+gn3cyGZPMvts6RFQU+0lipyXBcZcSWS7maDbg42+LabMggmzI2BZmvcNOMXmEJjEBZ%20gbUSagu1R3uFUhFlWlKUNQGaKIowxpDOUmSg6Xc7oGpGm5usrq7y9z/0Ef7+e36GO4/d9unlIPmV%20ndf/b2JAulXsf8+trKzs9a979U/wm5/710zGQ2xV46VEqAjjDNoLAh2idYipyoYcUGWNHZSSxGFE%20HMeUZY0KIqSzlEVNr9vm0P79tMKAK5cu8vyzz/HqB+/HqxilGr7U8vIypqxoLS02qwY6bHC88xzH%20z68QhPdIOfdlEw5s2QSduZk2UkFlm/4Sje+etgY7NzrwQmNFU2IapZrgpSKIQLZLgs4CshizeugQ%20C+fOk2UFaVlQ5CWXL15gsdvhvqVFBrXh6osvcs999xG1u78C4Ix5RH4PB7Y/9GDU0sFnR1n5mf/r%20iW/wtSefYZwVOBXQX1xidxSxtrWBDhsM642tbWazGb1eD59l1N6Srm8wsAUb6ZgDtxxiZc8KrTgi%20ChVntjeYtnrs6fXpi5AkDpqrfA/GejxuDpO389JNoWhMCBE0Ey6pcUrigpCcihEpV+shl/JtRoHj%204niTS+MNNmdDZnlGVuaYuoJxRjmoiGaG2CqMaPAVuObCXiOIkhaVL7BlhatKkigiCbqkRc5wY4u2%20CnnkTW/lPe9+lDe94WFuX923kwb9LdBDr3ujeOh1b+TA6l7/Hz7/BZ742teYphMQCqGgtu6lwVWg%20g2ZCaiq88SgJ3nqKPCcvCvq9DnEYUGY53vuXECdlnvOtp7/BkUP7ufXWW8myDGcsrSimKkqSOEZF%20UTM5U/MbTd/0J8TcHBLvkN5iXYEp0wZ1a5vGe6gjQtWFoNXsIYmm3WFds1F885IB17RCmumch1gh%20WwW618OajJX9Bzhw9CjPPftt0rwkKwuqjRt05V4W9u8jFJob6QxTlgjVBCD5PV76/9DLtKnhM5//%200l/s+9y//S0urd2gu7TMPa98FR/52Y/S7nfYGmwzS1NGkzEbm1s43/BdxumMhV278EpTWMtwmrI5%20GjItcogjonYb5x21txTWUIm5kd/cHqaSzcjdKJpGuJZYKbG6eciVgkoJZpSkomZGxXo54tx4jWvF%20kFnoeHGyybmNa1wdbTKrGohXnea4SQrbM+zGDDWrEaUnsoLASZQRiNLhK/MSP1rTsIazWUqWTom0%20ZmVxiU9+/Bf52Ic/ymM/+YjY1ek+vvOa/+3SsTvuevzO2459qt3tcPHSZa5eu0q706XTbTOZTHDe%20o3VIEDT/L5WUzZquNRRFSZzECNVYPCnhacUxy/0ecRAgnGU6GhKFAceOHSPLUuK4mba2koSw00Yv%2074YwanaK/E2AhUTMm6cSi8CAKcmzMel0QDEbUZcppq4IZICSqsmupAbm6GEdoYIArUK8byiazb1m%20M+3xdUWdzTDTEUkcIFXIC6fPMJvNELqZyg2mU5CKzkIfFYUcv/0Ojt51zxpKP/1jK9Oee+HMg3/8%20+S9y/cYmYdQGGdLpL2FRaK3ZXN9gOBqysv8AnaTDrMgZjSeoOGZ9c0C716UVtvFeMRqnzOrLbOcF%20V3YvcN/xo+TUzHzNuMwY6wlLcUI3CImEINHR3BmkSUOFaLhGQkKNoaAitTmj2ZhBPmHqClJtmYSW%20sbOcWb/Cpa01htm02VsqatSkxAwz2Jqhph6XmzlDW6IdaK8aH3ShMKZGOU+km5wsn5a0kohHHn6Y%20d/29d/Lxn37fTib0t1yHbrtTfHT3yq8evPXWX/7N3/x3PPnkk2wPx3QWFimyGbU12Mo3ppTeNtvx%20NEOLJEmo6oK8qoi1oNfrsbq6SizBZFNC4Tl35hSX77iT1dXdBFLirCXSzU1i02f4jkGMl3NXQFBS%20zJuiGuF0w/TGY7DzisGSVjU+hAjflG1aIiQorUEHc49BB8407w0OlEAEgBZUUmB1yMKeVe554H7+%20/EtfJlABVVFSZzOUBFOXtNodTJFz5omvfGZrNPrMyup+jv3Ea8VfazA6eXHD/9G//wLPPPc8C4vL%20DPOK7dGE02fP8fVvPoWwJVVVcPiWo8SthK3RuIGlI4iCgDTNkUFI2G4TtyJkqCiF58ZgyPp4wCQb%20s2/3Eod3r1ImHYq6YJJNaClNpCRJFM7N/PSc7tcwro1xGG8YZkNEIEnLjEE+wbc0dGPWpyNOXHiR%20a7Mhw2xKmudI5xGzCj2rkamjmlmiUuAzS5kXCAuhUGgh0Si0Bi0DbFkxGQwQ1vDKe+7mPY++i7f/%201Nt48Ja7dgLR3wGVZU5ncflX3vmex37l+O3H/ec+9zm++MUvsr6+jpbN4EI5iHWAVqrxnrMOj2dr%20a5tONyGMI6wpKfMcW1foJEErSbvfZTIac+K5Z9n7yCO4uqLV7eCsRSndjH99493kvcD6JrP5Ltum%20+TdhpRRhpIEArRxBGFGKhnAZCTUnVChePnEAW1dYa0DMz6fwoCVSewigEI7cQSUVr3n4YU6cPMXm%20xgaTyYS41WJtbY12WWOShBNnzjCrDCIIufPue3no3AX/k+9+9/+RdLsf+JGXaWubM/8nf/Zlfvv3%20/oALl69QC8nmaIIRElTIjfUbTF88xy3Hj3HH7XcymUxY39wEKVFhc0SaJG2ch7KqqZ3H6wARBVil%20qLzl2uY10irDmDm21TkclsoZ0ipnmE8ZFSmDYsagmLGdzdjMJmzlMzbzCVv5mJHJqLRA9hLqRHF5%20vMm3zp/i+YunMaFgVmTNTdgkxQymRKkhSh1qVsOshtIhaoevPa5uPOBpfPwwZYkEuq0W9951Fx/+%20wPv5xIc/+umjSwce9t6/xM7Z0d9e6e9AqSzvWn38LW992+OdTutT586eBe+o6xprLFEUEQUaVxvs%20HAuSFTk61CRRDM5gihJvaoSf42qAONDMZlN271pmaXGZMAzBO8J+HzqLoAIQDXLYefBivsxo7dyQ%20woGrMbbC+cZnLwwUIoowQR8RdZBhjJbzA1or8c7irMU5R21qhLdI4ZDCNicOdUY+HVGMJ3jnqEtD%20v9fHGsfFFy+SFjlCaYRSRN0WvYUFTp05y/kLl1he2kWn1cV4x+LK6t0re/c+/iMNRuvbhT93+Sr/%209nd+jzMXLjUMFSdwKAIVM94eoaSmtWuR/tIiZW25sbmNxaOjGOMcrVYLpSRlkZOlM/I8w9rqJUdG%20qaDTTSiLgsHWNtPRCIGg3WoTxAFOCIyz1N5jvKWyhsrVGOcwzmC8Iem0mFUZUis6y322Z2O+/tw3%20OfXiOQzN7ZLJSswkw26O8ZtTdOZICvBpRTFJUU6ghUYLiTQOV9X4skJUNSYvWen3efRtf4//+p/+%20U37mDW8XLRl9EdgJRH+Hdc8r7nv83rvv/tRzzz5HVVSkaYYzzc1abSwqCGh3OiwuLZClGWWWEeuA%20QCpMVeGNQX3HqL8qC5xz3PuKeyjyGWGgCJIWLOwCHYEUTadgDld23mO9RQd63j+aH2y6JuvRMkDo%20FugmEIUqaG4nHThrMcZiTY1Uzc8FBi1BYpt1gDylHI4hL9G2uWkYjcYcO36cbz77LDqMGIzHFNYx%20HE1Y3LWC89Bqt7ntjttZWlxkeXWFIEk4ctvtP7xglFfDpwL13bsDF25MPvU7f/jHnLp4la1Zxqys%20mM4KukkXXzqWk0VsWZMJR+oNVocQhcyKksoZ+r0erSRmodvGVgVlNsHWObbKKPMJdTahzqco50lU%20xHJnAeHg2pUrXLx4CSkD9h84iBASZwy2qnFVRS9MKMdjdrU7hAhMWSGcYGlpkeFoxJ98+c84ceIE%201nhMUWBmOW0rMYOUemNKVIKa1thJTjdsM53MiOIIX9eUaYp2nkRIfJpTjafce/g4/+hjP88nf/bj%203LH3lp3o85+Q9u4/+PgD993/qU63x7mz59nY2qa3sIRUAWleNm4qUoI1UDviKKKdtDBVTV0Ykqg1%20396GpcUFJsMBEsMdtx3BVBkiipBLu6ilorZ1Y/8daIq6oqgrVBCAVLi5Ba+SCWHYIQr7hOEigeoS%20RSGhmi8AzyfBN+29hPDkZY6SDXhOe9/gR6yH0RQznEJaUM29AoUOcFJz+Lbb+PJXvkZpIAzbpGlB%20nuXs33+QheUlhqMBDkuQxGRlzYOve+jxH1rPKAm/265kbYZ/+vkXOHnxCle3NqmloLXQw+kMpKcu%20MyokSkIrSsimBTfqDVrtNkIGSK9wVuKMIB1lVGmBLxxCObwE13gX46qA3ArKUQr9iqV+j36ygMBx%209coaw80tDq6ucvjgPtphC0xNOU1ZaneJvCSdTpBRxEK3z2B9m298+5tcOneRKivxlaHGNMeQgUfP%20DDpzyNpBYfClo6IiCkLiMGJjYxtpHItLC2xcugplzdve9BY+8tj7+In7H2TvwvJOIPpPUMfvvlsc%20v/tulvpL/jd+4ze4fPESYRii44S0qLGVo9/uIltd8ixlNJoQa0WchA0gPwlIs4x+J0EHiu2tDdbX%20rrC0uIAtc0Q2I0g6BEFAVVf4ufGnDBRSafzNG8y5qaQgbEpA7xDCopQDaedX/GJ+wuCazGpu8fWy%205necxkFpsHlJiCRK2qRliXWWoja0u4u8+rWv5/d//w/Q0qBkAE4wHo6Ium267Q54y7XLl7j7/lf/%208BrY3plHhPzunYEzF67ypa9+lTMXL1Aq2EpHUGdE/T67D+ylTBNCEdDtLLA2GOFzi6uB3DZ4WRVQ%20Z57RNENrSV1LnEnwOKgkxoO0AlE56mpG1AoIugskKiBSCrzFFRXbgyHj6xu4NGN1cZGjtx5kWlVU%20RYmrDN1un0pKJlnFM8+d5Omnn2GYTxChoKiacjDPcggsVVbiaosp3HzL2uBthrCOfDylEyf4subG%202hrtOOZtP/UOPvK+D/CeNz6yE4R2xAc/9rNiYWHB/7Nf/TQnT55kdXUVrCFNU5JA0o4TgiDAWINx%20jqqqGE+GdKJljK0xdU27HTHc3uTyxUssdLtga7LxNt2FRdCSwFuMtaggxEtNA9/x83a2avrTQjTN%20aekbbreWzakH80a4EvOYY7DGgAb/nYvDzkNVk+clWV7iJxNCoSirCh1HWOcQgeChh9/A17/xFGde%20OEOYxBTGUjjH7iig0++gkwgfhtx1553/n8/t+yrThPhuNMCLG8Z//kt/wZ/8xVfZmk4ovGH3vhX2%203rKfxV094kDgbYGkItASqQPa7Q6tpEF+FsaBCnFeUaQFTgQ4r5smndR4LecjSI3UikAKkiBAC0Vd%20lLiyIlYh3bhFEoRgDaPNbS5fvIBw0G01kTkOIhySaVnx9W8+zRNPPslgPCEImwdaFyXSCco0Q1QW%20V1h8UeNLiyst3ty0hLaouV1SMU1ZiNu8953v4h/+/C/y9lc9tBOIdgSAVJLjd93x+L133v2ptbU1%20nnvuOXav7CLWqjGgnLuKCCExVYF3Fjk/9o4CTaAgDgOcbW7Ldi0tELQSaqmJ4xYiUI0FuZQ0xr+W%20l88ZX3amEELCHIXyElpEKLwT4BVC3SztBFY04/4wDAmDsJmklTV2PGU2GFJMp3SDuPFiEwKpQ2pj%20GU+m7NmzF2cdF85faK4bshyvBEGrNR/+Sdq9HufOX+D82dOfunD69KdaUfiphV27H/+hjfa/feo8%20X/36N1nbHOIDhfCSxe4COjBU+YTlhQ6vePD1tKOQ4aRgY1pzcX3A9iQlDFtEcURuwDkJHUkt9Etg%20Oi8MaN/EpViiFOxa7KGFY7i2xeXxkOXFBW49dADV6xGpxuu9FbdwQvD8M8+xfWOD/fv2cNvRY+TG%208I1nnuEvv/YEG9sb9JYWKbKCLE/xwlFUOXhPpZqRvbCaurYNRoCmuRgKSShha32D3f0lfuHjn+D9%20j76Xu/bfuhOIdvQf6YGHXyf+S/tf+doavvLnX+bIoQMU6QQvBS0RNw1oIVFKo6RiPB7Ta69SFSWp%208vTbMbPxhCuXLnKk20UmHcrRBrGvoNcD1UK4plxTUmLFzdyI+ee5rZWAxkFQ4pBYJxBCotDN1rVS%20cyqEIxBzqwoLNs1JxxPqvGjAhDQN7jAMyeuaJGnhhcILeO1Dr+OrX32Cjc1tCjPA1I48K3FasjWZ%20cO7yZc5fusKhI0eJkzanz7zAL/6jX/K7971sn/1XDkZXh/hvffsUL5y7TFkLWq0O9z1wN4PtNSIE%20P/mGN3P/XbfzyrtuJ9KaSVnxlyfPM/jTv+Ty9oCwt0g3SEgHEygqSFrNw5PgvWkafbJx0GgcYx2L%20/T77Vle5qi/x/OYWo60hVx1kCz32r65SVyWtMKbfX2RkLIPBkKtXr7K1OUDGEV994husrW/R6XQJ%20ZMTW9hZVXRHGIYwzCIIG5RbHYGQDxW/I7GBKTF0xms64df8BPvjY+/jwY+/jvj07gWhHL6vMC6Ik%20Bprs+TVvflj892Ho/4c85fSJ57Fl2TjSKg3a0up0aGlFOZ0QST9vYmvqukbJFlJ4hlvbTIcDFnoL%20lNNtlLcEWtAAljzKORRRgw6RNxchBW4eQOx8kitp/OKcUA26ucEcNUuTQja/hgNjcdMpxWBENRoj%2085rQQT6boQPVmEDW0/k+U8CzzzxHlhXkRUVZlljfrAiUdUU3WmIyGfHtF06y98B++t02w/GYZ775%20NNcuXWT3vkM/WGZUGj75zAvnePbUWQbTgiDu0+3topg5fC555ase4P1vfw/5aINn/+KbFLMxemGB%20/qFbSPp9SGJsoCFJCPpQq7x56YOwGSWaBgCCrFFzprW1FlsbDh08TCQjLl++QpVlDAdTijRjqdtn%20od9jOByzub7Oyq5ddHttag+nLrzIYDLlxsY2WsUIocnGGa50SCtw1kClm50hD9I3IHbKOZxKSryx%20KOs5tP8gH//Zn+NDH/ggt3R3GtU7+m7dDEQAcbexB7//odeIf/5rv+b/u//2v+Hs6ZPkdUXHGkKt%20iYIAhcPLxjRyNpux0FoC6yjSjE68QJZlrF+7StRfIBJgvENiUN5C0kGpAHxjAGF9Y6skviMz8nP2%20uxXMFxybG05rqoZ6IW2De/Yeiox6OqUeDLGDEWo6Q5eWwEO336eyhiLNSCdTzr14kdEk49nnnmdr%20OCItckbTWYNLCTTT6Yx2XtDpdFleXGLvyioK6LQS2kl003X1BwtGl4b1Z545dZrz1zcoZUSnu0B3%20eS9eahaW97FnzxGE7rI9vIYVCVFLM6kl1y5vUakWYW+VaW0QTtNd3kfWqSi2hqAVwluEtzhXIsVN%20zGzjXT9Lc2rnScuKvKgIowhTlWwNJly9sU5RV+xd3UWRp1R4Ll27TrvbIu506akAtTFobGG2p83a%20epBQ1TnlNGvcH8oa4R1yvteEaR6W1B4qT7/d5qPv+yDve/S9HOnu2glEO/qeddt994r/7L/4J/7X%20/8W/4Otf/RqjIKWfJEjnCOKAbr+HcpatrRusLvYRGLYGKb1OB6xh7dp1dh04RJTEWClI65q2EKjd%20GmLdVBKqKcYUsmF5vWTz3tAfLRYvPEo4oMEiK2+QqnFaxjuYTXHb29jBADnNCIqKuG6+OVsBa+s3%20uHxtjayqOXHmLDUgg5D9+w4S6C02t4bNKUoUcm1zk9Jbbjl+nKNHj6FDzdb2JrtX9nDn7Xewurr7%20r97ABhhWPPXMucv7fvcLX+Lp0y8SLS4TLa6g2l2idodJURG12hihSY2ltbRCd+9BNivBty5usZEK%20UqvxuodMliDoYHyIkyFShASqwboGAmKlibRCeY+xjhLFidNnuH5jHZSmrGpKUyGVYjqbcGN9nTCK%20EErT6fVxwDidsXtlD0Vdc2Njm7oy2MrgKoMpKnxlkE4ga7BZwWK3Rz6eEqDoRC3SaUqoFLt6Pf7B%20Bz7Exz/wIY6t7BfWOXbYQzv6fnTkttsfF8586tTp00xGI7SSeO+JgoDpaDiH8IXYskIJ6HRaKAmB%20UhjnGAy3ufXwLYDA1BapAoosJUTMlx3lS3WXcBasa/hF3iOEBQzeVyhXE/ib/C8DVQnZDHfjOvna%20GsX6OnIyo2MdQWXwwwnjjU1Onj3Hi1eusLaxySzLEFojtKbd6TZb4E4wnaYIqciKEickKo5wXrBv%20/36KMqfVboGQ3P/ggzz09kfFD5QZjTIePH3hMmvDCbrXJ5OavKpQShOFCQMmnNocUVy8M2TIngAA%20IABJREFUQhxp2rMcKeHF9W3OrKfMfEAR7kZ0I1SUYCWIokCqNtJWKF8i6xjqGCUqlKrBZKgyoxIS%20LwVYh8NhlYQwRktPKCWtJGJaliTdDuMsYzweY23N5Rs3yLIMbx1i/iEteOMQFsS8PdVNukw2hvR7%20Hco0R8WeXhiCg/c9+ig/89Pv5vBKg/3YwcDu6K+i9/3sx8VsNvP/8z//NWpraIURl65c5b47b2e6%20udFM040lqwxRXhIoiRCCwDoME06fOMnxu1+BiARVlpLOpjgEzFLai7uQQdRA0eZnIzepkwiBEhXS%20VojKgLVQG8gyGI0pZxPqNEUUJVFVo8qKcpaRbQ0ZXr3B+nDIMFDkQqKlwkhJWWaMi5KgbKy4lpd3%20I9R5JuOMylmcgLKskWnOaDIlimKSbgsvJYePHvuPns33HYyurg35+lPPs7Y1Iu7vIrfgwwi9tMS2%20KZmGzeLW2rVrqEgjQk3tHYOZofA9RNhDJREqinFaUjuLETmooLF0chXCpFCnWFFSC0PtCmyZoqVH%202gpX1Q1Y3DuEUwjZlFWLu1fAGtr9BabjISdOnqI2JUtLSywvLjVQrKq5AxJ1M7LHOoRzCOcpi4JA%20KvLJjHYrwRYFnVbEo48+ykcfez/3Hzq8kwrt6AfWJ37pn4jB1rb/rX/zrxlNxkTtNpMsb8xDbUNs%20xHlCqQgCh9LN8q9OJGvX11nZe4ADR44xKUu8F6SjCTqu5y2FkCCI0DpsLv1v+nAp37iClDk2LRBF%20RVgZRFHiswyZpeiyQeakwyH5aEI1SfFZCZWhnURMnW9u04xhWpakWUllDbUTBFHC4T2rJO0udmuE%20UBotoDA14+mMaGObvbfsIWn3WN23n2O33fWDBaPS8cmTpy9y9sU1rIzwQYQxNQjFxmjQ7Ch0u6Bg%20KjzOQVUbiCLUnl109QqoFgQCJ8XcfsiiXYLyPUwxQzmDcCHetWi8OyusLaDuQDZFmgbZ4V1zGOiN%20wQuBFwLrPMsLSxw5coxQS8qy5NSpF5iMZ0zHM3Tt8LVr/KnsfGpgHcI3EHNhHXEUNlwaPBLPw696%20Nb/08U9w3+49O4FoRz80/YNPfpLLly7x+d//fVb37WNza8hCHOGdobIN76ioPZUFKxSoACEDrJec%20OnOB3ftvoa5sAyrM0sYOazIGIamlaugViDlgBBAeK2psXSGLGlXUUFaoooKigLJmtH4DW9VURUmZ%20N5BAPE0JqDSuKEgnM7ZnM6Z1hU46xHGL0XTGNC3Y3B42CBU8SqrmZMU2PnTDyYR+vozx8JrXPsTK%204aPiBwpGL1yxn/nWiQtMC0fUWWJqIUpaRN0+6XRGe/cC7SjGSUElHD6J0IHGRSFxbxHrFIYaJ3wD%20kgsUoZ4vbyHxdQyuxluFFwmGmsKUeJegTQs9FoRliA4rdBhAGCGqCm0t2nmKoqKMKy5duMSRw7ew%20Z2Uva9euU5Ylg4sXaXcXkLVFGtvYyniH8G5OhRT0+gtMRluNle9kxkOvfRWf/MTPc2Bp8dM7r8+O%20fpjqrewRP/exj/mN69c4/fwJOkGAVxopPEoHIDy1kJQWSguBU2wPUhbQXF47T3d5N3e+4hVM0xwZ%20aMrplCBOkL4ZTCNuOn/Il17yPJ8RCIgsyKzAjzOK0RgzSzFFhXSOqiopypKyrrBeNG0naymNYTrL%20qKqKMAzpRgm91RWs1GyNZ8zSlCef+gabG9tUVY0Wgto3vPogCKlKw3g6ozPLufeBV/0/PpPvKxid%20OX+VU+evUfmAqha4QHH/fQ9w7PhxsnyGq2sCKcirnAoQ7RZ1EDBxhkpIlA4wwuKkRIYCGUiEAusM%20zhuEl1grcU43sHwrkJUntwLlFLGtUVo2gP7aUFFiK0OR54i6ohACm+e8ePoMl86/SJmnbFxbp9fr%20oeI2lCV+nmqql9jYAikF0nuqqiAKQrY3NrnnjuN84ud+jrfc+8qdjGhHPxI9+PCbxIcvX/Gf/h//%20J6ajEd1W0mBrhUd5R+UM07xESoV1UFcZtffU3vLcsye4/e5XYKqahU6HoiiQqm6AbjS+jHr+WTU8%20WaK8wFUl5TTHjKa4cQppjjQOLQQqCjEOMJbKOGohqJynmAejws7pqlFCnefUdU3lDZPJBGNhY2OL%202s5dlAFjDJW3JFHY8O6HU4LWEI/8wYLR9ZHx3/r2GdZHGUHcZ5TO6PSWeO0Dr+L4kT7aQTUFbT3O%201hg8JoywEcyASWlodQRCW9AKAppDWgzGVhhnyPOcsq4xXlAC06piWGRkxoCzGC2hiCjClEJItHNU%20zjUXyAi08wSysW7Z3txE4pFCkE2mhErjqxzpHc2O6ZxkJxs3EYUinU3pJCH79+3hox/5EO944xt3%20AtGOfqT6yUfeysVz5/k3/+pfURtHFGpEoPCmpsoL6sJi6rkJaCtgNJ2xsLzExtY2zz7zPLffeQfO%20WEIdzNlITdtB+Cbzr42hrEpcbaiLmmqSUm9PcLOUsHIkHgIkQijWblylDjQ+jgmTFqXzDCYjrm1s%20MhyOacVtEBIRl2yMx8R1hZWawWBAECb0FhbI85KqNmgdIi3Y0iClJgwFk1lGOJ7w3ImTvHHvyl8t%20GG3NysHVYc1T568yJmJp1x5EfZ1+d4mldp/pusVXKYm3xKGk047QWlNhCNsa1QaDbmiIoUKHcytw%20oOnOxA2n2jf3aqX3pAjGRclmmjGpKrwQuL17qMuKPJtRz2aYWQ5ZSlAYZF1RTadsb24wnQxZX7tO%20d2mBbrfLYH2TbhRhbXNE2ADxfDMCvem5JiWL3Q6b16/zC//5P+YD732MWKidt2VHP1J1VveK93/4%20w/7555/n5DPPoLUmkCFgKIzDVRXWS7yQdDodsnRKqwd5afjTP/tz7nrFvWxvj9i9vISvLdJ7pDV4%20Y6jrgjLLyKfNSYcra0RZI0pDS2o6rRBhHOkkY5alFM6R5SXTWcqoqhkUGZuzlO3JlDTP6HVqlA5p%2064AgjlhZWUFGCVfWNrBCIFVEVpTkZYEIQmSgkbbZ2I4DRTEcYozhhRde4I2PvPn7D0YlfFJ1ogt/%20+EfPPviXL26Q7D7KeukxQZdudzf9GKqsptXWtCNBK3K0k5pYG5RoLKe1D9Ba0mkphHSNTcq8TyPn%20xvd+vh+RB5LUQeo9aSdhGoWMi5xJXVF1WlitqJ2hLnNU7egK6BpJUFuSMGBczvjat57kd//wD6jr%20usmKAoUtDYKQ/sIC19au01noY8q82cfw4IqK6WjII695HT//vg9wy+LCTla0o78W7bntNvG2R9/l%20L1+/xngwwMnGOdl4RRB1qDxkpaPIHaaWTMYFYdIlzTP+5E+/wnvf/SjtIKBOU0Y31sjzlHw8JpuO%20qPMZzhlWl5fJpym9VpvxaIqLIrLKs729jZYBuSlROkS3O4TWMTh3gSsbW2RlSVqURO0WVkje9dh7%20OHj4CE8+/U2eevZZZmVJ0o5Jy4qiytlzaB/DPGOUzti77wAHFm/lwx/6KP/bv/vfuXj5ElErYjoa%20fv9lmoMjU/jVs5ssXtyaUsY9SidpS4kM2nS7fZyBSEE7kfQ6gjioSEJLrDyR9CQqoBso4lABBkVj%2066OQaJqSiQYDjgVymkCUC8jwZFLQV5KJCBkax7gssN4QSY8SFpMVFKVBoKhlRF5mbGdTdC/G5RJR%20FgRGoqxBhAFpXrOwvMpoMiQKNUVR0mm1KaYpdx49zkceez93Htu5N9vRX69e84bXc+LECf7wd38P%20ZQwmK+jFMdksI1TNUes4zZF4lPFgPFlluHjpKk88+TQtHRA6x3h9DVXXhM7QCjVaxeTljK2tbSIh%20maYzwk5n3g6xRMuL1LUhSGK2R1OGV68wTQvWNwZkeYVUIcJZJpOMvbt3cX1jk3Fecv7iiwxGIypr%20KS1M84Lde/dy5vw5uv0uOg65cv0Krz98K5/73OeYzMZ02y2Ud8ym479aMDKw+Oy3z3H+0lV02MJY%20j4w0oQhZXl4EAa12wEJHEeqMOBC0AkESNL73LR3SlpJg/sc1e6J+vrbubsIObg4giQCvBBoIgVgK%20Ytmi5Ry+qijTEmNMM01TjsLaOekuoipLtiYTrm5sEHW6eJfhopLQOJwpcMaTZymtTgLG4LRESyiz%20DOEt73z72/nYRx/bCUQ7+mvXwSPHxTvf+U7/zFNPc/XCBcJ5kzeII/Jpigg9ZpjT7iS4OkImCSII%202Rhs89zJE/TiGGUtsfCs9vo4B5k1KAd5XVJZQdzvsbW5RRRFXL58mdFoxP79B5FCo8OIqN9nvL7B%20JM8pBRghUVo3/OzCcvrsBdYnYzyS0WSCwSPDiNJ7CmM5e/Yss6Jm3/6DPHDsGP3FZXq9Hi+cOsMT%20T1xDSsl0OuXKlSucP33KH739ju99A7uCR1ILz58+z9X1bUSwD2RClMTEBhYWW0Qh9DuKdgy4mlg5%20OlFIOwpJCAhu/iG+6eoLPEo03SLvm0NU7zxeNAxqIZogJGh63AFN5hUp2ZyNhAmBaLzOayXxcYAU%20AicVeV2xNh6wMRqgWy1EVoMMQVvQFlOWOCyT0YgwaXY6kihmurnBa++5l0cffXTnrdjRj2+69tAb%20xDve8Q7/Lz/z60RhQFkZVpeXuDaaUDtJZWukj3FVQeBbhHFEURSMpzNCrYilJIgTRKgZj1Ly6YhQ%20CvCGdpwwnOXc2B6Rpinnz59nOp0SdRa56657aLVa1MbTXt9GRjUiTpld36CuDV4pgiQhqhXZNKeo%20DLWzoAOKrKC0DhGF7Nmzj9e/6c284t5X8oY3vpHWvgO40Yjt4YDPfvaz/Ps//mPyYcHGjXXWrl3n%206O13fO+Z0RR++doGXLy6ybTw2FZI2OoQhZpW6Gi3IloJdNugRUm/HZGEnk6gaBMQMr+Wcc2HlnzX%20NTE3WbzSNqwUZ5GiAUZJBF40wch6iAT4QBJ2O7QKGBYpmXWoKMTqoHk4UYvtqqCQgoV2GztKcUpR%20CwdC4rUkEE0kD4IArKfOc/bu3sVHPvgBHrxzpzzb0Y9PMgh4x0+/ky9/8U+5eOYMwjjK2hLGCbWt%20IdBUQFkUqCyn3W7jpEAoSRgnCGuZ5hl1WVClM1phwOKuZbQUxFrzja9/gyLL2NraIi0NQbtHZ2mZ%20e+57AK01Tzz5NGlZU9aGykBeWWrrGtChkCRxFycdAoNyttkjMo52u8OuPXu565X38uCDD3L8tjtI%200xn/5//yGywuL/Hkk0+ytrbG6u7dOOcwZcXW+sb3V6alBk6cu876OMPrFo4QHbYQytDrdGgnmk4C%20cQChM+xqtwmo0Dia4bxCOYVygjmSaB6H/Jyg9jJC4OaP1Lyh3XhEvfx3CWkgUbECHbdwVYH1Fbnw%20GOXJvSPodRnWJfHiAiJMQGuclFSuwZR72WRkC0t9pqMhiVaYquStb/8pHv3pn955G3b0Y9ctd90j%203vyWt/hff+E00sPG1ibdpEWZVnjvmFUFtnYEUTS3Q4ppt7rEcYvh5jrtMKDV69Pv9eZmjZKtwRZ1%20VnD5yhpRGJLOapSKCHTEYHvCmTMXyNKc82de5OrF6xS1oaotpjQIpalLg/ee2SRFBwHWO0prsUrQ%20SiL27T/E4Ttu400PvxmvJIPBgHMXzvO1J75Kludcv75Gv9tDeIiCgGwy5dLFi99fMBpn8NwL55kU%20oFp9hIwJdIT3NSsru+j3YzotiJWn3wqJMKibTWonkM6jvEQ58VIy1MzSG29efzPm+KZMa9CZc49M%20P+8nzZknsVTIueecFZI6blE5O1+w9NhYk1NzbTIgXOhhS4cPAtABtSgItUQRUGYVQgi0ElRFwT13%203M5jjz7KLb1oJyva0d8Ive0d7+ArX/5zzp48hXOe2nkckrquqKzBW48pDXVpSGSAqw3j7QGz8RQf%20xyx1+8RRSF2WrK+tceq559le36Tf6mGMIyRudphqw7UL1/n8tS+QZhlBEDEdzDDGUtYWJUOUb9A6%20SikW4oZnnZclviixStJJunSTLq0g4ZmnvskwmzJOZ5R1Rafb5dSpkxw9epzpdEo+neCMZZrOuHDu%20PIMbN/zSnj3//6THDH51WsCFa5tkVkHUIdRtpNbgYNfyIr1OQCuCyBuWwwBBSohFowlv+no72WQ4%201jfroGIemITgJoHDzxMm6y0Kgfce6V0TiJwFFNJ5YqkpLbSEZymOmfmazSrHCItot9gaD1mbDFlZ%20XqEs0maZSc/X7ANJGChMlVGkM3YvLrF55QpvfughHnnNq4WfJ2s72tGPW4fvu0+85rWv82dPn6W/%200GW0uY2UqjFsdB7hmvKomubklWPkt9koc7J0SpmlrF++yuFDB7ntllu49dBRzLSgI9tMt8fYzJKE%20CaYqiYOYftBltDUk0CH5dErLa1Ah0yKfs98rVGmI2xFVaZt+i/F4Y4mDgFYUo72gmKUUVQl4Rlvb%20LO7eRZHndFttyizFFhUSQSuMmGUp4+0B+Sz93jKjKfzysyeu883nzyCXD5IZEElIXVd0+m0WFzp0%20WuAqWFkIEBR00GgawJPAvWzHOzdinI/S8B688DT+l81naDahPQIhXFOTNUSol0s2C4n3oAROCNpB%20QBwFeO/JvGFtPGLl4P5mp0hpyjnzJe50kVmGry1aSJaWemxfu849d9zOBx97jLQ0vpvonVC0o78x%20etd73suffOGLrN+4TpgkOFNjS4GSgkgpTFYhCJAoBtfXKbIZQaBYXlqg3+7RChJM4VDKcMv+w5hh%20Rb2ZgXOYWUmbCJVahukG3jkKW6A8LC0tI1AElcQ5T6fXw1rPjcGAIABlPfuWVxhOx0zzjBhFrBUB%20UJuaqio5cvAgK/v3cubcWWbjEXWRU5Y1pqixDrx1XL10mfUbN9h/7OjLPbP/t4cxK+DK9U1KJ0kr%20qJ1qIN5aEEfN3lCkmn5RMzFz84+XMODzr+Re/qI320DzoNN0cJqGtgccct4mkt/1e5ptaQfCEQIJ%20zQpAs8YuMMJTCkcpPSbQOKlwonFxFXN/KC/n/uOhJp1NicOAt77xYQ7u2cOenUC0o79h2nNw/6d/%208q1vQcybxzqMcM7jjMcWBjMrqcYZxWhGPcmaABMkTDZHCCc4eusRDu47gCsd65fWKMY52igip4h9%20SOIDIq9JnKLlNW2h6Qct9rT7HNq1yu6kS1A5FlTEkd17ObZ3P3v6S/SThNCBKCsSFbDc7dOWAdlo%20grYQS006HHPu5CnWr14nlIpWGCGd5/9m782a7EyvK73nnb7hfGfIORNTFVAEauDcKlKiJKrl1mC3%205CnsCP8F/QX3T2j/hPalfdHh4cKhVtuWWx1WUw62mhLbDFIki2QVCjOQ45m/6Z188R6gWKRk+1Ko%20OCsiIxEJIIFMfGdj77X3WgvrMUKyN55AiCxm8/9/ndHpJXzw4ccEmdE5QcxypJQYJRkNS6pCMchh%20oBO5nGp03LQ+klfZTGJTkDYfCpti80khSkPaJ5dGqVMSxE86JOKGOwogFWaz/jdaoZQgOmiDY217%20bAzE4PF9UuYL7wl9jw4eay2ZUjT1gnffuMV/9Lu/y41iW4i2+PuHYn/vn/zjP/xP/us//uM/YX45%20ZW9njM7SLZF2DukDPnR465EIVIjYdcO14xM+f+892rrjT//8f+fjn/yMZrpibAp21SBttmOEjW+S%20jxv7fiGo3YI6HzA0AyqpWLlAgWJkMhYhcjAcooYF2mQ0yzlXqyWx66gyw+5wQEdgd3eXxvZMl3MG%20WtNmhtB30Pf0dUNeSiYHO1zV6d7o/7MYOfi956dTPn74BGEKoszRWY4QgkzCeJAzyCWFhtJstF0v%20C0okpWm87G4Em66GX+p65OYXRD7hjl72VYG0gYsiefnykgOPgSRrBSMUWmtCFHTBUbs+5T+FQLDJ%20bpMQCd4TYsS5Hu08ZV7w27/5Td67+/b2qd/i7y3e/fX3xb133onf/tZfIHWWMtOsRbkW6T3CgYgR%20owSZMLR1x9npKX/5l39JV3c8+/gh+9WYqhhSCkN0EYHEKJWU9dEk4bhSaKUQoSJah2ubZOwmILYd%207WrF4uqKO59/h2t3bnJ4csxoWPLtv/4OF0+eMigL3tjdYVTkCJMlcrzpUBF0gNUqcUahtzjVo6Ng%20MZvz8Ycfferr/VvHtPOWf/X4yTMurhYonaegRamIOJQMjKqCIkt8dLZpfmTYfLqoIOr0YyFfjVnx%20FTeUmCIFKNJiTb18C+m9jC8HvJTz5JApviymUe3VGQASpZLw1fqIDR5pNEYqBIFcSTItQYHJUkCd%207VpuHB/x+7/zj7iWse2Ktvh7jd/+R79DORhivUspNTGZFuJTd4NNXtciQnSexXzFj370AU+fPCP4%20SGZyooOwoXCDSsaGUUtQ6fbuZb5jURX0vsfajuFwwGhnhM41g0HBzRvXOH38gLPHj3HrNQfDIQfD%20IaFtWV5c0ExnHE52GGU5wVoWFxf4pmNvNGF3OGaQ5QyKEhEhOEezWvPo4UOa5fJ//H/tjOZzz8OH%20j2l7iy0iMVcEFxExoGWgLFLqpSLxRTFuouO82oxovAq2jK9YoxTSJF8mFkSPiEm6L34+sWTDW4vN%20SBc3urUoIgi/2Xil7INIRAhB8NA7S9d1hBDAe1xvN583QEj/kFoJrPO8+/Y7265oi9cCv/qNb/DG%20nds8vP8xZWYSrxrSWCU3HtciCFCQ5wX/5X/+n6KMoWtazh4+YyANdtGgbcA1K6QPxBDwtsf1LbZv%206a0HbymKnLIq2T86YHd3D5krFvMVbd+Q5wbXtnz8wY9ZTK9wIqK8Z1KWxL7j4sUpPgZ2rx9z/eiY%20xWLB87Mz9MYfybc9B5Nd5k2D6y0hBE5PTzl/9vy/euOd0d9djM5OL3jw4AExRnrrUTrDAUJElIyU%20ucJsIrw1QIhIoX650YopkNW/6nE2SrSwKUARRIip+rwsYPKTu8jEMaWiEwEpUzHzpC2cj57oPDZ4%20uq6jaRqCdUTr8NYivE0ZbJtI3q7r2JmM+O3f+k3eLNW2K9ri7z3evHtHvP/1r8WPPvoIaTKsapMN%20rNRoqdIJDClX8OTwGn/4h/8xfYhpumg9w/EurDr683NUdOAcrrd426VL7a7BtR3OWVbzBUoL9nf3%20yLKC8eEuz5+9oG1bYoy8c+8uL85f4JqGZdfg2vR3mV4uOZtdMZmeIx/c5+adt3Btx3I2o7M9vXXk%20WUaR56y7nrrrMFqzmi+4uLjgjXfe/ruL0flsxbPzOQFF8J6hUnQikOMwQKEEWVpSbaYwgfjEoIif%20H36Sq5tKpSjt9BFREmJyV0ybtU0tkp90Ri8/h/y5M2yNetU+OQI9gR6w3mF7T/ASgYHYQ5RIoUGm%20W4IMcHXDrVs3+Yff+MZ2PtvitYAZlXzhK1+m/Bf/IvE7m/FMxKQoCDHSeUcMgWo8RGrJ+bOnTIYj%20QmdZfHxGHgSTaogUhhAFJmRkYshASoiesLFhNoMcrE0zHfD2Wzd4J4o0w4lIu14TrKWoBizXK2bz%20OX30XM5nLNqG+48e8r/+n3/G9370A3YPj7EiovKcvaMD3rr7Nj/6wQf4YOlsi5SSrmlZLhZ/N4Hd%20wR9958ePeDHrkLJCO4Gsl5TaUGSGIRXvvlGhHASbRjWlBcH5lCMWYxrVgkg8NuDRQMQIgbObMUxB%204wJ1V6OUohwUhBhQIg1yEsBbBGHTEUnw6YCyFRGrJS9Wc067NVk5Yvb4Bbb2qFDQu5am7hlJQ9da%20jkcT5GJO13T8F7/ze7w3qYRP50pbbPH3Hl/++lc5OD5g9fAp14ZDpss6JYhoSSCSlRltW/PFL77L%209OqM3UnJ7Oo8manKVBCs6ahxhCg2dj2aKASoDJQEGSkHBeAQMtEfMUZc72mbFFutR2NicGRCMDi+%20xhvmTYQQ3LOe4D0Pnj7m/d/4NZ5dXLJylrntITP81fe/z5/+xbcYZQXrZo2NnlE14PT5C2bnl397%20MQrw1v0F/+zp2ZT5usVlA4QE2btUQduOcTnBd9AGS1toVr3AmGT7Qdys8GMSpr5c2KtXZNBmdNuQ%20aSnmJOAkyBCIeIxIMb2CmJJdo9rMaxJ8JCpBrwVLYEmgjp6mi7R1B1ZgG0vfe+ginbXIEJOBWtty%209/oN7t66lf4+20K0xWuCW3duiy984b341x8/xQhJoTWu7yF6IgEpDQeHe4xGI5SMxODJM0WR6URT%20xEhDS2sEXmukLlH5ADMYk1dD8sEAU2TpTic6wEP04MH3DtN05H3PajEn2J667an7nnnTol0giwIl%20JDu7u1y7eZOv7+zC4T7EyLRekf/Jn/DX3/ku73/+S1xdXfHt736XJxenyBCZXl397cVIwv0nT9L+%20f71eU5g9pIhEb0EKmlXHwe4ezoGNjj4KFp2kyiTZqzujl2pYT9jYZf48OZ2qcoRXmWUxFQwfUBtW%20SUqRrrjDy04r3RvVMtJpwYzAWeyY+45eRFZty7ppCM7T1jWh6ZKp+LpmYAMxBmzdcu/zX+LevXvb%20p3uL1wpKKb72q1/ne//qW+nWzxiiEOgokAGMh1vH19gfjsEHemsRSqKzAi8sznkaGWiKDL0zYWfv%20mNFkH1NNIC+SJ71i4/HjeLk6AoEKUNlA5Tyj2RzfNDTzBc10ip2t8PRENjQIsG46Zu1zxPQKbwz5%20aMjhZJc7t27yW7/xm1xeXvLTj+7z7PQFWkhOnz1ndXoZh8f74pfGtKdPn3JxcQEhokQ6QQy+w+iM%20vm/Z39shycYCvXcsG8fOYEi2oYy02CR8x0gMLgnzZZrLAjLxQiFlKUkBuVIoqciQSCnT9yNsmqjw%20Uqcm6YRgZQRzAmeh4el6zjL0BCNplj226xEhEpoe2ft0JNlZVAy4tkGGyOfuvMl7N7b5Z1u8fnjv%20vffY2duFRY3WKdUvkwoVAspaTiZ77FYVGkkfHShBh8eJQDEoyQpNee0QubPD7t4xYrwDwqS+IYCL%20PgWobnoHKTc8sFJEIxARdDVCNy35aMFgUNEO5rj1mrBusV1LZgbEKAhdi607graxUfaJAAAgAElE%20QVRkRUEeJQNpePCTn7FarVLopJAoAufPT1FKTv/WMe3FJgo6yzVGCVx0BN8jo2IyHHIwniSRnu9Z%20LD3CWYa5QI9zSiGJRJRInU0Mm7V6SHFACAkqYhDECJp066CUwqj0XXjZCH1CakuiBCegBc5xPO0W%20PK3nLLXCCs16vaZvWqQDaT3aR6JQxCAwURA7y854xL27n8NsS9EWryFu3LjBG2+8wfMf/ZRcG4TS%20FCiMiEjnGZmCSVmRmwyvBVZBHyMYQ3W4j5mMkW/dhiwHmUNQm4s/UAq0VkCZXnz4Vy/CJNFKW2wh%20SZ3URJKZjGw0IS4WzF+cU19Y2t6SS402OUYrXPDY5ZrLp095/NOP+ODffY+273jx9ClFmbGwHbOr%20K8q9na/9UjF6uuSj09NTuqbGyAHB9wS3IXiM5NbxLSYDnZwWQ2RVrzFCMqtrylIhsgxQ5BuuSMqN%20IYhIZwGwOVpUMcnNpEpE9csUjvjJOy9+PkEEemAKvHArLtqahW2xusJay2w6pV2sECFDdg7RWozf%20zKEBXIjcvvkG797b3hZt8Xpicu1E3Hv77Xj+4X1knpMVOXkfqGQGwTLJSjKp0DGZrQUJXsTECR0f%20wWgEeQlKp5f9SxPDDdUrHERrEcJ/8kIUMd31KY2QAtd3aCFSQdMaqiGiHFD4QN13GBdxXYfrejIv%20kC4gJVQoDqshH373+9TWkmVZKliiZTWd05/PPsqOdz89ps3mNaenp6xWK0KucM2a3mtMjDgtKIi4%20ZcNgnJFpg3cQomC6aMgzTawUXkvQijxNnEljFtO1UNgcLYpPyWM32rMY8QGCkHiR7icDYIE2wEJ6%20HtZXPF1NqV2fVpRCs2o71udzwrJJ3Na6o1+sUE2HicnqX0u4d+9zvHPr+rYv2uK1xVv37vLdPCcf%20SGLdoZsVw1yjtOKgGqIDBO/xMcDAoAcF46NjODpMV8TWp8M/k8YzIdO9X9dZbLOGtkPLgFZJgB6k%20JCpNNAF06qSkTjbPeJlaGakofGBPKKZPn9F3LRJBluUI4Qi9JXORKkrGWUmuMkRZsnSW0mQ0qzVX%20Z+ecHO9+ujOq65r5fE7drJAxIwZDICcIQVSCxeU5F8+fM1AH5CNFiBIXBJfzOnUhakAw4iVFRIgg%20Y8r8FiLxRC+V9CEGpEhX2ekbCEGm+yGnJB7ogDpaln3H3Fuenp0ybdbIMsdojRYK1UXiukd3Edf0%20iKbHrxpE26B8QMbkrX3z+nVGEi5X9T/dHw7+yfbR3uJ1w8HRISozFF4gshzvlxQoBplJI5rU9CJ1%20RqooyHd2GZwcw3AIvYUy34wdPc4rglR477Fdje9asuhQISbulYiNYIXE6YagM4ajCV4liiXEgAkx%20kd/jIYUQDLuedQQX6qS0cB67anCLJdQdxkekNLgAzWJJUQ2IvWM+nXHCL5xMP336nAcPHlBmOVoK%20VAzIYDHCg20YacP//e1/y+XzF4wGFQTFatkxHO1xftXw8OkVT8/XnC08qz7xPFFJnFB0QWEj9CF9%20kV5InJQ4IfFGEzJNKwW9lnSkFNqL2PNoMeVn58/42dNH1KsG1UPmJLLxqNrRnE+5+vgJpvPkNtJP%20l2gbsOsGW7dkWmEyxfvv/wMAtoVoi9e2M7p7l529Xby19G1DpQ2h7TnZO0AjcD7JLJyIkGl2blyH%20yRichSIHHM631HS4PEIuCQV46ehiQ6RHKs9qeYmSHmkiZ9MX1LYmCoeLIfkRSUBJ7Mu7QimhyKn2%209ygnE7Iip+97MqlZXFzRThcMhGZ/MGJSDJAuMC4GFNpwcXb2yg/7U53R5dUVTdNsNmkSqSLRerxt%20sL3gC+/e4/TpA/7iW9/iavqCb3zz6zT9kgePzzg5OWLZB4KIRBy9V4xyqAxkGoxSOJ9mUIVKhDYb%208V6izLBS0m66oYXtuWpWTNdLFl1D23cYDJnRSYzrHJUskGtLGTR10yGdRnYOeotyEWMUXdNy4+iA%20yXi4fZq3eK1RDgtOTk44O52mMAopGWhFrtUrG5CoJDI36EEFZZFGMpfokNC2WCwOhVACaTwSKHLN%20IJbotkbajklV4uoVDsn1w31CUSCyHLXhmCDRKYhAkCqNbUIgxyPyVY1f1MTGopEUUiOsxy7WiUMS%20Au0jMqZzHgj0XffLxejs7IKmaZNUIzhUCEQRyYQhzwxv3bnFmzcP+Mu/+rd88LOfcv3Nm5zcOiav%20DnBUzJYzlk3Poo6UK8u4UIyqjOFAkWcwKPQnEpLNn2k3bw64WqxpvGXlOpZdw9p2dN5hkZispIoZ%20A1OwbGtsGyi84vLJKdoGaDzCR2LT4/se5QMm1zSLBXe+/mUO9/a3T/MWrzXU8aG4efNmnP7oQ5xz%20qAhGZigp0UYlXkhL8uGAfGcHyhKUAe/BeuyqBhGQJiMCKgpyJRFKQpbRPHrIiwcPORiPU1EbVFS7%20e8SNcj1KkZZsHryzxOiJMpDJRM0wrCjGI+x0Tj9fJgN+pdEe2tUS6SNSAi6ksyGfFlrtuv50MeoC%20fzSbzQghIITGux4fFQLNYJhxcLDHl750wOUVvLh8wb/799/hX/+bf8Pv/uP/kFu3b/D8dM5o/wZE%206CP0vme+6pHrJUZ7tApMRuXmfiGt60MIWO/ovcMFS1QSGwM29HQ+ENBErSkyk9aYyw7tBL62yCiI%20refFw6dIGylNxqppCL0l9BblPSpoXG+5d/stJor/Zvs4b/G6Y7I7xnYt0QeEUFjbEWOgKAqiTPYg%20elCQjyowGQDOBXzf47oeRUSEtKo3yiOigLaDuqa9mPLg+z/kTClObtwk29tBCMXg+BhRjBAybb29%20d8TgcN4TZCpmuVCb+J6CLC+xUiL8Jqw1QujdJzZBpItt6SNCwXq5+nQxmjX8s/l8iRCC3GTUNhJd%20TwwOES1lbviX/9t3GO9P+PxXv0h1tMO//NP/g//hf/kTfuO3/gNObr5JtwqJPDMgVZaicaVD64AQ%20nqfTGqkEWhmUlgiRUg9CkAQ0fdMmglsmCUj0ASEjwQpkTJ2QDx4tNHlV4LxnsVigVMHAZCwuV6mY%20uuRiJ7xilGd87tYb7MGWK9ritUee53RdR5YbtJXYukEoSTkaEJTAETFFgShLEJJgPb0PhNaik5CC%20IDxKZaigEj8yW9OenWKvFuzqArteo9Y9i+acxbLjnZ3DtIULG9WEsxAsMQaiVCAVGA29A6PJi4JW%20KVzTYrs+6VaDQCMJQqRRTSlE9AghWK/Xny5GTeO4nE5xziGzJO3wMWBtz2q5YLGc8t/98/+e4e6I%20G2++we7BIfloxMNnL/jn//MfY6oR490jdFEyGFaUw5yi0phSYrKIUpCXg40PdUae56hMoTVomQz8%20c11itKQ0BiNAh9QT6pjOCnRoiL5lMBigR0MePX9BjBElJZ21tH1PdD4dXUYQPnDj5Dq3b97aPsVb%20fCYwGKTX0HA8xiw6hGgpqwozrGilwMpIphXkBmLAbRT4USiiMkQRCEonYzUhEDFQdz3L5YqP7n/M%20WycnDLOCQVXxdLGkUTLdJtU19CHJrILFEbBCIIJCKUX+ksg2GvIMrTXee5qmoW/bV69LKSVaSMxG%20j6oQNPUvjGnL5ZLVakXf9wh6rAVlCoSI9E3NYjFDZBJZZDw+e86D81OG411MNcZmAlWOWNoU4TEL%20NbFeg7QE7RDSgYxEoVHKoLTGZApjNNok9bwmUijBQGtGRlMiMER0CBgkpQycTDL6rkaVOSI3fP8n%20P8EGj9aKermm6zrwPsVkb0zb7t6+w63j4+1TvMVnAqPRiGo0ZOglYnmGygyjyTi1PEriY0zFQxsg%20SToyo3GFJOhI1IKgFU5LyDQqBvphQRiWiMmQ8uiA4f4hBM9oNCQbZNQykotkBISzRN8TCMkxMkp6%20pcikxqhNOREgtELKzdmOda8MFF++LqWURJ9kY03T/AJnVDfEjUNicA29iwy0wSi1EcsGxgcTrI+I%20TJPlJQ4FWqNVhgsRqWQi7nuP84Eo0+8TWiK1QJmCGAXOC/o2IPoOCIgYUHhUbykUDKQgCx7tPMpb%20MinIJdx3DX2/JK8GRAU//MlPEKZgbzdDhzW+68FGTJ5mYh0F14+PuD1S20i0LT4bnVE5ZFxWFGtP%206yBTmrIs03/CIvnG65cRYSEFZZDplJITIjJLGlBHROoULZaPKsLBhK/97j/ELldEJZnOV7gqJ9/d%20YeE6TibX06gmNJlVhOgJeByfKCtgw24Ht3Gi1MgoUEGio0RECchNkLR4VZystb8wpq1rbNORCUXr%20HIO8ol6u0FpTDIfkxnDj5A2+/9MP0EWJ8oq2dujCEqRhNN6lbWukyciLEpXleAK9V/TOEkRA6xbv%20HeWwQkrJcr2iKDJGwwGua3F9h9eQj4ZgW3rXMRhoXEgEXB4lg+oQhKfvao7G+wipKfpI1nrcdMmo%20GLK8vODa/g7Ejttv3qINYOT2Qd7i9UewnlBbHv/0PtdCRq5MigEqh2ADedAwb+BiBTt7G97IoTbK%20CIInE0lkm+qIp8wN+fEB3XoBQ83KOtSkxKgcXQwYFsPkt60KyDUqyxhoSYbHRosQEakB24KCEJIF%209E5R0ixqYucwQqMkOO9QOsM7h9E5mdK0bfvpYuR6i+t72qYhqopBUaKkofcpOXJvZ5f98S5G5Myn%20a3QXMeMhWmiWq5Z68Yzd3X1yrTDW0nc9jbVYwibLMaDHefLRti61jx6ME4guQB8YF0OibWmXNYQO%20IwTBRWTwaKVo24AUIEXA6JK9yV7yv+49i4srlBOEzmNkBiEyGlXs7+6xDSPa4rMCoRXDnV2edpZe%20qaTIKArwPWQl1jtM22J82CjyHa1NkdgFFuEdMQqiEEitkZkGDbLMUQzw2A1XK5Eyw+gBUhWgcnBJ%20BQIpZ14IiQwSpVK4JEKCa/HWpeIV0/2TQkHYdEqbWhA214UhBLz3ny5Gbdu++qBS6tXHbNfTZhne%20ez74mx/SLVaUeUEM0E4X9OsOkw3Yneywvpzjix6tso1HNUijUFqDieQqfRFlZtLRVMxQSm40NRET%20JNZG6tWSMhOUZU5Yd1jbozLNoBwjRcS2PYRIZkow0DYrms4RkLSdJTcG7z37e4e8cfMGxbYYbfEZ%20QVcozP6YtY4scQSjiDsDFlhUOWTtO7p+ReEahExmh63t6Js+CV+9IwQQSqODIFMKYRRIiZQaJQRC%20J65JYEDkrxTrNiaZyEt9afDJuE0INteQ6Uygb9vNz+lX5LkPG996Ij4EPAGHx+LSmNbZP/qEM9pc%20QQ6HQ2w0LJdLbNOSV2mkujw9Q+gSaQPWNQTjkMqAd7i+ZdlNIQiuzmdE65FFTl4MCFKAUchSYvsF%20WWWI1hEEtE1PcI7owNuOmRRoAvQ948M9xjs7RNVicsiLDJllWJ+MwxftGiWTJW1TW+LGh9vbDllm%20+L5nb2+Pa8dHW1PHLT4z6IF1sMhRyXLVMhxWhNJgjSRt6gXWtsyXU3baMYzGFF7SNR1B6hTvJSVS%20a4wxCKlT7NEmqTDlrwqESEH1yTYjySSCTMVEBJ9ew94iY0AoBU6C99jVGrdukzA1BAIxuboGTxc9%20fXDY4DeFyONj8t/2y/qffjKmBY9zDmMMXRuwNnD91i2++tWv0jQNP/7RB6wvavJqjFIK6yLWWoQR%207B/ss7u7z+H+ER988AHPnzxHRokSPV3fEUREVYamcQzjhEyYRKj1jmbdUK9q6B2K1DXFtmXqFXHV%20E51lPCiJIhILg8gkF5cLVospRPsqqqhpHUpm+Nglktw59nd2eHO45a63+Oxgvq55dnZGPh5Tz5ao%20qqKTkWgUNli0UfTRs7i6pBhVFIOSgdF0RiJCTO7yIrnMe5J/iEQQo0BlOVH4lwNhkl0JvTHkT4fc%20Dp/MEa1FBo+SyQ2SEGBV00wX2KbFRMBHOuvpg6ePm/fB4wj4TZGKm0AOodT9V8VIbKJ8XNfjrKAw%20Oe/eu8tvf/M3efbsGY/vP+TFwyccHJygi5Jl17JoWkzU3Dy8zt27b1NmOYuzKevzeXJ99MkSM0hB%20LjROKSpdUqocqTOGhSKTNbGR9LJDeo+KOW3Xc3664PzpJVVpyG/eZL6c8+jyObuHezSrKW2zJF3A%20i2R4GyRSS4TOCB6kEOzt7r7KE9lii88CltMZ08tLhlqzsBap1avXb/QBrQTRR/xyQX12RlEWMB4x%20MToFnbpAv8lOyxBolZNJjdAKH3tAEDbWPknvFjc8T1Lqx40eRJBkILnSqRB1Dns5o57OkdahhcQF%20T2072uDoYtq8eUFyAREyGf8jkVohcvNnr4qRUpu7gJA8rKWULJdLHjx4wPnpGfVqxc2b15kMhlzM%205vTOMhwMUSZnfnnF92bfZVhOOHt2Rl93uBDQnQMNxmiiDWifQafovCMvM6rJGLKMhehpXSB6RcwK%20hPZJZxMtN978HO9/7X0ePLrP4oPAZDLGdy3NusZvnKEUAiEzRBRkZgC+ocgH7O7ubp/eLT5bY9o8%20OVfIPqJjIobLrET5iIoiicRjkoVwOaOPguz4CLm3Q27AK4XyiccRWiefIpmcWK2NhM1BULL6ickU%20MYZkACljknCIZEmdC53W/XUHiyX11Zx2tmQQDUoZvOtpeksbAj0RKyMuRNyGe/KbtxACobO/96li%20lGUZxhgyKen6lr/5/g948ew5XVtzeTYlOEOeVfS2w9lAH9Y0dsFy1UHUePsILTSZKZExIJVCFwZl%20NA7QYoCwhr5LBSTfGyGKCmMawBFEAFmBkfTB0nuPLMbkO4c0Dx/xe7//B0jl+cH3/30i1/sG5yJ9%209FjryHWO1AZ8S55nVFX1izFuW2zxWkO6QFVU2OkKZTJijBSDAZBuimzfISMUWUZcN9S9I1Madseg%20DEW2kW9Ig1Q5UQi8SEGoPgqQm7BUIRApgD4JZWNM6dHpl2DiJu3HWViuWF9Mccsa13RIo5GZxMVA%206yxtDHRC0MeYtKeENLLhU7CHd3Rt+/6rYhQF1G2bDhSjJMsUR4fX2ZlM2B0N+Yn8iKZ2nJ0/o9rZ%20x2Sa6aomKkNTd4DD6BIbJRKVWi+tcAisF/gA9IaudXgpWa3WnF/cx4sUX63znZRAQsBUOda1ZOWQ%20lTR876OHdFLx4YNH9M2UR48e4WIgLwdo75HC4G3A9okMk0IxWywZlBXPW+L1YluPtvhs4Pz8ksfP%20nqPnc2LXMDk+wklJ0IrWOqTUZIBwAe8twnrq0zNwHYO3biF3d0FrYu+xrsWUBVqqlOwjAamIMeK9%20Q0mFlskNIASP8A4VYyK9tYB1B5dXLM8vaeZzmtmaSTVEB0Vd19iuZVqvN51RwCnoQ7rcbnuLMJp2%203aF0Osp8VYy0lmRZhpQdd+7c4ejwGpPJLtOLSy5enDK7umB354h2vub89CmDnUOOTg6ZLXvaeUM2%20OUQKg/UCFyLRS7TSSGFI3aSibSXIDKk0USpi1EShkEaBVng8ymyutb0mOsuTq0s+fvGU9uIZoxL2%20hiYdYpqMullje0eWRep1j5Qao3KMCUjboXXGYb4tRFt8Rviix5fx6fNniYOp11RKUsuAHo+Qw4re%20t0giIsqNOj/Se0vbrAnTwNVHHdXxEbv7x2kiURqsA2vp+haUR+jk8SMBpSQqUxA9aiOCxTtoe1gs%20sBczlpdT6tkM13ZU2SCFsAqB0Gka6r2jDo5ebbginQIjRVDpx0alrd7PF6OiKBiNRvz4w0f4oHj6%205AV4mE2nSB8ZjUZ43/PGmyc8v5gzvTrHSoOXBZiMrChpu0iUkigNUmtCnhONJuqUMCBCjjIGoQxB%20itQVbTxqBVCOx0TpaJsVLgSKKtukh3h2bhxTuRWr6Rmz+QV7+xO+9KUvcefOHda149vf/ktm0yXa%20GJTw+F5hHds0kC0+MwhKsGhr1LCkOQuY0rDOJN3ApKhrBHojg8pUhtoUj05Egrf42YzaO/S6pxrt%20IosKsgIyQ2EKCF06XJSvsnnAxiTxcAFmc+h7WDe00xmrqxn9qkY4T47Cdj12Y21SmIy161jZjiZY%20vFK0rqcnpHsllTyShFYU1QA1yP+nV8WoqirKssQYg1KKs9NzXGcZVUPuvPUmX/nKVxiUQ27evs3D%20Fxf84IP7TBvHrA7MlGO1WCHMEJkNyPMBMsuJxiTPXCmIKDJdIVSGkDIFNWoJWqQoIhxBCbI8B2FB%20CMpC0TYr6n7JxEBTL3jz1jV+//d/iy9/+YucnBxicvjBDx/zV3/9PbKsw2iDjBaHYN202yd4i89O%20MQqBputAJcF6zAyjw0N6nV7YypjNsWHqTrRMfkYekD6gwmbjddnQZxeYvCIvS/LhGMYDMCoVIhk3%20mWEiuR66AC6yvrxAWItrOlzdEruezEeUMkitUDqj6zo8ApOXrLuWWdswrxusdzTBYUWkFwEXA05I%20pFIMhhW6LP7bV8VoOBwym802Xik9zjkOj474+j/4Fb76hS/xztv3eOedd3h2dkbrPKvbt/CPzlm1%20a46PD1nWnvnKY7IKU4wJWuOEwAmFLDLyLMd6hVZZcpZTkBU5WaEIItD7GqMjZSGxSgOBQSEY5BnH%20uwdc35vw/t3f4WhcsrM7RmjB1fQSbUr29vb4xq//Kv/6z76Fs5bCZJi8oOn6LYG9xWcGDz+8z+nT%20Z1ycnSOjQEjN4fEJi7phICJ7OyN0Z5O960aYmkVNFCCCI4sqJehEB84R6xVu2uD0HJ1veCAZk43G%20RljrncD7SIwpcNVbi+gtmY/Jr0wnL1pHZNmsaHtHFBJtcmb1isZbepHsRoJMZz7WB6IShJCOlquq%20Qmj1yWq/qNIqvCxLrLXs7Ozw1a9+lW9+85u8+7m7VHnGIJMc7e1w69oJ69bz6PmUQVFydPMWi1XE%20PTlHmiFS5biYZkaUxhRD8tEIu+qJmUFoBYRkxG8UkZ4YI3lhyLJINRhQmpK9ScHR/pibN45563qB%20aiF2Dav1ghhjOh8wOUWRc+PGDUajEVcXl4yKgmI8oe+SAkZuC9IWnwE8+fBj5i/Oscs1WYiYokT6%20yM9+/FOKIuNgZ4zuLZWLjKWmkBqlJcEoMg0HMiBCADKIa4TMMEKBTmk8ysjNnePGlyipylAY0Arb%20riEEpA8IITAqUTDWpUPGsiyRWcBGMIOCzgeikgSlCcEijUFLoEuJt5GI1Kkzgp/TppVlSQiBvk/Z%202e+8fY/33n4HieD5s2csri45Otzl177xa/za197l+NYdzPCA7/7gPqvecnExoyyGoAYElZOrIh1k%205RmqKEAVhDwp8osyIwSHEFAUAqNzYsgYVYK9Uc7NazscTgoK7agKRVUIfB1ZzS4otEREh9IKoqTt%20akY7Q977/Ft8//t3aeuGoshBdEznS8488Zra1qItXn+cP3yCv1qyZwbEpuHW3hG5E1w+eoExgmdt%20g7GeiReMlaZUBq3TSFdlkk56SgHWS/oeoiooyiHCaHwMlOMKj0druSGVk6ZMSoXKC7KD/Y2Bfbri%20RgiElOQ6w2hBzA0KsCGijaGxHTZ4uuBYtzXlsCRE8Bu72iBi0pxuThNeFaPMMN3d3d3N85ymEYx3%209snLEWcXC5qhw3Wev/nz/4tVF/Ayw4wPyYuK2aLm6VmNo0IVJUENUPmQrBhQlAVBJ1/r3jsClryQ%207E6Kja7MMRkaxpUm15Y7NycMMjjah2EOfa3JFGQSVrMZx3sVksB81ZJlkohmumzo1jWmHPDW3Xf5%20+PEzAp7Wznm+nDFr4aTadkZbvN6I1vPsowcsLi45OLpB7yK337jD3s4+O5dnKC1wKIz2DGzcyDHA%20uySMdb1g0dWQZeAVfWuJoSGaGus86/UKZMTFkK6upQQP1iazQooCtTfCaQEkEzdLIGhJLHLIM9Y4%20dDlAlhV7+wc8fviIdVMjtEDnGW1nCSq+GuWcTr7ZRVF8uhgdlOwZY6JCMygHHB+/yc8evAAhmUwC%20N2+c8NaXR3z84gonMvyLmoVVqHyME55ycoIZHjNdOlwwlGYIQrBuanSmGU8qcu8Y5S05jlI69icZ%20d25VvHGtYGcIpQZDJFObhO8qQIhE7xnuGPpmgdCRg4nCRYezgZ1BjnOBtg2895W3+MHjxzw6fUQr%20hvx0dsmzdeRuJTDb53mL1xiPvvM38fTBYwo0WZ4jteBiNWdWr1jWNdE5dkdD5rNzJodHzKczKqWQ%20IWJiRMiMxucom1PpDNtMORiN8E3HSCiGoiDPDG3bIhDELlIoQ9u3tE2DGuVM+xlLX9PbpDVb9T3T%20Zk0vBZQ5a++pg6fxgXI4pByOqLKCKyHwIeCCpwsBU5Q0sce6wLioKPJf6IwAbt++g+3/HI/j2bMz%20pBnQeWiiIeg5vquTXaQKSB15/OICGyW/8rVvsGgFP/7ojKgHKCPwrsUoxWSgicLjVqeMK8uN0Yg3%20r4852su5tldy7VCxW0GhYFiAEREtJC8nq5jEv2mTYDW966htR91b+hAQGvpYEIVEjuHtL36eq9iw%20cgsW3nK6XPBsMolvbu+NtniNcfbslOn5FUpp1m1L2zaovEBog+0judHMp0u6zvLo2SkZgbX1VFmO%20DC39umMnq1heLZnkBYOsQEqN8zVFPmA8GbCaL5jkQ7RSrBYrQt1TyZxMwXy+Ro4NmZBABAGlzgiV%20oiXijcaThPPYnrDxv37p4hgFyCzHEOmCQ6kMomM4HLO/v//LxejGjetkuSYrJiwWC/KBQJiC5WLF%20xeWMa8cnrNYrXISTG7fpek+eV7zzzj1+9uAFhzsrTi/ndPUVO/sTRHB0y5pr1w/50hfe4O4bBYe7%20mv0dw6iAUQajAkoDKvTsDTIUAr2xz4SNGV0Ai8TKgpUrWLYdq7ajawNNI6glROfovebunUMenh+y%20XDyn7654cXpBd32yfZq3eG3Rny7jD3/0Y5brGpMNaFrHet3i+sDlxZzz55eMRyXtYsW4ypkvVhzt%20Tqi7Hik8oe+ofcvMztG9Y3jrTQaTHawNLJxl2VyxWszRWm8OnyWuc3R1w92AAi0AACAASURBVGQ4%20YTyqyEXJ89UlrU6p0I13dDGkVGg8ddfTxYgTm7ixzhNdZN332BBBSYIAhKDvLSI39NZSjYYcnhz/%20cjHSWnN0dMT+4R1syDm9mDHZOyTiWLeWDx+cMtrZxWQFl9MVKh/wuXtvU5WCZw8/4sXDJ1TjCXlp%20kO6K45MdvvLlX+He2zvs78DxBCZloCogl1DIyKgQDDUoMoJv0LxU4iezprDRxfQYnBRIDcUwZ1Ll%209B0s1p7LWY+rPU2jKTJ449Yxs8s91i8W/OzjJ7j3P7d9ord4bTGbzXj8+ClKF1jR44NAqZzzsznR%20/oRHD56wM6wYZBk3jq+zW+1xuLuDmzRJq4agr9f8+Lv/nnFeokzG2ek5drVmr6rY39mlaQ0Q8F2N%20tZ6qqjhdzLFnZ4wHI8qdETPXYo2mdZZlW9PGiM8UXYwsbItVkjp42hDQRY4qBHVvaW2fVvrWITKN%20jxEpBb21jPd2OTg6/OViNCgKhoMKKTXjasJPPnoGpkJpx2jnkNYblq1knOcolSMF3L9/nw9+/CHC%209Xzh7Ws0qzUnx0N+/Ru/wt27GVJAZuBwF8p4xY52TLIhg8yQK8gEiJg8UggxtUIbph5S4BshUkpB%20Gw2FAAMMBPgCCqVQsUDpQLTQtJbbt444fbHP49kpP/7wAYv2t3kcibe2GrUtXscR7fSci/MrkIZ1%205yiynGo44eJ8yvTskq7pUF7wfPoc4QTRO/5quUApRbNecnx8jPA954s1XRGQ+gLlI6vzC26dHOOy%20jF5EBqMRmTE0ywViZ0I7nzLr1yz7NcNWM1vXSQPnLYu2posQc42VsPY9vZJM10u6GNk9PKCUitZ5%206t6iMoNlwwVnybJEGs3J9WtU1/fFLxWja9eusVrV/Oz+D/jq+9/k2slNdDHk7GqOEzVkOzR9T93P%20MHqBEJF2XXOwv89/9gd/wGI649aNQ04OBVJC5mE8hjwDVpfcfmtAZVpyHTE4QIK36eTcB8jyT8K8%204ZMVmAKQmLA5Ck3BB8n/14CcCIqBgjVM+569YcXJ8QHz5xPOnr/g8Vnk+lvbOrTF64fmtI4/+N4P%20+fijB9jGYr0kixKjB7SrNdE6dkc7DIuc/Rv73Ll9l93JhOl0ynhnxOPHj7m4POPpkzN2yhFt9Mya%20nnFR0ErF2bomXF4yHA5AK4ajip9+9FPcsyecPj9DS0WZlZQCZosVQmosgTY4eiB4R8gUTorEL7vE%20CeW9hd7TuY37RhA474h9wEmSF36Rc+3mjU8ms5//wo8PDyjLkqvTBzx9+pz949vockI+3McGw/1H%20Z9y8/Tn6bk3XLLhx/YQv/uav88X33uTmCVyeHmEklALKAny/xM5XnNw64HNv7yOwSDQhpvqTxHiD%20dLcAqcL8fBF6Gba0+aCKkEdQkf+HvTeNsuy67vt+55w7v7HmoecRUwONeSAJDhI4iYytKLJkL8WS%20YmktxYmdr8pHKF5ay/mQD1nJWl6SHVtyIjKWqViSKQkUQQgkAZIYG41udAPd6Km6a6569ab77njO%20yYf7qgGIpCwxCkMptXu9Hmp41XXrnv/b+7/3/v8phabaxlEoV+K5EAOzucuGKdi/MEV3dY7La5u8%209ubbPHjirr07ey/+xsXm6gYXz11ka6ODm7m0J6Yo84JRWuKMd0BDr0E9jHjkwYeQAlbX11hZWWe/%208tl/6CSjUtKczJE6w+Y5azsDYjdDolicmWNqcYHF/fs4fOIoBsu3LrxFdzRi5Dl4jktmSqwjGRqL%20wGIdhVaKXBeMsgyjFTZwKYRF+B6msOzEQxJjScsSIxXa2kr6KE2QvgslhPWI+e8HRp7ncfToUa4t%209bi1vEqiQ2bmAh545AnqrWnujw3b2ztsbS7ziZ/8PHecdNjegoYP22vgKYNDSZmmWAHTEw4z0wvU%2065AkBc1QIfBBVBopWkORWcCihMB1q0oNuyu7K7BjnW/Hgiwr00pPgKISaJLkGBzAoe3DvhmP3mbC%20/PQky5MtLJKXz5zjv/jkXRxusqf8uBd/o6IclRTDhGatSZzEzO1bZHNtnbjbZ7LeRAnQpcAal5WV%20Daw2rG2so9yImZkDnLj7Tm4sbzJMDW5hmJ+cRuGhBESBz9z+I6jAY2uUMAt0h0Oub2zghQHh1CRx%20HNPr9RFhDbfVBATCdcCRZElM1i/JjUZZh1SXOIGPNZreMMbJcxzfq4YqjUb5PkWe4MlKGSBs1pmZ%20m/3eYLR/ll9pt9u/kWUZhoB+b0R/tMTbV5cZjTSN5gxpmjI/N8H0xEfJh9AMQKcGSY60BkyO5xpa%20jYipiYBGA4IQAumO85tqeU/I6qHe9z8obSVvCRUYjXGpSprEuIKzVOqOwiIwKAy6GmZnSgliC/um%20Qq5tZZw4dpTtlQ4rb9/g5Te2OPrR6X8+Bf/93i2+F38jooDnnnmWbz77TXxcPveZz3H63vvZXtvi%20mT/8MhvLK8y2p7BWcPPmMrduLNNoNLDWMhyNWLq5QfObL1MUBUlsqdUaZAkY6zOIY6xxuHx1GSNK%20OoMdiGqkOqM+PY3re6ysrBAPhjSbbTaHAyK/hhWKkyeOEdRrvPn2BVxtaDTr7IwGTDQnGWQJusjA%20cUmKErRGKIV0BIUu8AKf0hocx6PVbnPk6NHvDUa+4jcPHDjwG81mm0K06A0LRFGlWWHQxBEeSpRs%20r21x8c0lHn/sIGUOukjwlcVRFulofE8SeALPA1WtvlCxPlUFJu0YXOx7ldn3iwp/xh8lxmQRlXul%202H1YiwU84RMKqLkQOoIo8JmZmWHr+iYX3r3GrdPTvzrV2gOjvfjRDzMwlJuZfe2Fl1jZusl/93P/%20hM/9xN/F8zzSAwnT7Ravf/tV3jpzlv5gyPzsAsJKhr0+WVbieQ0Qgu2NAUopZib2IYuUMq/ceJSC%20vIC1jR1SnRAXQ37/j59h4cACq9s7FKZgNBoRhAGr/U3mWnMUQlDonHOX30EFHoXRFI4lHvaqjfwk%20JilzClstwiLU7cqmMBorDKXWSN/FCphbXKDRbn1vMCoNT0202ijporyIJLdYFZJpAcIlyzRhUEcY%20xfVrSzxw30FCD3IEge+gyPBcSRg4hJFLUEkd3QYhB26nO4r3/bkb4/IM7JgPqmbaDQaFBLz3dmPG%207wMQxuAIjSugrqANNFxJ7ksO7d/P6uUVzp5/i3ceOMLJB6YJ9+71vfgRD9mQfOv//CZnvvMan7z3%2043zs8SfxXUV3ZxthJadO3c0dR49z+f4H+NbXX+DMmTdxcZhqTVGL2gyHI4pc0Kq1sAYGnR6T9YAi%20H2GNInSbCFmSpkMyC1JFaBRL6+tY10GXBuG7PPzYo3Q2t7h8+TKRH2EUbO6sUGKZnpmjkJpuPMSr%20R2zHXYy1lQSSkghHYrFoXYn5CwmlNYSuixWCEydOMLkwKb4nGDmSZ72xYWOv08XxZymEg+v55KXA%20dTwsDmHN58rVG5x5Y44f/8QJtHYpyxzHFbhKEvkeUSDx/MpWunLYrlwqb9dd9s+lPxjAIqypzObs%20bs5kUIJqFBtTkUa3P338fNaOZVgyfOXToMqMXDRzs5MsLMzx8jsXeO2td7j/nmm74CDICxrB3pLI%20XvyIxrK1v/2b/5q7Dh/nn/7yP6YW1tjeWMMKCLyAUTLEky4PPvoIhw8f4dSpc1x8823WljfY6Q6o%20BXWaUUhRaHRhaEdTSAzGaoRRGKFQwgVH40oXEcCoHNGPB2QmpTnR5Kd/6h/w93/mp+lsbfPF/+N3%202NzcJNcldlWyvr3FZq9TuX/YksiDJE+xUlXWRlJWvIoFKyzGWNzx2RVCoHyPEydOfBCArTVHP1Cq%20OS7T0zPE3R5ZUTLqD5HCxUgH6TcY5BInbLHeifnqcy9SWnBclzTPsNZWwv6+Q+hXKx7Vl9cINIiy%20AhRRvu9RVMXx7kMUYM17hJF1QDtjD6cKuPT4Ge0Y5ioflUqs3McSAr4AW6REPuxfnKU10eblM2d5%2050YMkj0g2osfybAaWMf++9/+AsvXlvj5n/k59k3NI3PNdLtFGDj4rkQIw05/h053m7mFBT7/k3+X%20f/Bf/kM+/OTHmJtdxJaSPNXIQhDJgJbfAuujnBqoiLJ0GaWapLDEuaafZLSm5zhxzz3gebi1kJ/4%20O5+nP4o5e+FNlrfXqE3VaU03eejxh/nYUx/n0PHDzO+fp9lqsDxYrkQURcXhGjTWvpdxWCkobWV1%20XxQFExMTHDly5APfuyOEvLr7j9fPb9mVlRUOHz7MjdUE4Yako4xCC6z1iOOSsD3NsbvvZd/B/Vx8%2080WuLhUcXnSpN1qgY5QEz1F4Lii5C0bluORyQJo/lxq9lwEhxgy2kON2mngPbMZkk6mWicdAZJHI%20sSqdRVmNM06eAgXonCLLmZxoc+Lkcb7+3J/w4stnuOvwR2zD3RuA3IsfvRAKzp85y7PPfJWf+txP%20cueRkwy3+/ieQhsNZU6uSzwvoNmsozVsbm+iC0Gz2eYTP/5j3Hnsbs6++iZXL14h6Y+wGuJBWgn3%2046IcB2Mz8lKRA8oLiFo+0vNIy5Lp+TkeePg0TuDztWef4fqVq2Q6I9MZaZrQnGmzOL9A1K4zMTuL%20VZJvv/wKr505SynAWoNFIMZgZMaNp6KoTFeLouDQoUMcPHjwg2C0+5edfvLqV77yFd58awXPm2Vm%20eo71Hqhag7I0WClBK1Q4AW6Nk/ecYnPrFt9++TVmP/s4Mw1FORJVZlTZMeGMPbkrMBJjEHFuE9AV%20IMkxKlT1pRSVPQpGIHZ5pNuD2aLyWULCuLF/G8wsKOmNDeYcIk/hSUk/HuIHEUeOHePM61N849sv%208eipYxw/vbB35+/Fj1yUq7k9++obHD1wiM9/5rMUvZSaFwIlo7jD1FQDK1zieITG4Loe0guIrE+R%20lLjS4+Sdd3Di4EneOfs2r774Cp31yl325vYGIy2w0uLIyr/QERGLh+Y5ee8JRqbP5aVLHN13guN3%20nuTbr36HKzeuo63GCz3cwKMf91i6tYSRglqjwYNPPMzh4yeYWpjjlTdex1pRMSrVbxgBxlTeaNZa%20gjAgKwpOnjzJ7LFF8V1gtLK6bs9fvMHNW2vcXF4nbAakacpgs084fZAkyZBRHac9wWg04pvfeo2P%20feRhvGiW1869y4eeeBy0pR06SGWRaiynSwVG1kqEGJdUH3wdGJPVjD9SopEVda2qJMrudtxEBW5m%20l2JCjuFNVhmVsOC6WFP13iIHIinpJSOCIGBhqs2pO+7hxef/lLcuXOLRuxfs/r3saC9+xOI7f/w8%20Mi759CeeqrYMogBJtVQqlUcGlHmGDDwaUYssLRnFBSrwcRwfoSVxMgJtOHr3UQ4e3M/1qze4fOUq%20OyYhH5iq3e5Urq4Gh/m5Azz88GN865UXiIIG/e6QM6++ST/uEPgunc4WSkK8vIzruvihQ2402lo2%20O9vsnI359kuvUGg97p45WFENJBssdmzaKJXCj3zKFPYdWPyu7109/fTTvH118+n//Qu/z2c/9zNc%20vrbKi996jdnZA2RaUqQFrVaLPMspjCEIQrK0JC8dHH+KODUI6XLqVANdFEy2BbUwZXrCR2BIkiGu%20WyfPx2S21Uh7m+2p1tDGBZdAkFMiUBQYtpMembIIxyW1OUooFKIyiLQGaUy1RoJAS0UmBVoKcqDb%20Mwy6I8pRjqMtTb9GIEOuvX2ZSxfO8dijD3NoMvy1vdt/L/6/isRa3PEOJgUMv3LNrl+8wb7JGRbn%20F1CBSypKesWQYKaFbAW49Yj6xATNqWnCZoOo1aI+1cZr1BCBwvEVVhpKkWNVgdt0mDk8y4nTJ8FR%201KIa290OaZbgKIdavcbUxBSj4QirDfUwYmtri9XVVYbDIYPREC+K6A8GKKFwpFOdXKk4cvIEWVly%20c2WNs+fexA0CDh07ihWSm+s3cVWAH4YMBgOieo1CFFjHMjU3w3/9T/4xs/sWPnD+nEGsf/fa9WX8%20oMnE1ByPPv4hri71SNKMRhQiBKTDAUHUAl9VE5Rek36/pNAWKydZ3ynY6ML+yYhR3kW6LlmZ40lL%20EIZowPOc8Xi1eR9l9F6JJgWUWAQKDZWKnAsZGQZwpXObXaoyrvFmv5BoIdGiAqGSangyzwwm04iy%20BJuTm5i59jTHDh7n5Zf+lD955mvs/8WftEdrrkjKjNDx907HXvzQQleE7RiVgPN9u3zxCjN+k2Z7%20miQekbqWcLJBa6pO2AqJJmqVp6DywHEqZ9gx42GNQewSqonBDFPyQUoyGtHr98gGmkc/9iid1R0m%20Zie5duVdbi3dIBkN6fb6+KHHwWP7KG3K1k6HLMsYmRFlUdAfpAzjlNbUDHEcI9OSxmQbz40o0Wxs%20bHD1xnWU57Nw6BBPPfUUd63dw8WL79DZ7hJEEcqV5KOcIit5+MRRZseyIR/IjB77yFO/+zu/8+8Y%20DDPuue8hdrojtrYHoEIK7dLtxySjDCdoIN0aaQZB2CYtKmNG11XkeZ9mvcHRQy5Wp8xMBkhR4joS%20RzrkaYHjKIQdE9Lve1ghsQiMEJS2ApcSKIzBaIiTjDQvCXwPD4kzLuqUqOAIIbBCUErIx2XcsICt%207ohOb0hWaLSufMQ9L8R3FefPvsaVyxd55MH7Ob4w+WuudPZOx178cLtm7ydslzJ75cwFepsdZuZm%20qM9OkAqNagbM7ptjYmaCYG4CNaWQLQkNCXUgBGoGE1lMZLCRQNYFtASi6eI0FESW0tdVM9p4tJpT%20TExOMDM/Q7PZRAtDHMfcuLVEWZYM04TN7S0Gw0q3LM0z8rxECMnmyipZnuOHERrL1s4OF995h6s3%20lxiOEpTyCKKQu+++h+mZGba2O5U5pBD0Br2qdFOCn/3Zn+UTn/vMd1EkTpIktFotfuLv/CwbGxt8%209dmv8dbFZVqT+ykKB0d5NNohWVlSjjKk9NDaVvWVddDGMow1596+xkOn72EyjBgkEHoS8Cui2dqq%20FBPcZnws4+bZ+6js3ayn1JqyMBgjSIYZhS5peCEikNVzicqHTQiBGU9z735+QeW6G49SsrysfMIF%20lGUJwwFHjhzigQce4pk/+hJ/+qcvcPzQEXtsUgptLEruUUh78cOJ3WFfM7DsLK+yubnO3MIs/mQD%207Sua0zO056eg5lU3d636JKOo2ufWYqVBY7GiIqXRFk+4uFZVCjyuIqy38CYC7JzD9VfWUCrCa4cc%20mjjK3P555g4ucPGt85w7e4bl9S38gcNgmIB1cZRLPoyJ05RmK6Q1MUsS9+n2YsQwxnY6DNIRvWSI%2074e4nsfW1hbnL17AC/wqi5LVmS3LEhVKpqameOTRR7/nNZFJnrC1vc3y8jJf+MIXeOedd2i1WrQn%20pvCDiKwsSLMM1/EpshLfDUhHKdIqrJGkmUW6DW6t9bixbCjw6I4khfVBQVZqAt9Fa13NTIvqYdhd%20hv3gy4UAhJVIK1EoHKtwrIuwVQvfom934+y4bViO014DJBqGcU6c5ZTWgHSQwkEpgVQGpQQPPfQI%20M9P7+Y9/8Bx//OWvVzfHHhDtxQ+7VNvW/3zzwpLtrm1SC0PqU028iRq0PeoLbVjwIAIcPT4YDhIf%20YX2k8BF4SHwc4eLLAM/xUcrFSEWpxl2kSKHaEc6Ux/FHDzJ1tE7haXrFABFKDp04whMff5JPfv7z%20tCYm2OkNWFvvsNUZkAxzdCEwhcRolyBsYaVPqSEtDHFSoJwArMJzfYwQOMplY2ODK1eu0O126Q8H%20DEcDGu0GhdYcP1H5L36vcKSUXL16le/8+q8TNuY5eecjTM0dZ2Utptls4vt9BmtdvHASKauyy8YF%202tGUIscoy8Rkk2zU4+131ziwsEjdV8RZpW+itCRwJLrMMUK9Z6r4fiAapzVq/DYXgVASqQXtegOD%20JHJ9hM2rnpuw74ERCjPOiFILvUHJzmBAVmqkdMBKql8C33Xp9raZn1vkoQef4Mt/8H/x5S8/z6MP%20PmIfO1XfQ6O9+KFGttr91f7yFjIvmZmZQfgutYUpaAdQk+/tUHmqusF3t6BkNUQIDlJUQzEKQWns%20eAO9yqJ2x/NuH7QZUD7UhhHFZkaS5jieYnZxjma7gVBgXnuVwSim0+uQl0Ok7+EoTVnA8vImaRYT%20NWq4vkfgKyamWpRYcAVaQH2igVKKYlQQRCF5WdDtdvFqPq7r8uDDD9HeN/c9z5r6n//Fv3zaDSJW%201re559SDWDwuX7nFa6+/Sb01TbM1zTDTpLnBVTW0drCuj8XDGIkb1HA8hZCW4aDD/Pws05MSaS2B%20I4h8ibRVRmLHhJ34ABF9W9QRKQRWG5QUSCmwVuN7Hs2ahyMEwuYozFgIspIhKYWgsIIM6MaGtU6X%20TndIqUEpF2skaDsmCzV5ljHRnMBxAt595yrrq5sIBMfvvOfpyTp73bW9+KFEcSm2nau30IMRzbBG%201KwRTbdxFtrQEhBBqg1WGZSq7uFdPkKPH2a8nqmMQGiDzssxDyuqERgx3p7aJbkTEC54QcXtGKtJ%20khiLxhjD0WPHmJmZ4fCxIyBhfWsTay3WCkbpCM8P6I+GJHmOlZLZuXnuPnUPvXhItz9AuRLH83Bd%20h6IsMBi0NQxHQ5Ii48ChA/ziL/8jjhw/9j3PmTw4XROPPPIIzWaT6zeu8uK3XmBl5RYIS7fbIY4H%20+IGLzRKwmnQ4oBGGKFl9h5HnMoozLC631nrcWhuSadjY0Wx1DUgYjopqtBTeuzKY3d4XUKIoK6Cx%20Ba60OGiELgiVrGyGyuL2RCdIrAUtJMYKClM9yyDJGAxThmlRya5JHznuMFhtyNKE9kSTsF5nYXE/%20Bw+dZGtnxO/9/p/wzFe/tXdC9uKHE6vYnVsb9Fe3CYxDo1ZDOAJ//wx4EJclmYBCaVKTgzKUZJXe%20sku1L+6CdCoJnl03as9zcV2BdQylMuSqUkXFq+hb0QJa4E5DfcbDbSi0m1PIHOsYtnqbzCzO8tGP%20P8mp0/fh+h5WUGkSSYftXg/pBIRRk2Gc8c7ld7lydYntnS7WWnZ2evT7/TH9YtnY2qLb74EUGCwH%20jh7mnntPfd/LIgEO7d/H4vwsGxtrHDiwDz9QhKGP5yo8X+I44EYeUhg8XxAPOwid4WGJe91KSrIQ%201OozvPr6JW6uwlZP0x9JLl9PcHz/fdyQRViLHM9RV9mRxpoCrRMcqUFnKEpqvoMwKUWWYk2OEAKk%20g0FQWEmJpAB6I8PKWszyWofMKoKwjjEuWVqihEfk1/HdyigujmP+7Pnn+fZLr4LymZ0/wDAx/Mt/%20/QVefGvHart3Vvbi/02iCJbfucbqlevUlEczqiGUoj43XZHUAah6ZQ3vOA6e72HQqEBQ2BjtFPRM%20n5yCkoK1zi20iUGnUIwwJBgKtMgYMqDLDrHsYYOs6r7J6mvIFrTnazRn62iZk5mEsOYxGPXY7Gxy%20+oFTfOozT1FQsLxzC6/mU2u1GJYJjuvjBRGFNnz9xRfY6fQwCGZm5ystpeEQz/NwHIeyLPFCH20M%20n/r0p5ldXPi+dIh6+umnybT79NXrS1y7vszK+iZKRUT1FvXGJIEfoa2g2+mhnACBi5QKISUWibG2%20UvQY76RoU1DmOffdM03SH+FIA7ZESolS1ccbU3XBrNW3Sy4pBFJWk9pCSIQcTxJJgZJq7PFksap6%20WSiRjHLYGpQsre9wY61DP7f04pJRapEqxHdrlLlla63DrZu3uHTlEu++e4Xr11cxWuGoCKV8tjY3%20GcYD0jTm0Mk7nl5oe7+mrUGKPRppL/56Y+nlZdtbWqPthDRcH9dzCGcnYHECAijdKpupqKFdza5K%20SNBxLCU53WRAZnMiJ2QqaiCNB6kG4SIQDHQCTjVEbNE4lONlKzDCVg6xEigNRZpTJDlFURD6PqXR%20JFmCkXD8zuM89pHHcVyHl994hUa9hbWSQpcMRwOmZmZAWgbxACsMxhrcoJIHQQq2OtsURjNKE/Yf%203s8v/vIvceDgge9LhTgA8y3EQw/eb8+++S43br5Go6nIdMFwsM3kdMT0VIvNjS6YrGL0rapkCIwB%20fLQoEdLH90KSeMjZ89f41MeO4OMiOj2M1pRlyeJcE9dR+ON5LaxDYQySEiUUxpa3V0Oq5To5Hgeo%20PJeM5yCAFNgZwOr2gJ1hSlwKjD9JWQKOwsGtCLf1LstXllhfusVwsINROUmSIEWIkBpHBkzMLODc%20WMIUDl9+5kX2HzzA1M9/1h5s7rXX9uKvN9bPbtqli+8SjTTR5Ay2LKr7vFmrumYK9HhjqgKgDy5Q%206axAOYrZ2hzDNCXvFUQ2grU+xAVal6jDcwTCULQVrlvN8IUYLBpLWY0ASAHCwal71FoRaTchS3JW%20N1apRQ0c32EQ9ymkz9E7jvILh36B+x9/kC9+4UsUawatC4qRpTfoYzH4vk+e52RFRkPWSbIUL/Qq%20iyJrybKM06dP86GPPPEXnqnbc1d3330n+xZmaDVCJJqd7XWQCZ5fo16XKKkpdIYc8zXSGhwTYNDV%20tKGSeKJJkgsy4fKdV7f56GNTdGOBtBqth5RaUa/5tBsOYVRt9Vcb+lVtaqxTjS+NuwC32SU9lqQF%20uiX0+9Dp5+zEgl7uMsxhZCS1ySbdrYSV5TU2ltfZvrXOcGuHQDq06xMoz6K8jMBvMYoLkszSbk/h%20eA12hgmR2+C3/+0fMz2xwC/9/fsJ9wSz9+KvpTSzDK5t2ze//Ro14zFdbyK0odCaIPAgcEFC+T4w%20UmNl9/dWwWUl/5Hl5NJQF/XKdWcHRpdHXH3jAq7jc8dn5winQ9So4ogKC0pYdD7CemAwlXChqLik%20ej1iFCWMeglhFFGaAtd1qbWbxPmIm2u3mJye4LEPP0YQNfhn/+zX2d7ZZmp6GqMzBnFMc7JBXib0%20+z16vR7DUYzwJLVmg2EyotVu86EPP/mfvEy3wejonCvuP32fvXjpBkvLXSbaDZrtBVCC4WiHZjuk%20s51VQ4RGI7RGYXCxWOshypx0GOPg4zguL37nHHcc/zgLk5P0kjUMz8fwIgAAIABJREFUhn6/SzMK%20aU/UaTQ9wgACDwIfXLcq9eSuBjbjtY4C8hwyA4MCljcSVtY75Ebg1SfBrdOzJdtxzqW33mZ1fZvt%20jS1sqomEQxjN4AiHQgi2NjcwpiSKckZxThjUmV04zPziOr1+Vdtev/QWX/jiczSjKfv3Pn9AhHuy%20R3vx/zA2L920b770Blkn5diBEzQcj3w0ImrViCYbt0npQlXzcu74YDq7/KWg2l6ICxAhNtb4dShX%20YPPMFu6NjORiynbcZb6xTHjfPrzjQAi2dECBMv7tsRpjLGqXxPUcfD9ESYeg5hL3B2TG4PsejvTJ%20ypSVrQ3YgjcvnGNyZpJ6I2R1Y5XRqEsYBQgh2NraIopCsiIlCAJGRYLn+5SDPg88/BBPfvxjf3kw%20Anjyo09w9vw7XLv+DRbmD9GemGFpeYvRKGdu7gj9bkJZZBidY62p9K0FWOOjS7cS755oY3TKVjfm%20zfPX2ffUYYypo4UhS3KywtJNRgRbGb4HYeTRqPn4Pjhu1RUwotp/LQpI8owsL0m14N3lLbQbEIST%20eEHIIINr1za5cOUWtzY7rO8MMFbhCY+6F6DcoHpVilN63SGOCFFKkOcOg+GAnZ2UyakObtCiPXmA%20fmeH1tw9vHVuhX/zb/6A2an/yn7mo7W9cm0vfuDYubxiL198h+3VdU5OH6OmFOlggNYFYX0aAo8C%20jaMcyrFmjkRUQLQrSjG+A/N8hNeMcKUki+GNl9/h6nPnuUsuYHrQWenw4le+zWHu5459x1HjsSOb%20lYiaR9W1Hpce+a4QPTiOhxCKfq+P5/kYLNu9PtIXNGcm6PR3uHDhAl/6vd/jk089xcREi9dff5Uj%20Rw/RatU5d/4sw1GPtMhQStFo19F9Q5ZlKM/lySef5K57Toq/Ehid3OeKY8eP2EbjNaanJ1jbWGPp%205k2kE9JsTOMFAq0NuqicQFwkQjpok2CMC65DkecIZfCDBmffusxddyxwx7EG2ShBqYjCWrKkJB6V%20CFngOhmeG6Mcixc41cwDFm0tWlu0NRTakFuH2UMHWduxXFle4+rNi1y5ucFqb0ApA1StSdDeD1JS%20JgWdfkysY1peSNNp4tci5tp1rC7pdjsYO+L60lV6/RxrXJJ+jikiWu0avURz4a1lvvjFP8SWn7Cf%20+vi8UHLvYO3FXy0G1zbs2dfOsLO5xb65eVpujXKUQlagfEVa5oRobKDIxytNAqqsZVfp1FQ6XkaU%20eNMh1sZ00pI8E/htjztP38Hcls/yxoCwHtJLhjg1n8KBDJABaJESKLdy5RA+Uryv/BBUO57Wwfej%20atfTFvheSNAMKI3l7LnzfOlLv4vyXFbX1lhdX6HerPGZz3yKzs4mL736LRxHQWGqDpoxOL5HkiQc%20P3mcT3ziE3+p6/VdG6Kn7jrKY4/dS3vyIH/0lW9iTUoUNBgMt3FVQKoKjE3RxmJwKs0So7Da4LiC%20uJsQtUK8wGH55k3Onr/GqXvuZHNDEboKZTWCqhunhENmStIkx5gCNzMYYdCIyghXuQjpIh2XQnr8%20yQvXWFrbYnVtg7S0CC8gas6TGUWhBYMkR1qBzjSu8ZhoTbLQakOS091cZ2l1h0F/h+3tTWq1Go7f%20Js89hHFJkpJ2vcXGRoeGN4EXBPyHP/gapelz/M5fsfunEaG3d8D24i8Xyc2OvXj+HKs3l2iEEbNT%200+RbORSSdquBdARxHBPqSbzIIUsNTiDHHa9d3XduTwhbIclNxigvaDSnkA3JtNMkfBC4CXOHp3j5%20lddoNBQnnzgAk7ARZzR9H+EqsjLF4iIcWWVauy+u40ntYteFMDV4QY1G3WV7Z4u3r7zN+TMXKZJK%20qqfRaFIUOefPneUP//DLTE9P4jk+Qjh4XoBQEMcJbuSRlQWnT5/m8Y89Jn4wMLr7AG+8OctbFy9j%20dZ9mzaFe94nThKjmE48ShFMghCQpB0hR4jigRA5FjikM1mvjh00aUZtXXr1KkQc8/NBhDiwAOgNj%20EbIaWLRaIVWIFzbJihTtOAjHpRAuw0yzvLHDjaWrLG/1ubbRxQkipNuoOnlpZbmCNegS/FziKZ90%20EFOmBcNhnytLHco0pRZ6tGYaPHDqFFcuX+bcGxeYah/AEyFrtzo4ok1/x7B/4QSdraskZcFjT36S%20reE2/8P/9K/4ub/3SfuZxw/tlWx78Z+MYrVvz7z0Eq9+59scP3KUowf2Mxr28f0W1lHEtsQ3Es91%20yHcGhCsh/kIdNCQYUqEppMRzJMJWUjkKhZUuflCR2RJw22CGULQSitOS06cfxW+GMFkRT5OeT5nm%20SKGQToRUVce6KEpcO56GdEC7GbnNsMrHIrA6xKfO22de57k/exHpGqb9eZxA8Av/8B/xW7/1W3Q2%20erz0wusYqYlHPVzfx1GCYTokbDTZ7G4wvTDDRz76kb/0dfsuMGpH8lcmJ6PfePvtN9hY3USLOvFg%20B+k2aDYChqMhurCVmL4VGJGjzRBdjpBejdDzceyIbKgxQpKXhrPnrnHz1nUOH7Ac2Nfg+NETzE23%20cCSkKaSpYTgsaU83GWSwtjni8o3rvHtjnfXOkMIohBfhRIsYKciKhDwbgckJPJ/A9QiFxyhLKj2k%20uCQbpAxdgy8dAj+kXmsySlKuXFuh0D4L+0+SDUp2uilK1PADj6jl0elsEEV1PvyRR3nwoYOsrL3N%209Rtn+Xdf+ioq/zH7+ANHRaOxd+D24nuUZct9W5+tizdePcPrr57h0L5DHD90DJ2lKKGQUpKkJWlR%20UA88phoRYRhVaUpanUbHUZSiMpwoqbrwqjSgFEJIFJXfoNzNamoWK0DXASHQvkWG1fscLMo642Fh%20QV5meI5CeQ7kJZRVJzzP83GF46BwmJ2Y44UXXub5Z15E4KDznFEv5d4Td/ONr7/A+TfOV3N/pWEw%20GpIXOb4xOL5D4EfE8RClXB544AE+9OSHfnAwcpV89u477kAIS1nmWFHQHXYIapUZo8BgTTUPZLWp%20dsRkibGKMk1wQ0mWjPCEIKjX0WnCoLuFI0O+dukc9bqk3TrLvvl9nDhxJ8ePH2ZiShIoj2e/cY21%20zS2W1rYYxAXCqeEEUyB9stzS7XfwQpcglNSiCISHKasVlf6oxOYCLUqKtECnBXGiMZ6P7wYoWc1A%20ra+v0qxNUfOmGaU72MJSjxrobMSwv40QKfc/cC8/9uP3sbgAs3OPsX/fPkaDLf79f3iJq1d69vEn%20HuD0nXuStXvxwWgsNsVbXz9nn/+zb9EKajx0+nFGw5jtzQ5zk3OYkSV0PTzfx5GSOM3Q/T7Nlg8q%20Aqo1CoEYzxgZlNHjRTRQbgVGxtw2ykFJgQpDfNdDOGN7oN0h5LHWl5C7GvL2tnQP1q2G/XJL3jfI%203CEfGQ7MLXDj2ibPPfM8g86Qiek6nf4Ok602nufx/PPPs7y+TKvVIisLtClRSpHrEl1ojKMprabW%20iPj0pz/NoSMHxQ8MRlKIq/feefx/fPLDT/zqzZt/zNrGAKHqhK4EY/CEwHclujTkxlAaMa6VXASW%20IgEjUvzQw1OGoU5pN1o8/NBp0vQAg2GX9fUN3rq0wrtLXabeuILjucRpwnavi3J8HDfEyiZGR+jU%20Q4kanmtpBRprU+wooxg72FqjEYWGsqDoZ5RSo4yHUj5ogdUORQLdnYSsUIz6UAxTPCnIE4fAm8CX%20mu1kk1pgePCBe/n4x0/TqMGtW+AoweLcAbLmIpE3zbs3l7m6+nXO33vMPvLIfk7OV6C0Phjaucbe%205v/f/ngfkfO+6N+K7Te+9g2e+8rXuHbpXe44coIzkxeYnZhi3+JR4s4AVUpc18FTDtoUjEYpmdQ4%20aYvIgC4MRgiEsyvLbFH2fUaDY2JbakCYcautyoKEVJVI0u6AHu/xQpXml0UqB4ulTAtcG4KBvFuQ%207OSQurTdNqOO5Wt/9Dw7az1mp+boDTuVk7QUXLr0LkurSzQaDVxXkaZDgrAaIB5lQ0pjSEcjombE%20qfvu5sknn/wrXVn19NNP893ZEc8Kv/n0N77xHVavL7O47xBz8/NYDEVZVKmjdMizHJ0VYxQXSMdB%20KYkuCxAWKQxpGhMFPov75/nIR+/g8LHDzMwcw0iPwShnZ5TRT3IGaYkb1pF+A+XWQIbo0idPBelI%20kCcZjcCBMkGakkAqAk/hYCmSjHyUYXKglEjr4eAjjYewLhiX0UhTFApd+mQDSxqDJ0N0XpLEO3he%20weOPnuTDH7mXQwdhMIBkFOMpjyKrpEkWD0wSNOaIRwWXrlzlxq0NMlF/2m8GTy82vD0g+v8DMR2v%20W11koeNFz+6+bfnimv3OCy/x/Fe/zlf/5GukwwJf+uxsdtnZ7jM7vYAtLC2/gS0NRVZidInjOXhR%20gFMLQQlUzQdHIKQcA5FBjuWZq2ngMTAJMTahGN9yuzY68n2st7QIWQkLVg4dBimgyDJEOTZw7MD2%20tT6jLU3NtglMnWf+49c49/oF2u0J+v0BO90OtXo1V7TWWUHbknq9RhwP0VbjBy6FySlNgeNKRnlM%20e6rFL/zSz/Njn/3EX+lMfF+91R9/7A7x8IOn7dLSGjNTDVwHlpaXyXKNowKUcFC2pLAGiYtSLnkx%20Iqo5GGPJhl0cqQk8lzTu8PrL3+GeUweJM02n12WUZ2glEMJBuC6+qsYEkiQjH6a4MqIWTOD5AUmh%20GfRjNocDpJNQqwfUgojQdymKHO2UoCyF75CNLJQOWBedC6T0sdYlzw0aF6F80Dm+4+JLRWdrBccd%20cd+pgzzyyN3sW6iGLHXZZ6JZx3UgS6Hd9ri5OmRqts6Ju+5gba3G8q1LPPvcq2xuHuO+ew7bew/u%20LbP9bY+wNn/7Z6yTgitvXbdnXzvPudffYvXmBp4IOXnkDiYnpsAqzp29QNxLuPvYCRrH7iBULkEQ%20IRSV2WEGRT/Degq/VcMb+5UaVKVSIXcNTQ0I588JFI3rtbFv4O2JYWF5/yJJJdMjsMaAVnh+AAXE%20mwXxdo5f1vF1jbMvXeT8SxdxTUAxLMmGGaFfY3u7i1AS13UphSVNU5IspdmskeuMvCxQrkQLje97%20LC7O89RTT/2Vr+1fKP78n33+M3S2BwyGhlsrGwy6m2gjCaIGgd/E80Bri5IWYUuEKTCFU+2ZCYMp%20YgK/ji0Ltla3+Rf/6/9CLspqoc8P8aMGOC5JFpNmBQhJ4EfUojo6L+lvrZKPQOITKIlJDYaSUdJH%20xyP8qHKvrfkRk/NzLN/skGuN0B7YgDLXSOXjihBTWLQN8L0ajpOiZIHWA6K64OTxfXz0yXs5sL8a%20nc/zPjAiTVNS6yBFiOd5TM95jNJtTOmwuDjH9GSDleUbvPH6DS6+eZXOj3/ETk/43HmED8wlGVsg%20xd4o99+muHXhpr108QoXzr3D2+cvs3Zrg3NvnGff7CIPnH6Ia+9eoRCayclJdnZ2eP311xGjgsXJ%20GQ7u20+jVq8UE7MMQ4YVChsViMJFNEG5Y6NSIbCy4o2Eszt89L1Kx/eD1PitdtcEXo7NK5zbGkjs%20QHd1hMwjZBZw88oaL3/jDI72saZgc2sLx3eQDqRxTr1Wo7ApRpcUZYlSAtdTDPsJqrL9IUlHtCab%20/MTnP8vBEwfEXysYPfLgaS6cv8yZNy5y7eqIRuiSaUHkuwShAm0oy5IyTyiyjDBqkGdDHDfA9x10%20kZAOCsJaRLPmkRbDKjX1fWSgKExKkiQgHcKokpZN0wFppwelwrURgfCgAJ2UFHmC60NY83CNohym%20JN0RIz8nCgTkDhQCJWsIAoTWWAIwIVaDI1r4IgAlSJMOmg2OHq7xoSeOc+8phyItydIunmPwaoIi%20SwmCCNcrGYy6OBhqocEWEA+H+G7IkUNHGU3OstPZ4o++/A2OHVtgODpm7z4Zioa/y8PtAdHfpjj7%20Z2/ZV156nVs3V7l1Y4VLFy6zubrN4vQByrykVW8x2Z4giQdIYTCiko199dVXWZycY9Dpc/LwUWYn%20p6gpnzwuyLIEIweovAbWhxoIV2JdKgFBkeMhkGNNeT0GHiHE7RxIjv8mEBitQRusFShhK/EjATqG%20MoP+ckF/I6PFDGlf8+bLF0m7BS4eg2FMPYxYH/UZpgNmJ+e50blM6cQYN8f1HYT0SPOcJEuZbLQZ%20JDG5LmhNNPnPf/qnfqDr+heC0WjYw1OGfmeDwNX0ekm1mT/coRHVaDUjut0+UrhEYYS1OZ7jUOQx%20ZSHwvACjC7JRQdSICF0oKdFJTJ7n4Ea4roPVlnyUgxaYrIRRCun4B6DqCO1gCk2AoBE2yLO4Ghhr%201nBx6G2N6JoSKetI0aRIK/mRejgBVlEWltCr46g6eVYgZYzvJuxbDPjsZ+/lgdN14kEfV6TUvAKl%20JK4DXjPA9TSOlzI75yIcUS3tlpYiU+SZpSwKVD2gES5ycP8Cb79znnevX+Whh+6yjzx2gsVJRK/A%201qQVDWevivubHKsXe/bbX3+F5557nmatwZXL11m9tY7NXZrBJKNhysL8LBMTE6ws36Db26Ze88nz%20hNbULK47werKGr2NHTo3Nzm57xAnjhyjNjNNLS8ZvrtNXTvg+lCCrQEeGCFJrBpnOBVXZG8boAoM%20mlLn+Cqo1j2gkgmxTpUFlVXSZHMIcVlfirlxfoV6OY2xgkvnb3Dp/HUc4VXbFVIyTJJK9VYotnrb%20eJ6HtoIwDNnorFfSJ45HVA/R0lAKg+s7/Lf/9L/hwPED4q8djOqRRzzssrF2E1f4+K4lSWMG/RFR%20FNFuz9NqBsSxZjjsoJwI14vAWoy2aKGrGQdcbLFL+1ussWg0pbSg3LFio4FhAmGd0I+q2YnYUKYx%20LgG+UDiew/ryMq12jVoYsbG0DEISTc6TlxKMh1A+nqphTEBZCKSoZEe01mSjmPnZGkWpCUPNE48f%205I4TdTADAq9LKwwI/Yh6vU694RJG1X2BkwMWad3x6DzoEpIM4iEM44Is1ayubXD6wfvo9XZ449xF%203njrEg89fNo++Mh+5uuCwljcPWWSv3Fx5cIV+9KLr/PuuTXIXUzmcenGLZauryMMjHoxYRAgUTh4%20/Kvf/N+YnKqzOD+FJcdFsL65ylS4QFhv0HQi8jjlnTcvsfXuKncdu4N9Rw5TP3IUs7ROf6NH/egs%20zhEfOwLtQOi5aF11zYSo1qTA4oiqheYrp8qbtEWUIG8LYLPrkkqyXdJZHrJ2tUNDzRDZNq98/QJn%20vnmWwK+RJTnalpTklKJAixItSqwwY70ii9aGdrONEZqyzNDSYPOUNE/41Gc+yb333/cDX+e/EIwW%20ZkIxM9GyZRqz3dvEyAhtwHEFjlMtttbqAUWZQi9DI3EcpxJ1siXGaKSUaF1S5hJpfIytxgIMAiN0%20lW7K6oIKERCJgFAEFKYkLwoowHMkruPS7XepBy55MiKOB3hhHYRLOqq4IWMqAX7leAgryIoS33cr%20VC9KQk9T5gPa7YQHH/6/2XvTIEuzu8zvd85597vmzaWy9qqu6n2RWmqptSAJCSQhIQRSIMQygAeI%20YQB7bDwMjB1hWxrGYRgHjvAHxo4Jez74w0RggvAYEyyDENpbS69S79W1b5lZudz1Xc/iD+fNqmqG%20mEGDWhAzeisysqoiK+vmve/9n+f//J/n+R/n0UfX6fUnKLPDgfU+K70BSRSSZZBl0IZDYvbnpVoS%20ylePTIsS8iqkqEMOHT3GlY1tqkZw4uQpLl/d4lN/9hQvnRnz6Bvvdu99YyiMc9TakIbf2dX2t54X%20evGa+9znPse5sxfAxIRiyMtnLzPZm7K9NaeYGlaWlzEBBCLANBWLWcnG5gZ3nHqErNfFugLhFNPd%20GVVTEsqu35JjHJFWTDcmvDx5kcW1GasXd1i68xjDzoDycs50UtI5OSBdhaqCJMOv1HGCSEgsPtUC%20IQiUwPghtl+DJFtuqAY7dhTTinzsOPfMZYbJAVYHQ57+/GWe/uqzFAtLpAJqqylNSeNKanIaUaFl%20jRENWvhAn6IoyLoptbNo3aAx6Kqk28340A9+iIfe9JB4TYoRwKNvepgvv/4+/r8//DOm+Zgo7TMY%20rRInIfliSllqAiXoDvvM54UPcMJHySopfRXXDVUOYSzQRmGdREhJKBxSKJwVCCHIshRpHVQVorZE%20SqKERBhDXS5QouGO08epqopzly4jnEEGCboC25p2rb1F3AnhCAKIE0FDRb9vkezw0OvWeMfb1xn2%20czppwbH1ZZaHHYadALk/MW0nqU4YBLlHRoQI43MenPTDizSFOIUBUDSgomUG3S6TuSHtjIgubHHt%208i6/c/aP2Lx2h3v9Q8d44Hj/O/Dob/F15vGL7mtfe4LrV64zGAx45KG3MuwdwJZdnvjSb/PKSxcY%20dAckUY9qYQlVRlOUdLIOuzsT3vnO97C80uWpZ77EYJixstpn9cAa5Y4hCVJcYTFOMBguEYaC2eaY%20FzfPcOPamPWtGUcfPEVydA1bl+yMt4nWuiwdTXxsbOBbNzJfb2ID2vowQrV/Trq2NcthuqPZ29ph%20Pq7Qe7AUHGAlWeP8sxMe++yTTCcVg+6I8d4elc4pbEHhCipKGlFghEdJTmhUpMjzBlkKtKgJgoCi%20WqASyXe98x08+tZH/1rP+7+3GL3xkbvEj3zsI66sDf/m01/BBQFpGlPXFXu7O9RGkqUDBoM+Zd3g%20aGgagxCKQAistdimwViHVLFHOyjCMESFggDhtxgEAcVkj1AFPn7WKSSBV1k7TWUqTp4+yqHDS5w8%20eYqTl6/w6T//AsVkl97yCWoTUTc+NMpaSxAqgkgQRAZtZlixR2egefCBEe/8rnXW1yEKS+46tcbh%20kURXhjTwAMiaVl9mQajW2ItABcprzxxo22CtBimQQiIIEU5z5EDIaJBw/kJNMY+48+RRVgarbG1d%204yuPvczZs1d56f673RsePsHJlVvqOWPbsLnvXN/2S89gsdu4reubPP/8i+xtT1lfP8TpN9/PfD6n%20qTQmkIQq4f77XsfVS1voxtHrDpnsToiDiEAJdGPodoe88x3vYXfvGi+fHVJWORubOzSFYxSNyLIE%20oxv2tmcEZcCS6EOQQONY7DWc2TvLxqVtDt59jAOnjzBaTtF5zXyrRgwEdWAIo4hkmBH12newbM2u%20FnQDVQH5rGI+XlDOKnSlCZqYcjvn4dNrPP/1OX/0//wZkxsF0sVcuX4dGUClCwoxp2RBJebUoqCS%20NbWosWgUEMcxYHDOYaWlbEpOnzrFT/zUT3DyrhPiNS1GAB/68HeLtbWjrrf0O5y5cJUir7mxN6Us%20c0SY4tpMxiSJKcsKdIULYqzTaKMROJIkJkwl2laUdY2UHlqK1uMmdI2r59ggwDiH1gYlIrqdIcOl%20FdJ0idGBlNFKypHjXU7edQ/9wZAvfeXrTKeW0WCJG9sFSimMbRBWkqYxjZ5jbMVgWHHidMSb3jzi%200BHoZoZTx0as9v3PmMUSUxsCoVCyLQwSHAG39t5qEBIpLKH0aMy12cKGhl4UUTYQCjh9PCKLIs6e%203UGnmpW7TrGztsITTz3Jc899mgsXHuK73/WIO3IEDmR8J6Lkb+DKr+HGO3tsb+8yG+dcvnyV0WCZ%200bGDVKVmd3NBEMQoE3JjY0qvF/PBD36Qzetb/Omf/huOHTxJr9MH63BSoZuCo0dOsLmxzXQx5cEH%203sC1rYtMJjtMJwuCOEAsHPWsodot0RGoXkovTKCyzPZKelmHYivnzPbzbJ/b5NSDd7J84hB0YD4z%20EBlKsWB6ZYZIFCJTmFB6/Y/2B6cxgipvKBc1urIEIiRwGSfXDnDtjOOZx55lb3NGHAyoakNhaoR1%201KKkpKB0CypZUYsKTUWDaUFGRRj6EDNXl+SLnDRNectb3sz7P/y+vzba/0sV2H/ZdfjI6JPG9T6x%20O5mzmOdM5wvKoiZKMpSMQAjCKKauNabWBIFCCUFT12RxzPrhdbqDjMqUNFUBTvs5gK0xpsLakiA0%20bTxJgUDT7aesrS+xtr7McLVLrefESYCxgm6/x+p6l72pYWNrj6XhGmnWp9PpU5Y1ja6IshDtCrr9%20mIcfPsSjb+5x7LhleSXkyKGAtYGvMdVsQhYHCGsRwr0qblI4gbV+QZ5zDVY0OLE/y5AtagqRKOoG%204gCiwO/di0PIohRdjdnc2kKFaxw6ch9xPOD551/mma+/gG5ist7oE8Men/wOt/3aX2YG0+u1u3Fh%207xPXr26xeW2bnRsTFpOSleEauganQ9K4RyQymgoilXJg7TB5UTBaXmIxz3nu68+jG4MSCpygLit6%203R5pmvLyK2e4ePECRZGjjSaKErqdLhSa3c1tdnfG6FogXYiSMU4HFIuaiJBmXhM0kn6YUe1O2Xrl%20EuGsob98EFvUhColsAH1rGI+ySnzhnzeMN6ZM5tUlIVFlz4NAxODSxA2QjUh4TzgM3/4eV558RJZ%20tERVC8qqIQwDZs0MTUEpZlRyRiVyGlnSSI12Dcb5UH/fDTi0ayibkje/7c387M//LMdPHf1r7xz8%20pljUNAvRpiSvF+im8psHxL62QZHGGWVQ0QQNSvkAaWs1SRqxtjqCKKCocorZnKausSbAOd8WOSlB%20+OB+pQSj0YijR9dZWT2As5LpfAerHGfOvswsd+RlzOb2gmvX9+gOB+R6wak770c3iqIuGI8XRFFF%20khiOnUh597uWOLqeMxpMuePIEqMMysIRS8NSf4DRZfuYHTjTTiG86ExJ5SMcPKjHYtEWv25bhAQt%20x5SGvt0y2q+J63X9M1PVCY0V7M5i8jJgbfUwaRxy5sxT/N7v/gEvPXuSd77rDe597zjynXL0Gl67%20ZwpXLGomuxPG4zH5okSIgF7SJ+qllHlFJ4qpK8NsL0cJH8kqrODGxg5hFnH+7Dkeft2DfOD73s8X%20PvNFqqJg1FsmRFLMSy5XGyyvDOh1V7h04QqrB4cIabBJwuHhOoudCuOgFpJrkx3ms4aDvXUGIkMb%20QyLAlA1lvqATxww6GTuvXOf6pesceesDDE6s0x0tYY1CUIOEJG9QAAAgAElEQVQIaQKJEjml1Ghn%200Y3GWosgIhARUsZESvLpT32Vsy9fZnNjTNqxhFFGZQtyPUfFloUu0EKjMdj2l3OmXeRofHjbdAdl%20PEGVdGPe/o638s73vfVbct8K5/7qi8K+8coN92v/3a/z1JPP42zAbGZwLsbYiE62RK87QgjFpUuX%20UEqgq4KkmyEl9Ho9hJJUjaWpBVXpd61laR+lQhaLBaFyxHHIgw/cz4mjR9jd3SWfF3Q6XaxU7DUF%20Ml0mz/uMJzDPJZXVhB3BcNTj2LFjlIXh/EtXCaSikzh6A8073nWae08H3Hl4wfGDIWvLXe9+NhBg%20CSQ4owmC4NUC11c9xRbrGm9QdK1mn+CmC9q1+d0GqJoG4wRxFGCBjc0pFy8tuHK9S7GIsFRYU5JG%20lsn4Bs99/Ql2blzh3e9+G9/znrdz712xACiqhjQOW5DmWi/3d65vig+6gptPG4pFyeVL13DO7+1z%20zuGsaIcd3uburEA4P5G1VmCNxJo2iUx6B7x1mlAqrl6+RqJi4jDln/+v/xvT3RmhigjDmMl0h7X1%20FXYmm6TdkNFyjybPObyyxmRrj/k8956zxiIax4H+GifXDpPpELFoMHsFKjeM4h7rgxViETCvC8ZB%20xcF7TnH8rns5dN8R9gwUEYxZEK3EzOyY6zeu0F8akiY9djdm9LM1IjJeePwcf/57n0ZpPzAyztK4%20itpW1ORoUZLrMSULauY0osBKjUGjXUVjK2TQYKkRgWVztsmP/diP8uu/8UnWji1/S27MbwoZPXh6%20VbzrHW9xT37tSRodMFpaYmtrTrfbIwoVYSTpZB2Wl5eoqoJCGD8OLBcgLFHcYTpZgAsJgw7O+lS4%20TiLoZR2UtBw8eIDXPfAgp0+d5OL5C5x58QyuakgHXQoZMS0Vk4llsYjRTezFXp2ATjbg+PE+X3ns%20DPfdf4oXnvs6aaL4+MceQesx3axidRgwSBTRzcmnJRASJcCpkHYvUuuIhr8or/eaKV+EENIT3G0x%20ArzGQxqU1D5AHYVE0OmGrK4NuXotb/P0DEoKwjBkeXmVu+68F338BJ//7Fc5+8pl3v62N7p3vOsB%20DiyH3gLpXPt/f+f6K10O8svG5eOS2SSnmFbUdU0gAgggDkNUGBIFAUiJEj5ZVFeaxlhM7agah6ks%20tbGgveK5amqSJKEpKzqdlLtP3cXVC1c5dGCdLOgyn5bEUUqTWOZTg9AJ5dywbRbECq5d26Va5Gjd%20HnzCgjTs1BPkGJaiLqkM6A1jkn4XV0luzCdERuCUpCgrzr9wjrPnNzh84R7W7z7FiYdHSNnhxnSO%207MDa6jLGGUyVc+jgOjEJzz19ja995Qlq61DWoG1DYytqk1PjR/lallhVIYSnT3C+JTM0WGcR0qJt%20TdJRzPIFD9x3Hx/68Ae/ZYXomy5GAD/1kz/GxvXr/Mt/+a+4srmJCHtYHTPJ5wip6WYB/V7IxOY0%20BpRyuNJijMFq4zsg4ZASVCCwxlGbisbW9Dox2jTMi5xOt89Dr3sDYdDl4oXL1C6kXNSMx4adnQXG%20CoSMaXRIMw8xeYdzL2gCm/HSN75BQM473/Z2Dh6APE84tJawvARp5jfZem9hu4DSq5xuuqIdt9Yy%20OHELGfk0GXxBcrc8ivtfYo0mkBKp/MJJ2iLSTVPkMnQzR1WBMwZtDFXpiELF8soh4jAgTrtcunye%20P/qTz/P4U8/w8Z/4qHv93akQQjCrLL34Oyz3v+sqNnFVmTOfzJlN5lTzClODEAoZKoajHioMyZKE%20OE2JQ+89lW06h7BQaWgKKGpDtaiZFyX5LKcsGrIkoMwXdLMORjdcuHCOc2cuMVpZ4/nnztLvjChK%20TRz1mBcT0rRHXs2YjGdkaUThapzR7cHi2olvCEqysA2JaMiLgtpWBNkycZxQzWsW0wJjoJAaU2jy%20xYKtZ2vi65c4Mb6bg3cdYnh8yLRcECSKne1thFWMjh1itlvx7Ne/wdmzr9APehhnqG1NbUpqk9PY%20goYKLStUZDDUOGkRzrQLJBu/TFI5pBTsTvbo9BI++sMf5QMfef/Pfytfv2+6GB3sCfHL/+UvuDvv%20OMX5i9e4cukGf/Inn6WYzzG2JAx8L4poCKVDKIkKpJ9yaUsURUgRIoRAKUmSRDgrvGYpgs2dbZ59%207jkG/RF3n76XTm+EY4sbN+Zsj2FRBDSFAKEIo4jACsqJZevKgosvXabXd2ycfZYf+Ni7eeThiCsX%20tjl+rMvBFegmELYIw5jGq1Sdz4Vx1t6GPiRuPy8Gi21dP64V4d+sPrcVIuFAtQIlgUBJ104ZJSGe%20zF4aZsxmOaW2aG1pmgZjIiAgkimr6yc5dvIennr6cf7oj3+fF89d4ft/4APuPe9+iFMHvkNv/6Ug%20yMDsGq6uKuaTMUW+YDod05QVQRDR6/UZDkYknYy0n6JCvxZLhtwytu8H4CsILWBgaBV1lTKfp+zt%20BcynC6pZw2TqC0vWjdndHBPGEadOnSKLhuxsL3j2medJkghB7IlDURGozPvCMKggxDlH5RxCBqSd%20lCiKkU5SSQuRYVZVyHpCKWqkdThZY4xBxClaWoIowyjHmQtnefbKS5x+3V088u43sHp0SCfrMjjW%20RTeC3Ru7fOlzT/P1p7+Bw1CTY0WDpqZyhUdEosKKGisqtNU+uVXUIDUysARIjPWBaUGkmM/GvPPN%2038+PfPyHCWL1L/5GixHAsZVM/OLf/SEArm47d8eJ/5Pf/b3f59z5K2xuVayuHgahCUJ1s73RWiMM%20aBMQRR6V1E2JMYYki+kt9fwTrmB7b4+vPvkUly5tU1eOjas77OxpimYJoQbEwlFpBVIREVE3htlW%20gZSOjb3LfO8H3sN733OCxdTQCXOWu33S0DdYzmmEkyjh/GLNNifm326FZBur67dymtYXtI+qhLup%20sn9VQcL41hThU/j2b3ZhoJPSKtM9THcuQLRrYqxKWCwWZP0uy2unOHL8IR77ypd48ez/xZNPv4MP%20/8B73cP3Z6wP/wKT5RqkCOA/MT6pmcFiF1dMKuazGVWe0+gK3RRYbUiShP6oz9JoRL8/JEgFKuZW%20ANltLZ0Vt1I4HL6GBLEXswZdiAc9yjxj59oecXKAva09JDHHTh4lTQa88NRZ3v+BH+DMCxc4e+aq%20v49lxmK+wCDodIfUtqDWOVJarPOBgEZaRCNxwlE6aETAyrBPR6Ysduds3NhC1IZUJsRhQigl87Im%20wpAliv5yj829G7z80gtsTa5w7M7D3HXvSR54+CEqAc888TW+/KWvMJ/U9Hp9FvMJ1pVo19CIGiMq%20GlHhhMbKhoYK4yqsbhChRUqHxVA3FbVZAJaH7nmAn/ypH+fYfd/6Yct/sCfBWneHlOLc4RUh/sf/%20/ue449QR98lf/5+5/NI5dpVABSlKdZAi8VlHlSGLMpq68T1zqEA3GGpUP2I46jMej9HWsDedMJ5W%20nD+/RRqPcDpksQhpTEAcJ9imoc5rTLUgih04i3AFKih525tex/e//xj9GHZ2Nzh2tMfKMCIElM+c%20QgiHEuomXAaJbMf5TtCaD/1Ne/P3CExbjPbBkaRVa7v9r3VYXYNwCBXcCr9q/0ESA1QgNFGY0hiJ%20VCkWRW0Ux08P+drXrvLkk09DtMRo9TSbm9f5V7/zKZ588mV+8IPfzevuP+EefniVQ61g8j+1RICm%20gJ3rlcvHleeCFjV1WWJ0jTMVQSLo9/ssrfQZrg7JeimEbSRQCLZd0eqEXyGNEOyfGQrQFqy2VEKg%20hEAkkEaQdBVZtIKr4XIkuXJxi+29TTr9Faqm4bGvfJkkGCFUTFNXJGmfZq5xzqGtYDavkAqk8sJc%20h8A0NXqhmeUWaRz9JEGFEhs5CnJyVSKVo8Ag6gUBBVlnQNjPmOsCKyVhorDCsL1xnYuXXualF5/l%20lZfPUjeOp55+mbqoGQ5HTKdTcj3FUGKdQTuPiAwaS4N1xv/Z1Wiq9lB1rQm3ojE1vX7CT//MT/Oh%20H/v+U6/Fa/sfXIykFOcA9maLx5d6nUd+9ie+T5x5+WX327/9f1CWM4QyRFFAFMUkiVedCiFa9y80%20umJ5ZcTBowcJ45Cd3V2iNGL7xhh04F8EGWF7jjRM0M675J3TNLXFaguuoqEmCC1px3HocIcf/sgx%200gD2tuYM+xFS13RjP3b3TZT1jZSQrz4ihfBmXedvlJtrq8TNAxTdoqf9QiS5FTm8H//pSaj91L2b%2035oggDACR+nNwtIrdrW2CBmAFLx8zvHFrzzNuXMXGC6vECTLRJmlKCrOnB3zv/+L/5fXP3Sad77z%20Yd705nvcA/fGv7nc4R/v/z9lAXu7xgmrSCLojfy3/o+B+97dqX5jtlf9WjVrmE8K8kmNzS1oP9OU%20gAhD+p2EldUlRgd6qH7o17PuByW2WdBSuvYI2j9o7M3XWygIlX+tcRbtHEoJhFCkA6CGE3cdxDnH%205XPbZN2YN7zpDfzR738OXWyzsrrO5uYNf+AFGc5JqqpEG0kSKRACIS1CWIyxFGXpRbRKMG8seuca%20uyomFoqwo7Ax5GVBU2qCRqOSIfFyynxvSlVVFPWC3qBDqFLSLGAxnvP4Y19jVlTM54ZubxVtanZm%20N1BRjZYlThq0MFhbe4KaBofGonFK4wS+ZWsakI4wUgRhlw9+6H384Ec+hGjf+39ritH+tdTrPLL/%20+7//c/8ZX/zCYzz/0iUWC9sqNg1hlKCUZTGf0+n2sbWmaRqOHjvEez/4fUxmY37/D/6AOI2RgUKF%20KWm8xGLmmM4KTNqh0RLnDKaucE6RRDFSObSbo8KK/iDkwx9+lOVlyOeQhK21XnsNdRS2U3nh2lG8%20vw2d8zyQuA0Z4W593i9E3u7jsAiPsG7zAu3XIYlCKdFyRcLnqBuLExKh2vhP19zkpBrnRZNRoJAR%20PPbY0zz70lmSJAMZY6VgPN0gSfrUTcWkMHz1qWucuzzma0+c4+1ve+DXHnzg1K8loWY23uKpJ56k%20KnKw0ElSsqTj4jim1+vRH/boL/WQoSOOY5IkJOskdDL1m8ujWwXtb+N19eLYzaYV2xsTTOFoCout%20HMoGRCJASYmSgqWlDoPljNFyH9n1kavGaCwCGYj9iLGbU1K3X4ac53OaRiMCRSQDf8jsx7laA8Ii%20ohACUA0cPH6Afm+Fsy9s0hmOuPf+e3j8yy9x9333UuQNm9s3KCuNDAOsCxn219B2grG2lRM4jDEY%20rYliRZRGlEWBFRqRSWQgKMqSfDZDOEma9WiM4fLuNerQ0Uk6rK6uILYMdVMyn42J0xBjNLX1gyKl%20FLP5BOdKsiymIPehh62bwFjfMhpn/Ge8z1RKgTACqx1COuJORtaL+NGf/Djrpw+9ZkfbN6Uz+qtc%20f/a559w/+ae/xZceexoZDBEypdNZBhlRzkq0cYRhTINlaWmJ1YPr1LqiqBrysmI2LZGqQ7lVEPSO%20cWj9NJvXp6ThkMXMkiYjqkLSWEPWURT1dY7eEfDjP/E+Th5PqcqaSCpockw95fjRHg++rs/qildG%20C/StLOG26bqpN2nvQIHA7OtU8MsZGmeppWN3MkZYyBKfpRQGkjSULVKyVKYgUApFgEVirfTZwwZe%20uWA5e+4G1zanODLCdBlLQtaDT3/mBT77uS/QHfQpy5K15TUOrBzk85/5ImVZUxcaayVZEiNcA6Zk%20ZZRy/Mgyu9vnefRN9/KmNz1IIGoCKZAywNSOxbykyLXn5pIYbTxPhzDEsSLNYtI0IooD1tZWCAJJ%20FEWoQPp9W0oQBv7PaShb4zEMR75+C/naIK9P/+GTrixLTp44xcbGBmncZbZXYhqHLQXKSpQLiFVA%20loSkieTYyTW6owD6QOBwoUXEoj1ILKqdhsoW+d7O+fljBmrd4KwmCEOUkDRG46xBSkWgImgErhII%20DfNduPDShJ2rFZFc4YkvvshTT77IdC9nkZeMJ7s4oXFohCzRbgKuBOHtFbQ2C0GDcA1hoDyXiT8w%20lZMI67DW4qwkSZepaksWJfQ6XbIwJYlDMIZFPqMsc4I4AqEotaXUDq0ltZYUzYI6XGCkRzu+ATMY%20W6FtjbUaK/xjSrqRR3O6pqjnPPDAA/zqf/vLfOBHv+c1xdjf8hyL73nn/aL6lX/ofuVX/wdefPkK%20S8tDdjeuMFo/wmh5wHgyQ+sKiyMMPZLIpznbu+P2dghJ0w52lLG+eojDB49S5te869g0VPWUJF2B%202lJWE44cX+Ltbz/CsRMp2nqCzugMYfDCRBe17vt2xYuwrfDNk9e3f7jb7s7bgNFNHVHZ1DTOYhpN%20UTW42pKlMaNhnzhUKAz7QZ8OSWMs+9qBxkBRVlzZ2KTbO0BRKlAJ1sIXHrvAF7/6JL3lFc6fP0+/%202yXr9njL217Pl7/4OLNpiZ03RINDOBdjraWuFlzf0MxnUyQRYXycg4fuQddTrC78Y05D0kzitI+c%20DJUvQqJdYWxdg3X+RtR1w4Vzmy1iMLclHwiCICAQIVJKJJYwDEjSwAUhSOVQyhGEguFSl8Vi5h9f%20XSGEIEkjlpaWuPOulX/vjfyVz110ly9f5dL5i1w4dx5jHA/df4MTJ+6g2Juj2tSESChvTnYe28Rx%20yGApozsMoIt3tzvRol91c1gm3Ku6cnC3cX7twRSqCKRq23gIVeAjbtrsaSvdzR1mUQd6o4TFRFPP%20C1bXlxhPd7h69YbfcAPEaQfrNOPpjCRW7YSN1oXtEK6VsrYV3Tkfq+NbSO+FFNJhhEAqTX99xFK3%20T1kUbOxcJ5KKTpphhSY3FWFjkUGIthZtLTU+R6smp3a+LRPtc+Ncg3bG80KiIc0SqiZnc3eT1dVV%20pjsTsm6Hn/6Zn+Z9H/6e33ytEfBrEqrzwffdLy5e+nvun/3WP+fCKxfprhxiMd/zc1jhVdZWayaT%20PYy0rT8mJAgT762pamwj0HXNYjqjLkqMbVha7lCUnnzTpmawlPE93/tW3v1ev8DRuhyhGrCZv6FU%20QuMEixJ6NcioPRXd/md3k/9BiJtje/dq6OjbLuEl8VEU4WRAWRQ+nyYSNwG/wSGVQiDxMzVBIP33%20bzRMFiVB1MG4iMZKAgUvvLjJ5x57gt1JQVg2HDh4mMVswjxf8Id/8Bmvz6otMhtibETdREgUYdAB%20XTHZm7I0HLG6eidNA0UpqSsvXIukbH1zEUI6rG1QSvtd68IRSIEKYqIoJYwUaZqgTU3TNNR1TVMb%20/7lpMFoiyChLTZ4b8gLC0Ad9WWdwznDp4g2m0wlBKCnLnLouieIAIS7wmc9GbrA8RIUBgVRcv36d%203e09sJbFbIG0kkBI9rb3OHvmFdI4Bit4JbjGPace9lGrZQNWEKqAQEmM1igFWT9i+WAPem0hkoDV%20GIwPw0P4BAhcK0a9NUm7Oe0UYBuHDIV/W1gH1uIzyjxFgPSrp1EgpSTqwsqBmGpu2ShzDh1f5sTp%20w2RZl0ZLrl/fpGk0UgrSpIuh8Vo14dX0ri32+7/2I2Wd82vesQ6c9IeHFNjIcejkYU6dvIPp7g4v%20PPsc070xum4wjaY2NYHSSN3QGEtjoLbOZ4O5hsZU/vti2x1qFuu0t3xgKesCJy39fp+NG9dZX1/h%20Z37m7/L+D7wflb32rfxrlvD1Cz/3PrE9nrjf+q3fprFztHXkhUOplDBNqBaa2XxKaRrCIGYwXEGF%20Cbop0Y1Fa8fOjW3G2xX5RNPpjRjPdgmCLoiGTi/hxB2HufvuiOEILj07oZs6sKGX8DuBUgGVsSxq%20qAykApwUSKf8HWh9YfqLo17RktLOgXUWhWjVRpAlEYEMSYKQQgZkSUoYKg/zne/HG2GwxoHzIaDG%20wnQOe3sFMuhQ6ZDuoMsr5ws+9edfpjIhYdrDOU1R1qweOECoAkaDEbqsSeOYphQ02qvzrJQESUqa%20dFnMNL1uSidbosxBawkuQMp9XkRjqJDOINycIHL0OilJJ6OTRqTdgH4X4o43+WqXIayPozA1zBaw%20mC2YLwx1ETGfNSwWC4wxONv69ZxECkGahCThGp1ORl7MsVaTZhHPP/88f/Knn2dz+wYyCun3euSz%20OVVR0u/1CAkIhGS8s0soFbO9CcePHiMKIjYu7nH5lS3uPHUHjao8MayE/5B+BJ/2Y5IRN+M0EA4r%20TIuMHA51Mx36Vf3Z7RojB9Y6pGthsfURw7LtQ52z7V879i2MCOiMYGmSsreToyLBo299iL0dzZVL%20N9Bac21jk7ys6PY6zPIxVvrxiBfZ7gdn+dVD5jarirWm5TAdQigchvl4h+3JDQ6UI0ygcbEjd3Oa%20XKOrmjhOkKbB2RBjDNo4GmuxwnnSmqblvzw579GRwQgNwtA4TZam1HVOFCs+/mMf47/4lV98IluS%20j3w7uMHXNG7w5372Y2hX80/+6f8ERHTiDsY2OGcIAkkc++THsqwR0xkq1Ax6I+Koz+52Tj7R1HqB%20kBGINjkyUFRlRRhFzBcFX/zSLi4YcejgOpOxRgV+GqZNg3GGvNHkVYRGYQTtydTiIeFVc3+53cIf%20l6olOFUbJgKOEIkIQ4I0JY0TIhRVU6MkNE3dapQCwiBEAtMZ7GwumC8c0zkMR12mc3jsqy9w6cqE%20E6fvZHdymeFSH63nzCdzmkXB0ZWDvP2tb+Xaues889jXkUsjZJDgrKZaTBCJoConxGGGbL1WgQgR%20YYKSDc5pcDVhbEhiGHQE/WHM6vIS/SXhpQa3xaXUFUTCSyA6ob9n+w1URYeihL1dSMcBwV7NbNpQ%20FhqtHYFKCMOY+dQjqrpUbbRvQhwOEC4hn4EKV5jlJXXtmE8Mi0nBbmQRRmPrBltrssgH1GdBzvHD%20Q+aTKV/74jMcWT1OP84g0O1kzKBCRdoLSHohJK0o1fk3lgva0VjLE7nbVari1oj05opEBzK4ldZg%20ARGom8JIKRUNGicEUgmcsWAkIoTuELrDgO2ruxw4tIQ2U8ylkuW1EVWjuXDxAmUj0Pt7YJ1v5D1S%2080E00gmE84S6w2FvWpM8hjLCYXC8cu5lxrNtkihkMtmjokCmAWEWUVY1zgmcaTyithbtrM8HUwKa%205mZ7iLA42rZdel4rCB3a5MyLMX/np/8OP/9LP8e3qxDBNxEh8s1es8L+38s98cCx03d/oixnPPPs%20N9CNoGkgShJUEPp+3oKuNEJFCKc4dvwk/c6A8c6MxaIkCTskcYpuLFHWR4QJ2ghOHDtJkiY888w3%20GE9qVpZXiUJJGktCJYEAJyoauyBMLP1+ShYD0nn9yM3JmWhvCm4VJGHbvXju5s3gFeMKnEVaUFYg%20LUSBIpQS5zSxCrDa20biIEUpgdWwe6PmyrU9pkVG1FllPoff+9dfYHMzJ0yX2d6dkmUZZV1y+OAB%208tmY6c4uG5ev8dA99xOphLx0VFVIHKUIq7HNnE4Gwi2484513vLm04QKnNWgK4wpcDYnigxLQ8XK%20csSJkyOWlxMGS5Ik8QsjHBZjK4wtCUKLVBqEvsljBIEgjqHTgdEIun1JmmVEscSh0brBWq80D4KI%20uta+LZKKKIoxWrOzs4M2irOXtrlydY/FTJPnDcXCoAhxWqErSMIeihjbQBZl3HfnA8RBxtbGLuvL%20q6wsDQgDr9zHNcjQ0h3G9FYSop5EhMaT1sp5zkcov0OeW2oLIbxi1bVaeXd78QEWRUORl1jnfISy%20V8pi2xD8xulWowa6MiipCIBy4dja2iHL+pR5w/VrN2hqQ1k37I0nqFBS2jlGNlj2NTwaMAhnfaJo%20SwW0uoObKVqubfnTXofJfMpktkvZFDS2xkrru0oJpW6oraG2GiMsvlFtQBlUKDC29vNDsS/MtVip%20vRBXaYpqgXEV3//hD/IPfvmXOHXf0W+rKOQ1Q0a9VP5Ipe3fO3UgFr/6j/+BG89nfOpPnmQ2c1RV%20gQpAqYRIhmgtCVSEUiH5LGdczJnPpjgjsbImkDHOKfJZTtBN6Q/7nL77DgDOnL3AVx67wLkzW7z7%203Y9y5GjCgQOQpJ58LKuCnb2KrR1FP+uQWYuM5b/1g++j81t/cUvuKNsiFeP1JkJKlArQ7B8ylkQo%20lJBoBEEQEoWSuoHZ2LG3vcd4d4aSy8xy+OpXz/L44y9y+Pj9SBmxmO7QGx6gXhRcvbLJ6eNHWaQp%20g6jDE48/zmpvnVPHTjAeX8HWNYEsWT/S5/77jzMbX+XOUwcY9vxjMSZE2BAVRqRdxWApYG0tY2W5%20w6ANknP7dITRKGUJgn1xgruJEqxpMLb2vi4RIJREBILekm/pOv2UtOMIQsPeTklV1kjVI0l9C2VM%20A6JmvsjZ2dmiqEqiuE9VTbBakER9pIxwzgvAQpVQlT7K1DYBupRIl7A0SNjdHPPsMy9w4uAK8SBD%20BdBYg0QTJoowaRFM6HD7ueqtjNFymw4M207NvAMflN8j1r7+dWPYm+xSFSW9QY8wDP1r74wfrkiB%200c5rl4TASQ0qRMSQpJI4kSAaVlYHHDmyznhyHms1nU4HTYVVnvvxgxWDavOscZ4uMK3RUe4/vpZd%20t87zm2WZ++BA59dJG6fbcH5BVTUkcQdj/MHpRby27US814y2bcWZNmDf+HZQeN5otNzlzW95hH/0%20q/8V9z9857ddnfYtR0bW2juEEHsAgRRPAHTi8PqDr3/9Dzzz9eeZTmeMd7exxjEarbA0WPZpc3mD%200Y7dnQm7G9vIIGHQG6G1wTYGFUS4ICXrDVr7Bmxu7rC3NyFNBuxsjTlz5jJNI0myId2+IE4iyqZG%20W0OaxiwPMpQApeRt+WnejCTwRkCPldvPuFdtEPb7qCyxDH2kmlCYuvFEpzVYq6kbDTJGBpJ5Dhtb%20JZevjrmypTHxOn/858/x9DNn6A3XqSvB9WubHDx8mI3Ll4mUIMRSzhfEMma6O6Of9dna3OTK9U2s%20UxRVThgI7rv3Tr73PQ8z6PVY6qeMhv02CmWGlCVpBstLEWtrCWsHUvp96QtQCwWEsKhAtMM+60lT%20a7zGRCikVKh2qiSFQkhDpcdYKpIgIO0EZEns4YbxYr+O82QAACAASURBVM/FYkGWdZBCMZ/PiZOU%20IIy5cvU6V6/tUFQBGxs7OOe3kzZVjdPmponaNpYojKgWFcLBqL9EFmYII8inM06fuINumhBGIbUu%20IDD0RzHd5RSZgJWaBt2StAJBgESi9lFRm0jKbWt+bopcncM6y+7uLot8QZqmdHsZQeDbeSl99LDW%20tQ8OxBdzqSIA8mnDdFywszMlDDpoI7l2fYvFoqQ2NbuTHQg14AuIwCH3EYq0OKGBxvuGlPVWAelR%20nMVghKW2fnNrlARo63etiUARxwlOOBptvMMe59GjdDjjRY1+AEOLCm072Nc4qTHC4GTN277rLfyj%20/+Yf8tCbH/gbkcl+y4vRfiF6FfyS4om1QeeTj7zpkU985Uuf5eLFcyyNlpjszShKzcponTzXWC1R%20IsJYCU6RBClWG8q8RKgAGUZY4UhCibM1ZTFnMZtRFAWjlYOooMOZF87y3IvnsfQYLnWJ0y6Vi1nM%205wTOrwrqpAFhsK+gNkhpcU7jrNuX6LYwf9/s6qG1QBLKEIXE1A7TGEIh/KI+Z1BhgFPe2FQ5uHAd%20vvrMFa7sOIaH7uRff+oSr1wtmMxqGuNw1mJ1yWxni0wKOmHMcneIrAX1vC3Oe2Mm+YxpOaMSNUkn%20QRBy150PkC8kTsOB1R6rKyEqyHF2lyw1HD7S59ixAcvLEUkqkcrDciGdz/Vub/SbpVYopAx9e8st%20wzBCtSyGIVB+4uWcwBhHqBSdLEaJkLpqMI0lLyviKCPNBixygwq6nLuwgZI98kIznc6pihzdNISB%20xOLfVJ1uitUNi9mU1z34EO949G1ILaC29OIei70FipDjR497DsVWJJmk0w/or2VYalywj3j8xFEh%20UVbcHJ8LTFsI2umVcO0Ke1+kmqah3+uyurJMp+NzuAT4xRLcCrsXzqBkyzE5B5WXkVy5dIOyhNoo%20jh5fY3s3ZzKfUpua6XwXJRxREPjH35TgGsJYgGiobU5/kLI33eLgoVUGSxmT2Q5ITRiAdjVhonDS%20F01rLc5BFPiftakasJ6CUFK0MSDaIyLnMNZQG0fa7bOoFrhQMFrtsz2+gREl3/2et/PP/pff4Ngd%20R383jKPf/Y+iGP27rtWlzidP33X3JyaTCc8/+yIqSHFGcmN7zGhpFeEEcdIBF2CMxWrQjUPJgG5v%20SG0DrPGWkiNHjnPP3fezsrJOWQnGeyX5XkV3eNC/Ac5e4fKVPbLOKqOVGEUPXRYoGRDGvhL5gWaD%20lI5AejQgWmRwa9Rya/RSV40XAkqFkoJASWQb0l9pP0jWIsRKyctnC578xjWS3lGidJk//9JVnnx+%20i+0949cDSwWmoZrP0PMFTZGz2B0TSsWgMyBJEvIiZ2d3h8ViD1uWEEVoDYcOnWLQX2W2O+Xg+hrr%20qxFRbBBul7RrWD/QYf3gkKVlb/Z0osLa+hbyu90w9yrcp25Nd269/W7yaAjTphfQTisVoQIhAgIV%20sVhU1LUBEaCdpK4lZQkvvHSeybRgeWkZXXvvXlOXIDSdbgdd59wYbzDsDnjTG9/I+9/zvawvrzG+%20sYOsHcPOErFKGN+Y0O0ucfTIMkJApWf0ljLSToSK5W3FaH9UrlqAuz9Fs7dWv7zqOXCtUdYiZatA%20Fn58f1OHxs0hFFL5wGE/mVLYGhZzzXyqmU4qsmzIzk5BEIZs3dhkPN8lySIW8xm6rjC6RgUQKEdj%20cqyrCSKY52Puvvs0r5x9ia2dDV730H2srS0jhCGIAyrTZsoL/xit3Q+IE2htiILwJurytqd9SYq3%20u3QHQ3Yne8hIEESSK1sXSeKAj//4x/jF//zvc/8b7hd/U4Xo216MAI4fWfvk4WN3fuLq5Q1eeeUC%20WkOSdCjLCm0MgQxxSJyTBDJGiQQhIxwJYTikaQLqypLFQ1ZW1kjjhMU0ZLpX0+0fYrZTUc01abpM%20WRrOnb3KfBKxspwhRELjHNoqnIIoFSRRAIQ0NDeDQqzxLYtv4VueCOm3g0iBNg7TeHjvLW4KR4SI%20Qma55Op1zfMvbbC1ZQjjZa5cMfzhH3+JyQwaI8AYTF1TLvzNKRHEYUivk4F1NLpCKbjz7jv43ve+%20h4cefpj+8gE2Nyc0Y83qgTuQLuDKhYscOrjEoYMJgwEIMWF1LeXokWVW1gRR3GouRUWjSwIV3iw8%20r3pDOq/FuT1C5S9LAXDO3gyYc86T1FJ6q00cKaZTwyKvqGsLbdxpntecv3CVuvF78O65724++tEf%204tSpk1y5eonr168ShwEHVlbJ4pgH776P9eU1rl+8wtXzlwhFQC/rIS1M90qwklMnDhFGMVWzYHV9%20RNoLIJGguK1F8+uefe1tCUGpbitGtwqua0WPQsj2Z7r14YvRbUdT27Za46UhQka4SjIe12xcnzBf%20aCKVUdcNR4+uE0aKRTHl8JED7Gxv0ZgKrSukcuBqGl0SR4qlpQHdbsq1jWvce+89/Mqv/Nd85KM/%20RBiF3LixwSLPESqiqGuMc6gg8DKPfcJ7H79a6zfXOL8yzLefDu0slfGrqcMwYDLZJo4DfvhjH+EX%20funneePbHv4bdzB+24sRwLHDo08eOHT6E+fPnmdj4wZxklCVFXGcImWAcBLrAgKRoFSCsyFFCSoc%204AhpSsNsVrKYGSYTx3yisSbC1CFWpEjVQRCha0lVChZTw+UrY1QYMVmU1FphpfL3ZuS5WyHCm29A%20vzVWgVXgFNLKVjkrcMj/n703DbYrO8s0n7XWns4+59xz7qBZSkk5Z1rpzLTTJo1tbMBUMXjEAy5j%20zDw0FLSL7ooiOqIj4F/96Kr+0REd0a5ucBEBNKaZyg24jAEDxvOQs1JKSVfDnYcz73kN/WOdK2Wm%20aegOfjjTZitu5L0ZUsSRztnf/tb3ve/zepsHEjWPiDEWSg3jKVy+OuZrT1wjK1p0Oqd55pkBf/6p%20rzAYGIxMCcIYhaMqcpp8BtoSRZIkCojDgP39XZqmRir/4YqigCOHD3Hugds4d//DDCcRg90MUxvQ%20DXfcfpSTJ2LSdkWn03D8xAJHj4aEkR9SI2ukMB6ONU9rFy/+JeSLpA1/3+fSz9C87sZTLj3t4KCL%20gEaHzGYlWVZjCIiiDsNRzo21bXDK58lbw4kTx0nbMevr6+zu7tDoBoljIemwkHaYjSasrV6nmpZ0%204jZJEBOKBGVSyklNp71At9tChYLeUot4eX6iDMRcx/P8v4n/dav+vLgYiXkhEjcHv7c6oltqbTe3%20Bfk5tsAYfI69lOgSRvsVezsTwiBlNsnodheo64qynHH+4hPcWLvKeDygKDOMrpDSIIRBSkcriWl3%20UvJ8im4afv7nf5YgkHz0o7/O+sYNEI7FpSVEGJEXFU3jGfNKKKz13ZwKJHXdYOYRWmI+G/XKBot1%20lkpX9Bd75MWYMFG8//3v5Rc//Au84tX3vCSs1N+QYgRw++mlXzt28p5f3djc4sJzF4miiFar5f+R%20VYRwAXUF1iikaCFIKCtLFLcIgwijLXlWMh5lFLMGZwOyaU0r6SFdRDHK0bWg3V5G2hab2yPWdvbZ%20HeXktaRsJHnhKEu/Bg4iT55USKSQN8/e8nnbttr5bYgUAqn8OrUoYXvPsbZV8Oxzu6xeHbI3kMSt%2025hMJX/xV+d56skN+ounmBYVB58PXVfosoSmxjQ1dZGR5zP6/TaLSz3W12+wubrKYDpmdfUqTz25%20zvGjd9BUC2TThuXFZdI4oL8ouO22Nr1+w+FDisNHWyz2/bCjbjKk0n4uNrfavODo9f9afF788/PS%20UubePYed83/8MQEgjCR57hiPC+pGEAZdNjaHrK/tYpwgSkKefOpJLl66yLXr19nb30MK0NowHA7Q%20eeNJrI0jcJLQBZSTnHyaE8s2okrIJxW6rDh27DDtdowTlu6K9HvhcF445kdRMe/2bqquv/509oKC%208/wj2vO/Di7tbrp7cE4inO+lqxns72WM9kuisMVkmtNfXGB7b5390RaNmfDEk19hOhn77ZU0CGWQ%20CoJQEQbBTRX77Xee5a677uRLX/kC166tsnJ4iaLMkKFkcekok2lGnmf+dSoflYXw4lxjrX9mKq+F%20kgF+OO4MVhhEIMjLKUsrPd7znnfxc//NT3PPw7e/ZJgO39CM5X/5XXeKIPh5p5Tiz//y76iqCqW6%20dLunSNMOVgvq0hIEiiAIMI0hkL4tNcogrKZpcmiMN3K2OmSzIVLEdBdXwBmmgxl1pFg4fIrBYJtx%20WTAa7zIYlEwnHYoiZZY5ep2GYystWrFgIfYMm0jecuZb4T+MxnlxYDazTCcVw1HJ7t6Ywbhkmguc%20WODQoWPsj+Ezn7nCtdUJrfQ4ZSGIwwRnGqqyQBcVaOMNc9YLFJ3TxHGffr+LkCdYWlpieXmZp54+%20z+aNDXrde1Ficd5lVBTjfcaThiA8RNIS9JcS0raab38sYSRvKrH/6decdWn90dR3hQdKXn9cS9rQ%207beJ0gll7fVAjXaoMCWSIXk5pNXqIAgYDqYMh2OsdSRxm7AfYIqKvd0hUR1wtH+IhIDJdMq0mkEW%200zIrJEHCeLditlvTX0yYDWv0qEWQHgyXb+3K3MGKX6oXenzgBVS8f8zo65zz0g9p0DgiQpTyb11d%20wyyH2az2frCiIE0jGp2DqGn0jDe9+VHyYszu5ojppGAwGDCbTeZJOCEqColjRd0YrIG/+dvP0O+n%203HfuPgbDHZYPL3PXXfdw6fIWcRx7fvbcSqKUQmt/BPYiRuEjhYTFaIPBgPEq7KIuOHRomfe+7138%209M/9FCfvPPKSgst8wwPfv/s7bhNK/ZyTyvKVr1xgd3fCbLrNwkJMHC0Q4GXCZV2RpAnOTWkai7Wg%20ZBspFVZUqEBQlxlpe4kwiDEmw2pHEgdIBKP9nGT5KHk2Zqua4uqKphRMRoadI4rFvmZrqaLTcvQ6%20Ie1EEipFKC1KeKSDlYKqqZlOC/YGY6aTiqoSVFpR1yEq7NNqLzOcwhe/eJ3Hn7xK3SQkcY+iLGn3%20IrI8Q5cFOEcUxbhA4rTDWX8A3Ny4TrsVcO6+e1lcOcT5Zy5Q5iXvevf7uP3OY/ztX48YjUY0pYBm%20zOEjp+kvBiBm9Pp9gsjM7y6DUmp+v704W0T+AwXnHyhHQt2cQ4gDM7Ewc22MAg1p2ycOT6cWGYDR%20gjBIkSqkHO8TRim9fo8wVIRxzM7WFsPxDgGSQyvHcXlFkWvysCGJE3oLy5i8psg1tqjoLi9iS8PV%205zbpLZ9lIU4YrBsO9xWkzLsVfVNrZOd0KiGCF/rRnsc2/8cK0cHvk2gaGiyOQPiVfpHDeFQwnRaE%20QYtKax/9XszY3LrO3v4W99x3G4+85kE21vZZXb1O0UzJa9CVpTE+lThpp4gKRpMJs2LI4tL9nD5z%20lrPyFMZUXLx0gb1hRV5m8yQaebP7w4LGeNbEXE+lrZ53YY4wCoiigDPHT/DWd7yVD33ogy+5QvQN%20L0Z5qf99mgS/8ubXnxKLi/+D+w//4X/lrz/zNa5f3mFYK9qpIE68V6qqaj80nK9p4yAiDDSmrIFq%20rl2J0XqPuhxjTUCgWqgo9qtoLRivj5HdFkk3ZbQ35bG9fdZX4aEHj/GKc4cps4xWq6YVVwSqQtgC%20awvEgV1EeAe30Y6qsTgboYKUIO4QxCllHaItfPFL1/mrT3+ZQC0SxSlZVtBqJ2TTfYpyCtax0OnS%20CiVVOWE8mKHzjHghoX9kGYThC1/8HEGUMhlnZLMK3cCzz1Y89tiXuf3MXZy77zSbN56ku+Djv9vd%20gLQNQhi0uelT9zMQEc7vvX8C0N/d4sZZa28Cwhxe2+IQSCUJEwjjAOcqGgOzvCLLNEJYZpOK6bRi%20cTHh5KlTdLuL7O+NKUrDkaUVBvtTWihaSUBVWjLT0IvaiCgiG5XEfgVKVTQ8d/4Kt92+xMqJHntb%20Y7rHlmgtzud/iJuCVV9swrnYUX5d/NQtjTN///FVuPmA3wANwtU44QPvnYWqhDyryLMG5QKUCnEW%20oihkd3cXIQSz2YQHH3yAy5c+znQ2oCwz4jgilNJ3uEVBmiZkRY6gZjHtcOHKJfaGGyz0WwyHu1RV%20w9ZOxnQ6w5j5g2ZuoBXOet2cFP6YJiXSeKqBCiXtNCFJE37oA+/lJ37yx+gf6b0kcXvfsJkRQBjI%20Tx18f/RQ/GuveOWjv7q/u8fq1eto7XBOohtDoAKSVnKTuyKFz7c3WuOsJVQBYaiwtsa6BiUhigRK%20zRMwnUZKBTLB1gJbGZQLkSYmHzdsrI+4cH6N48fP0O62aKUpWRmQNQYVdXBBTFaCUktYu4C2KVZ0%20MLQxoo1QXWSgiBP4y7+8xue/8BSQoMKU2bTAGE0cScpiSBIrokB6rKdtqKuSRheEkSRQlgcfOsf9%20997LuXMPsNhbYrg/IVQJRWW5ePkqRluc1WxvXWehI7jnnkOcPBGSpiVHj7YII0s43xoJYqQM5tsv%209fV0yxd0ROKm+vqgGbDW61mk8CJRqw/m2HauSm7mHZNf79e1n6Wtr+VokzKZSa5c3uHG9V2urK6R%20FwVhGFHkNZvbe1y8cIntrV3SqE02zVjqLaMrg6kMQguWFpZJ4jaT4ZTQhbREiq4qOu3E0xKkptXt%20ELUFYUsRJxLZ8TOTWuc4iU98nR/cxE2ZhpsXl4Ni5L/39gx7s/redNA7L0oUosEJTUCEdBH5FDZv%20jNjeHGObAFxAU1u0cQyGA66srnLi1DHOnL0DGSgOHznCE08+gbWWLJ+xPxggA0lV16wcXsIJSxBA%20XswYDPdZ27jOtRtXmcwmnveV1WgraEyDDCTtThsnHNPZFG1qojjw0D5dEkYSJwz7k33uvecufunf%20/CI/+9/+lEg6ya/xEr2+ocXoxdfyovy1u+99+FdxkqefepoiK2klqQeCVxVRMmcTaU2jNUZbr7Uw%20zm8YpCerS+dh4gI8HN35fI+AGGEFyimUCLB1QFNKjA6wNuTixTWGI02ULLC4EhK3uhSNojKSIF6k%20mMUYk+JkmyBsEbZaREmEmkfe/N3nhjx3aY3hoETJGElAmec0dYlzNaaZEoUQSuUpgs5Qlzl1OcVR%20I0TD5tYNtrc2WFpc5pFHHuT13/4ARw7fz7Vr6+wPxhTZjLIq0M2UxX7A2duXuOOODnfe1SJtQRB4%20j7pzPlBAzLkotwqR+wcH2HYO87LWx0t5w+Vcc/OCPzKnH3pT39xGLDEG1tcqskyS5yHXb+yxtTlm%20Z3vfFzknUVFMUZTs7+7TaE0UxkghGY8nxEFMLGOKsqDbWuDkiVMkUQvbOLLhmCMrh1k+tOhvtOEe%20cRpy+uxRalMhE0mUSI8BUQ55wKlyzy9KvMDx5e2nXnEm5+qkgwgqECgZIGXg+UlYAgKqXDAZGnY3%20Sva3C6pMIEyMMyELC8uMRkMuX7pCGAbcdc+9LC4uU9eazY0NVlevMBoNmc2mBEFAp9MmLzL29nZo%20tSIvrlUOpJ0TjRzGaKrGMMsqwiAmTVNa7ZQojtC6pqrKm/aO8WxCGCtULLFO8/o3vI5f+uVf5D0/%20/IMvefhw8FJ7QXefDcRP/Pi7XTtN+Z3f/lMuXbpCkqwQx4eoS0CkhEFCSIQUMZYI10DVzMnVrnle%20WqhXxjobIVyNFBmBUQgXQRVjHTQ6wGiJs5rZ2g57gzHbuxMefNVp7r6/zeJyC0cLXUOnN28K5h/n%20rPRokP1Bw2Ra8tnPP850UqKNIFKCui6o6xm2qimdIElAOYWuNGVZelZQOQFXEQWCqsjodltEUcDV%20a1dYu7HPkUOn6SSHEYTk4wF33H+Os6dvR7qSU0cTDh/pUxQZ+/uCQ8vt502G5vqZFyMN/5HjmnMO%20o93NYmStRSmvr4nDW3EE7uY8xX+5uZpZG7DOa7GyovC8chRFZYjjGAhIWws0TUNZaz+MbzRoQ5Km%20dDoLREYyqjJ2hvt0NjfIhmOm+2M6xFQuQ0TLLC2ucOXagEsXb3DPQ7cjnKNen9IEET0RE/cSUA5j%20vTI8iIP5ylu8KCdBzP8+7uaU6UD86ayksb4Y+I4ckjAlESHT3DDayRhsFpS5f7gpqQi6Ic5E4CLO%20nr2PqhD81V98nmvrq+zvrlHVBVEU0e12GQwG7A12abUSev1FtPXkByVAqhBEPMfhaHCSJAlppy2Q%20grquKIqMrMgp68IPrI3myLHDDIY7VHnBD73n3fzrD/8Cr3zoFS8LCvpLrhhpbd9yz52h+Hf/9u0/%20k6bp//bR3/g9rl/bJc8rHCuoEJAOa+aOcRfdjCEWah47hPHrZmexJkA6OxcVa4QLES71cwUXeRSp%20U9gGOgsnyIsdnvnaVW6sbfDqzXt58OGThCHs7RbYWjCbzRhNB+RlTmUKsrxkOJoynhYEqk1AjJQh%20daUp8hm2LgCN044qq1Au9TOsWqOcI2jFtNI2i0sJD5x7E8aWbG/vsnZjm+2NK8ThNdrJIXbXt2kd%20W+YNb3gNd90Bly9CGhekqSIMQ38TCeY30j9hNHQQ/fy8r4PNzfNnLQex0Ae8b+cEbr5dsha0tkwn%20JWWtaaUd2t2F+fsDUZTQaS+wuLhMVWfoupi7BB37kwFtGaKkojQFq+uXcYVmKe1x++HbyGYzdoe7%203Ll4B/3eIba31nnqsau88g1nGO1l6EhTy4Yl2SHtK6SLEdbitB9Bi3nRFHNo2k1dGQdyADXvJANQ%20fmvoa3mEspAPYHt9xvr1GaM9A3qRfqtLoBSVhiuX9jh/8SLXrl9jOiu4tnada9dWmWUj2m1Hux1j%20dMOhQ4fodDpcvbqKNjXj8T6dburNssYz2oUICaNgjhGWc1KpIMsyptOpF5Y7g4oUcRST5zPG2ZDe%20Up93/eDb+O/++w9z8rZjL5s4hpdcMQrmc6Q44iM/+9NvecvKcue9/+kjv8kXv3SRdr81Nz9qcBHG%20hjRaoWSLOE6A0j/jHH4OYGMvPnEGISzI0Fs95iZYJa3PRZPzp7quiYOERnSZ7mV89bOXWbs8JA4j%208nJG0WTMihGzYgKuIUgD4rSFVDFRvAA2RKkEoSVlU6GrGoFBSYNwNcbU6AZwIUZrpAMnGnSlqUvH%20hYvP8MAr7+P+++/l2NHbuHJhl4vPbjKpClZO3k7pcsrSsbMj2NnZQy4HGN1CiJA0lXPdz0ELNPer%20v9j98I8MsV8s/HPOEQQhYXgLTOase5F6W2HnDvmiBG0Fxgkms4yyLGm3O6ysrHDl0gWi0FE0OVJZ%20GlNT1yVVXdAKJc5ZiiJHBBFpEFCLCqsret0Od9xzmgfO3s8TX3ic3dEu7d0e7c4SbjDkiSeucteD%20Z5DdHvk4oyansY6jrk+cQjA/eqk5RQjAWTsneN6yxEgRYIzD6DkNVIBSvlMRAobbsHOj5Ma1KdlE%200gqPE4WC8Qj29ibs7G3y1LNPsr27xmS6z/UbG2xsb6KCgDBOWFruc9upQ0wmI8oqZzKbEESK7kIH%20Y2sfA68gVOJm7LaPXpZIJ8lmE6zVFEWBcZZWy9MsbON7urLKuePu2/nRH/sRPvDBH+LwkcWXVS5M%208FJ+cd0O7/uxDz1KO5XuY//Xn/Gnn/oqeb6PpEu3fYROb4mmCvyNHTQ0TXNTVevmyYmCEKFihHSo%200PguaM4ANs77qBz+SKJdAbohTlK67Q5Nqbn6zAApI5J2QB3WtHpdTh89RpRKGluRFQVlYTAOFIGn%20H1rr0xmE9CJBq7G2pp0EgCXPp5iyQcYxaRqz0GuxtJQymmyysbFGr7fIHWfP8Yq7X8NnF8/zxc9d%20YG9tg1Pn7uLSpStcX20RB5alO0+iFIyGM4YDxfEjbU8hlHO0qGS+AtPz5b76/1SMlJI3vVnOuZs/%20HxxRb3VRvsUQBHPDKWQzg25AqZCqbCiqmnYS0ul0aHda9Lopmzvr1E1B3AooiqmfP8kIpTxKJkZS%20ZjOclXSSlLQX0urFDKY7iNDhGsF4OqO/eJTF5eNs7d3gwjP73P2aZUxpyE1G2YxxVtFb6tJJPfZE%20RLdEizfDpm6lmqObeazUnKZiDMwmMJ1qqolgeK1EZzGhPkYCjHdgfW3I5UurbG6tMxjvMprukPZC%204qTLLJsRRR2iVkJVTNjdHdDUM7a2NohiycMPP8Q73vkDbG2t8bsf+22fOKvmzPEgQgjhZWjW+tz7%20JkcKXyXj2OfljaYj8jKn1Yp583d/Fx/6sQ/ynvd938synOolV4yyybZrL7xQA/He97xWnDpzwmX6%20f+HxJ6+xcfkqE5fR6zYYl9IYhTARSoY4aXFWIUQDrkGIyLfmymGdz4gwTmNNjRPlvBj5RjwMLVVd%20UueCiC6pWCAMuggSIgVHThzizLmj3HVvgopg9XrBhQsX2N4aeBSGUx4Z01hvl5ivpnxx0jS116iY%202iCCiJWlRQ4fWWb5cJfllQ6v+bZ3sL5xjcuXVzl//jyj3We4fHGfTmuR48dv58zdZ1jbWOP67hbH%20Di3OvXM+kamuNcb4gb0F78rHzL8OQpbif7gYHXjxpH8g+5vhed4sd+uI5hA3iZkCLyoschgOp+RF%20hQo686OFvdlpnTt3P3ffeZZPf+YvWVtfpd1JqJ0iTRIENXk2IcB5QmZoUEIRpwqrNFk9Ze/6DbrB%20Au1uDyskg2FGXQrCYIHzT1+nf7xD+4iATkQ+mbG1PiSb1XTbHZKFiFZPIENvvwkCPBXU+mOle37U%203TydKJ/B/l7N1tYOs12LnK5QjgSDvRmb62OuXNrm+rVN8rxEhpbGKVpJH6tLrLNks5q41cJZBTLk%20wup5Xv2Ku3n41a9hcanLA6+8l0df9whXr17myfOP8fjjX8NaaIxGNn5O5NzcEGsMaStEybnKWghm%20RY4xhrNnz/LQw+f45X/7yzz8mru/rhAVdf7vW1H6K/9cjP5/XgeFyDl7uxDyZljco4+cEP/xf/41%2099GPfozf+s0/Ym1tn6JUBHKRIExJoh5VVSOd8DqQg+5A+COaUJpK+62PNQLrApAJSgQ+6RBLlTc+%20pgdFNhmjqEnjPpGMqIqctevb9I+0KE8kGGDrKm6xogAAIABJREFUxhYbN7Yoy5JWq+s9YNrQ2Apn%20ZxibI3WJEDVS4RW3oU8BjeOAMDZMsh32n7uKXG147Mm/5ezZMzz6bW/k0FKfT/zJk3xleJEkVKio%20xXhUMhzkZJOSeqHCOJ8bjwyYTqY0pkdoFE6JOUzL3CxIzpm5Ec++oCAdpGY8Py9OMv95TsgwN29U%20jXDN8yMPfTT3fAycFzAcZ2SFI00VMvSJIlZ4ek4UR5w6dYQkiSnLnDBxmCLDKkmZj1nptzFVQRpD%20q5sQuIB8NmO8NUQAK1GPlcUOtggoK8Pm1ctUpeHEySPsDWZcuzbitlaffnsRZwXZOKcqZ0ySingU%20kvZSokTR7iS02hBHcxC/nSstDJQ5TEaGfFqTTzWzaUU+gXqWMFwt2VzdY219h9m0Jitq6kLibOA3%20o5VBRYJpNiNp+yQVoxsmoz3iBO44dZogjphlE9a3rrK1vU5ZZ+impNGWKEpoTE3TGIwpfJcqw7lK%20W6EigRIWK6DWFRbNsRNHeOe73sqHfvxD3HXf359p9nIoRC/pY9rzC9HBde+pWPz0j73fHV1a4nd+%20++M8/sQqzhjCaJFsmmFsQhR3kGFIWXt3tApiZOi7IBkkNBpQklAGIAtP7tNeMGkxmEZhiRAixFlL%20UWlqNUUoS0sozn/paS488QytToxTDbKyRM4hmgypBChDnGgIGmzjMJWjKX1YXxCFlMUMlGWxm9Bb%20FpQ6Y3vjKtXOOmJxka3tdS5fus5bv/d9YB1JpHA6ZzIesvrcJnv7U1YOtRmP90Fo6iag242YTBuu%20X8u5+84UKaAqHfG8EdKmAsAID9nyiBR5Uxoo5l2Pel7TZA42/sp3Qto1BKHBNTXOaKKkDUQ0WlJr%20/2c2N2fMZtoHL4QwGo9ZWOqRxC22d7fY3R/xhx//OLu728RxRJVN6HdjVnoSnQQcWVacOn6Gxc4C%20RW7Y3pmxYYaUWrE2GBIfSqGTkHZ7bK6NKUKHNoK1wZDuYsrjj19i6dhrOX1nyM50gVa3zawaUJuG%20aelgECGkIAgLglh6rlWkPJS+sYwGU2KVQpWQjSLKYcBkCNsbOfvrI248W9LUAWU9D+gMFCoIsLKh%20NCW1q3F1DlIwyybeBVBVRKLG6Zq6gSvXNmmahjiNqaqSj//Jf6XIxuwN96gbhwgigsjgdIW1BhFq%20VKg8jyryeYF1XdPoivvuv4+f+qmf4Id/9AfvkJIrvMyv4OX0Yqva/swdp0Lx4V/4ARZ7ffef//Pv%2089jXnqOpLElrkbqqsda3roGMiDvehqDriqLMCOMF/4h30vuV5iMV4RTMuUZC+IG3R3N6kZsTjZ8t%201F7w55BYpbGBjwA2tsY5h4ykJygqA6LxnjPVIJXBOpCBor2wQFXPGI62aXU0J08dYXHxLm4sJMym%20BfnOEBbP0lSOa1c3KHPDYr/DLHdkM02SLCCs9mGRgcQJyPOKVhIxHWvGQ0gjiMIA6xzSOpSczx+4%20hdL1y+zg5h7pIA3llgpgHpcjuCkKnE0GdBZ6RGFIXXtuuQwk1LC2abh+Y5+qVgRhTF40NNaRpm2i%20OAZhWN+4ihSN19goPeeRl/R7fQ6fPsZrHr6HbqxoqorpTHP8+FFOnzGcv7jJtcub7GVjNoZ7RKJi%20mGVUjcShiKwlbAKoHRcvXKN/+E76h2OKugYbowKYZiVGG1pJG+ECmkoz2i1oqtoL7kTIQrLE/giG%202yWT7YLBVsH+5pTBzpR8IgjcMlqDNpaahsaWaFlRU6JdiUZj52RGi/HjAFsgqTA0VFkNCtx8I3a1%20yImigCD0UUjdXp/xZEBZzYjjiE43RalbJl9tS8aTIb1ej+/6nu/h3e9+N299+3d/zzdDIXrZFaM4%20kh85+P5HP/h6cccdd7n/43//XT75yc+xt7dPr3ec3b0hmJBu7wjCacaDMVIE9JcOkZX6lgZ3nkd1%20ELDuACnsLTSpMHPhoJ89OSvRjaRx/ihYqxDb1NS6QrsKYQxogQqcT4+wGtNU1HWJMQ3OQj7zLUQQ%20QiddIAlS0rDLPXfcw3e//l9wdfUG/d4RFnsnWb26y/mnr9NOD9PpHGd/sEssob/SJwoyhOzQSeeu%208dzSCiPGo5LtrYBOO6W3AMZ6mV4YKsAgb6qN50hdDLfyVf1NcnOVj0O5W+t+AaStnt9OElBVJUpJ%20ohaMxnD9+h57+zOC8DCddJnByLC/N2Yy2ae7sIy1mqXlNnm+j8tylNQEgeHIoQXe+B2P8IbX3out%20R/TbERiLFAmd3jH2hw2f+OTnGA8HjIcjNnY26SS1R8mgqQpNgYKggTDkwnPnOXJbyvEzx5lNBUIm%20RCogCSVJr0NZ1GTTGUZDQEQkFhFWIAxcOF+yuzVhuFVQZVBMLJOBoZj5MFBtCrTTNDajZkatZ2iR%20Y0SBURWNrRDUOGGw85wPjR9KWbxXLEwCpFTUdU1WZQhhSVoRcayo6pIwVARhm6apKMucOAkJAoW1%20mr3BDufO3cf3fd/38c53vZ2HHr5P8E10BS/HF22tu11KceUNrzsszp79RXfXXXfxG7/xMS5duky7%20fYQwiCnKCcYUdNIFAhVTl9nNaBo5vxWF9QmLEuWFZdI/oYTQOHswC/EfRGkDrAjn2iWfDGFljXU1%20zjXgNPpgK2M90F6XBbqucHOx3eJSz0dfB4a6zHju/FNcfOoxTp8+xd133sPp2+6knFZ8/qkvc/36%20gCTuEoQp165tIaMOQQiShoVOzOGjp+kvHMALfcZXkdds7YxY6LWIU19ohfLpFdbMuchfZwy95c3y%20jvdbwkac75+kU961HiaYxlLVlijq4oDdbbhyZcD25ow47FPWEisd+awin+ZcuXSDpLVL0grotAPq%20xsfh4AzdhRanz5zgNd/2EN/5nbexszGl3w4RxpJnNeOpZXfnOpeee5Lz649xODjDzniACtr0el0s%20DePJCIlkKUwRgWM6HbN67Sr3j45T1gYRSHIBUdwln+ZYA7GICZIWtoLBDmzeyBjtljx3fp3Z1FBn%20AiUTAplgTYqVCRbHKB+gRY0RBbXLaVxGIzKcrHDU6HkxErK5GfxphUfNCATIAK3tPPstJE1TLzkR%20HnkbRQFVnQGGOPFHwKYpKUuNkIY3vOF1fOCH38/7/9W7fzaOw4/wTXa9LIuRlOKKNuYtgVKfOnEU%208aEf/V533/138B//p//E1au77OxskyQrpEmXsmrmsLIYnJmD2Q/EfV5bIoTA2YOEDIkjwM39Wt7m%20EOBEgnQtv862DmsczjUItO84nCVUCuks1mhMU2J1Ba5BKb8uHg5WOXXmJEeWl2gqyfKCRdcl08EW%20n/qzC3TSZcJwkawIkMESUva8q5uStLuMrqeMh3scWjnCnXeeJoq84jlJIh/r7WA0nrCxE5J0DtHp%20QhpD43eFKPuiIiSeZxJ17hZ4zHmA2kHM2IEcp26gqh0yiJABDEdweXXCtWtDplNHt9unMD49dzLO%20iKIYKSWz6Zi6Ftx28hRxbCjLjHw2Is9zrl69yp/+ySd4+qttTh9dII0cNA11bclLxZWre8ymA452%20VtANjMoxad2nrfqULmOqRywkHeKuz1CrrGR1dZUnnz7JbWePE7cSppOCoB8RCj/cb3LJ5nbJ1Qu7%20rF4cMNrVuKZNmUc4G9M0gtI4ZKgIIkVlK/JyysxlvhNyFY3L0czQrsA5/z4bWyOFRokGMQfrOyHm%20BV7hrMM0Duc0QahQKkBIi6Oa68N8eGPaDugupAwGewxHu9xzzz286c1v4Md/8kd41atfKfgmvYKX%207QtX6lMHXdLJY0KcfPtdnDj+P7rf+q0/5vc+9mds76xRVxmmCVAyodVdpKkq5Dzr3BmDEJ6Wh5NY%20IRDWb+Kkk14MOV9dWxGg8KtWSeC5MRZwNVJapPDOddtorNA4U2N0iWtqhHQ+XUNpTp7tEwQD6ibn%206JFDnH7VA7SjhN3tfa5f2+Kppy4RypSFdoyKIzZ3B7S6LZLlPlk1IJEWR04U9VlZjn00kW2IYklT%20H8gIHPuDCXFLcdj1IFAkydwaaufgP8EtQeT8CX7QDPljq3xB0uo8fBcktNqKxsDaOly5ss/Gxoii%20UERRh/FE0+32iBO4fMUfT+JQoOsGLDz91FMEgWAyybDa0kr8APza1Q1uXBoxvfck0hTUxczbIESb%203UHBbDjFOUeYRkxzwyDfx+xYZvs5BTkJgkm+Q2/pKK1OyP5wh2efvcjJ207R7UBZttAFjGeCzY0d%20rj63zdrqHntrFdUsoh0dZbF7mErXSBnRCEOpJxibEaoAK2uKIKOwMxpRoJ0/mmkKHCVO1OAarKiR%20OIzTKIxPh5UQCI9fsdqihPJRUNbSNBUI//4lrZBZNqSVhjga1tavIiW8/g2P8oEPfIDv//5/wfFT%20h79pC9HLrhhZq98iZfCpF3dJB9+/9pGuOHXig+6uO0/z67/+u5x/+rqPzRaO7b1Vknbfb8nc3CRp%20JcjAb5fMfK/tvMtd3ORCK6Ro/H1qAxzxXOWtcdL4OZMwCKdpitIf2exc4yQdUjgfjyRLpJpQmxEq%20WuS208d58P6jHF0+QhK1CYOUP/rDT/H0M9f47BeepX9Y0u13mNU7ONtGKDh24hCHFhc5eiwlbRuC%20KEDYuclTgTaGMIrJK82NzV0KXTIrF2j3EhbSABH4N1wcDO7FgZvdzjHRzs/P5joif9PcEjs2wmuJ%20tjYtVy5vsLk1xpiYJOoShD2qqqGufHDp/v4u1un58L5CyoiF7jKBhKq0VEWG1Zp85hhSY8qM9faI%20bgvk/GwTxxGtMKQVlx6NgsMow6SckmUZoQ05fGiFxXaXaT5klAUsdFI6vS7rG5ucv3CF4eQUWV4x%20nlY89tgFNjaHDLczlGnRDg4RqRRdJwz2Mz90Z0ZFQUVGRYa0BiKLVZpKTX1HZAsMBU7VIBocFdY1%20COllJNZqEM2tdFs5z0OTEmf9/tKHIwisc1jXYKym002om5wsH9Hvd3nr276fn/iJD/HItz30TV2E%20XpbF6MWF6O+7jh1D/OtfeCOvevU595sf/T3+4Pf/jO29S7RbR3BuhiKZ32h6zn5OEHOqtUMghME5%209Twlt0IQ+nmSnltJLHN8hvMnHdEgnQFdAT4bSypHGEiCQBJIEIEhiEre+fbv5l+9+7288r4ugYXt%20NXju6XWurj7L0cMpr/+OH2HpyF/xlccvM52McFoRdCOOHzvG2RNHuO/uUyjVEEaOOAGtIxpdIUWE%20NppWGFPWOZP9CZUuyaqAxULijgQEC/M4ejlHqvrwpZtDe4dDonx5mqNEDv5rLFy+btjY2Gd9bYeq%20hDBaIE46ONuiKA1Lyy3OP7PD+sYWV69cIu12WFxMmU730Lrh2JEzGO2oK80EKIsZs+mMwAlkY5jM%20KnppjziCoqhoav96AhUhpWRUTNEy8uB5BysrPV75ynvpJAkXzz/DcLLNwuJpDh1a5sLFy3zm775A%20K30WScza5gTjOkynIdr0CIMOTqTUWiGNxkpB2JY0TYmkIFANjSuZNiOM0USxwrgC0xTU5DhKlLAI%202WBdibU1IcLHIaFxtgFbIWQNc9SbwlHVJdYZWq2QNI3RxlDVM6bTAhl47tO5c/fx3ve9i3e+8+2c%20vfPUt0Qhelkf0/6x69sfXRQnjv6Mu/eeU3zsd/+IL37paVYO3cne/h4gabc7GK1pqpowjImCGBBo%20azHa4SweHxEIrC4py5JYKZSUHp3hDODjrVUQop1DqYTZbDTPt/fg/abKidotVg4v8UM//P18+MPf%20C8bPX+oajp+A3Y0O6U7Ml778OWTc5zWvfZDPfuUJ6sYQdVYQYc3hIwusHFrk0qVL3HXPbfR7Pok1%20UJKqbiFki1AtUJVgRYcwWGQ2Dx/IKsFgUnHsUEirBWnbx1urYM4ikp77bawlmQ/VCgN5BrNpw2B3%20xP5+xtrmjDjuESQrWAFNLTFWESiFVBHPnN/ij/74v5AkCWmaMB3vcfzoIkW+z4Unn+QpU/t/WwdF%20kdNpt1joLVFMtwgwPtigbkh7KRQVVV0QJj0WeinLTY/xYERRVVgraccJ7X5C3FU3j0iGmr3RLrFK%20COKI3b19tJ0CCbVuoR1UOiQIAlwQUZmaRtc4Yz15UgpyZuRmSkNFI0uqoMCIxhdGpxFSEwofB+5s%20jaNBOp/MK7HoqkIKQxIplIRGNzjbICPJLMvodFKck9RN4Zcnyvj3IZAIKXnnu97GB3/k/XzHdz76%20LVOEvumL0XBYfPn0mZb48L/5Pl5x7oz73f/z/+YTn/wSoSowxs9WlAyQPqDeM2GswliBECFCBRin%20aUoIw5hup0VVlNz0vTmLcAJnA6wB0BT5GGhQ0a1o4TBULK8scupUnwdf+SoG+7D63BaTwZDzjz2N%20tHDy6Bne+PpHeO7KPjfWN9gbXSdutViUitpJVBKwsrKMCkJWDh9noXeYnR2YrU5J0xbddkCrBcYI%20VAhKRRgitGtT1ZDXEE5gOCpJEksrDb0CPHRIaYkCUIGkaRrqqiGb5oxHBUXhjb22cdSNANsH0cYa%20gTGCTrtHGMDa9QHnz1/kM3/9NwCcPfsAQaiYTsc0ZoaQNaduP0GWTRlPxgQqQQaKsqrRxiJ1QdIW%20GKHJqhl2MCUKQtJeHyRELbCipN2JcKGBxqGEm+u1dggF1DpjMhmTFTOUTNAmoNH+UGpdQOMMKEfj%20GmpToV2J0HreCVkiJIkMqYMZtchoZEMtNNqWaGFQOAI00tVAjRAl4Lse6Rqwmlk1pp8sEAaKfDbE%20UbLQSQhVQFFOWVxqk2UzrNX0+m2E1Ozt7xJGjrO3n+Tf/covc/8r7ubcg3d/yxWib7pipE31M4GK%20PwKwuNh65OD/f8/33CfOnbvXPfjgX/DH/+VTfPbvvkhVFiRxZ85GjoijGIFEW4UUkiiOsVZSliVG%2052hnQSTYA2QGFuE8B8k7v7zJMQpilHIgLEYqolZMGMc4K/njP/grPv2pkLVrV2nKimefOo8Sigfu%20f4jaLGHpYlxNbXLipMfW/oCk3cHUsLa2Sft0n52NHVZXt8kzPzdZWFigFbVxVhK3usRJizTtELci%20wiQibkHSgSQFIxRhJIhiQRhaAuUTPZJIEoZgTUxdS2wTglsCq+aRRAIpfSBkEPhjntFQl3D16pCv%20fOnLPP7414jDiIcePsepE8d57rnzZLMhKhD0e22+/dGHCELBpz/9aTY2dxAoDxKTDusKSlMzmjac%20ue0O+t2YtJWQxF2MFYStgMs7N6imJboRSCMwaKazIZtbN2hHMYiGxlQUVQ4uIgi7hGHfY9OsQVPh%205IRaNGhXUWuH1Q2WEik8ZF+LiFpWNK5C49DO+Dz6uVlN2QKofMSQqIAS5zSSBmcNx/pLVEVOmZXE%20oSOJEgQVdV0haJhN9olaESAYjrawruLU6SO8851v4z3vfQeveu2935JF6JuyGAUq/siLh9zW2tul%20lFeOHRPiF3/pLbzywVe4j//xx/mTP/0kVy7fIGn1iSLJaDwhDjto4/lGjfaxM1EUoKVFNxVIMacC%20+sGLEwJr/FDSCksceeync/Of45hWK6aqKm6s51RlinA1wsGxo6c5ekwym8y4vjHjk3/5JawLuO/c%20qzl8W8y4+CqXVveIU0jimIV2j3a3y+7gIuOhTxA32jGeTKnzKdYE5MUWUoQgI4SSqEiRpCHdhZRW%20J6S30kEFliCUSOlQEsJI0IoiojggTWKstSRRTLfrE1K09jMjFXichlT4LqyGCxev8dhXv8p4ss/h%20oyd4+MFzPPLqB8lnY9Y3VonjZfb2ttjcWOPQoS53nD2ObsYUxQCpvCcwbEWEgcBZw+7+Bg8+8i5e%2099qH6aQJk3HO7v6I1dVNPv/EE5T5CG0jQkIskiJ37OxYFtIWgVTEiaLJDdYYwkgiQoGu515BCY31%20AlUtav9wkRqrGpTAG6ZdiBUWK7Q3p847YGV9BLV1OULWCNcgZOO3qWicq5HOkE9LrGlIopAkCSjL%20EaN6lxaK5ZUlyrqgsTlFmdHvd3njm97EW9/2L3nzm9/IidOL39KF6JvymPb127YXetze9KZj4u47%20f9J9++tfxe997I/49F9/nv3dNYRsocKIqNXBGkFe5hjT+GBJoXAYpPR4kIOU2bnkyJvzpaCqirmj%201GKlh6Y3RmHLAmsaAhuwv7tLv9+n14nJy5iNnV0CZeguaR5+6GHitMdT569QlJp77rmHWsP1Gxvc%20SFKKomFnuE8chEgRMp3NqCuLMxFx2KHfW8FYRa0FjbbUlcEKBSKhakI2dzRCeQOnn3s5VCBoRYIo%20dswm+5RVjtNzw7D0K2glJFHiWD6sELIkTWIaXXDj+mWG+5vcdddpXvfoqzlz+giHDgkujzStVot2%202mcy3me0P+DalcvsbF1kd2+DJAkRMmKWZUBNrCySmiAOGY5HPPHUk4yHI9bWNylrQxB2MBgCJQkD%20BVagrANbM5tqbJWz0O5ghfM+M+kwrqFpMqaFoa4VMopwssG4yne30nd8tzpdCTb0JEhpkc4QWoty%20c0qB0zhXeDyw1ECDFI23CjlvRtZaE0cBQjYU1YwgsBxrL1PVOdt7N7BY+ksLPPrww7z9HT/AO9/1%20/dx2+/K3fBE6uMStKJZvvevZZwbu9//gE/z5f/0bnrt0g42tAWlrmSRewFjlIVtS4qyg0RBE7Tme%20RKKU8h41a33uhJRoawkihZCOStcY613crVaLOEwITEgxK+h228RpzHQ68YiNQLBy5CinTt5GkrY5%20/8xzaCO58+77qcqap556lrS9gBUpRiuWl1Yosprd7Qlh0EGaNmUVUGchjgQhYy/WVHhKQCSRQUgz%2011Ep3zHirJ3HUyuCQII1VFVGU5d+VW0N1mnPEA8aaj0gjDUqsFhT4GxOO1WcOrnE8eNLLC2ltFuS%20G1cvMxxs0e912NraYGdrg9NnjpPnO2xsr2FdSFU7srz0KFpbIGxBGjU88IqzdCKFsQ3DwZTReIYK%20UjZ3xmgTEoQprra42hLKEGEgDAJ6nS4qCsnykqpxyKBNY0NmhaU2AUGkgByHnmusJLgA526FPEZR%20hFIewWaaGmsav2U1BoMfkKMaBA1CaqSYz4ys54EvdDrk2ZSyzIlCRxgKrKuoqimlybj77rt557ve%20xjve8TYeed1d/1yE/rkYff31d5/ZcL/zO3/In33ib9jdnTKdloRhh1bSQQgfP+RjihK08WhSj3qV%20GGOx7v9p79ye5Dqv6/7b3+Wc091zA2YwAHEjAEKUQIEWQQikpchUJaZUcmyV3/xgv8d/Qv6X/AEu%20J6mUU6nETiwltkWZoEiKginFlEyBDEESAxDAXPtyzvluefi+bpDxiyu2UpbT+wWFATA16OmzZu+1%20114rh+kpa4pmMPMNvXeE0CJaU9uGtWoTqwymttx/cI+kEseOrbN/tE87HvO5Z57h2ee+RGUH3Lnz%20EXu7h9y+/T4hBE6eOk9SAw4PWwaDEe3EMz4MrIxOELqG2QEMR6eBYRk3TPaxTlmImVOcq6KrKnqX%20EmmktcboBMEjKubtVHIo8qo5Bofzs2zLIrkzMMZjrUOrFoljYhwznT5kdcVQ6Vi8dxKHe7uQEusb%20A5S03L1/l9ks4IOg6xErK0MIjmETGdYR1+7RjffxvicEIUTBNCMqOyAkoTY1s8MZXdszsitoUWiE%200WjE5vYJDo/GHE47Wqdw0dJ7TRCLUkKM4+ISaghJgdSQdO5yU8qjnhW0SkQ3hTBDyJoxHz3OCFHF%20DEb0KLK2KI8Xkb6bkVKgGdRYE9k/eIRnyrWrz/DPvv4Vfvu3f4uXfv3aU/9UDluXYPQLrD/5k9vp%20j/7DH/Of//g77O9NGDTr+ADOBZRqUHYFFzRKGaxpECy9z29uVZJBu25GJNCMGmyj6VzLdHZE7CNr%20gy26Ykx/ODmkaixNU9H2HRsb6/gUGY1GrK0eYzab4VrHh3c+4szps2yfPMPDw5YPP9zB6gatGtpx%20xKgVtKxRmeP0rSWmASlU5YxFindqjkKOISHGLhwcCdlDWSmDFkjBoZQQ/JTejUECg4FGqYTzHcZa%20pmVjOFzRCFMmk/sY3bK+bplOd6lsYHWloqk0u48e0E4nbGxsoJUnhCNm3RRRA5zPWqEQHATHmdOb%20TA8e0Lb76ORw3QyUoWmGOJ8wxnDixAm0KPYeHnCwd8CoWkGJwXtP0wy5cuUKjw4OePjogMNpi0+W%20KBVJTAmenJVzHYWPAilvTfNtokJSoK7UAoxSmKFSQJLDRUesNJnOdgsgUhIxJUNOAO9z9JQ2cO7s%20SV76+lf5rW9/ixdeuM7mKbPshpZg9Heve3djeu3mW/zHP/ov/Pn/+Et27u9R2QHD0XH2jsDYVYQK%207wRjRzSDDFhH45Z6OEBrIalAFI+yEV0lnJvRzmYoBlg7QETw3hfzrPyg+BK9NBgOqfQA51w27dea%20qmoQXaNU1qjEoAgegtfEoImhJoUKSUOUDBAahCqPIZiSGZcN3VHz+J4cWpAv8nO6hUgm6GPsSRQP%20KDpEOURlZXFMnpiymE9rh+g2n0SkGb07om6ErePrrKw2HB4e8OjBQ5qm4eyZLcbjTzg8eJj1RG2L%209x5rcurIia0NXDdhfLTPbHpISpHKGIwxVFVFXdeokF+nvu3pOgfJUNlBkWFIzogTRUiCjwnvIj7m%20+G1UKgZxsXRCFCfFhEQpDwM56bfk8ClJhN4RvCOR+aG6EUL0ODfDWEFUIIYerROH411EIhcunOWb%203/rnfPvbv8GXnrvK9hPVEoSWYPT34JN+8iDdfPWHvPK917j56hv87P0PsOYUzXAzW2kky3gSaTsw%20dsRwtMbB0RhlTLYzFY8UMIqpp+97ghOQEtKeSSia4QpNVaNE89RTT5GSMBvPePjwIQd7hwvQImkq%20u1pGC8m7h6RJ0eYzlVCRokXJoABSBclCMsWjWudxU6VF0sc8/UPEIuhM0JfzhEQGGVQLklfTSCRG%20B7EnaY/Rjqg6hBbPjEEtTLpDNIlqUJHFwyMtAAAN3ElEQVSCZ9bPWButsH3yONPxffZ275UYJI8Q%20sVqw2rB98jjtZMJ0NqabTUkEtAjaCI2taCqLFmF8eJRtXrXF6JqQdKGgNRFTHCs1IWVf85QSqaRr%20hCJUnf//JQkSU3a6TAmrs++TFiHGSN86XHJUGJpG49wBiY4QPLbS1LWldzN6N6auDU9//gIvvHid%20b/3Gy3z5xjW2n1h2Qksw+ofslD5K6b9/98/43iuv8/1X3+a9D+7RzqaIbLC2eoKYanzQiG4IUdAm%20ny646HJCqV74uFE3w7ySD4EUIsYYhsMVhnWD1prxOEcXd7OeyWRCcB1aF35K1fRtTonVOgcLZsCp%20SMGQoiF4jVYNWg1RUhegmhvPW3yUT6V+hIVzgWARUShl8sfJ3U9iRpIZSL7B0sWhh+RIqssJq6qD%201BJlhjGRtp/m5JRKk2IOgVxfX+fE9jopTLl7938VQ7OIlnwjKMCJE8chepzrCN4Ro19YrzS2oqkt%20VmkePHjAZDJh0KzSNEM6F3E+opTJo5fK94WxJMJGeZx44r1fgJGI5HSWlBZ3wsF5rNY0VY21Fom5%20E0spoU0AmZDo6bqOrpuARNbXV3ju2lW+8tUX+Je/+TIXL51n66RagtASjH5xdbDHm3/wh//t+vdf%20fYPXbr7F7t4YLUN8MLSdEILFB40ydc5bRxFL0kxVNWirUMYUo/wiO0h8pkuZHI2zB06MSIkDUsVe%20KCVFCg1JbAYjKWNYnIdQGlK02YdHD1DSkKIiJb0ApBhNzmYvJmqLzgibU1PLyJiSy2Ak09IhZZ8e%20o4SER1JHkB4lpTNKLUE6gpui6yyi9MnTz6aYuuLyxUt87ulLPHr0MX/z7k842NsnxoBRCu97fDdj%20dX2dlUEDkkjB40NPcNlBs7aWqrI0Vc3h3j7j8RgxhsoOiQihZKKlEv2RSo5b1mvmUMZPj8ZzQNJS%20Ip1Kd7S2skLbzvC9QxvBSAawvu/xzLCqI6YObYRz587wwgtf5le/coMXXnye6y+eXwLQEoz+39ad%20j7r0yvd+wH/90z/j5qtv8vHHu2g1YjTapO0BMrmcxOIDOYerGKCZupi5qbnLZMA5h/c9MUZWR6Pc%20EaR87T/nkpxzOaXWjhDySCeicwcQ5rxRHscyGA1RymaDuDB/MA0xmfxgFkCMMWbiVrJcQUlVOqOQ%20OSNaYpqRpCfRYSUgKkDyROkhdUTpETqSKt5ONiIp0vYzUvRsnzrJizdu8Ny1X+EHr7/CO3/9Yx59%208oAQHNZaYvJMj45oBgNWhk22WU0J5zpc15OIWJWlB8ePrRNCYDKZcXg0IcZEZRvA0DmPsXXuhpDy%20awajhMr3zRE0gpRRVUraydyKt51OEElURjMYDKiMKhHfnkSHMT1XvniZa9e+xI0b13nhxRtc/vzx%20JQj9A5VZvgSfrZTipfyT828HAngfXj5/tpbf+92X+PVvfDX9+O2f8pevvsVf/Plr3Lr1M2I09C7H%20aWs9yh1K1MSYxXWCIfqeKHrR8SgitQGlDLPpwYLn0DofWibAGqGqLH3X54dLMgckOdiHhAYVijda%20V8SYhoTOVrJI8WEyIBqRlL8e4bGbpTKkmP+tEEg4hBZkhtAD2ZFAUgTxqOSIdFlRrnKXJCoSfY8L%20juR7bGWoDRwdPeS92+/wyf27TMf7+NDivUPplGOMTCbOQ3D5PCdlAaEPLv/EjCnfEwrUg4aEYjor%20t3MmolQkElE6EWM+3RABKfNXThhOpRMqcUyLrimW5JTE6prJhnMx0Ic9+j4wGo04++QpTj2xyTde%20/hov/urzfOVrX1wC0LIz+sdZN2++n/7q7Z/yb//df2Jn54B7O3tMpwklDcoMFoehk/YIH3tAMidR%20iFIteWuktV1wFEopJAou5HFG24q2m3tW6/LQzklsUwhtgxKbRzg0KeauSESB5O4JnU1CAik/5Jm6%20JolGYgYvRT6JEHqCtBC7PKqlHqMCIolEGeXo84pbB5yfIRLLwx+wVtMM6rwJU9B2YyZHRwXYPUop%20jFW4tsMYw2iYubMUPG3b4px7PMYSOXZsFWOydetkMqFrfekyczCntZaQYu74IPsIfYqo1/NOaJ7P%20NLeOSTlwwPUzkEhTaTY3j3Hp0gVu3LjB11/6GlefvcK5C6MlCC3B6JejProb0utv/Jjv/On3efPN%20n/DRhw84OuzyWQYJU+cASa0tVVVBEpwLxEiOVnY5b96qBltXSFI4H7KnT2UJqSR8JEVMCqImJoXE%20KvsuRQNiiieRIZVuQqERZT6z2ofHD23etllioIxsCcSXUa0npnyhLmGGVhGjEoEAKadeGJXAeFw3%20Rdnc7fUhX7KL1ph5dlrRMa2srCxW+9oIru2w1rIyHKE0RB+YzSYLwAII0WfZRMoOnUoZYkiEEEBp%20jDEgkkMsYz530VqTFEVT5QsPF0swQQEsfP6cBJ44fZJTp7Z4/rlf4dde+irXr1/nqcvLMWwJRr/k%209aNbe+kHN2/x2uu3+KtbP+HOnTtMZhN8DBhjaeohSlX0naPrAiEprNSIrql0ndfUPhKSzmcPRtP7%20DpTCKktSGny2gI19DgEY1qso0yAROhcggLIGIwoX0yI5V0SK/3UJdEzZ+1tJlbsocucDgURXwiBb%20JM6ygjmG7HJJAp0fZIreJqny55IdJDMYZlCc82GZmM8nNUgi+jyiLYh9kUWibUqZ0E/lgl5rQess%203CTlztLHsOgmQ8gjmqkyad33PT5kO9hBpZlOx4TQoZWiqiqOb67zzDNf4JkvXOab3/wG5588zdVn%20zy0BaAlG//Rqb583f/jGu9ff/vH/5C++/wo7Ozt8+OHHPHq4j+siomtGozWGg3XGRy1KapQ0+fwk%20aNJckKjBJZcdA2IOESQYRFVYVaN0TTv1WVqAxsfSUVmLVtk4rfOeJKmAScwxjlqhkgUx+D6BlOgi%20lRamZcRy/pBaBFc4lpLYq7LtLpL1VHyKg5l3H3Puxtam5MbHom+Ssj3Lgsr19XV86PG9w3uft4pS%20yGaVP08IjhDKxlH0IjobEYzWuNATvUN05oRCjGglVJVhevCI0cqAc6ef4PLnL/PFK1e4evUKX77x%20PJ97emsJQEsw+v+n7u649O7Pb/PGGz/krbdu8bOfvseHd3bYfXREiAlrNxAqFHUOSEyWmBTRJ3wM%201AOT5QJJ4YKQnCIkjRGL6JrGjDL3kxIu5NuzpLKwz8VAMxwQUoLoCBLQCEkJhnwyEfoEymAkjzcK%20j6eD2BNTh5E+W6qmQErl8l9S6ZwyV/S3wSh+iveZa5viojPSWlBlbNzb20PrzP0YqxdnKzF6Ysmh%20m+uujMkkfggB5zo67xjWDZ3viN7lMZJ8uLy6MmI0GvCtf/FrXHrqSZ5/7hrPXL3CmbMrSwBagtGy%20YuTSz9755Patt9/hzTdu8fPbd3j95lt0Pbg+EpLBmAqtsulbSolpN8VYi7UVWg1IUWVSOpWQQZ9P%20O0A9FvYVziXGDEyRVM49wmJkmhPhJINS9nG3QSCmPluspg6r81p/EWjwadApndL/CUT544/N/+fg%20klI2oEspZAU0kY2NDUJwOb7ZdYToMsltFForJKVFl+WcK3ybL19vFpPWjWVtbZXTZ7Z5+unLPP/8%20czx//RpPXbzAk+eX4LMEo2X9ncDpB69+cPvn733AG6//iLd+9Dbvv/8B+/uHdK0jJBitjYgBYhSC%20z4eeSmq0GqDEYs0guwjExyrjOecSU0LZpoCCL0BQwCGoolkSlCo2GkoBviRXZLHfZ8GI0gnxKeBJ%20i83UZzLZSnckxLL9ejx6PQ6VjEymB2g9H7viQiU+vyurjSUGR9e67CFNZDRa4+zZs2xvb/Hss1/k%20yQvnuHr1Ck9//jKXl15BSzBa1t+/7t8n3b//kHdv/5yfvvM3fPzxDj+89SMODifsPjrk6HCKdwqt%20GqxZQasKEYvrAyGkxwQxLDZQCZvvuNS8c0lQ1Mokky1dlUGJKYDg8wo/BiR1KOVzFBM87qpKpyKS%20O578m+x2mTmlx4CUYvjM340xj3YZnHLst9a5m0vErM72fcltiagUObm9zcWLF7l48SLnz5/n0qWL%20XLp0iZMnT/Dkk5u/X1f8m+W7ZwlGy/oF1/sfH6X7n+zy/nt3eO/2R3x45x4ff/QJ93b22N8bM512%20TCctfV8MxIhl1e0RsQyHG8SYbTtCLET0QrdkiSELKefnEznt1BU+KBvRz8HoM28iyarmEPwC/B5v%206x5v7yqT+awQXB7DQgAJiBG0lsW2rG40KytDNk9scv78WS5cuMD2iU2+cPlzbG9uce7cOS49tex6%20lmC0rH90492777nbu7uHfHL/EQ8f7rKzs8Mn9x9y7/5ddnZ22N19SNcGxkeO3gX6rqPtZwTXg6gc%208a0s0eecOIXOSu0USRLz6l48IU4fp89+GohEyqYrFAtWgPm4lrkiJYm6tlRW0zQ1o9GIjWNrbG0d%20Z2t7k9XVEWfOnmZz8xhnz57m9JlTHD+xyYnj6/9+daB+Z/mdXoLRsn6Jy/v08v17R9+ZTCZ0neP+%20vV32D6fsP9pl7/CA2XjCwXjC0f4RR5OW6dGU3kd855i2PaEPuBiyWFAcs24fkbDglIwxi3FQRGia%20Bmstg8GA1bURq6urrKysMBwOsVaxubXK2vqIra0tNjY2GI2y0+Pp01vfMEZ9d/kdW4LR8lVY1qLL%206lv+1eSIf+19Th/JKu3MH7XdAYhfbOnmB7/zjd32ybXfN1Z9d2mruqz/m/rflDjuA+MNcecAAAAA%20SUVORK5CYII=%22%20preserveAspectRatio=%22none%22%20height=%2251.004%22%20width=%2259.607%22/%3E%3Cg%20transform=%22matrix(.79321%200%200%20.79321%20-10.782%2043.52)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "0600a484-aeff-4223-adc8-a43e14a447fd",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 56,
                "y": 0
              }
            },
            {
              "id": "30015f0c-ca0c-4bd7-bd68-d3729733bdac",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 760,
                "y": 32
              }
            },
            {
              "id": "ad5affb4-fc2b-4b5e-a057-a1f6f41e1ff0",
              "type": "basic.input",
              "data": {
                "name": "bit",
                "clock": false
              },
              "position": {
                "x": 56,
                "y": 288
              }
            },
            {
              "id": "bf4872ff-469c-4f66-bedc-2c585ce46ca7",
              "type": "basic.input",
              "data": {
                "name": "start",
                "clock": false
              },
              "position": {
                "x": 56,
                "y": 424
              }
            },
            {
              "id": "54df65d7-d323-4224-b41d-257ece5760de",
              "type": "basic.constant",
              "data": {
                "name": "BIT-1",
                "value": "10",
                "local": true
              },
              "position": {
                "x": 272,
                "y": -80
              }
            },
            {
              "id": "3024de74-ad4f-4326-89fc-6d0c33163074",
              "type": "basic.constant",
              "data": {
                "name": "BIT-0",
                "value": "5",
                "local": true
              },
              "position": {
                "x": 280,
                "y": 120
              }
            },
            {
              "id": "cbcfd55a-5a6a-4e96-9733-74c460f370e7",
              "type": "e74cd1645bed81077ebe3c8266bbb396a3a61e34",
              "position": {
                "x": 272,
                "y": 16
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "1058e9a0-06c9-4417-9d7b-f2b09bcf1351",
              "type": "e74cd1645bed81077ebe3c8266bbb396a3a61e34",
              "position": {
                "x": 280,
                "y": 216
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "ae7bd83a-d294-4956-b87f-30fcea2308f9",
              "type": "5cc6ec961df1a19b78d61422b28169fc0f69384b",
              "position": {
                "x": 608,
                "y": 16
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "8553a195-2887-4554-ba14-1aa9e7152338",
              "type": "basic.info",
              "data": {
                "info": "Pulso de 833ns\nde anchura",
                "readonly": true
              },
              "position": {
                "x": 400,
                "y": -24
              },
              "size": {
                "width": 128,
                "height": 48
              }
            },
            {
              "id": "ddfbcbfc-b89c-4623-9d40-3538f89eb172",
              "type": "basic.info",
              "data": {
                "info": "Pulso de 417\nde anchura",
                "readonly": true
              },
              "position": {
                "x": 432,
                "y": 80
              },
              "size": {
                "width": 128,
                "height": 48
              }
            },
            {
              "id": "f977f5d2-be2a-4896-a0c1-e79b5956c20d",
              "type": "basic.info",
              "data": {
                "info": "## Codificación de bits en los Neopixels\n\nLos bits tienen el mismo periodo (1.25us) pero cada uno tiene una anchura de pulso diferente\n\n|Bit  | Anchura nominal  |  tics  | Anchura real | Error | Descripción |\n|-----|------------------|--------|--------------|-------|-------------|\n|Bit 0|  400ns           |   5    |   417ns      | 17ns  | Tolerancia: +-150ns |\n|Bit 1|  800ns           |   10   |   833ns      | 33ns  | Tolerancia: +-150ns |\n\nEl error es de 17ns y 33ns, que está dentro de lo permitido (tiene que ser menor de 150ns)",
                "readonly": true
              },
              "position": {
                "x": -608,
                "y": -128
              },
              "size": {
                "width": 720,
                "height": 168
              }
            },
            {
              "id": "1f5a55a2-251e-4dfd-beff-be4a866626e7",
              "type": "basic.info",
              "data": {
                "info": "**Bit a codificador: 0, 1**",
                "readonly": true
              },
              "position": {
                "x": 32,
                "y": 264
              },
              "size": {
                "width": 224,
                "height": 40
              }
            },
            {
              "id": "0b361f08-6ac1-4dd6-90b6-663fb86c6983",
              "type": "basic.info",
              "data": {
                "info": "**Enviar bit**  \n(entrada tic)",
                "readonly": true
              },
              "position": {
                "x": 64,
                "y": 384
              },
              "size": {
                "width": 168,
                "height": 64
              }
            },
            {
              "id": "838680f8-69d9-4af8-8891-c1b6ffecddce",
              "type": "basic.info",
              "data": {
                "info": "**Salida del bit**  \nCodificado",
                "readonly": true
              },
              "position": {
                "x": 768,
                "y": -8
              },
              "size": {
                "width": 160,
                "height": 56
              }
            },
            {
              "id": "740a3d3b-9a02-4bb2-bd47-ad071fba5440",
              "type": "basic.info",
              "data": {
                "info": "Conectar directamente al pin  \ndonde estén los neopixels",
                "readonly": true
              },
              "position": {
                "x": 744,
                "y": 96
              },
              "size": {
                "width": 240,
                "height": 80
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "54df65d7-d323-4224-b41d-257ece5760de",
                "port": "constant-out"
              },
              "target": {
                "block": "cbcfd55a-5a6a-4e96-9733-74c460f370e7",
                "port": "a0ae7ae6-94bd-4958-8871-4a00574de708"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "3024de74-ad4f-4326-89fc-6d0c33163074",
                "port": "constant-out"
              },
              "target": {
                "block": "1058e9a0-06c9-4417-9d7b-f2b09bcf1351",
                "port": "a0ae7ae6-94bd-4958-8871-4a00574de708"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "cbcfd55a-5a6a-4e96-9733-74c460f370e7",
                "port": "c45dab76-9d0f-4742-9e4d-3048637d245d"
              },
              "target": {
                "block": "ae7bd83a-d294-4956-b87f-30fcea2308f9",
                "port": "5898179a-7390-429b-ac3c-b7a0df673610"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "1058e9a0-06c9-4417-9d7b-f2b09bcf1351",
                "port": "c45dab76-9d0f-4742-9e4d-3048637d245d"
              },
              "target": {
                "block": "ae7bd83a-d294-4956-b87f-30fcea2308f9",
                "port": "db089906-4326-4b59-8aa5-ebb61116a4cd"
              },
              "vertices": [
                {
                  "x": 416,
                  "y": 120
                }
              ]
            },
            {
              "source": {
                "block": "0600a484-aeff-4223-adc8-a43e14a447fd",
                "port": "out"
              },
              "target": {
                "block": "cbcfd55a-5a6a-4e96-9733-74c460f370e7",
                "port": "7697c4d1-f5f8-4a1d-88af-e367fe54e4b6"
              }
            },
            {
              "source": {
                "block": "0600a484-aeff-4223-adc8-a43e14a447fd",
                "port": "out"
              },
              "target": {
                "block": "1058e9a0-06c9-4417-9d7b-f2b09bcf1351",
                "port": "7697c4d1-f5f8-4a1d-88af-e367fe54e4b6"
              },
              "vertices": [
                {
                  "x": 208,
                  "y": 144
                }
              ]
            },
            {
              "source": {
                "block": "bf4872ff-469c-4f66-bedc-2c585ce46ca7",
                "port": "out"
              },
              "target": {
                "block": "cbcfd55a-5a6a-4e96-9733-74c460f370e7",
                "port": "4cd7cf1f-7f82-4404-bcd9-bac9500569e0"
              }
            },
            {
              "source": {
                "block": "bf4872ff-469c-4f66-bedc-2c585ce46ca7",
                "port": "out"
              },
              "target": {
                "block": "1058e9a0-06c9-4417-9d7b-f2b09bcf1351",
                "port": "4cd7cf1f-7f82-4404-bcd9-bac9500569e0"
              },
              "vertices": [
                {
                  "x": 256,
                  "y": 360
                }
              ]
            },
            {
              "source": {
                "block": "ad5affb4-fc2b-4b5e-a057-a1f6f41e1ff0",
                "port": "out"
              },
              "target": {
                "block": "ae7bd83a-d294-4956-b87f-30fcea2308f9",
                "port": "1e637a79-4a6d-495c-bcac-9664bdbe4b94"
              }
            },
            {
              "source": {
                "block": "ae7bd83a-d294-4956-b87f-30fcea2308f9",
                "port": "0ef557c8-5378-43b3-80af-176f129f1a07"
              },
              "target": {
                "block": "30015f0c-ca0c-4bd7-bd68-d3729733bdac",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "e74cd1645bed81077ebe3c8266bbb396a3a61e34": {
      "package": {
        "name": "timer-system",
        "version": "0.1",
        "description": "Temporizador en tics. La señal p está activa durante los tics indicados. ov se emite un tic al finalizar",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20293.13756%20181.35395%22%20width=%22293.137%22%20height=%22181.354%22%3E%3Ccircle%20cx=%22149.086%22%20cy=%2290.681%22%20r=%2270.101%22%20fill=%22#fff%22/%3E%3Cpath%20d=%22M149.086%2013.679c-42.531%200-77.003%2034.472-77.003%2077.002%200%2042.531%2034.472%2077.003%2077.003%2077.003%2042.53%200%2077.003-34.472%2077.003-77.003%200-42.53-34.472-77.002-77.003-77.002zm0%20145.175c-37.673%200-68.173-30.539-68.173-68.173%200-37.633%2030.539-68.172%2068.173-68.172%2037.633%200%2068.172%2030.539%2068.172%2068.172%200%2037.634-30.538%2068.173-68.172%2068.173z%22%20fill=%22#333%22/%3E%3Cpath%20d=%22M146.772%2030.683h4.627v18.2h-4.627zM89.125%2092.965v-4.627h18.2v4.627zm62.261%2057.665h-4.627v-18.2h4.627zm57.647-62.28v4.628h-18.2V88.35zM105.044%2049.905l3.272-3.272%2012.87%2012.87-3.273%203.271zm3.28%2084.79l-3.27-3.272%2012.868-12.87%203.272%203.272zm84.774-3.265l-3.272%203.273-12.87-12.87%203.273-3.272zM189.85%2046.64l3.272%203.272-12.87%2012.87-3.271-3.272z%22%20fill=%22#333%22/%3E%3Ccircle%20cx=%22149.086%22%20cy=%2290.681%22%20r=%224.781%22%20fill=%22#333%22/%3E%3Cpath%20d=%22M149.795%2070.653l2.722.288-2.109%2019.9-2.722-.288z%22%20fill=%22#333%22/%3E%3Cpath%20d=%22M181.26%2072.129l1.276%202.423-32.859%2017.296-1.275-2.422z%22%20fill=%22#333%22/%3E%3Cpath%20d=%22M152.016%2080.386c-1.08%200-1.928.887-1.928%201.928%200%20.656.309%201.234.81%201.581l-14.691%2041.451%201.002.347%2014.691-41.45h.116c1.08%200%201.928-.888%201.928-1.929a1.934%201.934%200%200%200-1.928-1.928z%22%20fill=%22#cf000f%22/%3E%3Ctext%20y=%2244.949%22%20x=%221.863%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%2269.516%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%221.289%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2244.949%22%20x=%221.863%22%20font-weight=%22700%22%20font-size=%2239.724%22%3Etic%3C/tspan%3E%3C/text%3E%3Cg%20transform=%22matrix(2.99796%200%200%202.99796%20-53.023%20-84.502)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(2.99796%200%200%202.99796%20-257.041%20-84.502)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Ccircle%20cx=%22248.578%22%20cy=%2244.56%22%20r=%2243.648%22%20fill=%22#ececec%22%20stroke=%22green%22%20stroke-width=%221.824%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M279.216%2057.21h-5.01V30.018h-51.31v26.98h-5.456%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%224.56%22%20stroke-linecap=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c45dab76-9d0f-4742-9e4d-3048637d245d",
              "type": "basic.output",
              "data": {
                "name": "p"
              },
              "position": {
                "x": 1984,
                "y": 232
              }
            },
            {
              "id": "7697c4d1-f5f8-4a1d-88af-e367fe54e4b6",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 1256,
                "y": 232
              }
            },
            {
              "id": "8c6fda76-1ba0-4ef8-a53d-7bc8a9db4454",
              "type": "basic.output",
              "data": {
                "name": "ov"
              },
              "position": {
                "x": 1992,
                "y": 456
              }
            },
            {
              "id": "4cd7cf1f-7f82-4404-bcd9-bac9500569e0",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 1256,
                "y": 456
              }
            },
            {
              "id": "a0ae7ae6-94bd-4958-8871-4a00574de708",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "15",
                "local": false
              },
              "position": {
                "x": 1616,
                "y": 24
              }
            },
            {
              "id": "f3af4211-e3df-4710-a0a8-96a035a833a9",
              "type": "basic.info",
              "data": {
                "info": "**Salida de pulso**",
                "readonly": true
              },
              "position": {
                "x": 1984,
                "y": 208
              },
              "size": {
                "width": 176,
                "height": 40
              }
            },
            {
              "id": "a15228f1-41aa-494c-82fb-5491bf5fcc13",
              "type": "basic.info",
              "data": {
                "info": "**Salida de tic**",
                "readonly": true
              },
              "position": {
                "x": 1992,
                "y": 424
              },
              "size": {
                "width": 152,
                "height": 40
              }
            },
            {
              "id": "3975ec8b-af2f-4abd-a1d5-e6cd8561b22f",
              "type": "basic.code",
              "data": {
                "code": "//--------------------------------------------\n//-- Contador de tics\n//--------------------------------------------\n\n//-- Calcular el numero de bits para almacenar US tics\nlocalparam CB = $clog2(TICS);\n\nreg [CB-1:0] counter = 0;\n\n//-- Overflow del contador\nwire ov;\n\n//-- Señal de reset del contador\nwire rst;\n\nalways @(posedge clk)\n  if (rst)\n    counter <= 0;\n  else\n    counter <= counter + 1;\n      \n//-- Comprobar overflow\nassign ov = (counter == TICS-1);\n    \n//---------------------------------------\n//-- Biestable de estado del timer\n//-- 0: Apagado  \n//-- 1: Funcionando\nreg q = 0;\n\nalways @(posedge clk)\n  if (start)\n    q <= 1'b1;\n  else if (rst)\n    q<=1'b0;\n    \n//-- Lógica de reset\n//En función de la entrada, el estado y  \n// el overflow se inicializa el contador y \n// se habilita el corazón de tics\nassign rst = ~q | ov | start;\n\n//-- Salida de pulso\nassign p = q;\n\n//-- Salida de tic\n//-- Saca un tic cuando ha finalizado la cuenta\nassign tic = ov;\n    \n",
                "params": [
                  {
                    "name": "TICS"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "start"
                    }
                  ],
                  "out": [
                    {
                      "name": "p"
                    },
                    {
                      "name": "tic"
                    }
                  ]
                }
              },
              "position": {
                "x": 1440,
                "y": 152
              },
              "size": {
                "width": 448,
                "height": 448
              }
            },
            {
              "id": "24a3b5b8-79b9-4412-b2b0-5c8c1d95d9b4",
              "type": "basic.info",
              "data": {
                "info": "**Arranque del**  \n**temporizador**",
                "readonly": true
              },
              "position": {
                "x": 1264,
                "y": 408
              },
              "size": {
                "width": 144,
                "height": 56
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "a0ae7ae6-94bd-4958-8871-4a00574de708",
                "port": "constant-out"
              },
              "target": {
                "block": "3975ec8b-af2f-4abd-a1d5-e6cd8561b22f",
                "port": "TICS"
              }
            },
            {
              "source": {
                "block": "3975ec8b-af2f-4abd-a1d5-e6cd8561b22f",
                "port": "p"
              },
              "target": {
                "block": "c45dab76-9d0f-4742-9e4d-3048637d245d",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "3975ec8b-af2f-4abd-a1d5-e6cd8561b22f",
                "port": "tic"
              },
              "target": {
                "block": "8c6fda76-1ba0-4ef8-a53d-7bc8a9db4454",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "7697c4d1-f5f8-4a1d-88af-e367fe54e4b6",
                "port": "out"
              },
              "target": {
                "block": "3975ec8b-af2f-4abd-a1d5-e6cd8561b22f",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "4cd7cf1f-7f82-4404-bcd9-bac9500569e0",
                "port": "out"
              },
              "target": {
                "block": "3975ec8b-af2f-4abd-a1d5-e6cd8561b22f",
                "port": "start"
              }
            }
          ]
        }
      }
    },
    "5cc6ec961df1a19b78d61422b28169fc0f69384b": {
      "package": {
        "name": "Mux 2 a 1",
        "version": "0.0.1",
        "description": "Multiplexor de 2 a 1",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2280.833%22%20height=%22158.56%22%20viewBox=%220%200%2075.781585%20148.65066%22%3E%3Cpath%20d=%22M74.375%2036.836c0-12.691-6.99-24.413-18.326-30.729-11.335-6.316-25.284-6.262-36.568.141C8.198%2012.652%201.304%2024.427%201.407%2037.118v74.415c-.103%2012.69%206.79%2024.466%2018.074%2030.87%2011.284%206.403%2025.233%206.457%2036.568.14%2011.336-6.316%2018.326-18.037%2018.326-30.728z%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%227.448%22%20y=%2291.518%22%20transform=%22matrix(1.00472%200%200%20.9953%2020.25%2033.697)%22%20font-weight=%22400%22%20font-size=%2233.509%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%227.448%22%20y=%2291.518%22%3E0%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%227.359%22%20y=%2214.582%22%20transform=%22matrix(1.00472%200%200%20.9953%2020.25%2033.697)%22%20font-weight=%22400%22%20font-size=%2233.509%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%227.359%22%20y=%2214.582%22%3E1%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "5898179a-7390-429b-ac3c-b7a0df673610",
              "type": "basic.input",
              "data": {
                "name": "i1",
                "clock": false
              },
              "position": {
                "x": -704,
                "y": -88
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
                "x": -704,
                "y": 0
              }
            },
            {
              "id": "0ef557c8-5378-43b3-80af-176f129f1a07",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": -48,
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
                "code": "//-- Multiplexor de 2 a 1, \n//-- de 8 bits\n\nreg _o;\n\nalways @(*) begin\n    case(sel)\n        0: _o = i0;\n        1: _o = i1;\n        default: _o = i0;\n    endcase\nend\n\nassign o = _o;\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i1"
                    },
                    {
                      "name": "i0"
                    },
                    {
                      "name": "sel"
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
              }
            }
          ]
        }
      }
    },
    "e3daf22cb32a89f1267830f36f9b813d22018b8e": {
      "package": {
        "name": "NEOHeart",
        "version": "0.1",
        "description": "Temporizacion para las tramas neopixel",
        "author": "Andrés Prieto-Moreno y Juan González-Gómez",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22364.834%22%20height=%22260.596%22%20viewBox=%220%200%2096.528969%2068.949433%22%3E%3Cg%20transform=%22translate(-57.226%20-49.842)%22%3E%3Cg%20transform=%22matrix(.79321%200%200%20.79321%20-10.782%2043.52)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cpath%20d=%22M104.773%20117.922c-1.17-2.123-2.98-4.202-6.414-7.36-1.86-1.71-2.99-2.659-9.432-7.914-5.048-4.12-7.566-6.405-10.485-9.515-2.918-3.111-4.632-5.589-6.103-8.82-.94-2.062-1.585-4.05-1.987-6.115-.51-2.624-.58-3.512-.576-7.376.003-5.069.161-5.912%201.737-9.294%201.172-2.512%202.061-3.834%203.914-5.821%201.799-1.928%202.967-2.805%205.492-4.123%202.806-1.466%204.836-1.85%209.017-1.708%203.249.11%204.438.452%207.014%202.017%204.053%202.464%207.2%206.419%208.07%2010.147.142.61.289%201.108.326%201.108.037%200%20.366-.713.73-1.584%201.237-2.963%202.387-4.77%204.214-6.63%205.594-5.696%2014.412-6.726%2021.542-2.518%202.912%201.719%205.281%204.22%207.117%207.516%201.445%202.594%202.184%206.039%202.31%2010.77.183%206.856-1.005%2011.607-4.165%2016.67-1.254%202.01-2.181%203.226-3.921%205.144-2.807%203.097-5.338%205.373-11.314%2010.173-3.77%203.029-6.006%204.976-9.24%208.055-2.593%202.466-6.61%206.76-6.996%207.478-.17.313-.322.57-.34.57-.017%200-.247-.391-.51-.87z%22%20fill=%22red%22/%3E%3Cg%20transform=%22matrix(.79321%200%200%20.79321%2062.167%2043.52)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.79321%200%200%20.79321%2061.789%2016.683)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cimage%20y=%2265.244%22%20x=%2283.589%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASMAAAD5CAYAAABs8lPQAAAABmJLR0QA/wD/AP+gvaeTAAAACXBI%20WXMAAA7EAAAOxAGVKw4bAAAAB3RJTUUH4gkeCwUT3xIIjgAAABl0RVh0Q29tbWVudABDcmVhdGVk%20IHdpdGggR0lNUFeBDhcAACAASURBVHja7L3ZkyTZdeb3u/f6GntkRu5VWVVZ1V3VW3V1N0ACBEiC%20JIAxDjQSSTNSNmN8GMqkpukvAB+pN9CkfwCUSQ8c44wZJM0MR0abAdggFgINdHd1V++1dO25L5Gx%20uodv9149eGQtDQwH1GwEkKcsKqI8IrIiPdw/P+f7vnOusNZyHMfxHwpjzZoU8vbHt0fp6GtVv/57%20x3voOP5jwzneBcfxk4QU8nZhi887wnnlaFtm0peRxRrAMN21eZ7jCIlSCkd5bzrSfwVACHW7/Bnq%20NkLeFvwoqP0tMLhWmMHXCp2+FLiL4vib+NkNcZwZ/XRHSv7yiPQrBUW7QfVPKrh/dLTdRb0if8yJ%20b6xZG6aDr42TyUtxPCZJc4wtGEUTkiQmmiQYUyCUS6EzitzgORKsJk9SomhEZ26WzkwbRwmklCTx%20mEajgUSglIunHJRS5U04CCHAyvKgExIpJZSvBsrtSgksGms1CI0QFkuBMQWF0WAVRoAQCikcpJQI%20oVDSQSmXdnXhGKyOweg4/pOVQ9i1iPQrMfnveqg3HdTtAr3mIG7XCX/PYNcGTL7m47wCkj7xl1MK%20DAUKl8JmJHFKHI1IxwlZEhONYtLxmEG3j7CGrND0+4ccHPYZjQekWYG1mvubWzQaNVozs8zNzdKe%206ZAXKYWBVqMGWcag10ObnKeeOs/qiWW0LqgEIb7nMBqNUMIiUDhldoTjOLjSQUqHalhDCIFAIUQJ%20JMADkLJotM7Ji4SiSDA2R+scbVK0NaRpjkFiTPk2JV0cx0UKD5CcWj1Np3HiGJCOy7Tj+I+NmPwr%20fSZfzjEUaEC8VGBeyimwFC+ZcWLj8YRoEpMb/VKSpQzjiDiZoK1le3OTLMvIkpQ8zUjGEYPDHsP+%20gCJOmGu2qfoBWmt6/T7D4ZAkz0iShGgSY4xh+cQKynexCrqDPr1BH8/zOHf2DDONGsOoRxyPOZWs%20YKWhKDKiJCXLHXKTYoTEd3wczyH0XYKggud5KOnSqDYRVk7BSAACIRTWCBCGLEsodEqWQZoVZHmG%20tjlG5xQ6Q5uCXFuKQqMLi5yCXJFb0jSnKArSldSuzJ09BqRjMDqO/z+Z0FbWuxXlCdoXDJMx3VGP%20w2jAKBkTZTHjZIJNNJOdHiI3IARGCYajEbsH+wzjMdpaAs9Da40nHXzHZTIas7+7RxxFBChm203C%20akC1WqWzOIfrukhHsbO3y807t7l69SryYJf93gHCUbiuS1bkLC0tcc45S6UW4lc8klxhlUW6FsdC%20oQvyNKFWqeK6LtWwSrVapRbWCIIATwUoHIyxCOs8BkZlYiQARb1WQ1uXovAotEtWeCSJQ5Iq0lwx%20iRMcY8lSgXYsQkisscTxhOFwzM72HtevX6dRf9O227O0mrO0WjOcXDxxVsq/C091HMdg9HMUO4zs%20sEjZjw7Z7O9xEPVZ39+mO+6yc7DP4bBLmmUgLUqCbxTzsslM2GBmYY52s4mXhGRVCyMPK+Cw30cC%20buAiXI/cSMYiJREZrheycGaRU0srrCwuMdNqszi/hOd5fHD1Q77/2g+JkxhtLQf9Q9Ikp1qtAjAp%20UuIkYvcgRyhozdbxPIc4HqOLnFpYIazWqYYVAtcnDKtUwgaBF6KEA0gMAk/6iCk/xIP7aaWGxZIj%20hYfnSlzXwbMOjnKR0kE5CeN4MuWTDEiDVJI8L0iyiOG4z3g84c47b9Pt9mi3ZlheXqVWq+G5wa3A%208zl35izznQWeeOLJP/Q8/0+Pj8JjzujnLnrkl4dMXpJYYmL2ogF3ejvc7G5yu7vF7cMtdkYHBO0a%20uU6Io4jJaICnYbZeZ6kzy3zQ5FSwzInOUpmxmIxUZ2zsbnJj/S6jyZjeaIgQkv5hjzzOELmlt9Ol%20Kn1efPppfu+/+RImnjBTazDfnCUdTtjb2WcwGpJqw/ruDt95/QfsHB4QpQlZljHbatOo1/GFpB36%20fOHXPscvf+azROMhJs1pVCroNGO+M89Mo4PvVgj8Okp6WDyskWU5JSTib8kPwWCn92AQ0/vCZuR5%20Tm4mdAe79IeH5HlKpjOyLEMIwWFvxK1bdzk4GPHBB9dIJhmu6+PIkkAfjQekk4yaqjHT6HDu3DnO%20nj1Hp9NhcXGZkydOsbB0rNQdZ0Y/wzHSydcOVfq7SckH8fbm+2wOdvho/TY3dzc50DFFRWErEl0L%202Rh2CUKHRrXG3HKLthfSqdeZr9VpqxrV1McJJDgGZQUuCr/hYbycrZ1t+tEIoVzGyRid5niFQDua%20oF6hMlNlp79Df3sHPUrwComOUnRSIJRDLsG4LoUpsErg10JIJYnO8POUmdk2T5w7x5NPPcnMTIs8%20S5hECUVW0Kg0addnCd0qrlPBEQESH20kGPXjEqFHLodHT0qMzkGUPBKifIMUCiVdLJJqpUlhCsbj%20PrnJcT1JrguSfEyuJ+x2N0nyCaNJRDHU+K5LUeR0u/t40ucg2qFb3Wdnd4tvfetbpGnK8vIKFy9e%20YmVlxS4tLbHQmeWppy/QnCmVOV3EX8HqNeUee6mOweinmIweK373gAnv37/JO9s3eHP3On0mRGlC%206hc4oUdQ8ZESiiLn9OwcM7Ua840WrSCk7Yc0vZBASnyjUBMBWmMBVFm+1Zo1KrUK8SQqlSohUEph%20pQYsSgiKLGfUH7CxscF4/wAzTvFygZgUYARWSMZ5Si+O2dnaJEET1KsEnoOrHE6dPMGvffbTLLTb%20nD59ijRLmEwmuK5Lvd6k0+ogcAn8Kkr5CNwpOS3Kz3pED/0ESbi1FmtBCErpHnCURChLRTYQCrTW%205CZHOS7RZIw2OY4rWJibQVrY3xuwvb3LaDAgyzKM1jRnGmhVYNKMVqPCiy98grm5BUAShiH1WoNh%2075D1O7e4/MYPOXX6pH3qqadYWlqg2pj/AtasIY55p2Mw+imJ1GQv+9L70wLz+Vv5zpffuX+DK7ev%20cXXjLjcnuxzOwMTTSEfgS4dW1aPZqNP0QnwEy+0ODc+n5XoEKFxrcQ2QG8gNgeuRFgnCyKkHx1Kr%20V1leXmZ5e5n94QBtDHnuI7XAFZY8s6RZwv3NDQ62NgmMZTZo0A5qpUFRgDaGNE0ZDAYopQhcFyEE%20xhg0OVJBs1mnVg/xfMngoI8xmmq1RbPRpjO7SDbJcVQwPaQepkFC2gdENf+BQqj0Iqmp14gpKEmE%20AIWLp3ycSossnaB1Co4mzSIcaWm2qqyurvKDVy+zs7ODJceiqVQD3FyRRDE20ZxcPskv/dKn+exn%20P0sYVhgOxjiOR7PewBjDe++/w/e+812+/dffoFKpsHrqJJ/5zKf/6uILl5idmceiel5Q/yPlHHNO%20x2D09zYTyr4ykpMvD/T+V2/vbvDmrQ+4cvca9/q7DG3OqGJIqz6iFlJzfOrSoxPUONmY5UR9hrYb%200lYBNengC4XSFqENCItFU4gCRzk4Xqk+pTanMDle6LOyssKzecrtzfv0BkPyfI8oTjCOxa/5qMyQ%20FimecrHKQ/ouVgpyXZAbixQOXuBTbzVpCc1YJyQ6x3UVYeAxmUTc+Og60Xyb1eUFPM+l2WwSOiFS%20ergE+GEdUOVtCiTW6hJg5FFqJP89fNG0kpMSa+0DHxFWgJimU9bBGgdXKSphgzSPSIoReZ4gHU21%204pKkQ1zf8MKl54iihCuX32U4HFOv1lBG8tIvXuKzv/hpXnjhJYwx7O93KYqMg/0dXv/BXbKs5Kes%20yalWfA4OdnnnnTd44/VXeeKJJ/jEJz/NE+cvtJ9++umvNtrza4PD/S8PRyNc16fRaPfqrc7M8Zlw%20DEb/1YFoPd/98ub+Du/fvcpr773F9d37TDyL26lTrdfB0VQaIc3ZGU7MzrMYNphzKsx5VTqqShOX%20oJBUpYsvHdSR7G0FRVGQFSmTIib3AgqjGWcxpgCbW6peyJnV06w+scbGzjbXPrzKnVu3iPb7SClQ%20DuSJZmJAGYl1HGrtFlXp4yBRrkduDbXxiOGthO7ekNFkRLvZYm6hQ6NWpz/sYbMxd+/dYqmzROg1%20aDRa1MI6GonEKf1Cj6Q/QohpZmQ/Bjzyb82OStn/KFMSWCuwGKR1kUDohUy8kGhyQJpNgAIhC3a3%20d/EDwYsXnyPw61hteO/dq0grqQc1Xnj+WdozDUbj0mO1ubHF4eEhd2/d5f3332ftzBl6vR7Xr19n%20tj1Du92kXq2g0wlbG+v8i+s3OHXmNOfPn2dufvHLAHmuEUhc128/++yzdmX1JPPLpc/JWrMmjku7%20YzD6LxX3sz17a/sOd7bu8o3vf5OJ1PSyMbFNSK3FVRXasw3OzM4w02zRDOvMVuq0nIC2qjDn1pgT%20DRoEOMri46BwsFhAYVGkTkHGhDgbg2OI0oSqE1M3Kb1igs4SWpUGtcYstVadoOIiPM1NeY1sNCYv%20DFpnVNwOEFBfnOeZiy9ydnGV0PXIsoxhHPFX3/sOWgmMA0Za4iwm1TlGWKIkQhaW+/fvEjoh3myV%20WrVBw5shywzSkTg4j4CRRUg9ffRxEDIf24uPy/2PgdEDMsnFdRTaJijp4vs+pRJsSiLb5DRbFQ66%20e3zw4RXm506ysrJM76DHrY/uYrKcfv+Q7c0NfNdFa83dO/fZ2dmhUa/zwgvP0D8cIIXBdSzLi7Oc%20OXOGwFNMohiJ4cRih1F3j/feHHDh6Wd44YUXaNSbrK9vcv2j69y8/gFra2tcvHjJnn3iHI35M8cK%203TEY/eeP3axv+9GQ25s3+eG7b3Dl6ttkjoaqS7VVoVFrE3aatBbnaMy1aXpVllSLjlcvgUP61PGp%20UfJDEgjwkUgsgsJaEAqJgwdoQlpeHQmMwjGRn5BJizveo4gP8B2H3e4G1F1m5lssnVmiO9qme5Cg%200wQtQLg+o0HObjRgLxpQHfXI44StzU3Wt7e4/P473N64i1f1qbWb6DwjymJSUyPAZTSOieOYIAgI%20wxAppx4ibVCe+zGCWjwCPAUWOyW25SOZkvgR8vox/ujB4ylQWYnRIB2J6/pIKXF9hwCXtACpDNVq%20SPfwgEF/gtWKzc1Nut0un3jhRaIo4v69O8SjMa7rYoyh3ghpt+rUagGOFBRFgqssc/Ntnn3mPIGv%20uHPnDgd7Oxzs9jl7do2XXvoE588/RaPRIMs1J5Y6zDbr7O8fMIpHvPPWDznc32Rtbd3OL85TrdUg%20nPtDxDHPdAxG/ylBKI0tjuHVN37I5XfepDs+YPNgk9pck3pVUZltMLs8R6PTxqmGKF8hXYeG8Xna%20XWBe1KhSI8CjLMYEDiXoPJSdJA4Si8RMT18XD2EyjC1oiCahqDChgKrEdUL2zYDYTTiMR+yN9uiP%20u2i/IA8zJnaMqDps9buIRDK6F5HnKT/IBYP9LlbDxtYm1U6TxvwsVlqEo8jHBYnOqdRrCJ0jZak8%20BUFAs9kCBDkF1bD2EHceq9RKvsugp08XYMueNPFAXhMPQEiIj5VvlscAKU8zXN8HCvI8J6hWqOoK%20h8NtdvZ3GA4i9g/7mEwxnqTsbvXY29vDdV0AsiwpzZoYut19XNelVqtx8flnCDyfXrfLYXebmXaD%20T3/qk5w6scLtm9epVwNuDw55+smzvPT8BS498wRe4JLGY5RyaFdDAlfSbp4qhYw0ZTAc8s6br9Fs%201VlbW2Nlde2rTmvtlWNF7hiM/k5hjFn7ce0DBtbWu9tcufIG//Iv/m/ubdzj5JllWnNN6o0qJ9ZW%208VoVqo0qKnBLoNEOFb/CrKpz0pmhTRUfH4mLxVKYMkOwQj3WwY4tuVsFyOlJKa2HsB6F1WgV4Kgc%20EGi3/BmJyBhEI0aHfbr9LpnIcZsekRAU4xFuWKfi1MlHEzZHh3iJpkhTXOlifAejBEsrJ9nc3qDX%207zHTatFsNvE8j7WVU5ybX6BdrSNQJJMM69lpafYxABGAtdip4mexWGuRyJLZxj4isP3klYxSCjAY%20LFKWnf8WSLKcKI5J8wzpKPLM0u31GAxH1JoNlHWJ45iNjQ2SSYQ2Gt/3yfKUza37bG1tcOH8E2xu%203kMITZpGvPba9zk8OMtg2MXYjNXVZV584SKrJxbxHIHNU3RRgHURKKTRGGtwXZegVqUSOESTCXmR%20sX7/Dtvb25x5YnCr1uhQnVn8Q9RxlnQMRj9B/DggiovsK3/x/Ve+/NG9W1x5603ub96nWq9wcnWF%20sxfOUmnV8BohKnRxPQ9hBUpDxQ2Z8zsshLPUbZPAhkipMEgKLFoenb/qQeEibClAqVJMe7CN6c1B%204VhwrYMSCqEkCoc00ER5RNUN8JWH63t4QQXHRhRRAYWHo0MmacIwi5nxq4Sui7SSltMmqFbwgwDp%20ODiehxKC/f19RFrg5gW//RtfJB8nSK0wpvzMR2BirEEJ+VhGUypqAivKx8YclV8PMyGL5d+r+X9s%20s1RMwajATN9ZWMskL4iTnMFowmgU4xCiXB8hxhijsSYjjmPQBcJotNZIYVFKMR6PefUH3+P6tfeJ%20xyPq9TrLKwvMdlpUKj6gMTrj0vPP8txzz1ANQ4yALM+n1gOB65TTAxDTnjthcNwQx/NI0glxPGY0%206vPOW2+wsrzKydPjrzYa7a/ihW8i/VdwK390fNYdg9FPFG9f/9C+/vZlXrn8PQ7HA4os4dOf+RQX%20LjzB3GKHZqeJdQX7/QPILQaNIxUVr8Ks22bBbzNHG4lLjkJOyy+DnOLLj+YHR4r2x4Ho0Zu0ECoP%20IytlhiAyJvV5zi6sEdmYdC9jNIxAuDgzs+iuoJCg6j5VGbLYWkCmhnQ4xgsDCmu4f/8+w9GQZr2O%20yQocq5htzeI5PkVu0dqiRNlEq5RCo8EWSKseU8msPcqIpmqYZaqMmeksoynJLX7yzMiYAqmKaeGn%20KYwlLwwWifJCxpMuFodaowU2YdCNmcQjijRjqIc0l1aoBB7D4ZDRaECjXuHEiRNkecxh/xCBoWI8%202q0Wo3GP23fG5MWEpaU5PvmLn6DWqGOtwBiB9DyCIMANQgInRLoeUkqyPEfrsn+uphTaFuRpSpZl%20DAZj9vc22d/bZKYzx6kzZ19qLp0uL3ym+Dzy4eC6YzA6jsfi1s6Gffvtt7n85pvc2rxLJDOUK5lp%20zXD69ClOrq4QBB4WmEwmeF6AFqCES9WrMFtrM1dt05CNsmtdOGRCIqbtonYKQ0dskZ2WZEeOHFGe%20vw9LmqMX6em9Kcu4UDoYAhpUaIk6C9UFTs2N6ScjdntdilTiqJBkygUtriwyFzapW5/u+g7d3iGN%20SpXZmQ7GGCZxTDqKmKk2OLNykl947hJLnQ5KOORGURhLURiMMdMPbKYA9HCA2tG2o8NMTEu3h6TS%200WvF44XwY+ra40WyFXpa9Bm0MWS6QFuBH1Rptjuo7UOEFGS5ZRQlWCmo1Stot8BzfJ57/hKVIGR3%20d5vbN28wHB2ipMUUKfVqFUdZwlpIpeazu7eJtHDp0iUuXLhAvVnDKAclPXw/xA/rD0DIVyFyyksZ%20WwKsVAIo/V1ZEpMlE1rNJtFwRK/Xo9/dIRoN6exs/e7yiVO2uvDkWRP3LstK+xPHYHQcDyLVxcuv%20v3vlq9/73vd45/33iKIIVfWoNes4FUUl9Dg8PGB702f19AmsViRJgvUcEApXuVSDBjP1WWb8kiWS%20CCR+CThHHAjiAS8ksGAeMraPgpB98G9ZgpSABz2lFlyjCKXLDA2GNqJiAzr+PKvzZxnmGXbXYxxP%20CGsuFbfKysIJGtalf2+Hzc11+tsHML9IJaxx8alnSEYRt298xLmFVU4tLuNagS9d2vUZelmfyShm%20PIpJwoRarVH+HgKwZgpCcjpEbdpnZkvOCGEf+IiOnv87MHkoKcrJjxRoayi0xiBw/Ar1xgyN5gy3%20bt5j1N1GWRfX8YgnGZV6jU+++Ekq1SoYWFhYojM3w3h4yGQyZnPjLr4rcZRA6wyL4eSpk3RmZrn0%20/HPMzy0SpynN1gxBpUG10sAPKijpg3CAskTjyOApRHnF0AXC5PiVOpiEtNel06qysjzPzu4+d+9v%20cuP6Ad1ul8Wl7q2FxRP4jv8V6f18lm3HYPSxuL5x17515Qpvvn2F7d0dcBS1VpPEZoyTMTYtELrB%20ZDikXqtw5uwpCsDzPCbGIKRAOR6eF+C5IS4hzlQve8B9WFAWpDEPkwH7SCYhDUKCFRYjy0TITDMG%20gcCTJbQ9KNm0wBOSivBpijp1UaeuUk52TuFWQ4Jqkzsb94nlBJMWpGlKdzRkd2uLJJ4gLBRZzsb6%20OoudOUInoF2t0wqrkBn6e4eoxHCw2iPLMrCSPM+J45i0MsGRVQQSSzHlvsyUmlZTDm4q20/BdgpT%2002xP8KOTI8yP+WbKjCgnZ5KX43GzrCAvNIW2FBb8sMrC/ApKHzAeTihyzWSSUg3KVpH/68//H7rd%20HpXQ48knz3HyxCIXLjyNFJr93S0qlYBonDEcDlldPcHTF56iUq/georVhVXcYB6v0sD1wvLUsQqE%20R+k6PwIhsNZQGFuqhp7CQQABTuDAoIvOY+Y6LRqNBgeHA7Z3Drjy5hs8fbGg2u9/eXZ25eVw9ufP%20za3++I//+BiBpvHddy7bV1//IW+99y5ROkH5LrnOEJ6i2WmxfXjA1t4eRpRlQrvTprM4zygZo0IP%205Tn4QUA1qNMIajTcKqH08FAoKxDaIk3Z5qEMZZlip7XXo60PR1KaACsMPCxOHpR48qiGe2DZkaSy%20wCJJyYnTCdJ3qNUa4Egmk4TBcMjB/j7JOGZ/a4fe3j6+6+E5PkoqOrNzCCnAQLvRwhWCyThCaEM0%20HmMxCCzVapXAd3GUg+soPFchUVhRupGFlNPu+yMZX05HiFiEsIjy6SmB/TDrEw+KUzGlpx8kfxg0%20lpTEjBhNBoySAVE6JpqMGY1GRFFMNIr43K98jlMnT3Prxkfsb+/huR7VsEK90uTk6hmKLOegu8/u%207hZxNOTkyUXieMjO9jpZNmFpeYl2u82p02s89cxFatUmYbXJbGcV6TZxvRbgk+WWogDHCUswEhJt%20pmXodNKAlOUgOYNE6HLf4bg4lQZeUMVYKHKN63q0my2uvvcek9EIdBF6wv6xX2/9L8eZ0c9ZbPQP%207atvvsFffv0vyY0mqPg4VY/RaEhCzonFBdaeehI722b7h6+y2R9z6YVT3NzfQ939iNNrq+T5BFEI%20aqr0TzfDCqFy8cprIqKYSmSPJgEPKJMjSU0+4tMpZ/ooK1DW4giDEAr9gG+S5cV5+vOMKP9ypaAl%20AmYIsFmOciRqnHK4vk0aT8jjiC45nhG4jSpplJPkEzrNgH46phhoov6YuD/k9PIJlKeIdMKd9dus%20rq0w26lRMKEfjcnymErdpUpIToFPgBE5whiEVUhblpVYMMYivSnIluL8FGKn/Ww80jRiQGPR0mAR%20aDSGBEuPUbLHOItI84hJMiJNJmAKbJazfe8eP5ikHB4MqPiKLIlwfcHNmzeRxuGzn/k1/oeX/ydG%20/X22Nu/QmW0wGu7RO9wiDEpSvt1u8+wzz7NyYg3HbVNrdqhVZ8CpTseilIqZ64YPS+gHPqlHWlmm%20v1dpaQArXRAeQtXAgHULKqqO57UYdw8Y9Q74xIU1RsMh19/4a65ecbn4iU/b008/A+HPx0IDP5dg%20ZAr9eemoVwC+f+Ute/ndt/nw1jX8aoVBb5/+4YhRPGJnb5fZ+Q5rrfN4tQrGcRjGE86trbK0eorr%20N97nm9/7Hr/qf5Znn32aIs1QroOUoCR4KDBlJoA2Ja9wBEKPcLfaQsFRtlDORSx92A+dysKU56x6%20mDuVWYN4+FhK9XCSorUUSUZmE3SSIYwlixNwPQIVoLOEOE8hz8nTiP2+xaQFVT+EVCMLQ1bkyGqN%20tCgNj66r0CYnyxOkBW1zJtmEiYlw8HCkV5ajknLWtZl+OAlSCigMCA1TSd9KiRUPmaMHDbLCTPeD%20mDJEBk0GFGgKtM1QjsBxHNJJQq/bZzweM9fp0D/skY4Tunv7jIcRF158hkvPzdJqdhCO4oevvYoU%20hsA1XL12n97BFnmW4LiSM2unOHHiBPMLK7RmFqjX5qhWZ3H9JuBh9REH9sg3IMzjbvHHGoIfWh0s%20Ci3E1CNlEbbAURLHswRhFZtFkFmqbh2dzbC1e8B7b77KrTs3OXHuvH3y4me+IH7G1bafKzA6MjNK%20R72y3e3a965+yKuXX2f7YIdJkeGGAf3hgO6gz37/gN29XbrxEDyH1957h639Q/aufYggZWm5w8rq%20Sfpxl92Dfc7kaXmyOpIcgxWUpcsD8vYhFh1p9kdcUGY1hS5QSiGwKCxSWBwhyomHgocc0YO3m7Lp%20VYIWTIe2ahJyYlmUN1MwoUAFDu12k8PxEB1nJMMxxeEYaSQ1L4Cwgk4KlJRobXGlxHEkRZYTuB6h%2057D8RIdOe55QVaEo66wiM4wHY0Qu8Z0Qd9Yv5w9Rjv0oy0qLPPrFjVMeckogpyXaI7uDwkwNDxIc%20ceTdzkEnaBMzjA6J4hHRJMJaTTIp2NvtcffuOnmeU6vU0YXCdQN0IXjpxV/gC5//TaSVRFHM8tIJ%208mKBwHc42L3PtavvsL9zn6WFDp3Zec6dfZKVlVXm5xdpNmcIgyaeWwEUxpoHGZx4oG4+Mscb84ir%203PCwz45HCk6JmhJ9Ujol7w0E9SqKFtv3D/EVdObmCWtNDkYxO4d9em+/w/Ze96/OPfEMJ86cF8dg%209DMQR2bGKx9dt+99+AE3bt/i1p2bHBx26Q4P2djZZpxGGClwAhevGjJOJrx77X0MgrDa4KXf+A2y%20PObmnZv84tJLNGdn+Oj+XZbXTrK0tIRnDanVpMZilChJaGNQaroUjyivnuUhKynQ5EVBrjNc4SCm%20pLUSYkpYM20MsQ/bJew0ncIijEBIgxGGDE1EQkRCqnI0GtdTzM+0efLUGfr7PVRoGMWa1PVxtcIR%20LpWgilUaYQSuUPhIbJqjs5yqH3Lx/FN89hc+xeHe/gNay5EKR0jSJEfaCOtbRuMRvh8SuAIHA7Jc%20+cNhunaa85g5HQAAIABJREFUUh8D1AdJHBaLlEeZU0lVF2hyPSFNY7IiYRIn5IUBq0owM4o0KUEJ%20BEYrTiydZNgfMR7d4NJzZ4jjhG+98tes39+kXm/ywovPce70CYxJWFhYoEjGSKFYWFhiefkEc50l%206vUGQRDiuB5IhbGQZxrXdR6S88I+wmj9ePXvYXZUqojOgwJVlZyYdMC1iDDEo6DVmSUZD8iyFOko%20ZlpthBtwMIjY39zEEQ57O1v2wtPP9SrNzszP2lSAnyswSq19+fVb17/63b/5Nrdv32Z3b5utra1y%20RIfJSxNbxaMfj7FSUK3WGU1GpFZz+vQaX/rNf8TZs2f5f//yL/jg2nscDHqce+o8Vz/6kNsb96nN%20zFCttdBSkWNK1kdCocvRhYXN0QKmAj1mat7TtiA3GmXV9CAvAUvz0H+kkVO7pEDYRzT/qcZfEryG%20lJyJycgpEFbjG5j1q6jZRdZrMwTapZJIUgKSfsxoMEZoUEKhC10a93RBMhiTFWPqMuDi2ac4sbBC%20d6tLnufl/+dYjJBkadknprWlsIZKpUa9kuFPh/ELpTA4uFiUFEgrp8T89JS1Bms1mgJHSiw5hU0p%20bEqeJyR5wiSNyXXGJE3IjcVYRZFnjMcT0rTAakGe5wyzMa4I0QXkuSVNcsajCbVqi8VFy/r6Ot/4%20xjf4ps2ZmakxO1OjFnicO/ckv/qrn8NzA+r1JmFQx3MrCBUALlK4SHnECz3qPOVBqwuYR3rrjmpw%208zCTsqW6pqZ8X3kzCKnAdUH7VNttrDAkeUY8jjHGUqtUEXgc9Af093c57B6g86z91DNP29rsSXGc%20Gf0URm8UX/43P/j2S+99dI3Lr7/B/v4utcDn+UuX+PSnfoFqvYIb+Lzz/rt8/a9f4db6PYwtsNai%20lIPneSwuznP/zm1u377NOI7Y2Nzk9IUzdFaW2NhaZ2U0YLYzj3EkE52TKY2DwmDR1pILU7qQjwgg%207HQG0NRzJARSih9xJdspyZQhkUi8IxXZWB4dZm+BnILc5KA1ZAVSgycNzcLl4tqTfHj9Fpv7t5gM%20o3I+dWZKJS5NkVZRiAJhBdWgyny1iclyXOEwHkZ4XoBSLmDK0bbWUugS+CZmQjyOiXXMxEyoVCp4%20boDjODjCw8PDl7VpL5udMmJ6mi0WGAw5mowUrSckeUxeZGRZTJYnFHl5kuZ5yV9FUUTvcIA1As8L%206B4M8B3NqH8XT3n4bsCdW3do1tv81m/9Fq7rcv36VTbW79Hr7jDoH5DGMedOr3L+/FPkmaZeC/Hc%20EEf5COGWaqco931pH7Jl5vYICFmrHxLY6lHvlH0EkOR0NtPUnjF9SVFS3EipsK4EzwXHRXk+vq8x%20WiGVR2IzokEfrxJy6sxp1u/d4d6tW3zxN3/TNhZ/dsaU/MyDkbF27d0Pb9y6vnGXv3njNd768D22%201tdZXV7ilz71i/zub/8Oz5w+Tzfe57Df5969uyx15hlGQ3Z7XTzHJazVGPT6fOPf/jsmSYxSgmq9%20wu17dxm9EuPXK6Qm4972JvMLS3ihYihGRF6MRxUtp34ie6Saiel8Z/HAJ+dIiStcMEezn6cy+PQK%20XAD5kW9HlF+ceNAzUnbH5xQkZkKRJUgjCAuFygoCY5CF5amVNZJhyl3/Gkk+Bl3gKwdH+fTHQ6yw%206DzDcXzOP3mB3/zsrxF1u/zyL/0yrUabD6Pr5XLVnpq2q+pS8RIWIzK0yUnyjHE0xss9PD/E8zwc%20x8ORDhWnjmPLZamlOBLw7VF+SKYTcpNjioSiyNEmpzAphU7QBfhhBSvAcRwmaYyUkqXlBULfZ297%20j2QyIc8KdKZRSnF//R7dbo9+t4+UkpdevMTS4jz3797i8hvfJ/SqPP30szz5xAWM1ijpo6ZLI2FF%206eFU09VuxUOO6CEQlSV42fqiEdI+XDH3MSJ7yiEdOdDFw1Ygg8RICVLhzMwixgMyXVBoDbnBEQ51%2036fTaGIdQOfsbNzj9ctvsrO9yT/8b3/LnnrimT9R/k+/UfJnFowKaz+/M5781Z2N+7z62g94/d0r%207E8i9np9nr54kf/+t3+HtdWTWODa3Wtcu/oBH374Aes7W8y2mjypzrL16jaTPKVRrzM87HFH3Cao%20BAglSNOUWrPJ/Y0N/EaF2kyDjZ1tzo2GBNLFNy5RfUJN+uhpA6WgLFMEAmElSpQObC1cDAplFNM+%20y+lxXCo1Gs2jLRKPWQIFaGvRwjAmYpzGJEWOEAJfejiFJSgk1kBuFE+fO48eZ1z94Bp3bt2l3+2h%20Ah+JInRDRpMhSaZp1OpcvPg8GzduUglC7t27x7e+8x38WoVqNcQPPZQrcT2J4zs4nmD55AoJKToz%20SA0yd3Bd98HsIc8rJze5QuFIMe1ROyowNdqWsGRsgZAGjMHIDCPKAW/GOKRpirUOeZ5ibEG9XscW%20mqIo+PDDDzi5fJIkyuh05lmcX+LmR7f4zne+RZIkXH7jNS499yyjYQ8lHL74hV/nhUuXmEQJ1loa%209TauV0G6FRA+1kz77QQo9XiuWnJdZVZ0lEE/NG/aI8z5+JVxahB7CGzmyAAqBWQphdbUmw2cWoPx%204ZA8yQkcj+VOB+PC629e5ta16+xsrvPPP/iQbrfLH/yP//OXV596/hiM/l6WZHB5bxK9dO32Tb77%202g+4/OYV1ne2yK3hM7/66/zBP/knOAL+3b/512TjMUtzM6zfv8u9e3fxfZ96vcpTa09QCWu8/vZb%20dLuH1FtNBoMBBYaZhVnmq8uMixgrJP3BEK9W4eCwy9Ub12k8+wLLzTnG2YSa7xMKB1eWoybILVab%20qYavUBKUnB7tP2JELq+eSjgIWYKQAryjdjBrQRpSk9FnxF52iFYCGXjkWY4VEiGcksh2AoajBK8a%208PnP/TpPrZ3nz//Zv0AnmkE/wpMu1hha1QaeUPR6fb75zW/hF4ZsENHtHvDutQ9JbIa1GuUpvNCh%20UvGoNiqEtQDvpovrO4TVEC8M8AIXLwxKLs538EMXKaHiB9TCCq6QpYtaa4wSKMdBOtPyL8tR2uIJ%20B8cBqcFkE6q1kNnZWQqdISUkSUwUjViY69BfWGQ8HuM5Hr/2uV9hbmaO3uGAra0d9vb2CLwKzz/7%20DP/8z/+ML/3DL/LCCy/R6x3iCpidnUVJf6r8lWbUo5Vv7dR2oB5pmXs0MzK27NM7GmsiRXl7vNZ+%20ZDrBtNu/mPKGCnCVC5QzmpJ0QjQeYYqM0AuwRpKYjPeuvMvdmzcokoiZRp0kSfmrr/9btrb3+P1/%20+gf2l7/4j8QxGP09id08t7mSbHa7vPfRDa7evsX6aEAcesSew9xshzPnnyQR8P5bb/H1b3+Lw909%20Lj71JGurJ2l1OtTqVfKi4KNbN5HK5ROXXuDG7Vu899ZbzD2xRq4143GMCASO6yCzcmmg2dlZ2rMt%20hLQkWcI4idiPNV7NUqsFgKFGFeEqrCxlecFjXOjjAxAND8jPo9cpA448MmpbrNCkImNEzNBOGBKx%20l4wY5mOkI2nUQxxCitGEOI7pjYd89N67vHjpBcKwykxzhns371NxQ8bjiCTPSze2F5DGKXfv3kWP%20J3z73jdRniJzLAUW4UikJ9DKEpORp5ZYJCTDCSpwCSo+XujhBT5u4OKHAa6vEBWL61nqQY16UEEa%20S5rmZEWBlYrclmbHPC8wucEzihCFTA0mKnAjSTE2eJ6HKQpajSYnV05QJCme7/ClL32Jd668zfWr%20H/Hd736bWlhjdnaOhfklzj/xJJ32LP3DHv/gC1/kky++xCSKqfgVWs06aZpO9/e0x2xqpXigmUke%20GXZy1F+nEGJq8JQ81nf3Y+PHbBeP/EGUBZ48UlCVxJMwGo/Z395k4+5t8iTCcxWBJ/GkJGxUuHP7%20Fv/b//onbGxt23/8T18WAEVRfN5xfrp8ST9TYGRdl/dv3uTK1Q9ZPzzgMIrYGo/Zy1ISz8NrNdkZ%20jvhXX/86N95/j8x1CDttNnuHFI5lZWGeFMP2/i5RMuGzv/Ir/MrnPse1G9f5My/g9tY61lrEZFIu%201SwFRVrgVj1WlpY5sbrC9tYWG5v3afkV3KBBL5bU/JC2W0eicK2LUhIpHw5NewyQHgUl+eAijQD8%20I2ASoFVGZGMGesyuHrBrR/SdhLHKiDwQypDamHw44XBzm+7ePvdu3+H+3XsURZkBSekgrARtEIWh%206lUwhSWNEvJMI4WD8kPurG+wsrpCIaFQFqUkRioKIMtyIp1CasqpllKTSo1DhiwSnNTFTWNUAPkk%20Jqg6tPIG1cTH5gWTOCUzBqscCgRJUZAmOSbThNYh0Aob5TDKEQPD5DCiyHIa1RrPP3eJJEkYjUYI%20IVhYWMBxHLIs48P33ieKJjSbTWZn5zi39gQvXvwkve4hL1x6nsXFZe7fuwVBOXgtz/NHyqzyalAK%20DXoqLzBtUXl8NK6UctpfJ5HiUa7ooavVTgc6Cfn4kk1lkSqmHYei7E+0GlMU5RR0aSnylO7hLvfu%203QGrydMMP6gwNzvDndvrDOOIONHk29v8+T/7MyZxav+73/kdZhdXxHFm9F9Jst+I46/e3d7l8rvv%20cPn6VXppwjBN2ejuM4hilOvQTRPu7O+SRmN2JxFuo452Ldu9Lr3tiFhZlhbmePbTv8CFCxd47rnn%20cByPd69dwwlCxklK6Lpoa4miCJNYknGEMBnJKKYe1Ngxlo2NDWbCGnPnnmacxdzfvYudO0HhGALh%20EQq/BBRhkUbgCPVwNR9j0QiMMFghpuT09Hos7VTEL4hFzJCIAzFgS3fZt0PGjiESBWOdcjjoc7C9%20z+76Fv2tA9L+iLQ3Bm343vdfRcc5Z0+e5fy589y/ex+pJckkw1cOhc6pBCHLJ1bo7x1QazVpzXbY%20i3poYzBaYHKNsGXjqiZHuBJHll4oZQ0UOVYIpKNwPIX1LU4bKo5FMGEySSkmGWmalr1bnkMuJWmh%20SZMCkRny3CHJQcYFMjIQZ+RZhs40Iyasr2+wfm+dw90uM80ZdrZ26R8OaNbqFEGVZtPiOA5xlLC3%20e8BgMGBxcZGZmRm63S5hGOK55fOtVqtsQ9H5QwASlmJqqjgqzbBH2Q8PzItH0v7RnKbHzJC2bAQW%20U0vDw+vNEX39EOrQFpOlCF2gBKR5Sn+/x97OJv3ePnmaITF0Ztt0Fpe5e2+T3W6/PC6ky707d/k/%20/4//nf39ff7x7/++XT37pDgGo/8CsT08tIEfvtn2w09sTiZf/eDWTW5vbePUaqyefZL+zRts7+wy%20zArcWgPH9+hlOfnBHsJoYmXJ0ghrM0Q9ILU5Hx1u0zi1xNlPXOLppy+ye7DHK9/4Jq/+zatsHuwj%20PR+jFJM0Z5KMcUIXqVzMJOfW9RssLy6w1Jln3+ywvbfN6cUl8KoMhlHp32lrKm6FqqxQmc7AlpKy%20iRbwpIdRBbk9apCVD4T70gJoyMiYkDNiwiF99mSfHeeQnh2xNxoQFRn9wYDd3T12N3YYdPvkkxxP%20S0SR0gqqjIZjmpUqs7OzLLbnGXcH3NnrkSYZlfYsvvQIwyrVap2r+9cwSrGxs4uquBTWovMckZfT%203bQsEI5ACUkx0QgNMhdYpTECpKNxPBebg1SKTBsKlSHTgiyOMFrjuC4y9EmwpNpgCovMDFma4iYW%20L7V4mUQkBq3LFWezTHPv7iZ7O7v4yuPCuWfw3BBrJVlmiKIIKRykLEjTnIODLpcuXeLsmTXiaMTO%201gHNRgUpJY7joHU5ATLPc0yRIx2v3PPWTBuA1eMeIktZogk5BSP5SF+afJgRTaX8B5cUUfrPrLUP%20Wn9ATxvyDCbLUbZshxmMR2xv3ad7sAtYonhEURT0ej3STDMeDSjyFOV4jEdDjBUUWcq//pf/inv3%207vHyyy/bS5/6jDgGo/9cWRDFyz7Ony41ZsQI+7XLm/ftzXsbbPd7tBYWaVcqtFYFlcUFaneWubWx%20wX6vz6TIEH6FrcEATIZ0JX6jShg0ECZj3D/EWsv9UZdvXXmdKx9d5/7N27z3zvtMRmW6H1pDkiQU%20WQpZTrXdYH7pJFE6JhlH3Lt9h8/9+i9Tq3jcuXGTrZ1NghOrWNfQnRwysTmhV6FZqdEIatTU/8fe%20mzxZdt13fp9zzh3flPNQA2rEWCBAkCBAECQokiAlUXL0Qh1qWbJDCzui/S/YO2nnvVfa2SHb0W6Z%20ilazJZGExCYJEiRIDARQQBWGAmrMrBzfdN+dzuTFeVko0i1FdLcGSIFbUVGZVRWVmZX3fe/5fX/f%20oUNKTCxCNH9Yczu0OHp2SmxI76HCUGEZUTCi4JApW+yzVe6y1+xTuIrdg11mdUU9rWjLGpdYkkGC%20xaKNo6lL6qbi+NI6x1aOcf3GDaQWrK2s42tPVYVEwmldUJYlddOQZCkbJ45z48YNEgG10Thv8dLi%20VchCkaki8iLkohiLTAReepwUqDgKIfwo2hk4q3DOYGc1etYgpCfNBapVtApaZ/HGEzmJrxxUDtX6%20oIlCoU2LM5AIjxaeKErZWD3BA/dd4PWfv8FkXFJMa4zxLC72SNOUQX+RhcGA11+7SISk18lYW1uj%20LacYPHmWUxQFed6laRqapiKNkjmBbfHzQSqUCfAhtzQf54SAX94+HAERd3FMiCMZQAAlgQ/hDNaB%20baFp8NrgrMbUJaPRIcPhAXVdooRDKUlVVZSzms6gJssy3r9+iyjrkGQ9nDYoIRiNh/zHv/4uzlj+%201eGhf/LJJ+mtfvTNtv+kwMjgv3qznv5RkmR/lMt8+P7OraWfvvoqh5MZy5sb5P0B46ahRXDsxEm6%20a5ssbVzlrXff5sb+DjaNUMt9nG8RvsW6hnE9xeoaOciQQrCna3769lvQGqrxjNJonPQcFFPybo9Z%20FXq7fNYhihKWF5ZZjhYYTg843NvlxrXrJJGkbkq2d7dZW11mqdun1jWzqiFqE0ZNziDrsZB26SWd%20oPUhQikVKqUd+Ai8kBgMjdOMadiRNTuM2GvHHLgRt9t9tme7jNsxrW2YzUbYqoFSk7qINEmQRqCl%20pTQ13aUFZrcOGJcFbw/fpT6YorTg/PHTHF/Z4I3X32RrOKKtW/b29nnltdfopBlZ3iFOUsajGdoF%20R52MBD4SeGkQrUW0Oizpw2oIL8BJgYgEcZwi0phsdRFdS7RxmKnFVJYkErjGIxsDeUSjA2eS+IhI%20g2s8vnZYpxFaYTTgBNqHFOwk7iBEzP7eiMl4RiwyEtUJKQfETMYliwurOAvPffuvuH1ri/NnT/Pp%20T38SgSTPM/COfr+PMSHrqa5rVNohjhKCOzCEuB1lfP+n+WnxS0D0Ia90xHw7F3goO+eI5NGWzWjQ%20GlPMsE1LU5SMD/YYHh6gTYv1hqKq0VpjjCFSCcePH+eJzz1N9BffZvv2Hl4lQMPBwR5Zp4eKE37w%20/PfYP9hlePi7PPWFZ/yJM/eKj8Ho7+i6hXkuyZaogBfffmvp1Z+/xnRWcfyeU/ROnmKrmBLnHRrn%20KCZTssGAzzzxOKfPneWta1d49f3LVL5ld+823rcsrS0j6oTZ0EMciM8mScBLbGtopYBOisoThIUk%20zUiShDxNaHXIzxmNJgyWuyRJxqie8MJPXqTf79JJYvJowng8ZqnbxzlHnmVY62iqKcOmpoqmoT12%20fpOnvc58HPPYGEzkabGUumFIybvtLrtuykgXFKJm6meM9RRtaiIJRlisabFlTV1olJaggQY6UYIo%20HVnSQRio65bPfe7z3LOyyWR/wnvvX+XNy5eoyoqNzU2qquJ7zz3H5j33oOsGrS26nbd8SIjSCKzH%20CIdvDDSCpBsSLZ0XWB9kkQhwsYEGvGxQcURjLGba4JqGVknSjkAUlqQLTVXSti1WRggfEzUWXWki%20I5A2AiuIlaIqatp6imk1h7dHtKWmk3ZoW0Pd6jl/I4mihHPn7mVjbZUfDUdc++AKl996jcOD21x4%20+H4evP88u7d3OH3mHtpGo02NNhXeNogoJUJgj2wdxPzCIUjIOzT03Sv/u09Edx+YvJBzzZifw5FB%20+BpcBaaknR5CXdDOxoz3dyimwzuj4qQYY60KtVLbWxgkTz71NJ9/6rO88dbbXLx8mTiK6GUZZTmj%2021cMOjmvv/wq9XRGMS35rd9deam/+NGNtf0nFa62hfqDCfDuqORbP/wJb97c4uSFhzlx4QLbxRSb%20ZdRSoCNJlKXISGGNIUti1jfXifs5qpsg0jhYNpzHqRiZd0DFxGmOcQKPJMtzkjylwVJ7g1Dzrdhg%20gDMa07YoqWjaBu092cKA0mhGZcnO7i5CSBZ7C2RC0VcZi2mXzAhkbehGCRHQlDOIBT6B/XbETrPP%20vpywm0y4HQ25GR3wvr/FpfYqF+srvD57jxt+hyFjClFQ2pKmKWjLinZaISuHLyx61GImGlkJUhPj%20ZgY7bEgqSe5SIifIVMru7X3evHiZ19+8xNVr14mThDjJqJqWqqxRUUI9q2iqBqODqz+8kBzOWLzz%204ENtkHAhHE03JogenURYgTMW6QSxjJFCoasKPavwrcEbAdqD8URGYsYtdtIiCossPVEDXoPRHl1a%20qnGDryxee5wRlEVJU9ZkaU6edojThI3NTabFlLosGY9HPPnkE/zu7/63jMdDXn7xBXp5QqcTce36%20Fa68/zbj6ZD1jRXiJAodb87gbUjazGKFUCqs2Z1AkH6YPy5+eWUfQPgOd3RXNApu7tw5iqQVDk+N%20pELYCabYRR/eQhZD2uEe053bzEZD6rpiWk6Z1BVWSKwR9HoDmqZla3uLmzdvsLg0wBnL4d4eVVlg%202ppOkpGnKbpsaaqGYjzhzYtv0TpzvD8Y/MH6+sYffnwy+q+4brfGmyTi9YMZf/XX/5G94YhPPPU0%20K8fW2R6Pyft9qqaeiwghEgLpDcp+uDq9/9Q9DNYWWF5ZZGd4wKiYMq5mlFVB2zYkcYRrGyLrkErg%20qgrvW6xymNZgleDCuXsRzvPGa69y84MrUEWoPCWpW/qDJWSWsD0t2N054PjCCvWgYTouWIq7VK0h%20URFRqhCRxCSWStd4pWlTT3d9hd32kO16n71qxNBMOWwmDOspYzejyUPciPDBMCstuLrFlxpXalyr%20EJVHtUAjoDYYC67SMNP4OhQhGuPw1iOtwGmH8yDSGOPF3KRw1PoaFOBCBpLWW3NHeSDmmz4pJJhw%20ArK1wTqLlwKvg7DTi8CJSOnwssE7i7cGay3CzPXHRuG1C3+vBWFACIuJwurcG4trHZGG1lhsMw+9%20d3MuqjUMJ2OapqFIp9R1TZQmDJKEoij4/ve/z8sv/ZQ4jml0HYTQkUTrhg8+uELdTFldWuYLzzyN%20c2BsRVUOGXtHt1uT5P0AJFaDiH85JeRv9O3fPcHJ+alJihD24lyN11N0PcaVQ1w1pti7RTUc0c4m%20eN2i64bZZMq4mFFpT54uYqwiyzLW19dZX19Deti9vc21q9c5eeI4w2bCpx99hM99/hmGwwl7uwf0%20+wvILONP/59/y/bt2/zO7/yu/9QTT4qPweg/83Jw7tDZl8ok4ifvX+P5199gXE548OEHOX58E4kn%20ihTKGbI4JokkWaTmAOQRLtCPOpHkuSTNIpbynNWFBXanI3aKIfvFmEKXWGvxJsICVgj8TOGoAI3G%20UZqW26MDOnHKwtoK2humxTjc/EXB/WceZFKMmOzsEkvBoLfAbFpyZfw+XZly5tRp6rpmbzJBJJLO%20oI9IoKHFpwlvvv8e28Uut2Z7TPyMUrYUtqBEo5XB1qCx4CASMqimW4ed1OhpjW0kcSuQlcVUGl0Y%20TOtwlYXSgbHQgLUe4ebKbgRJHBMLian0vLHjruTC+YtJHLWSHG2EhLh7GMHLwP0474JvTUqQAhEp%20hFS41mBsG/rOrMMbi3Bho2Qjj9AKjMVqjTMGIQQuCmDoTPBpKadoqhZr7dyAGz6DpmkYHw4ZmlDO%20aI0hjmM6eU7TNLz77ruUZUmSpVR1hTGeTr+DUnA4GlK1M8bjId2FnOXlZY5vHEcpQRJFRC2oyKNi%20QCXzrHL5C8cjIeYpRf7Dm/buN8Q8XSFkU1mE1fi2xlQFZjahHY1xkwmT4Yh6PGY2LalmNcV4yuH+%20kEnd4GSC8IZWt0F4LxTXr9/g8uW3GY6nHDu2wuLiIsePn+TBB+7j2MYGZ0+dZX19g3Pn7iXqdCGJ%20+MELP+J/u7nF7/3ef++ffuZXXu4sDT4yY9tHekxr4F/fhOeul7P8ncMDvvn971Pqlgceup977z2P%201w3SGVZ6AzpKsTHos94LP1e6OYtJykKSspx3WOx0MKYlk5KOiukmCZ0sJU5iZCaRWUyFwaYSUoGL%20g7veGIMxLXhYHQxYW1lmcWmRJIupqmCTMN6wuLiAUpLd7R3GwyHnT57i6cefIHaS4d4BmxvHyLs9%20sl4XmQdCV/Vy9sspb77/Hhc/eJeX3nyNd25dZ3dyQGk0jW0oW4O1BiUkrmlxVYubGWTriFqBbCx2%200qBHFWZcQWkRpcXPDLZoMUWDm2loPba0YEB5iZIRkYhCMEnQ2oGZ1yQdRXD7+XzhPML7YBydvwSF%20EMg7TK5AeD8vkg1AJ/ABMIUiVhGxiGjqGpxDaI9rWoR1RE7O88EDWDpjcdrirQUXgMvNwStxEbpp%20QymAdR8C4dyb1tQN1lqUlBhjQvOKCieJ8+fuZTwKhQLaGpIsRiUKISFOI7IsZnfvNk1doaRHKYG8%2049IPP4M/zSCkwQsDws7rk7iztg+nSYfHzNtSDAId5k3XgqmgLrDlBFNN0NMRzXCfajjCVhXNbMas%20mDGdFuwdjNg5PKRqNDLKQKQcjiZMpqGcsqwqdnZ28M5z4sRJ7jl5kgceeICyqHjvnXfBeeIo2HyW%20lpZ4+utf53B7ix9+7wdceecdEhUdP7l5/A/SfvcPPz4Z/W38kHa+jiVT4JX9fb7zw+exwvPggw+w%202O9SjA7YXF6mF0XEXrC+uEhiPXkkyOZfmIuPwqwEDlhMEgo0pTNMbc5Bp8NCltDNIvJmQtzLOGwK%20JsVpCB1fAAAgAElEQVSYppzhncFHkriTE0mFihJM6tke73Dz/Q8oDkdk/fBnk9GYSAr2bm3TDkeU%20ayWduMtgI2f3+jbXbtwi6nTZ6OS0CD64dYut/V2u7t/k+t4WM1vSxBZySZLlKBljWk3TNhhviBOJ%20kJbEeoyxSBwqCSNoVDjE1MCoRNsYDMgaVO3wlUO0DmkFurEhyEzYIBrwBukl3nqwIOfGXekDqFgn%208NbjvUN4T3Sn9TaE4govAmDddUKK5u2x3kGEIFGK2IbvgKodIgqljkIHgWcUBZuLEkE/hBFzT948%20JVIKnA9aLO89av7DW7Dzj63mSugo+rCPralrbGuDLsnC2soq2vkQ/ephVtU4EtI0dJ2VbUkvz5nM%20hly94ZnMRqwtr7CxscHmxgYDVtCuRUUpcZQjVDK/yxKEsISvVt1Z84sjYHJHYOagrqCdoZsZuiqw%207RQzG1NPJhTDQ2Srg1dPW+pWUx29bx220RTlGOclxnr2D4MIMk1TThw/wfnTZ4iihGI4Znd3F2s9%20t4Rg+9pVsrTD+Qce5Jkvf5nf/NJXqIcTvvkXf86f/N//F21Z8cyXv+JPXLhPfAxGf9OYHUtuWc+L%20V67wwjuX2KoqPv/Yoyz1Oww6KYtph9Vul6U8p4+gA0SRIAXm5TFzweCHROIARYuikVBIzZgOq3HK%20UpqybPtsu5JbxZAbWA7qMtgUhCBWMSry7BdDtm5dR2/vQlPTGSzRSXs0s4JqWlFIga8NWLj+7gdc%20fuMST33mCdaWN7h+8yYiyXn3xg12D/e5fO09dqcjtHK4XEInwjhD2umAV5jKUrZhs4TwOGVCeqK3%20CGNw1mFTiGRENLNEpcMWFt9ajBEkJiLSAmklzgSjqSAOm642cDbM1d9KhI2etw5h5/EY1iHnAkPv%20/J2RSs5DTaS7wx7hjQ8iTRfA40iRHHlJLD3KWyweqR2xj/A+yGrwEOOJvcA5G9ItrcNbQja2AyEd%20SoaiJ2/Dx4+kuiNSjGRoI1FChqxsa9HoEHUiJXVds7W1NT8RBZMvwmJri5ceISOE8lhnyfOEui45%20xKBNiTMVyAYpWxo9o9tfJMq65HmPRPaRIkUKM7/L0qBEP7rfvAVnsF7jjEU5jS9G0NboekZdTTFN%20QT0ZMR2PKaZj9KxClzVFVVPWGmM9QipMbWh0QVEL+oNlvBdIFA888BCPPfIJsixjNBoxGg4Zj8d0%20O306nR4Hu7tEUUQcJbx9+S22rl/j05/5LOePbfLg6TPs7B7yzW98g9tb2/zWv/odf+qTD4mPwehu%20ZTXWVygOgRffeZdvvfQzppHiwU9+ipPHNoibirMbG5yIu2hnWESwCLTG0VOSeD7RKxGe7u4Xmk0l%20OSCdwMiYmpg1qVjLM06xzNt6jxWZsOwVOyKliIZUakxthtS1pjIaYkG8uUJXKmRj2Lu9C3XL6uIy%20o91D+nmHtfP3sLO9zXuX3uOTDz3KyROnKWvNxbcucWtvh2E5xccSm0lcrGiNoxlPIZGQhiJIY2ua%20tkQIP+8d0zS6QQmPMWHjIxNPlKTQOGThoQYqG7Q5KCIR4azHzrdWygdwUk5hnZ+fesIo4iGAiicA%20jzsiXbljgZDzt+WdfrCQ4+PnmT7Cz7sMj/63QzABwnkwhsh64vnqWzduftIBZd2HY5cP8SOWuU0+%20+CWQXuAajXJi3kEXspCED9VKzs1JeSFx2hLHMQKJc0HVs71zmyhJEDKcxjpZjGxbhDRIFRMpyXg6%20CS0hicRLQ21mjAqJp+VgusfyygpZt8egv0KeLxBHPaTsIEWGkhnOzP+fjrxttsGaJnBgukFMxqTO%204nSNLifMpkNm4zHFZERVVRweHmC1o5hWDCcFRdtAlCIjga41cZwyGk1oqpJ7772X3/6tf8ljn3yE%20N9+4yHe+8y2kh1QIOlGErQoOtm6R5zlKKd5++x02l1d5cVah4pSHz51nY2WVNy5d5vm//mu01nx9%208i/86fvuo7+5/I8CSh8pzmgILzXI43vA9956k+ffeIOpg+Nnz3Hm5D0cT2Me3NxgEIe8wGMiok94%20cncRdIQgdh5lbdikCVA4hPAo56BpST1EQpF46AA9r+iIiB4ZxtX0kpR+nrPU6bKQdkg92LKmrWYY%2025DnKc5oiukUbx2dNGT0NGXF+tIy9509zzOfexphBbu3dxn0BkiZUNYVjbHc3tulbjVpN6e2hqIu%20cUogkxgvIMs6xFKgixo7a4k0UGmqwxLZWGTt8KXFlRapIXERsgVTWkQLdqahckQuIiNGWolvwGuH%20qR3SCSSS2Ku5SRZ8a7GNRXnudLvJI1CaN95KFPJoM3mHUwp+KmE8WBtOLUKFeFzviaUiURHKEUho%20Y0lkhDIC1xqEhZQI5SXemHAqMh5rXDCWutAyghcoL3CNCRzWXdVAcq7lsTYAUJIkWGNCTXdV4Zxj%20YTAItg0h0FYHOUIkg/HUtAgBWRYTR5I0i8nyjCRWgEXrhta0NG1BpUsaPcM6g7aGVuu5Yrulbiqs%20aTG2xZgGayp0W9I2U6pqiq6nuNkE5VtwlqYqmE7GTEdDZmVJ02rGkylVaxhOS/bHU8rGIqIYKyRG%20g7GSpm7w3rE0GJCqmIPdXWbTMcfX1hnu78+3cDVKCrppQlXPMHXFxtoakZc4Y+n3eqytrpHFCW3b%20cng45N133sF5T5qlnDh7+kdC/sNna/+jgpF37pwQYghwq535WiXHD4Fvv/Vz/vR732VsLPc+9DCn%20T55hQSqe2NxgVcYsolhGkgIp0BGCDDEvR3TI+WlCzG1EAhF4BTW/ea0PXiADkRd0hSCRkKkI5QO5%20GnvBcnfA8sICWZwQKYFuK3Q9m/eCOeqiRElJN+viWkMqIu7ZPMH60ipYKGcl16/d4K23LnHt+nWU%20imhbQ6NbqqaZN4bMjxLWEyuF0BYzq9HjGaao8EWDrD2JAVe2QZejCZyLBls5XOuIXYSeaWIShJPY%20yoGGmBjhJLoySCNAO7y2CBviKpSXYMAbF0YvE/gh5QXemEA0O0jjhFQl4MC0hrqsaYoK0zRhPEOC%20djitsY0G41Hz3G5TNRSTgkG3j2strjYI54llACLhAk9lmxB5iwdnTCCzrSNWEYmK8a0GJ+7kBVlj%200XULDtIkJU9zvA2nJYEkTVLSJMMYi/MWbU1QPkuJcxpnDUJ4kkQRK4lS82Q7RwCguqZpW7TVGNPS%20uopJMWY8nlC1LUIq4jgUYHp8MPFajXcGZxt0XVBXBXhDHgkwNfVsyrQYc7i/z3B4QBxFKKnYPxwy%20KatgklYxcd4hHywSpR2a1lCUFdaAM46Ffo9ICHa3bjEdDRnkHbppQieJQGtm4xHldIJta2IJg06X%20xcEgfH+to5iGMs/DvQP29vdo65a80+Hy5cscHBzgtf791aXVP8gGvT/8ZzumGWe/Gkl1J2PlCH0b%20Y//1IOn+yVX47W++9iJ/+dMfY5KYe++7j2Nra2z2epxf6LAADPCkCBIgZp7x40AdsaZHITS/dFkc%20ToBSPrjKj0JqbAhxGABe5XjpqOyMpi6YSUs3TTh/71lOnFrn3OlNfvDdv+bKzW0Wuj16q6uMdvdp%20q5KFtMP21ja+0bx/6T2yOOHMmbMhYfDVVyjKGYuLS6Adworgzncaoxy2Cd+J2MVBtewMaINqLdJ5%20lAgxqkY7nBTzToq5eTOWpFlCEqcYb/A2aHJsqSl1i4ssnThnoTOgnsxwLqz7tW0CGMk4NIJEinJa%204K1DCRESA1xIcVMqIiEikhHdbk6ylJAkCYkKEbJKqZDdPT+tOOdwzszHFajrmtmsIkkSZrMZs6qg%20adrwxJcCb0MSQRylqESSpylCZVgvME5jG0tZzeYtvIEFVEoRS4WI/J2K7PF4TJ7npGlK0zRMp1Os%20tfR6PXq9HqYqcMKjrCCOI+JYkkQe7xRt61DS0LaOumzI84RuLw9iRlcznc1YVn2ccESlZlZpZkXL%208tKMpf4aed6j31mkKmfYVpPEil6WkqWK2WzK3mzKSppSVAXDvX2m4wlOu2Di3Tvg+s2tYMT2gqWV%20Ne47cRqnPZcuvc2161u0dUO3s0iqYiIJXrc475iNDtn6QDDp5iSRwrc1yhnQDVJIsk5OHIGtKsqZ%20ZjytaK2j2x+g0g7FwSGzsiR3hm6nxysv/IjpZATW8NQzn/eLp06Jf5ZgdDcQ3X0dVOaPXF/xg0tv%208Fcv/oTrBwd84rFPcfbUSVazjM0k4bSEZaDvRRi/QsghwrnAZYijBWuI9vTzemh3B4wkeu6cTiJB%20PM+iPgIuAWTOsSITmv4iTnluNhNapyGL6HcWSPQG/8Pv/HdcvvwOzz//PFs3w0zuveZg/wDhBJNx%20wagecuGBB3nmmWcYTSdcfu8KrbZMhlPqtsJXGucNRrQ4LMTBwxUhadoKqw0REFuP0TrUJaeSmGB6%209S4QtViLjxxRRxHlEbYwtFWNqQyxV0QqRZoQkdu6mq7KcFJhlUM7jW0t3mm8MHivWO0vszDocWLz%20GPecPMH6+jqL/QHdXk4n63LfvfeTpjmdLCfLQti+vCuONSQdBm7pbhd8XdfBYGwsRVEwOhwznY6Z%20TWYcHu6zu7vLaDxkf++AcTFh//CA0XhEayxRElbzadqhl3Vo65qmqjGtmYNeINa1M5SzKpDfOURR%20wmCwGLRj3lOW4RQrhEMJSSQVyXzcN42hMAbdCKRyxLGgaQ1Na6myhCSJEZHDJwKkR4iaOKoZTypG%204xnLixMGnUVOHvcoIVERGKsZjWbgbeBy4oRJMWVWlUymM8qqRhjPeDzl5o0tDsdTTp9bo7uwyLET%20p+nkPT547yo3bm0zKwp63S6x8OSDLpJwAo2QSNNSTYZEtqXSLd57MgU+EkQyIlUK3dRMpiUq7rG0%200MfMKTqra9YW+5w9c4r1kycpqpbX3rrIwY1rvPKjH2Drgi9/9VnfOX1OuMnwJTn4+7WSfCQI7DZL%20+fbPXuJ///Y3qfKURx59jAfvf4B+HDNQiuNp4IZ6QD5fPTPnNLw/GsfuDjwPkvy7HEN3nZBCuD1C%20EkVH8a1Hn4ihlyUckwu0PcfY1wyrgsIYlIQlH3PPyiqDRzoo63nttdd459JlZqMRSZqGdbuXOBnq%20ew4ODhhNJxgTChoPDg6w1mK8xjgTIFJZhI9QHqLG0xQt6AYVJygHvvFI4YiEmkecBl5HHVUnW3De%20oNuGlAThQyOJ8hIai2kNiUrophmHt3eJkSRJwmKnz/o9G5w7c5b7zt3H5uYmZ0+fYaHfZ21lmRMb%20x0U/6f7DLS5u3/DT6ZThaMTWzm1u3LrBja1b3Ny6xc7ODpPJhIPbu8F7Z8NJMUkSvPdorWnblqWl%20JbTWFEURbu4oZHDLuY0ljaMQmRuJIJg00HqDtwaPpo0VeR6jZEJTQVXOiOOawWBAf5BxuD9DJYI0%20yfGZRdDi3SFN1XCg9ihnU5YXV1gZLIaxcg5EUgS5wtXr10mEwInQ1TQram5c32Z7Z484zbBE5N0F%20qrrlrUuv8NZrlzi4vUuuUrpJxurSMguDAbapmU0nRHhc2+KbGiM9wswbbrVG2aDV8jKUgfY7Hbr9%20ZVY3j9M0mlvbO3S6fT71+OM8+unH2Tx5D6/+/HV6ecLFy5fYvXqV13XLYpLwqc+UvnPvff/TP/tt%202g74Fy5f5t/85bd49+YWn/zC0zz2yKMsd7uoScnJhZxTUSCbExfGsjtlYmHUu8uXeEeSNw+vCsFV%20H3aB2jsAZZBYAUoJormYL42DZ8zg6XpJT8R0o4QmUqRK0msaxjd2sRKe/tSTPHj+Ab7zV8/x8osv%20EztwZUMznSGE4IPr1/jTP/t3IAUHw32McUSEEP4QOm/xwiG9J5KhRVbQIiuNMw7lPdIR4jOkh8ah%2061D2ePRCk3EUNmLG4iKN1Q7pJSkxpjXMJjW2rIm6Azr5Ao9/8VlOHT/BhQsXePD+Bzlx4gRLgyU2%20u8v/6BqTY5v3iGOb/wlz9HDb7+7uMhoNufnBNa5fvcprr712h98wxgSNkYhoqzYor/sdhBDo+enM%20u3CaFp47PjMMGKPRVoffi2KcEehWIkSoILIekkSglEDN66eiTNDtJggliCOJMY5pO0F4z2Q8JEty%20lnqLnNg8wZmTpxl0e+xs73Ljg/c53Dmgl6UoIzAGZrOaw70R48MpvcWI69e3OBgWlFXDtQ+uUw7H%20LPcWWekvILxjoZMTC0fblCTCc2xtNZDU4zFtVWKNoalCuUAUxwgl6Xa7rK6tsbR2nGOn7uXEqfPk%20eU7VaHq9AfnCElUx5fp77/DoQ/ezfesar/7sJxxUBSmGy6/+DFEXPD3o/xEbJ97n7zHK9h8VjEr4%20X597+Q3+jz//D7x5/Saf+fznOXvf/fTjDlFtWI4TNjo5fSCygRsKRyFxJAMO3qc5GDk/VwMfSfPm%20ByV11ILqJQiHFnKuqRVHVVZh7AvxPKQCBiJhJckY+YRaNCjniVvoxzk2ElgLvU6XT1x4mIO9Qy79%20/A2WOz2aoqTT7WJbzc7ODt1+j06nw2w2C2ORlEFnYw1ChtW2EAZvPaZpoTXE3odGVxtIZH8Uqm8F%20NoQdIb1AmDBuQSgn7Xd7TA5GTIcTIplweuMkD1+4wGMPP8qZU6f5wlOfo5OmHBtsCPXLgfEf0evE%200jFxYulYeOez0LQVN7eu+62tLd5//30uXbrE66+/ztWrVxkOh3diQNI0JU5TkiTBGIPVFqObEGYm%20JGYuR3C4uRk2QkpFXRlmRYOMBHmeQ5xQlY6yHiOTFlULTKtwVuGNI8tSpPjQdjQdDtm6doPt6zcZ%20H4w4uXGC8eGYG9e3ySNBMa1RBnyjacoWbwTWCKaTksmsRfu9oImqNUpExEgW8i5ry0vknZhiMqGt%20KrJIsbG0xOkTxylGQ7Zu3qSpKujkZFmH/sKALMtIsozl1VVW1o/TkNK2NVVV3SkPqOsa5wVrS0vU%20xYTHHnqQtx+4n7cuX2L7g6sMkhg/m9HpdHjkC19+Tp0+I/7ZgdE+7vD5S28v/Z9//mdcvH6Dsw9f%204PHPPkW320XWmtgZ1haXGMjQvxp5jfRqPp/NW0kJYDRPA70jcBFHFNLdkcWOUEqPIo64w3W4O8bP%20+SZJCPJEskDKYpTRqxR7rca2LV2RoSqDTxXD6Zg3rrzDG5ffYjwes7q+hp3VdwykKg46HxlJzFz0%205wlbPOcczgZyWiqFmp9ujG6CiE8ovA4rbj8nkVvXEMmUyMdBG2Q82misacnznEHaxVQt9546x4Vn%20H+CJT32GJz/5Gc6fPc+xePG/+gayRqOi+B8dnNIk5/yZB8T5Mw/wzNNfBuDyO2/627dv893vfper%20V69y+fJlbt++jW5npGmKSuKgO7IGYxqcl8g45EcdpTNqb7FOYozFOE9CAJxWK+rGoF1FnDuSXAZr%20ByE3O0tmJLEklsHjJyyUZcnB7X32t/c5dfI0i/1lkijFmBo9mxFbCa1jMizQjSURCU3tIHFoY1FS%20kXYT3KymnpWYqqGXZCwvL5BKR4xFOovwmkh6lvp9Zt0OnZVl8jxlcXGZxcVFsk4HFUcIFePjhMgl%20tChUiBC4kx8uZcTq6irj8Ziz997L1599lk6i+PGPf8xwZ5u2mNA6z9gozj8y9itrq6g8HSarq8t3%20tuJ/B1KAf3Aw2pkc+M5g5U9ulLOlf//dv+KnP3+FBx79NL/6K19BeUFXhtW7lJBmMRKP0o5+HOO1%20uTvnPCzO5jyR404l1f/PaXvn17tGPDXnj47y+IQH5hnGzni8NGCC9qarImymaEpNspQjYsn27lVe%20ufg62/u7bK5vsHpuka0rV5HaUhyOaYsZaZxQlxWTyZgoSYPtQojguzJB1CfndTjCQaMhS2OUiNBG%20461BeIWQEmEkdVMhfWidRUmUg1RkrPVWOba+yX/zG7/JIw9d4NGHHuFUtvZ3+gT7KADR33Q9eP/D%204sH7H+ZLX3yW6zc/8BcvvsVLL/2Un//8dT744Aqj0QSjawbdGOM1rfHEQiBVBB6MDn1tvgkG3DTN%20iKIQ2RHGuGAMboQLVUqZwmmorUZLTxJBoiTYGd28h7QK01qm44LZoKKXOdIkY+/gEF1VdFSGrlp2%20DoYMp8XcRhK2pcLY4JeTEUmao4SmnIy5duUd2nIFgaEfJzgnqMsSbS3Hjx0j6/dJkoQ4C0WUDtBZ%20jsq7GO+YNRqXxHil0LUG58jzLktphm4MVdWQJBmT4ZClhT5fevoLDLe3OTzcZzorWBws8foLP+T2%201k209cyaamnt2HG/eeoUx8+e5szDj4h/UmB0oyp9NFjh5dnwt//0L7/Fd3/2IrGQfOrEKU4RRGmT%204ZAqg87KAjYPgq9YgK/BxA4/H20kaj6Cze0Jfr6JPgrW83cB0J2v1n0IZj78u+Luk9McmYwUVNag%20vSOKYzKRMaPlQGmK1HDx0mVefu1lhtQ0CvbGQzY2Ntk4cQJTtVTTGqka6llFhCAnph7NQo9ZFKGk%20RIoY5x1Gh9OaENHcmKvQ1qF1qMJOVAQWdKvn63WF8IKUmOMnz/G5zz7Fl7/0JR59+BPcu3Lin1X3%20+n/JderkWXHq5Fm+/mu/waVLl/zFi6/z/PM/4pVXXuLa1SsYa0mShCzt4oCyLBBC0OnlIdZEzKUG%20HrwKMSjWB4tJ285QUY/SN5hY0UlCJnhjLFmk6OYdmsoxmUzpdQZggpr6zOkON6/fwNQtbaVphCNP%20O0S9AVkbNFrj4Yi2rMF7lAiC0CyJSPMMYQ2T0QHt8BbdNOLU6bN84pFHWT95Eq9iCilRa5uQ5tgs%20Q+Yd0qyLilOIk+APVJJZWwLQ0R5Tt9iZxjYtUigiBFVV0bSGJM44d+YUn7j/fi7+vEDhKW5eY+As%20t6cHXHzrElZGGBUTLyzw0OOf4V/+3u/5s598TPyTACOHP9fLOy+/NZs9/hc/+CH/5pt/xt6Nbb7w%20+Gc5v3GME50BB+UYrTxGhajP2rUYmaPch6Bh7/SIWZSP5haCgCXmiE6SwfworUP6o8JEGdhvcbR5%20+yUg8h/u3SzgVIT1grrR1K6lTT11R/LGB2/zk9de5Pb2LWIRMa2mDEcl5WjKQ6fvYziZMh6PUcYF%20Y6kxRB7yOCHNOrTWUDU1rmkginAqDuFhuiVJQlKil45UBq+YcnMzrJLoomYw6PLQAw/wxS9+kV/9%206tf47IPhiWSd4+Prw0sIwYULF8SFCxd46qmn/fb2LX784x/z0ss/5aWXXmI0ntDrdekPlqnrktFo%20wsrK0nxsm1tuTAAnpQRRpDBOYo1HY/Gtg4YwLpkQcySaFqUEbeFoRYhjaRpNUZRUVcUbr77O6XtO%20sT437X7117/Om69f5PWXX0NrS6/bBW1JpCRVEtu2FOWMbt5hdXmRMxvLrC0N2DhxkoXVDUSaIfMu%203f4C6cIKKu8gkhyVdVBJGkoFVDQnRQXShURQHNA4/KyhnhTU0xm2qel3c4Z7eyz2crTTfPbJxxnv%203mLrg6v08px6/zZLx49xZm2ZD25u44ViYXWVyc5tbnzwPmc/+dhH/2R0t9jxlZ++zKs/fQUax698%204Yv8i2d/jRUyDnZ2caki7kTEUuK1CYRu5ELfuQ1Ms8Teibhgzmf7OUg11gaNkfPgQpVOLMIRWql5%20ARmAm+uQ5taGu0WSrXfUQIujQjNzLQ0WI2HrYId3r77HaDIiyTOUgTzN6GwucHJlHSkE3swD5aUi%20jgXGOqx1CBkxmk6I45goinBSkqQp3W73jg6mPBwi4oQsTpDOo+uGRhvSOKaT5fz613+TL37hC/zq%20V7/GfevhFGR90M0oKT9GoL/ptHTqlDh16hRPPPEkl99+0//sZz/jueee44UXfsTW1haDQY+19VWm%200/EcfIL8IY7DaGqtpakqoixC2MDVGe/wyoAxYDw+S9GNIVGSum5RKpzfx6Mpt7d32d8/ZDSccO+5%20lEce+STvvfc+3W6Ppgn/VqfXxVQNbV3RCoHIM7IkJu3mnL7nHu4/d4aNpRAM2BksYJXCRyn50jKD%201XVkbwG6A4hjiDOI4g+P+iLUZ0cuC6ZNJDiBGBjyQUVeFJi6wumWST2DRFAXLcfPnuCxxx9lvLeN%20EJ5qNqFfLrDSH7CfHtJPc9YXFtBC0M3Sjz6B7bw/dwREf/H9Hz3+5//u33Px+vs8cOFBvvblZzl9%208h70zgiMw/qw4pbOYhuHy3WYqo4qz0XoqA++qA8rPv2d5k9PazTGWYTwRErgVYSXEAtHNO+490eJ%20Yf4u8lrMU2skVLQMXcHE1ugEGueYtg0X37nM9a1bGDxxHFFOJmAMG5vHOXXiJB+8+S6+NcQqCmZO%2074P0IFLzOFOLyjKiJMYYg7OWqgyhbnVZ0e0NiGQIGZtOJ7i64dQ9p/ja177Gl575Is9+8Sus5/1f%202IQdva2NIY6ij5Hnb7mkVFx46FFx4aFH+dSnPuV//OMXePHFF3njjde4desWg4Ue3geRZNM0lKXF%20E3ikJAkBKsKqeb6TxHmPa8IyIvIKIodTCq0NZdnMNVAGuMl4OOLYsRM0tWZtdZPr127x3b/+Hpfe%20fDOMhU0L2iKEotPJ2dzcZHNjjfWVZY4fO8bm+hpJGoe6pyQmynJ6iyv0VtegvxDWqZ1uCIBTKrxo%20/Jwg9aGG2MdpiF2xjsgTgGshgW6HyLS40QEn8/MMt2+AVUyKMQ9eeIBbV9/l6ntX6WUpbVGQZJbj%20y0ukSysQK9LFRc6fPPnRByMpxPsOf+47L71y5Rv/9htcv3aDXq/D5z/zFA+ev5/J7j7MSiSCOMkD%20xaND7o4zNsRCILEy8DxyPlYd5QyKOdfj5it6Yyy10chYoOIUIRIcjhaLEvE8g+cXpZBehpNV7SwG%20SYVh7CumsqWUjt3JhGv7W0x0SeNt+FwaQ13XxNozPDjkrf0Jt6/coBrP8MbTOoMwjiiOiKKIpnEh%202VEIrDZ45wJZKiOMAy8jUhVRTgqk8zxw5hxPf/Ypnv3Sl3n6qc9xevFvr5r5GIj+865HH/m0eCqZ%20zHkAACAASURBVPSRT/Prv/7r/jvf+Rbf//73+dlLL4aHhHPzptjggYtUMOB62+BaF7agMkSvWGtx%20rcYIBxaE8Fhr8C5YVJpa0zaGtmnobaxz/foNfvrTl7h16xYXf34Rpw1ZmqJbyz0nTrK2tMjJzWNs%20bqyxtrxMf9ANkSl46PZoEcR5Tmd9k97aOnT7AVREBNF8TXz09HYfdqR7KdEIvJCgLMaFqUEJAbGY%20e/4GyGiBjinwmaLYukWWx3zisUcZHRyiRiVat5Szkt7yCv0sZWc6YXljg+n+Hov7O94vr53/L92s%20/b3ewQ5/TiLef/Xa1St/8v/+KTeu3yJNM/qDBbIkBRdGjKTbYXQ4JF7shqeNc+ChNZqinVHEC/SE%20RwmQXv7ipuyOADJI8aWUc6OsQs27rcIPdceEeWf/T3h4BA2cp5KGChjRMlItQ9+w00y4crjFO9ev%204J0hzkJEK0Kjk5jIhFbZ8cGMajxDaEuiIpwzaGuRUmKko2kN3SylqUqcC27/TpqFCNZGY6uGSVFy%208vgJPvf4E/zaV7/GV774K9wzByHr3Mej2N/DdfrUveL3f/9/5Otf/7r/4z/+Y179+cu8/PLLjEaH%20dLvdIDWRkrpsSKJgVPXeI5VEeXCtx2qwSgSLDuBxWBvEmN472rZCCdjbHaKblu9/73msMdR1y9Jg%20IejVnnyI9dUVjq9vsLq8GLhDb1FxhFTBiNuoGNXtMljdpL++Dt1uuJFlDGk6PwnJudwltIoELApR%20uaFKIRCrQql5EK4NLyHhiQd9aAq6x4/BtEMnlhxeu86x02c4d9+9XH7lYtBH6RY3K7GdGZHRKKN5%205ScvcOXmTXyve2X9zFkefuwz4iMDRg5/TiO++vbtrT/6D9/6Di+/9jqNUTRVg24qvv3t59i6scX5%20e06zubTEYHUZF0ZZhJJ46Zk1NXvTEf2uQqZdMhHU0kfHmg9PSZ5IhN1+rmISKfBKEiOI5kyTwocE%200SMAOxrNBBgcDY4axx4zbvkxO7Zgqx7x7nCLK4fb7DUTzGSKLaqQoFi0NFVNOzO4GoSx9PMOxrco%20JxEyQRIsHCaoMcNN7MPTFicohlOqsiRTMcuDJZ556mme/fJX+I1nv8ap5fVf+GZ+DER/v9qlkyfO%20i//lf/4DXnn1x/4b3/gGL/z4h9y8eZPpNLQBp3FER2V4a0KkrfJIHMaEum/vJNZonAtaNWssUTRP%20zLSBnJ7OGvp5xu3bu8QqIpIxs9mM1eUVnnjiCRb6PdI4DrXhTfP/sfemwZrd9Z3f57+c7Vnv0n1v%2071Jv2pGQBAYEAgwyMBgE1rBjA7ZnGGcmqUkqldipVKpQpVJl5sW48m7ArsyEZBY7dnmdGMbYYJuA%20EBJooVu9q/fbd3v2s/+XvDhPS1CTBQwY23O/Vbdud1f17e5TfX73t36+1FWFtJIwitGthFIHtHbt%20prOyAp3uS8tyTsoGzXvT/NP5pi3gGgMFSVNW1kiQzXInCKz3WObQPNVQolAS1esDDikUwWhKXZTc%208YoHmK4PuXTqLJ0wJJvNkDog6fZIt7d58do1tr7+JHUUcfy+VyK18nfec7/4sQcj4/0jWogvVvDI%20V574Ol/40p9Tesc0r3Bas3vXKrPZjG899yzbW1ssdXrccstB9t16CDM3/rOyAeBvZdCfH0kKBE6C%209hC4+V6Rv7nm3+BApNIIqeeOMhbhGn50IOR3Tc1ozoOwwlHNA1GFYp0pl7Nt1kXO1WLExeEGG+UE%202hGxMcwGKenGJswqKEAUlmJq0KWnHbapyhSsII5jRBBS1BXCe5I4xlcGLRWRbvy3srqg3+rw2le9%20modf93p+5t2Pctveg39rtqP/LuqB+18nHrj/dXzjqa/43/7t3+YL/+GPGQ7GtOM2WohmjuIaAoSv%20Bd6pBpAvNdbbOZakQZFIKXDOU9cO70ApTV7UFJWl1WsjPGxvbrN7cYmNjQ2OHDpImqbUVY0OQ9rt%20ZL5HB8ZZWgu7aS8totrtpgckBSIIkEjyokCFQTMLdgbraryrm0GOBIGmE3Vfytxqa6hs420nVIBX%20gtqVtHQLfAUixJqU/oHDXDt5kv2HjnDbnWtcOXuWSIdMZyPSyZi2DtiaTbk+m3EtTRlbS+kt97zy%20Xu685/7vb5ftR8EzkkJcAPjTZ579rc/+y/+V0xcuIoKItK5o9Xvsu/VWwlaLaZpRGcN4MuXUubNM%206hIXSDq7lwjbLcq6JC9LvBCoQBHoaD4ME80o29OgKzzY+TFrkyAJAgGBl8092JwGeNPWvGmy3GxW%20G2ZUpHgusM6GS7nhck5vX+PkjUsMTE4dCExVwaRApCVVVkFWNYTF0uJzg0lLZOWI5o4bdVk1jU2l%20YO5P72tLN0lwxlJlOcePHOUXfu7j/ON/+Ek+8Mg7xe7uwuNSiJ2I8DdA+/cdevyuu+741G3Hb8MY%20x4vnz1NmJVhHEicIIE1TAMIoakwua9s0iKUkCEOEF00D24ExjihMSGcztArQUlJXNQu9HkuLC8ym%20U44fPTI3ITDNrWQrZjAasrRrGREE7Lr1FnQ7QQcRhBqhdJPdz+8cG45ShbMlwldoYQiUJ1QWfZOI%20Zw3CGcR8qdZZg3MWi0XrEAsEIoAoQQYReEUoIzavXWVvt4MyNS9euIjznnanS1oUHLr1MIPpmK3x%20hEOHD3PrsWOs7N3LgQMH3q2j5LM/tsxoWNVPVUI+eOLseX7nD/6Itc0hIoiZVTWFsQyuXaG3d5VD%20Rw5TmZrBaESoAxaXl/j26TNcnw05kE/Ye3g/S0tLBC3JtqmZXr+K3y/ZFbbpobBaUhcVynoiIQmU%20RKrv4FnY7+gn3cyGZPMvts6RFQU+0lipyXBcZcSWS7maDbg42+LabMggmzI2BZmvcNOMXmEJjEBZ%20gbUSagu1R3uFUhFlWlKUNQGaKIowxpDOUmSg6Xc7oGpGm5usrq7y9z/0Ef7+e36GO4/d9unlIPmV%20ndf/b2JAulXsf8+trKzs9a979U/wm5/710zGQ2xV46VEqAjjDNoLAh2idYipyoYcUGWNHZSSxGFE%20HMeUZY0KIqSzlEVNr9vm0P79tMKAK5cu8vyzz/HqB+/HqxilGr7U8vIypqxoLS02qwY6bHC88xzH%20z68QhPdIOfdlEw5s2QSduZk2UkFlm/4Sje+etgY7NzrwQmNFU2IapZrgpSKIQLZLgs4CshizeugQ%20C+fOk2UFaVlQ5CWXL15gsdvhvqVFBrXh6osvcs999xG1u78C4Ix5RH4PB7Y/9GDU0sFnR1n5mf/r%20iW/wtSefYZwVOBXQX1xidxSxtrWBDhsM642tbWazGb1eD59l1N6Srm8wsAUb6ZgDtxxiZc8KrTgi%20ChVntjeYtnrs6fXpi5AkDpqrfA/GejxuDpO389JNoWhMCBE0Ey6pcUrigpCcihEpV+shl/JtRoHj%204niTS+MNNmdDZnlGVuaYuoJxRjmoiGaG2CqMaPAVuObCXiOIkhaVL7BlhatKkigiCbqkRc5wY4u2%20CnnkTW/lPe9+lDe94WFuX923kwb9LdBDr3ujeOh1b+TA6l7/Hz7/BZ742teYphMQCqGgtu6lwVWg%20g2ZCaiq88SgJ3nqKPCcvCvq9DnEYUGY53vuXECdlnvOtp7/BkUP7ufXWW8myDGcsrSimKkqSOEZF%20UTM5U/MbTd/0J8TcHBLvkN5iXYEp0wZ1a5vGe6gjQtWFoNXsIYmm3WFds1F885IB17RCmumch1gh%20WwW618OajJX9Bzhw9CjPPftt0rwkKwuqjRt05V4W9u8jFJob6QxTlgjVBCD5PV76/9DLtKnhM5//%200l/s+9y//S0urd2gu7TMPa98FR/52Y/S7nfYGmwzS1NGkzEbm1s43/BdxumMhV278EpTWMtwmrI5%20GjItcogjonYb5x21txTWUIm5kd/cHqaSzcjdKJpGuJZYKbG6eciVgkoJZpSkomZGxXo54tx4jWvF%20kFnoeHGyybmNa1wdbTKrGohXnea4SQrbM+zGDDWrEaUnsoLASZQRiNLhK/MSP1rTsIazWUqWTom0%20ZmVxiU9+/Bf52Ic/ymM/+YjY1ek+vvOa/+3SsTvuevzO2459qt3tcPHSZa5eu0q706XTbTOZTHDe%20o3VIEDT/L5WUzZquNRRFSZzECNVYPCnhacUxy/0ecRAgnGU6GhKFAceOHSPLUuK4mba2koSw00Yv%2074YwanaK/E2AhUTMm6cSi8CAKcmzMel0QDEbUZcppq4IZICSqsmupAbm6GEdoYIArUK8byiazb1m%20M+3xdUWdzTDTEUkcIFXIC6fPMJvNELqZyg2mU5CKzkIfFYUcv/0Ojt51zxpKP/1jK9Oee+HMg3/8%20+S9y/cYmYdQGGdLpL2FRaK3ZXN9gOBqysv8AnaTDrMgZjSeoOGZ9c0C716UVtvFeMRqnzOrLbOcF%20V3YvcN/xo+TUzHzNuMwY6wlLcUI3CImEINHR3BmkSUOFaLhGQkKNoaAitTmj2ZhBPmHqClJtmYSW%20sbOcWb/Cpa01htm02VsqatSkxAwz2Jqhph6XmzlDW6IdaK8aH3ShMKZGOU+km5wsn5a0kohHHn6Y%20d/29d/Lxn37fTib0t1yHbrtTfHT3yq8evPXWX/7N3/x3PPnkk2wPx3QWFimyGbU12Mo3ppTeNtvx%20NEOLJEmo6oK8qoi1oNfrsbq6SizBZFNC4Tl35hSX77iT1dXdBFLirCXSzU1i02f4jkGMl3NXQFBS%20zJuiGuF0w/TGY7DzisGSVjU+hAjflG1aIiQorUEHc49BB8407w0OlEAEgBZUUmB1yMKeVe554H7+%20/EtfJlABVVFSZzOUBFOXtNodTJFz5omvfGZrNPrMyup+jv3Ea8VfazA6eXHD/9G//wLPPPc8C4vL%20DPOK7dGE02fP8fVvPoWwJVVVcPiWo8SthK3RuIGlI4iCgDTNkUFI2G4TtyJkqCiF58ZgyPp4wCQb%20s2/3Eod3r1ImHYq6YJJNaClNpCRJFM7N/PSc7tcwro1xGG8YZkNEIEnLjEE+wbc0dGPWpyNOXHiR%20a7Mhw2xKmudI5xGzCj2rkamjmlmiUuAzS5kXCAuhUGgh0Si0Bi0DbFkxGQwQ1vDKe+7mPY++i7f/%201Nt48Ja7dgLR3wGVZU5ncflX3vmex37l+O3H/ec+9zm++MUvsr6+jpbN4EI5iHWAVqrxnrMOj2dr%20a5tONyGMI6wpKfMcW1foJEErSbvfZTIac+K5Z9n7yCO4uqLV7eCsRSndjH99493kvcD6JrP5Ltum%20+TdhpRRhpIEArRxBGFGKhnAZCTUnVChePnEAW1dYa0DMz6fwoCVSewigEI7cQSUVr3n4YU6cPMXm%20xgaTyYS41WJtbY12WWOShBNnzjCrDCIIufPue3no3AX/k+9+9/+RdLsf+JGXaWubM/8nf/Zlfvv3%20/oALl69QC8nmaIIRElTIjfUbTF88xy3Hj3HH7XcymUxY39wEKVFhc0SaJG2ch7KqqZ3H6wARBVil%20qLzl2uY10irDmDm21TkclsoZ0ipnmE8ZFSmDYsagmLGdzdjMJmzlMzbzCVv5mJHJqLRA9hLqRHF5%20vMm3zp/i+YunMaFgVmTNTdgkxQymRKkhSh1qVsOshtIhaoevPa5uPOBpfPwwZYkEuq0W9951Fx/+%20wPv5xIc/+umjSwce9t6/xM7Z0d9e6e9AqSzvWn38LW992+OdTutT586eBe+o6xprLFEUEQUaVxvs%20HAuSFTk61CRRDM5gihJvaoSf42qAONDMZlN271pmaXGZMAzBO8J+HzqLoAIQDXLYefBivsxo7dyQ%20woGrMbbC+cZnLwwUIoowQR8RdZBhjJbzA1or8c7irMU5R21qhLdI4ZDCNicOdUY+HVGMJ3jnqEtD%20v9fHGsfFFy+SFjlCaYRSRN0WvYUFTp05y/kLl1he2kWn1cV4x+LK6t0re/c+/iMNRuvbhT93+Sr/%209nd+jzMXLjUMFSdwKAIVM94eoaSmtWuR/tIiZW25sbmNxaOjGOMcrVYLpSRlkZOlM/I8w9rqJUdG%20qaDTTSiLgsHWNtPRCIGg3WoTxAFOCIyz1N5jvKWyhsrVGOcwzmC8Iem0mFUZUis6y322Z2O+/tw3%20OfXiOQzN7ZLJSswkw26O8ZtTdOZICvBpRTFJUU6ghUYLiTQOV9X4skJUNSYvWen3efRtf4//+p/+%20U37mDW8XLRl9EdgJRH+Hdc8r7nv83rvv/tRzzz5HVVSkaYYzzc1abSwqCGh3OiwuLZClGWWWEeuA%20QCpMVeGNQX3HqL8qC5xz3PuKeyjyGWGgCJIWLOwCHYEUTadgDld23mO9RQd63j+aH2y6JuvRMkDo%20FugmEIUqaG4nHThrMcZiTY1Uzc8FBi1BYpt1gDylHI4hL9G2uWkYjcYcO36cbz77LDqMGIzHFNYx%20HE1Y3LWC89Bqt7ntjttZWlxkeXWFIEk4ctvtP7xglFfDpwL13bsDF25MPvU7f/jHnLp4la1Zxqys%20mM4KukkXXzqWk0VsWZMJR+oNVocQhcyKksoZ+r0erSRmodvGVgVlNsHWObbKKPMJdTahzqco50lU%20xHJnAeHg2pUrXLx4CSkD9h84iBASZwy2qnFVRS9MKMdjdrU7hAhMWSGcYGlpkeFoxJ98+c84ceIE%201nhMUWBmOW0rMYOUemNKVIKa1thJTjdsM53MiOIIX9eUaYp2nkRIfJpTjafce/g4/+hjP88nf/bj%203LH3lp3o85+Q9u4/+PgD993/qU63x7mz59nY2qa3sIRUAWleNm4qUoI1UDviKKKdtDBVTV0Ykqg1%20396GpcUFJsMBEsMdtx3BVBkiipBLu6ilorZ1Y/8daIq6oqgrVBCAVLi5Ba+SCWHYIQr7hOEigeoS%20RSGhmi8AzyfBN+29hPDkZY6SDXhOe9/gR6yH0RQznEJaUM29AoUOcFJz+Lbb+PJXvkZpIAzbpGlB%20nuXs33+QheUlhqMBDkuQxGRlzYOve+jxH1rPKAm/265kbYZ/+vkXOHnxCle3NqmloLXQw+kMpKcu%20MyokSkIrSsimBTfqDVrtNkIGSK9wVuKMIB1lVGmBLxxCObwE13gX46qA3ArKUQr9iqV+j36ygMBx%209coaw80tDq6ucvjgPtphC0xNOU1ZaneJvCSdTpBRxEK3z2B9m298+5tcOneRKivxlaHGNMeQgUfP%20DDpzyNpBYfClo6IiCkLiMGJjYxtpHItLC2xcugplzdve9BY+8tj7+In7H2TvwvJOIPpPUMfvvlsc%20v/tulvpL/jd+4ze4fPESYRii44S0qLGVo9/uIltd8ixlNJoQa0WchA0gPwlIs4x+J0EHiu2tDdbX%20rrC0uIAtc0Q2I0g6BEFAVVf4ufGnDBRSafzNG8y5qaQgbEpA7xDCopQDaedX/GJ+wuCazGpu8fWy%205necxkFpsHlJiCRK2qRliXWWoja0u4u8+rWv5/d//w/Q0qBkAE4wHo6Ium267Q54y7XLl7j7/lf/%208BrY3plHhPzunYEzF67ypa9+lTMXL1Aq2EpHUGdE/T67D+ylTBNCEdDtLLA2GOFzi6uB3DZ4WRVQ%20Z57RNENrSV1LnEnwOKgkxoO0AlE56mpG1AoIugskKiBSCrzFFRXbgyHj6xu4NGN1cZGjtx5kWlVU%20RYmrDN1un0pKJlnFM8+d5Omnn2GYTxChoKiacjDPcggsVVbiaosp3HzL2uBthrCOfDylEyf4subG%202hrtOOZtP/UOPvK+D/CeNz6yE4R2xAc/9rNiYWHB/7Nf/TQnT55kdXUVrCFNU5JA0o4TgiDAWINx%20jqqqGE+GdKJljK0xdU27HTHc3uTyxUssdLtga7LxNt2FRdCSwFuMtaggxEtNA9/x83a2avrTQjTN%20aekbbreWzakH80a4EvOYY7DGgAb/nYvDzkNVk+clWV7iJxNCoSirCh1HWOcQgeChh9/A17/xFGde%20OEOYxBTGUjjH7iig0++gkwgfhtx1553/n8/t+yrThPhuNMCLG8Z//kt/wZ/8xVfZmk4ovGH3vhX2%203rKfxV094kDgbYGkItASqQPa7Q6tpEF+FsaBCnFeUaQFTgQ4r5smndR4LecjSI3UikAKkiBAC0Vd%20lLiyIlYh3bhFEoRgDaPNbS5fvIBw0G01kTkOIhySaVnx9W8+zRNPPslgPCEImwdaFyXSCco0Q1QW%20V1h8UeNLiyst3ty0hLaouV1SMU1ZiNu8953v4h/+/C/y9lc9tBOIdgSAVJLjd93x+L133v2ptbU1%20nnvuOXav7CLWqjGgnLuKCCExVYF3Fjk/9o4CTaAgDgOcbW7Ldi0tELQSaqmJ4xYiUI0FuZQ0xr+W%20l88ZX3amEELCHIXyElpEKLwT4BVC3SztBFY04/4wDAmDsJmklTV2PGU2GFJMp3SDuPFiEwKpQ2pj%20GU+m7NmzF2cdF85faK4bshyvBEGrNR/+Sdq9HufOX+D82dOfunD69KdaUfiphV27H/+hjfa/feo8%20X/36N1nbHOIDhfCSxe4COjBU+YTlhQ6vePD1tKOQ4aRgY1pzcX3A9iQlDFtEcURuwDkJHUkt9Etg%20Oi8MaN/EpViiFOxa7KGFY7i2xeXxkOXFBW49dADV6xGpxuu9FbdwQvD8M8+xfWOD/fv2cNvRY+TG%208I1nnuEvv/YEG9sb9JYWKbKCLE/xwlFUOXhPpZqRvbCaurYNRoCmuRgKSShha32D3f0lfuHjn+D9%20j76Xu/bfuhOIdvQf6YGHXyf+S/tf+doavvLnX+bIoQMU6QQvBS0RNw1oIVFKo6RiPB7Ta69SFSWp%208vTbMbPxhCuXLnKk20UmHcrRBrGvoNcD1UK4plxTUmLFzdyI+ee5rZWAxkFQ4pBYJxBCotDN1rVS%20cyqEIxBzqwoLNs1JxxPqvGjAhDQN7jAMyeuaJGnhhcILeO1Dr+OrX32Cjc1tCjPA1I48K3FasjWZ%20cO7yZc5fusKhI0eJkzanz7zAL/6jX/K7971sn/1XDkZXh/hvffsUL5y7TFkLWq0O9z1wN4PtNSIE%20P/mGN3P/XbfzyrtuJ9KaSVnxlyfPM/jTv+Ty9oCwt0g3SEgHEygqSFrNw5PgvWkafbJx0GgcYx2L%20/T77Vle5qi/x/OYWo60hVx1kCz32r65SVyWtMKbfX2RkLIPBkKtXr7K1OUDGEV994husrW/R6XQJ%20ZMTW9hZVXRHGIYwzCIIG5RbHYGQDxW/I7GBKTF0xms64df8BPvjY+/jwY+/jvj07gWhHL6vMC6Ik%20Bprs+TVvflj892Ho/4c85fSJ57Fl2TjSKg3a0up0aGlFOZ0QST9vYmvqukbJFlJ4hlvbTIcDFnoL%20lNNtlLcEWtAAljzKORRRgw6RNxchBW4eQOx8kitp/OKcUA26ucEcNUuTQja/hgNjcdMpxWBENRoj%2085rQQT6boQPVmEDW0/k+U8CzzzxHlhXkRUVZlljfrAiUdUU3WmIyGfHtF06y98B++t02w/GYZ775%20NNcuXWT3vkM/WGZUGj75zAvnePbUWQbTgiDu0+3topg5fC555ase4P1vfw/5aINn/+KbFLMxemGB%20/qFbSPp9SGJsoCFJCPpQq7x56YOwGSWaBgCCrFFzprW1FlsbDh08TCQjLl++QpVlDAdTijRjqdtn%20od9jOByzub7Oyq5ddHttag+nLrzIYDLlxsY2WsUIocnGGa50SCtw1kClm50hD9I3IHbKOZxKSryx%20KOs5tP8gH//Zn+NDH/ggt3R3GtU7+m7dDEQAcbexB7//odeIf/5rv+b/u//2v+Hs6ZPkdUXHGkKt%20iYIAhcPLxjRyNpux0FoC6yjSjE68QJZlrF+7StRfIBJgvENiUN5C0kGpAHxjAGF9Y6skviMz8nP2%20uxXMFxybG05rqoZ6IW2De/Yeiox6OqUeDLGDEWo6Q5eWwEO336eyhiLNSCdTzr14kdEk49nnnmdr%20OCItckbTWYNLCTTT6Yx2XtDpdFleXGLvyioK6LQS2kl003X1BwtGl4b1Z545dZrz1zcoZUSnu0B3%20eS9eahaW97FnzxGE7rI9vIYVCVFLM6kl1y5vUakWYW+VaW0QTtNd3kfWqSi2hqAVwluEtzhXIsVN%20zGzjXT9Lc2rnScuKvKgIowhTlWwNJly9sU5RV+xd3UWRp1R4Ll27TrvbIu506akAtTFobGG2p83a%20epBQ1TnlNGvcH8oa4R1yvteEaR6W1B4qT7/d5qPv+yDve/S9HOnu2glEO/qeddt994r/7L/4J/7X%20/8W/4Otf/RqjIKWfJEjnCOKAbr+HcpatrRusLvYRGLYGKb1OB6xh7dp1dh04RJTEWClI65q2EKjd%20GmLdVBKqKcYUsmF5vWTz3tAfLRYvPEo4oMEiK2+QqnFaxjuYTXHb29jBADnNCIqKuG6+OVsBa+s3%20uHxtjayqOXHmLDUgg5D9+w4S6C02t4bNKUoUcm1zk9Jbbjl+nKNHj6FDzdb2JrtX9nDn7Xewurr7%20r97ABhhWPPXMucv7fvcLX+Lp0y8SLS4TLa6g2l2idodJURG12hihSY2ltbRCd+9BNivBty5usZEK%20UqvxuodMliDoYHyIkyFShASqwboGAmKlibRCeY+xjhLFidNnuH5jHZSmrGpKUyGVYjqbcGN9nTCK%20EErT6fVxwDidsXtlD0Vdc2Njm7oy2MrgKoMpKnxlkE4ga7BZwWK3Rz6eEqDoRC3SaUqoFLt6Pf7B%20Bz7Exz/wIY6t7BfWOXbYQzv6fnTkttsfF8586tTp00xGI7SSeO+JgoDpaDiH8IXYskIJ6HRaKAmB%20UhjnGAy3ufXwLYDA1BapAoosJUTMlx3lS3WXcBasa/hF3iOEBQzeVyhXE/ib/C8DVQnZDHfjOvna%20GsX6OnIyo2MdQWXwwwnjjU1Onj3Hi1eusLaxySzLEFojtKbd6TZb4E4wnaYIqciKEickKo5wXrBv%20/36KMqfVboGQ3P/ggzz09kfFD5QZjTIePH3hMmvDCbrXJ5OavKpQShOFCQMmnNocUVy8M2TIngAA%20IABJREFUQhxp2rMcKeHF9W3OrKfMfEAR7kZ0I1SUYCWIokCqNtJWKF8i6xjqGCUqlKrBZKgyoxIS%20LwVYh8NhlYQwRktPKCWtJGJaliTdDuMsYzweY23N5Rs3yLIMbx1i/iEteOMQFsS8PdVNukw2hvR7%20Hco0R8WeXhiCg/c9+ig/89Pv5vBKg/3YwcDu6K+i9/3sx8VsNvP/8z//NWpraIURl65c5b47b2e6%20udFM040lqwxRXhIoiRCCwDoME06fOMnxu1+BiARVlpLOpjgEzFLai7uQQdRA0eZnIzepkwiBEhXS%20VojKgLVQG8gyGI0pZxPqNEUUJVFVo8qKcpaRbQ0ZXr3B+nDIMFDkQqKlwkhJWWaMi5KgbKy4lpd3%20I9R5JuOMylmcgLKskWnOaDIlimKSbgsvJYePHvuPns33HYyurg35+lPPs7Y1Iu7vIrfgwwi9tMS2%20KZmGzeLW2rVrqEgjQk3tHYOZofA9RNhDJREqinFaUjuLETmooLF0chXCpFCnWFFSC0PtCmyZoqVH%202gpX1Q1Y3DuEUwjZlFWLu1fAGtr9BabjISdOnqI2JUtLSywvLjVQrKq5AxJ1M7LHOoRzCOcpi4JA%20KvLJjHYrwRYFnVbEo48+ykcfez/3Hzq8kwrt6AfWJ37pn4jB1rb/rX/zrxlNxkTtNpMsb8xDbUNs%20xHlCqQgCh9LN8q9OJGvX11nZe4ADR44xKUu8F6SjCTqu5y2FkCCI0DpsLv1v+nAp37iClDk2LRBF%20RVgZRFHiswyZpeiyQeakwyH5aEI1SfFZCZWhnURMnW9u04xhWpakWUllDbUTBFHC4T2rJO0udmuE%20UBotoDA14+mMaGObvbfsIWn3WN23n2O33fWDBaPS8cmTpy9y9sU1rIzwQYQxNQjFxmjQ7Ch0u6Bg%20KjzOQVUbiCLUnl109QqoFgQCJ8XcfsiiXYLyPUwxQzmDcCHetWi8OyusLaDuQDZFmgbZ4V1zGOiN%20wQuBFwLrPMsLSxw5coxQS8qy5NSpF5iMZ0zHM3Tt8LVr/KnsfGpgHcI3EHNhHXEUNlwaPBLPw696%20Nb/08U9w3+49O4FoRz80/YNPfpLLly7x+d//fVb37WNza8hCHOGdobIN76ioPZUFKxSoACEDrJec%20OnOB3ftvoa5sAyrM0sYOazIGIamlaugViDlgBBAeK2psXSGLGlXUUFaoooKigLJmtH4DW9VURUmZ%20N5BAPE0JqDSuKEgnM7ZnM6Z1hU46xHGL0XTGNC3Y3B42CBU8SqrmZMU2PnTDyYR+vozx8JrXPsTK%204aPiBwpGL1yxn/nWiQtMC0fUWWJqIUpaRN0+6XRGe/cC7SjGSUElHD6J0IHGRSFxbxHrFIYaJ3wD%20kgsUoZ4vbyHxdQyuxluFFwmGmsKUeJegTQs9FoRliA4rdBhAGCGqCm0t2nmKoqKMKy5duMSRw7ew%20Z2Uva9euU5Ylg4sXaXcXkLVFGtvYyniH8G5OhRT0+gtMRluNle9kxkOvfRWf/MTPc2Bp8dM7r8+O%20fpjqrewRP/exj/mN69c4/fwJOkGAVxopPEoHIDy1kJQWSguBU2wPUhbQXF47T3d5N3e+4hVM0xwZ%20aMrplCBOkL4ZTCNuOn/Il17yPJ8RCIgsyKzAjzOK0RgzSzFFhXSOqiopypKyrrBeNG0naymNYTrL%20qKqKMAzpRgm91RWs1GyNZ8zSlCef+gabG9tUVY0Wgto3vPogCKlKw3g6ozPLufeBV/0/PpPvKxid%20OX+VU+evUfmAqha4QHH/fQ9w7PhxsnyGq2sCKcirnAoQ7RZ1EDBxhkpIlA4wwuKkRIYCGUiEAusM%20zhuEl1grcU43sHwrkJUntwLlFLGtUVo2gP7aUFFiK0OR54i6ohACm+e8ePoMl86/SJmnbFxbp9fr%20oeI2lCV+nmqql9jYAikF0nuqqiAKQrY3NrnnjuN84ud+jrfc+8qdjGhHPxI9+PCbxIcvX/Gf/h//%20J6ajEd1W0mBrhUd5R+UM07xESoV1UFcZtffU3vLcsye4/e5XYKqahU6HoiiQqm6AbjS+jHr+WTU8%20WaK8wFUl5TTHjKa4cQppjjQOLQQqCjEOMJbKOGohqJynmAejws7pqlFCnefUdU3lDZPJBGNhY2OL%202s5dlAFjDJW3JFHY8O6HU4LWEI/8wYLR9ZHx3/r2GdZHGUHcZ5TO6PSWeO0Dr+L4kT7aQTUFbT3O%201hg8JoywEcyASWlodQRCW9AKAppDWgzGVhhnyPOcsq4xXlAC06piWGRkxoCzGC2hiCjClEJItHNU%20zjUXyAi08wSysW7Z3txE4pFCkE2mhErjqxzpHc2O6ZxkJxs3EYUinU3pJCH79+3hox/5EO944xt3%20AtGOfqT6yUfeysVz5/k3/+pfURtHFGpEoPCmpsoL6sJi6rkJaCtgNJ2xsLzExtY2zz7zPLffeQfO%20WEIdzNlITdtB+Cbzr42hrEpcbaiLmmqSUm9PcLOUsHIkHgIkQijWblylDjQ+jgmTFqXzDCYjrm1s%20MhyOacVtEBIRl2yMx8R1hZWawWBAECb0FhbI85KqNmgdIi3Y0iClJgwFk1lGOJ7w3ImTvHHvyl8t%20GG3NysHVYc1T568yJmJp1x5EfZ1+d4mldp/pusVXKYm3xKGk047QWlNhCNsa1QaDbmiIoUKHcytw%20oOnOxA2n2jf3aqX3pAjGRclmmjGpKrwQuL17qMuKPJtRz2aYWQ5ZSlAYZF1RTadsb24wnQxZX7tO%20d2mBbrfLYH2TbhRhbXNE2ADxfDMCvem5JiWL3Q6b16/zC//5P+YD732MWKidt2VHP1J1VveK93/4%20w/7555/n5DPPoLUmkCFgKIzDVRXWS7yQdDodsnRKqwd5afjTP/tz7nrFvWxvj9i9vISvLdJ7pDV4%20Y6jrgjLLyKfNSYcra0RZI0pDS2o6rRBhHOkkY5alFM6R5SXTWcqoqhkUGZuzlO3JlDTP6HVqlA5p%2064AgjlhZWUFGCVfWNrBCIFVEVpTkZYEIQmSgkbbZ2I4DRTEcYozhhRde4I2PvPn7D0YlfFJ1ogt/%20+EfPPviXL26Q7D7KeukxQZdudzf9GKqsptXWtCNBK3K0k5pYG5RoLKe1D9Ba0mkphHSNTcq8TyPn%20xvd+vh+RB5LUQeo9aSdhGoWMi5xJXVF1WlitqJ2hLnNU7egK6BpJUFuSMGBczvjat57kd//wD6jr%20usmKAoUtDYKQ/sIC19au01noY8q82cfw4IqK6WjII695HT//vg9wy+LCTla0o78W7bntNvG2R9/l%20L1+/xngwwMnGOdl4RRB1qDxkpaPIHaaWTMYFYdIlzTP+5E+/wnvf/SjtIKBOU0Y31sjzlHw8JpuO%20qPMZzhlWl5fJpym9VpvxaIqLIrLKs729jZYBuSlROkS3O4TWMTh3gSsbW2RlSVqURO0WVkje9dh7%20OHj4CE8+/U2eevZZZmVJ0o5Jy4qiytlzaB/DPGOUzti77wAHFm/lwx/6KP/bv/vfuXj5ElErYjoa%20fv9lmoMjU/jVs5ssXtyaUsY9SidpS4kM2nS7fZyBSEE7kfQ6gjioSEJLrDyR9CQqoBso4lABBkVj%2066OQaJqSiQYDjgVymkCUC8jwZFLQV5KJCBkax7gssN4QSY8SFpMVFKVBoKhlRF5mbGdTdC/G5RJR%20FgRGoqxBhAFpXrOwvMpoMiQKNUVR0mm1KaYpdx49zkceez93Htu5N9vRX69e84bXc+LECf7wd38P%20ZQwmK+jFMdksI1TNUes4zZF4lPFgPFlluHjpKk88+TQtHRA6x3h9DVXXhM7QCjVaxeTljK2tbSIh%20maYzwk5n3g6xRMuL1LUhSGK2R1OGV68wTQvWNwZkeYVUIcJZJpOMvbt3cX1jk3Fecv7iiwxGIypr%20KS1M84Lde/dy5vw5uv0uOg65cv0Krz98K5/73OeYzMZ02y2Ud8ym479aMDKw+Oy3z3H+0lV02MJY%20j4w0oQhZXl4EAa12wEJHEeqMOBC0AkESNL73LR3SlpJg/sc1e6J+vrbubsIObg4giQCvBBoIgVgK%20Ytmi5Ry+qijTEmNMM01TjsLaOekuoipLtiYTrm5sEHW6eJfhopLQOJwpcMaTZymtTgLG4LRESyiz%20DOEt73z72/nYRx/bCUQ7+mvXwSPHxTvf+U7/zFNPc/XCBcJ5kzeII/Jpigg9ZpjT7iS4OkImCSII%202Rhs89zJE/TiGGUtsfCs9vo4B5k1KAd5XVJZQdzvsbW5RRRFXL58mdFoxP79B5FCo8OIqN9nvL7B%20JM8pBRghUVo3/OzCcvrsBdYnYzyS0WSCwSPDiNJ7CmM5e/Yss6Jm3/6DPHDsGP3FZXq9Hi+cOsMT%20T1xDSsl0OuXKlSucP33KH739ju99A7uCR1ILz58+z9X1bUSwD2RClMTEBhYWW0Qh9DuKdgy4mlg5%20OlFIOwpJCAhu/iG+6eoLPEo03SLvm0NU7zxeNAxqIZogJGh63AFN5hUp2ZyNhAmBaLzOayXxcYAU%20AicVeV2xNh6wMRqgWy1EVoMMQVvQFlOWOCyT0YgwaXY6kihmurnBa++5l0cffXTnrdjRj2+69tAb%20xDve8Q7/Lz/z60RhQFkZVpeXuDaaUDtJZWukj3FVQeBbhHFEURSMpzNCrYilJIgTRKgZj1Ly6YhQ%20CvCGdpwwnOXc2B6Rpinnz59nOp0SdRa56657aLVa1MbTXt9GRjUiTpld36CuDV4pgiQhqhXZNKeo%20DLWzoAOKrKC0DhGF7Nmzj9e/6c284t5X8oY3vpHWvgO40Yjt4YDPfvaz/Ps//mPyYcHGjXXWrl3n%206O13fO+Z0RR++doGXLy6ybTw2FZI2OoQhZpW6Gi3IloJdNugRUm/HZGEnk6gaBMQMr+Wcc2HlnzX%20NTE3WbzSNqwUZ5GiAUZJBF40wch6iAT4QBJ2O7QKGBYpmXWoKMTqoHk4UYvtqqCQgoV2GztKcUpR%20CwdC4rUkEE0kD4IArKfOc/bu3sVHPvgBHrxzpzzb0Y9PMgh4x0+/ky9/8U+5eOYMwjjK2hLGCbWt%20IdBUQFkUqCyn3W7jpEAoSRgnCGuZ5hl1WVClM1phwOKuZbQUxFrzja9/gyLL2NraIi0NQbtHZ2mZ%20e+57AK01Tzz5NGlZU9aGykBeWWrrGtChkCRxFycdAoNyttkjMo52u8OuPXu565X38uCDD3L8tjtI%200xn/5//yGywuL/Hkk0+ytrbG6u7dOOcwZcXW+sb3V6alBk6cu876OMPrFo4QHbYQytDrdGgnmk4C%20cQChM+xqtwmo0Dia4bxCOYVygjmSaB6H/Jyg9jJC4OaP1Lyh3XhEvfx3CWkgUbECHbdwVYH1Fbnw%20GOXJvSPodRnWJfHiAiJMQGuclFSuwZR72WRkC0t9pqMhiVaYquStb/8pHv3pn955G3b0Y9ctd90j%203vyWt/hff+E00sPG1ibdpEWZVnjvmFUFtnYEUTS3Q4ppt7rEcYvh5jrtMKDV69Pv9eZmjZKtwRZ1%20VnD5yhpRGJLOapSKCHTEYHvCmTMXyNKc82de5OrF6xS1oaotpjQIpalLg/ee2SRFBwHWO0prsUrQ%20SiL27T/E4Ttu400PvxmvJIPBgHMXzvO1J75Kludcv75Gv9tDeIiCgGwy5dLFi99fMBpn8NwL55kU%20oFp9hIwJdIT3NSsru+j3YzotiJWn3wqJMKibTWonkM6jvEQ58VIy1MzSG29efzPm+KZMa9CZc49M%20P+8nzZknsVTIueecFZI6blE5O1+w9NhYk1NzbTIgXOhhS4cPAtABtSgItUQRUGYVQgi0ElRFwT13%203M5jjz7KLb1oJyva0d8Ive0d7+ArX/5zzp48hXOe2nkckrquqKzBW48pDXVpSGSAqw3j7QGz8RQf%20xyx1+8RRSF2WrK+tceq559le36Tf6mGMIyRudphqw7UL1/n8tS+QZhlBEDEdzDDGUtYWJUOUb9A6%20SikW4oZnnZclviixStJJunSTLq0g4ZmnvskwmzJOZ5R1Rafb5dSpkxw9epzpdEo+neCMZZrOuHDu%20PIMbN/zSnj3//6THDH51WsCFa5tkVkHUIdRtpNbgYNfyIr1OQCuCyBuWwwBBSohFowlv+no72WQ4%201jfroGIemITgJoHDzxMm6y0Kgfce6V0TiJwFFNJ5YqkpLbSEZymOmfmazSrHCItot9gaD1mbDFlZ%20XqEs0maZSc/X7ANJGChMlVGkM3YvLrF55QpvfughHnnNq4WfJ2s72tGPW4fvu0+85rWv82dPn6W/%200GW0uY2UqjFsdB7hmvKomubklWPkt9koc7J0SpmlrF++yuFDB7ntllu49dBRzLSgI9tMt8fYzJKE%20CaYqiYOYftBltDUk0CH5dErLa1Ah0yKfs98rVGmI2xFVaZt+i/F4Y4mDgFYUo72gmKUUVQl4Rlvb%20LO7eRZHndFttyizFFhUSQSuMmGUp4+0B+Sz93jKjKfzysyeu883nzyCXD5IZEElIXVd0+m0WFzp0%20WuAqWFkIEBR00GgawJPAvWzHOzdinI/S8B688DT+l81naDahPQIhXFOTNUSol0s2C4n3oAROCNpB%20QBwFeO/JvGFtPGLl4P5mp0hpyjnzJe50kVmGry1aSJaWemxfu849d9zOBx97jLQ0vpvonVC0o78x%20etd73suffOGLrN+4TpgkOFNjS4GSgkgpTFYhCJAoBtfXKbIZQaBYXlqg3+7RChJM4VDKcMv+w5hh%20Rb2ZgXOYWUmbCJVahukG3jkKW6A8LC0tI1AElcQ5T6fXw1rPjcGAIABlPfuWVxhOx0zzjBhFrBUB%20UJuaqio5cvAgK/v3cubcWWbjEXWRU5Y1pqixDrx1XL10mfUbN9h/7OjLPbP/t4cxK+DK9U1KJ0kr%20qJ1qIN5aEEfN3lCkmn5RMzFz84+XMODzr+Re/qI320DzoNN0cJqGtgccct4mkt/1e5ptaQfCEQIJ%20zQpAs8YuMMJTCkcpPSbQOKlwonFxFXN/KC/n/uOhJp1NicOAt77xYQ7u2cOenUC0o79h2nNw/6d/%208q1vQcybxzqMcM7jjMcWBjMrqcYZxWhGPcmaABMkTDZHCCc4eusRDu47gCsd65fWKMY52igip4h9%20SOIDIq9JnKLlNW2h6Qct9rT7HNq1yu6kS1A5FlTEkd17ObZ3P3v6S/SThNCBKCsSFbDc7dOWAdlo%20grYQS006HHPu5CnWr14nlIpWGCGd5/9m782a7EyvK73nnb7hfGfIORNTFVAEauDcKlKiJKrl1mC3%205CnsCP8F/QX3T2j/hPalfdHh4cKhVtuWWx1WUw62mhLbDFIki2QVCjOQ45m/6Z188R6gWKRk+1Ko%20OCsiIxEJIIFMfGdj77X3WgvrMUKyN55AiCxm8/9/ndHpJXzw4ccEmdE5QcxypJQYJRkNS6pCMchh%20oBO5nGp03LQ+klfZTGJTkDYfCpti80khSkPaJ5dGqVMSxE86JOKGOwogFWaz/jdaoZQgOmiDY217%20bAzE4PF9UuYL7wl9jw4eay2ZUjT1gnffuMV/9Lu/y41iW4i2+PuHYn/vn/zjP/xP/us//uM/YX45%20ZW9njM7SLZF2DukDPnR465EIVIjYdcO14xM+f+892rrjT//8f+fjn/yMZrpibAp21SBttmOEjW+S%20jxv7fiGo3YI6HzA0AyqpWLlAgWJkMhYhcjAcooYF2mQ0yzlXqyWx66gyw+5wQEdgd3eXxvZMl3MG%20WtNmhtB30Pf0dUNeSiYHO1zV6d7o/7MYOfi956dTPn74BGEKoszRWY4QgkzCeJAzyCWFhtJstF0v%20C0okpWm87G4Em66GX+p65OYXRD7hjl72VYG0gYsiefnykgOPgSRrBSMUWmtCFHTBUbs+5T+FQLDJ%20bpMQCd4TYsS5Hu08ZV7w27/5Td67+/b2qd/i7y3e/fX3xb133onf/tZfIHWWMtOsRbkW6T3CgYgR%20owSZMLR1x9npKX/5l39JV3c8+/gh+9WYqhhSCkN0EYHEKJWU9dEk4bhSaKUQoSJah2ubZOwmILYd%207WrF4uqKO59/h2t3bnJ4csxoWPLtv/4OF0+eMigL3tjdYVTkCJMlcrzpUBF0gNUqcUahtzjVo6Ng%20MZvz8Ycfferr/VvHtPOWf/X4yTMurhYonaegRamIOJQMjKqCIkt8dLZpfmTYfLqoIOr0YyFfjVnx%20FTeUmCIFKNJiTb18C+m9jC8HvJTz5JApviymUe3VGQASpZLw1fqIDR5pNEYqBIFcSTItQYHJUkCd%207VpuHB/x+7/zj7iWse2Ktvh7jd/+R79DORhivUspNTGZFuJTd4NNXtciQnSexXzFj370AU+fPCP4%20SGZyooOwoXCDSsaGUUtQ6fbuZb5jURX0vsfajuFwwGhnhM41g0HBzRvXOH38gLPHj3HrNQfDIQfD%20IaFtWV5c0ExnHE52GGU5wVoWFxf4pmNvNGF3OGaQ5QyKEhEhOEezWvPo4UOa5fJ//H/tjOZzz8OH%20j2l7iy0iMVcEFxExoGWgLFLqpSLxRTFuouO82oxovAq2jK9YoxTSJF8mFkSPiEm6L34+sWTDW4vN%20SBc3urUoIgi/2Xil7INIRAhB8NA7S9d1hBDAe1xvN583QEj/kFoJrPO8+/Y7265oi9cCv/qNb/DG%20nds8vP8xZWYSrxrSWCU3HtciCFCQ5wX/5X/+n6KMoWtazh4+YyANdtGgbcA1K6QPxBDwtsf1LbZv%206a0HbymKnLIq2T86YHd3D5krFvMVbd+Q5wbXtnz8wY9ZTK9wIqK8Z1KWxL7j4sUpPgZ2rx9z/eiY%20xWLB87Mz9MYfybc9B5Nd5k2D6y0hBE5PTzl/9vy/euOd0d9djM5OL3jw4AExRnrrUTrDAUJElIyU%20ucJsIrw1QIhIoX650YopkNW/6nE2SrSwKUARRIip+rwsYPKTu8jEMaWiEwEpUzHzpC2cj57oPDZ4%20uq6jaRqCdUTr8NYivE0ZbJtI3q7r2JmM+O3f+k3eLNW2K9ri7z3evHtHvP/1r8WPPvoIaTKsapMN%20rNRoqdIJDClX8OTwGn/4h/8xfYhpumg9w/EurDr683NUdOAcrrd426VL7a7BtR3OWVbzBUoL9nf3%20yLKC8eEuz5+9oG1bYoy8c+8uL85f4JqGZdfg2vR3mV4uOZtdMZmeIx/c5+adt3Btx3I2o7M9vXXk%20WUaR56y7nrrrMFqzmi+4uLjgjXfe/ruL0flsxbPzOQFF8J6hUnQikOMwQKEEWVpSbaYwgfjEoIif%20H36Sq5tKpSjt9BFREmJyV0ybtU0tkp90Ri8/h/y5M2yNetU+OQI9gR6w3mF7T/ASgYHYQ5RIoUGm%20W4IMcHXDrVs3+Yff+MZ2PtvitYAZlXzhK1+m/Bf/IvE7m/FMxKQoCDHSeUcMgWo8RGrJ+bOnTIYj%20QmdZfHxGHgSTaogUhhAFJmRkYshASoiesLFhNoMcrE0zHfD2Wzd4J4o0w4lIu14TrKWoBizXK2bz%20OX30XM5nLNqG+48e8r/+n3/G9370A3YPj7EiovKcvaMD3rr7Nj/6wQf4YOlsi5SSrmlZLhZ/N4Hd%20wR9958ePeDHrkLJCO4Gsl5TaUGSGIRXvvlGhHASbRjWlBcH5lCMWYxrVgkg8NuDRQMQIgbObMUxB%204wJ1V6OUohwUhBhQIg1yEsBbBGHTEUnw6YCyFRGrJS9Wc067NVk5Yvb4Bbb2qFDQu5am7hlJQ9da%20jkcT5GJO13T8F7/ze7w3qYRP50pbbPH3Hl/++lc5OD5g9fAp14ZDpss6JYhoSSCSlRltW/PFL77L%209OqM3UnJ7Oo8manKVBCs6ahxhCg2dj2aKASoDJQEGSkHBeAQMtEfMUZc72mbFFutR2NicGRCMDi+%20xhvmTYQQ3LOe4D0Pnj7m/d/4NZ5dXLJylrntITP81fe/z5/+xbcYZQXrZo2NnlE14PT5C2bnl397%20MQrw1v0F/+zp2ZT5usVlA4QE2btUQduOcTnBd9AGS1toVr3AmGT7Qdys8GMSpr5c2KtXZNBmdNuQ%20aSnmJOAkyBCIeIxIMb2CmJJdo9rMaxJ8JCpBrwVLYEmgjp6mi7R1B1ZgG0vfe+ginbXIEJOBWtty%209/oN7t66lf4+20K0xWuCW3duiy984b341x8/xQhJoTWu7yF6IgEpDQeHe4xGI5SMxODJM0WR6URT%20xEhDS2sEXmukLlH5ADMYk1dD8sEAU2TpTic6wEP04MH3DtN05H3PajEn2J667an7nnnTol0giwIl%20JDu7u1y7eZOv7+zC4T7EyLRekf/Jn/DX3/ku73/+S1xdXfHt736XJxenyBCZXl397cVIwv0nT9L+%20f71eU5g9pIhEb0EKmlXHwe4ezoGNjj4KFp2kyiTZqzujl2pYT9jYZf48OZ2qcoRXmWUxFQwfUBtW%20SUqRrrjDy04r3RvVMtJpwYzAWeyY+45eRFZty7ppCM7T1jWh6ZKp+LpmYAMxBmzdcu/zX+LevXvb%20p3uL1wpKKb72q1/ne//qW+nWzxiiEOgokAGMh1vH19gfjsEHemsRSqKzAi8sznkaGWiKDL0zYWfv%20mNFkH1NNIC+SJ71i4/HjeLk6AoEKUNlA5Tyj2RzfNDTzBc10ip2t8PRENjQIsG46Zu1zxPQKbwz5%20aMjhZJc7t27yW7/xm1xeXvLTj+7z7PQFWkhOnz1ndXoZh8f74pfGtKdPn3JxcQEhokQ6QQy+w+iM%20vm/Z39shycYCvXcsG8fOYEi2oYy02CR8x0gMLgnzZZrLAjLxQiFlKUkBuVIoqciQSCnT9yNsmqjw%20Uqcm6YRgZQRzAmeh4el6zjL0BCNplj226xEhEpoe2ft0JNlZVAy4tkGGyOfuvMl7N7b5Z1u8fnjv%20vffY2duFRY3WKdUvkwoVAspaTiZ77FYVGkkfHShBh8eJQDEoyQpNee0QubPD7t4xYrwDwqS+IYCL%20PgWobnoHKTc8sFJEIxARdDVCNy35aMFgUNEO5rj1mrBusV1LZgbEKAhdi607graxUfaJAAAgAElE%20QVRkRUEeJQNpePCTn7FarVLopJAoAufPT1FKTv/WMe3FJgo6yzVGCVx0BN8jo2IyHHIwniSRnu9Z%20LD3CWYa5QI9zSiGJRJRInU0Mm7V6SHFACAkqYhDECJp066CUwqj0XXjZCH1CakuiBCegBc5xPO0W%20PK3nLLXCCs16vaZvWqQDaT3aR6JQxCAwURA7y854xL27n8NsS9EWryFu3LjBG2+8wfMf/ZRcG4TS%20FCiMiEjnGZmCSVmRmwyvBVZBHyMYQ3W4j5mMkW/dhiwHmUNQm4s/UAq0VkCZXnz4Vy/CJNFKW2wh%20SZ3URJKZjGw0IS4WzF+cU19Y2t6SS402OUYrXPDY5ZrLp095/NOP+ODffY+273jx9ClFmbGwHbOr%20K8q9na/9UjF6uuSj09NTuqbGyAHB9wS3IXiM5NbxLSYDnZwWQ2RVrzFCMqtrylIhsgxQ5BuuSMqN%20IYhIZwGwOVpUMcnNpEpE9csUjvjJOy9+PkEEemAKvHArLtqahW2xusJay2w6pV2sECFDdg7RWozf%20zKEBXIjcvvkG797b3hZt8Xpicu1E3Hv77Xj+4X1knpMVOXkfqGQGwTLJSjKp0DGZrQUJXsTECR0f%20wWgEeQlKp5f9SxPDDdUrHERrEcJ/8kIUMd31KY2QAtd3aCFSQdMaqiGiHFD4QN13GBdxXYfrejIv%20kC4gJVQoDqshH373+9TWkmVZKliiZTWd05/PPsqOdz89ps3mNaenp6xWK0KucM2a3mtMjDgtKIi4%20ZcNgnJFpg3cQomC6aMgzTawUXkvQijxNnEljFtO1UNgcLYpPyWM32rMY8QGCkHiR7icDYIE2wEJ6%20HtZXPF1NqV2fVpRCs2o71udzwrJJ3Na6o1+sUE2HicnqX0u4d+9zvHPr+rYv2uK1xVv37vLdPCcf%20SGLdoZsVw1yjtOKgGqIDBO/xMcDAoAcF46NjODpMV8TWp8M/k8YzIdO9X9dZbLOGtkPLgFZJgB6k%20JCpNNAF06qSkTjbPeJlaGakofGBPKKZPn9F3LRJBluUI4Qi9JXORKkrGWUmuMkRZsnSW0mQ0qzVX%20Z+ecHO9+ujOq65r5fE7drJAxIwZDICcIQVSCxeU5F8+fM1AH5CNFiBIXBJfzOnUhakAw4iVFRIgg%20Y8r8FiLxRC+V9CEGpEhX2ekbCEGm+yGnJB7ogDpaln3H3Fuenp0ybdbIMsdojRYK1UXiukd3Edf0%20iKbHrxpE26B8QMbkrX3z+nVGEi5X9T/dHw7+yfbR3uJ1w8HRISozFF4gshzvlxQoBplJI5rU9CJ1%20RqooyHd2GZwcw3AIvYUy34wdPc4rglR477Fdje9asuhQISbulYiNYIXE6YagM4ajCV4liiXEgAkx%20kd/jIYUQDLuedQQX6qS0cB67anCLJdQdxkekNLgAzWJJUQ2IvWM+nXHCL5xMP336nAcPHlBmOVoK%20VAzIYDHCg20YacP//e1/y+XzF4wGFQTFatkxHO1xftXw8OkVT8/XnC08qz7xPFFJnFB0QWEj9CF9%20kV5InJQ4IfFGEzJNKwW9lnSkFNqL2PNoMeVn58/42dNH1KsG1UPmJLLxqNrRnE+5+vgJpvPkNtJP%20l2gbsOsGW7dkWmEyxfvv/wMAtoVoi9e2M7p7l529Xby19G1DpQ2h7TnZO0AjcD7JLJyIkGl2blyH%20yRichSIHHM631HS4PEIuCQV46ehiQ6RHKs9qeYmSHmkiZ9MX1LYmCoeLIfkRSUBJ7Mu7QimhyKn2%209ygnE7Iip+97MqlZXFzRThcMhGZ/MGJSDJAuMC4GFNpwcXb2yg/7U53R5dUVTdNsNmkSqSLRerxt%20sL3gC+/e4/TpA/7iW9/iavqCb3zz6zT9kgePzzg5OWLZB4KIRBy9V4xyqAxkGoxSOJ9mUIVKhDYb%208V6izLBS0m66oYXtuWpWTNdLFl1D23cYDJnRSYzrHJUskGtLGTR10yGdRnYOeotyEWMUXdNy4+iA%20yXi4fZq3eK1RDgtOTk44O52mMAopGWhFrtUrG5CoJDI36EEFZZFGMpfokNC2WCwOhVACaTwSKHLN%20IJbotkbajklV4uoVDsn1w31CUSCyHLXhmCDRKYhAkCqNbUIgxyPyVY1f1MTGopEUUiOsxy7WiUMS%20Au0jMqZzHgj0XffLxejs7IKmaZNUIzhUCEQRyYQhzwxv3bnFmzcP+Mu/+rd88LOfcv3Nm5zcOiav%20DnBUzJYzlk3Poo6UK8u4UIyqjOFAkWcwKPQnEpLNn2k3bw64WqxpvGXlOpZdw9p2dN5hkZispIoZ%20A1OwbGtsGyi84vLJKdoGaDzCR2LT4/se5QMm1zSLBXe+/mUO9/a3T/MWrzXU8aG4efNmnP7oQ5xz%20qAhGZigp0UYlXkhL8uGAfGcHyhKUAe/BeuyqBhGQJiMCKgpyJRFKQpbRPHrIiwcPORiPU1EbVFS7%20e8SNcj1KkZZsHryzxOiJMpDJRM0wrCjGI+x0Tj9fJgN+pdEe2tUS6SNSAi6ksyGfFlrtuv50MeoC%20fzSbzQghIITGux4fFQLNYJhxcLDHl750wOUVvLh8wb/799/hX/+bf8Pv/uP/kFu3b/D8dM5o/wZE%206CP0vme+6pHrJUZ7tApMRuXmfiGt60MIWO/ovcMFS1QSGwM29HQ+ENBErSkyk9aYyw7tBL62yCiI%20refFw6dIGylNxqppCL0l9BblPSpoXG+5d/stJor/Zvs4b/G6Y7I7xnYt0QeEUFjbEWOgKAqiTPYg%20elCQjyowGQDOBXzf47oeRUSEtKo3yiOigLaDuqa9mPLg+z/kTClObtwk29tBCMXg+BhRjBAybb29%20d8TgcN4TZCpmuVCb+J6CLC+xUiL8Jqw1QujdJzZBpItt6SNCwXq5+nQxmjX8s/l8iRCC3GTUNhJd%20TwwOES1lbviX/9t3GO9P+PxXv0h1tMO//NP/g//hf/kTfuO3/gNObr5JtwqJPDMgVZaicaVD64AQ%20nqfTGqkEWhmUlgiRUg9CkAQ0fdMmglsmCUj0ASEjwQpkTJ2QDx4tNHlV4LxnsVigVMHAZCwuV6mY%20uuRiJ7xilGd87tYb7MGWK9ritUee53RdR5YbtJXYukEoSTkaEJTAETFFgShLEJJgPb0PhNaik5CC%20IDxKZaigEj8yW9OenWKvFuzqArteo9Y9i+acxbLjnZ3DtIULG9WEsxAsMQaiVCAVGA29A6PJi4JW%20KVzTYrs+6VaDQCMJQqRRTSlE9AghWK/Xny5GTeO4nE5xziGzJO3wMWBtz2q5YLGc8t/98/+e4e6I%20G2++we7BIfloxMNnL/jn//MfY6oR490jdFEyGFaUw5yi0phSYrKIUpCXg40PdUae56hMoTVomQz8%20c11itKQ0BiNAh9QT6pjOCnRoiL5lMBigR0MePX9BjBElJZ21tH1PdD4dXUYQPnDj5Dq3b97aPsVb%20fCYwGKTX0HA8xiw6hGgpqwozrGilwMpIphXkBmLAbRT4USiiMkQRCEonYzUhEDFQdz3L5YqP7n/M%20WycnDLOCQVXxdLGkUTLdJtU19CHJrILFEbBCIIJCKUX+ksg2GvIMrTXee5qmoW/bV69LKSVaSMxG%20j6oQNPUvjGnL5ZLVakXf9wh6rAVlCoSI9E3NYjFDZBJZZDw+e86D81OG411MNcZmAlWOWNoU4TEL%20NbFeg7QE7RDSgYxEoVHKoLTGZApjNNok9bwmUijBQGtGRlMiMER0CBgkpQycTDL6rkaVOSI3fP8n%20P8EGj9aKermm6zrwPsVkb0zb7t6+w63j4+1TvMVnAqPRiGo0ZOglYnmGygyjyTi1PEriY0zFQxsg%20SToyo3GFJOhI1IKgFU5LyDQqBvphQRiWiMmQ8uiA4f4hBM9oNCQbZNQykotkBISzRN8TCMkxMkp6%20pcikxqhNOREgtELKzdmOda8MFF++LqWURJ9kY03T/AJnVDfEjUNicA29iwy0wSi1EcsGxgcTrI+I%20TJPlJQ4FWqNVhgsRqWQi7nuP84Eo0+8TWiK1QJmCGAXOC/o2IPoOCIgYUHhUbykUDKQgCx7tPMpb%20MinIJdx3DX2/JK8GRAU//MlPEKZgbzdDhzW+68FGTJ5mYh0F14+PuD1S20i0LT4bnVE5ZFxWFGtP%206yBTmrIs03/CIvnG65cRYSEFZZDplJITIjJLGlBHROoULZaPKsLBhK/97j/ELldEJZnOV7gqJ9/d%20YeE6TibX06gmNJlVhOgJeByfKCtgw24Ht3Gi1MgoUEGio0RECchNkLR4VZystb8wpq1rbNORCUXr%20HIO8ol6u0FpTDIfkxnDj5A2+/9MP0EWJ8oq2dujCEqRhNN6lbWukyciLEpXleAK9V/TOEkRA6xbv%20HeWwQkrJcr2iKDJGwwGua3F9h9eQj4ZgW3rXMRhoXEgEXB4lg+oQhKfvao7G+wipKfpI1nrcdMmo%20GLK8vODa/g7Ejttv3qINYOT2Qd7i9UewnlBbHv/0PtdCRq5MigEqh2ADedAwb+BiBTt7G97IoTbK%20CIInE0lkm+qIp8wN+fEB3XoBQ83KOtSkxKgcXQwYFsPkt60KyDUqyxhoSYbHRosQEakB24KCEJIF%209E5R0ixqYucwQqMkOO9QOsM7h9E5mdK0bfvpYuR6i+t72qYhqopBUaKkofcpOXJvZ5f98S5G5Myn%20a3QXMeMhWmiWq5Z68Yzd3X1yrTDW0nc9jbVYwibLMaDHefLRti61jx6ME4guQB8YF0OibWmXNYQO%20IwTBRWTwaKVo24AUIEXA6JK9yV7yv+49i4srlBOEzmNkBiEyGlXs7+6xDSPa4rMCoRXDnV2edpZe%20qaTIKArwPWQl1jtM22J82CjyHa1NkdgFFuEdMQqiEEitkZkGDbLMUQzw2A1XK5Eyw+gBUhWgcnBJ%20BQIpZ14IiQwSpVK4JEKCa/HWpeIV0/2TQkHYdEqbWhA214UhBLz3ny5Gbdu++qBS6tXHbNfTZhne%20ez74mx/SLVaUeUEM0E4X9OsOkw3Yneywvpzjix6tso1HNUijUFqDieQqfRFlZtLRVMxQSm40NRET%20JNZG6tWSMhOUZU5Yd1jbozLNoBwjRcS2PYRIZkow0DYrms4RkLSdJTcG7z37e4e8cfMGxbYYbfEZ%20QVcozP6YtY4scQSjiDsDFlhUOWTtO7p+ReEahExmh63t6Js+CV+9IwQQSqODIFMKYRRIiZQaJQRC%20J65JYEDkrxTrNiaZyEt9afDJuE0INteQ6Uygb9vNz+lX5LkPG996Ij4EPAGHx+LSmNbZP/qEM9pc%20QQ6HQ2w0LJdLbNOSV2mkujw9Q+gSaQPWNQTjkMqAd7i+ZdlNIQiuzmdE65FFTl4MCFKAUchSYvsF%20WWWI1hEEtE1PcI7owNuOmRRoAvQ948M9xjs7RNVicsiLDJllWJ+MwxftGiWTJW1TW+LGh9vbDllm%20+L5nb2+Pa8dHW1PHLT4z6IF1sMhRyXLVMhxWhNJgjSRt6gXWtsyXU3baMYzGFF7SNR1B6hTvJSVS%20a4wxCKlT7NEmqTDlrwqESEH1yTYjySSCTMVEBJ9ew94iY0AoBU6C99jVGrdukzA1BAIxuboGTxc9%20fXDY4DeFyONj8t/2y/qffjKmBY9zDmMMXRuwNnD91i2++tWv0jQNP/7RB6wvavJqjFIK6yLWWoQR%207B/ss7u7z+H+ER988AHPnzxHRokSPV3fEUREVYamcQzjhEyYRKj1jmbdUK9q6B2K1DXFtmXqFXHV%20E51lPCiJIhILg8gkF5cLVospRPsqqqhpHUpm+Nglktw59nd2eHO45a63+Oxgvq55dnZGPh5Tz5ao%20qqKTkWgUNli0UfTRs7i6pBhVFIOSgdF0RiJCTO7yIrnMe5J/iEQQo0BlOVH4lwNhkl0JvTHkT4fc%20Dp/MEa1FBo+SyQ2SEGBV00wX2KbFRMBHOuvpg6ePm/fB4wj4TZGKm0AOodT9V8VIbKJ8XNfjrKAw%20Oe/eu8tvf/M3efbsGY/vP+TFwyccHJygi5Jl17JoWkzU3Dy8zt27b1NmOYuzKevzeXJ99MkSM0hB%20LjROKSpdUqocqTOGhSKTNbGR9LJDeo+KOW3Xc3664PzpJVVpyG/eZL6c8+jyObuHezSrKW2zJF3A%20i2R4GyRSS4TOCB6kEOzt7r7KE9lii88CltMZ08tLhlqzsBap1avXb/QBrQTRR/xyQX12RlEWMB4x%20MToFnbpAv8lOyxBolZNJjdAKH3tAEDbWPknvFjc8T1Lqx40eRJBkILnSqRB1Dns5o57OkdahhcQF%20T2072uDoYtq8eUFyAREyGf8jkVohcvNnr4qRUpu7gJA8rKWULJdLHjx4wPnpGfVqxc2b15kMhlzM%205vTOMhwMUSZnfnnF92bfZVhOOHt2Rl93uBDQnQMNxmiiDWifQafovCMvM6rJGLKMhehpXSB6RcwK%20hPZJZxMtN978HO9/7X0ePLrP4oPAZDLGdy3NusZvnKEUAiEzRBRkZgC+ocgH7O7ubp/eLT5bY9o8%20OVfIPqJjIobLrET5iIoiicRjkoVwOaOPguz4CLm3Q27AK4XyiccRWiefIpmcWK2NhM1BULL6ickU%20MYZkACljknCIZEmdC53W/XUHiyX11Zx2tmQQDUoZvOtpeksbAj0RKyMuRNyGe/KbtxACobO/96li%20lGUZxhgyKen6lr/5/g948ew5XVtzeTYlOEOeVfS2w9lAH9Y0dsFy1UHUePsILTSZKZExIJVCFwZl%20NA7QYoCwhr5LBSTfGyGKCmMawBFEAFmBkfTB0nuPLMbkO4c0Dx/xe7//B0jl+cH3/30i1/sG5yJ9%209FjryHWO1AZ8S55nVFX1izFuW2zxWkO6QFVU2OkKZTJijBSDAZBuimzfISMUWUZcN9S9I1Madseg%20DEW2kW9Ig1Q5UQi8SEGoPgqQm7BUIRApgD4JZWNM6dHpl2DiJu3HWViuWF9Mccsa13RIo5GZxMVA%206yxtDHRC0MeYtKeENLLhU7CHd3Rt+/6rYhQF1G2bDhSjJMsUR4fX2ZlM2B0N+Yn8iKZ2nJ0/o9rZ%20x2Sa6aomKkNTd4DD6BIbJRKVWi+tcAisF/gA9IaudXgpWa3WnF/cx4sUX63znZRAQsBUOda1ZOWQ%20lTR876OHdFLx4YNH9M2UR48e4WIgLwdo75HC4G3A9okMk0IxWywZlBXPW+L1YluPtvhs4Pz8ksfP%20nqPnc2LXMDk+wklJ0IrWOqTUZIBwAe8twnrq0zNwHYO3biF3d0FrYu+xrsWUBVqqlOwjAamIMeK9%20Q0mFlskNIASP8A4VYyK9tYB1B5dXLM8vaeZzmtmaSTVEB0Vd19iuZVqvN51RwCnoQ7rcbnuLMJp2%203aF0Osp8VYy0lmRZhpQdd+7c4ejwGpPJLtOLSy5enDK7umB354h2vub89CmDnUOOTg6ZLXvaeUM2%20OUQKg/UCFyLRS7TSSGFI3aSibSXIDKk0USpi1EShkEaBVng8ymyutb0mOsuTq0s+fvGU9uIZoxL2%20hiYdYpqMullje0eWRep1j5Qao3KMCUjboXXGYb4tRFt8Rviix5fx6fNniYOp11RKUsuAHo+Qw4re%20t0giIsqNOj/Se0vbrAnTwNVHHdXxEbv7x2kiURqsA2vp+haUR+jk8SMBpSQqUxA9aiOCxTtoe1gs%20sBczlpdT6tkM13ZU2SCFsAqB0Gka6r2jDo5ebbginQIjRVDpx0alrd7PF6OiKBiNRvz4w0f4oHj6%205AV4mE2nSB8ZjUZ43/PGmyc8v5gzvTrHSoOXBZiMrChpu0iUkigNUmtCnhONJuqUMCBCjjIGoQxB%20itQVbTxqBVCOx0TpaJsVLgSKKtukh3h2bhxTuRWr6Rmz+QV7+xO+9KUvcefOHda149vf/ktm0yXa%20GJTw+F5hHds0kC0+MwhKsGhr1LCkOQuY0rDOJN3ApKhrBHojg8pUhtoUj05Egrf42YzaO/S6pxrt%20IosKsgIyQ2EKCF06XJSvsnnAxiTxcAFmc+h7WDe00xmrqxn9qkY4T47Cdj12Y21SmIy161jZjiZY%20vFK0rqcnpHsllTyShFYU1QA1yP+nV8WoqirKssQYg1KKs9NzXGcZVUPuvPUmX/nKVxiUQ27evs3D%20Fxf84IP7TBvHrA7MlGO1WCHMEJkNyPMBMsuJxiTPXCmIKDJdIVSGkDIFNWoJWqQoIhxBCbI8B2FB%20CMpC0TYr6n7JxEBTL3jz1jV+//d/iy9/+YucnBxicvjBDx/zV3/9PbKsw2iDjBaHYN202yd4i89O%20MQqBputAJcF6zAyjw0N6nV7YypjNsWHqTrRMfkYekD6gwmbjddnQZxeYvCIvS/LhGMYDMCoVIhk3%20mWEiuR66AC6yvrxAWItrOlzdEruezEeUMkitUDqj6zo8ApOXrLuWWdswrxusdzTBYUWkFwEXA05I%20pFIMhhW6LP7bV8VoOBwym802Xik9zjkOj474+j/4Fb76hS/xztv3eOedd3h2dkbrPKvbt/CPzlm1%20a46PD1nWnvnKY7IKU4wJWuOEwAmFLDLyLMd6hVZZcpZTkBU5WaEIItD7GqMjZSGxSgOBQSEY5BnH%20uwdc35vw/t3f4WhcsrM7RmjB1fQSbUr29vb4xq//Kv/6z76Fs5bCZJi8oOn6LYG9xWcGDz+8z+nT%20Z1ycnSOjQEjN4fEJi7phICJ7OyN0Z5O960aYmkVNFCCCI4sqJehEB84R6xVu2uD0HJ1veCAZk43G%20RljrncD7SIwpcNVbi+gtmY/Jr0wnL1pHZNmsaHtHFBJtcmb1isZbepHsRoJMZz7WB6IShJCOlquq%20Qmj1yWq/qNIqvCxLrLXs7Ozw1a9+lW9+85u8+7m7VHnGIJMc7e1w69oJ69bz6PmUQVFydPMWi1XE%20PTlHmiFS5biYZkaUxhRD8tEIu+qJmUFoBYRkxG8UkZ4YI3lhyLJINRhQmpK9ScHR/pibN45563qB%20aiF2Dav1ghhjOh8wOUWRc+PGDUajEVcXl4yKgmI8oe+SAkZuC9IWnwE8+fBj5i/Oscs1WYiYokT6%20yM9+/FOKIuNgZ4zuLZWLjKWmkBqlJcEoMg0HMiBCADKIa4TMMEKBTmk8ysjNnePGlyipylAY0Arb%20riEEpA8IITAqUTDWpUPGsiyRWcBGMIOCzgeikgSlCcEijUFLoEuJt5GI1Kkzgp/TppVlSQiBvk/Z%202e+8fY/33n4HieD5s2csri45Otzl177xa/za197l+NYdzPCA7/7gPqvecnExoyyGoAYElZOrIh1k%205RmqKEAVhDwp8osyIwSHEFAUAqNzYsgYVYK9Uc7NazscTgoK7agKRVUIfB1ZzS4otEREh9IKoqTt%20akY7Q977/Ft8//t3aeuGoshBdEznS8488Zra1qItXn+cP3yCv1qyZwbEpuHW3hG5E1w+eoExgmdt%20g7GeiReMlaZUBq3TSFdlkk56SgHWS/oeoiooyiHCaHwMlOMKj0druSGVk6ZMSoXKC7KD/Y2Bfbri%20RgiElOQ6w2hBzA0KsCGijaGxHTZ4uuBYtzXlsCRE8Bu72iBi0pxuThNeFaPMMN3d3d3N85ymEYx3%209snLEWcXC5qhw3Wev/nz/4tVF/Ayw4wPyYuK2aLm6VmNo0IVJUENUPmQrBhQlAVBJ1/r3jsClryQ%207E6Kja7MMRkaxpUm15Y7NycMMjjah2EOfa3JFGQSVrMZx3sVksB81ZJlkohmumzo1jWmHPDW3Xf5%20+PEzAp7Wznm+nDFr4aTadkZbvN6I1vPsowcsLi45OLpB7yK337jD3s4+O5dnKC1wKIz2DGzcyDHA%20uySMdb1g0dWQZeAVfWuJoSGaGus86/UKZMTFkK6upQQP1iazQooCtTfCaQEkEzdLIGhJLHLIM9Y4%20dDlAlhV7+wc8fviIdVMjtEDnGW1nCSq+GuWcTr7ZRVF8uhgdlOwZY6JCMygHHB+/yc8evAAhmUwC%20N2+c8NaXR3z84gonMvyLmoVVqHyME55ycoIZHjNdOlwwlGYIQrBuanSmGU8qcu8Y5S05jlI69icZ%20d25VvHGtYGcIpQZDJFObhO8qQIhE7xnuGPpmgdCRg4nCRYezgZ1BjnOBtg2895W3+MHjxzw6fUQr%20hvx0dsmzdeRuJTDb53mL1xiPvvM38fTBYwo0WZ4jteBiNWdWr1jWNdE5dkdD5rNzJodHzKczKqWQ%20IWJiRMiMxucom1PpDNtMORiN8E3HSCiGoiDPDG3bIhDELlIoQ9u3tE2DGuVM+xlLX9PbpDVb9T3T%20Zk0vBZQ5a++pg6fxgXI4pByOqLKCKyHwIeCCpwsBU5Q0sce6wLioKPJf6IwAbt++g+3/HI/j2bMz%20pBnQeWiiIeg5vquTXaQKSB15/OICGyW/8rVvsGgFP/7ojKgHKCPwrsUoxWSgicLjVqeMK8uN0Yg3%20r4852su5tldy7VCxW0GhYFiAEREtJC8nq5jEv2mTYDW966htR91b+hAQGvpYEIVEjuHtL36eq9iw%20cgsW3nK6XPBsMolvbu+NtniNcfbslOn5FUpp1m1L2zaovEBog+0judHMp0u6zvLo2SkZgbX1VFmO%20DC39umMnq1heLZnkBYOsQEqN8zVFPmA8GbCaL5jkQ7RSrBYrQt1TyZxMwXy+Ro4NmZBABAGlzgiV%20oiXijcaThPPYnrDxv37p4hgFyCzHEOmCQ6kMomM4HLO/v//LxejGjetkuSYrJiwWC/KBQJiC5WLF%20xeWMa8cnrNYrXISTG7fpek+eV7zzzj1+9uAFhzsrTi/ndPUVO/sTRHB0y5pr1w/50hfe4O4bBYe7%20mv0dw6iAUQajAkoDKvTsDTIUAr2xz4SNGV0Ai8TKgpUrWLYdq7ajawNNI6glROfovebunUMenh+y%20XDyn7654cXpBd32yfZq3eG3Rny7jD3/0Y5brGpMNaFrHet3i+sDlxZzz55eMRyXtYsW4ypkvVhzt%20Tqi7Hik8oe+ofcvMztG9Y3jrTQaTHawNLJxl2VyxWszRWm8OnyWuc3R1w92AAi0AACAASURBVGQ4%20YTyqyEXJ89UlrU6p0I13dDGkVGg8ddfTxYgTm7ixzhNdZN332BBBSYIAhKDvLSI39NZSjYYcnhz/%20cjHSWnN0dMT+4R1syDm9mDHZOyTiWLeWDx+cMtrZxWQFl9MVKh/wuXtvU5WCZw8/4sXDJ1TjCXlp%20kO6K45MdvvLlX+He2zvs78DxBCZloCogl1DIyKgQDDUoMoJv0LxU4iezprDRxfQYnBRIDcUwZ1Ll%209B0s1p7LWY+rPU2jKTJ449Yxs8s91i8W/OzjJ7j3P7d9ord4bTGbzXj8+ClKF1jR44NAqZzzsznR%20/oRHD56wM6wYZBk3jq+zW+1xuLuDmzRJq4agr9f8+Lv/nnFeokzG2ek5drVmr6rY39mlaQ0Q8F2N%20tZ6qqjhdzLFnZ4wHI8qdETPXYo2mdZZlW9PGiM8UXYwsbItVkjp42hDQRY4qBHVvaW2fVvrWITKN%20jxEpBb21jPd2OTg6/OViNCgKhoMKKTXjasJPPnoGpkJpx2jnkNYblq1knOcolSMF3L9/nw9+/CHC%209Xzh7Ws0qzUnx0N+/Ru/wt27GVJAZuBwF8p4xY52TLIhg8yQK8gEiJg8UggxtUIbph5S4BshUkpB%20Gw2FAAMMBPgCCqVQsUDpQLTQtJbbt444fbHP49kpP/7wAYv2t3kcibe2GrUtXscR7fSci/MrkIZ1%205yiynGo44eJ8yvTskq7pUF7wfPoc4QTRO/5quUApRbNecnx8jPA954s1XRGQ+gLlI6vzC26dHOOy%20jF5EBqMRmTE0ywViZ0I7nzLr1yz7NcNWM1vXSQPnLYu2posQc42VsPY9vZJM10u6GNk9PKCUitZ5%206t6iMoNlwwVnybJEGs3J9WtU1/fFLxWja9eusVrV/Oz+D/jq+9/k2slNdDHk7GqOEzVkOzR9T93P%20MHqBEJF2XXOwv89/9gd/wGI649aNQ04OBVJC5mE8hjwDVpfcfmtAZVpyHTE4QIK36eTcB8jyT8K8%204ZMVmAKQmLA5Ck3BB8n/14CcCIqBgjVM+569YcXJ8QHz5xPOnr/g8Vnk+lvbOrTF64fmtI4/+N4P%20+fijB9jGYr0kixKjB7SrNdE6dkc7DIuc/Rv73Ll9l93JhOl0ynhnxOPHj7m4POPpkzN2yhFt9Mya%20nnFR0ErF2bomXF4yHA5AK4ajip9+9FPcsyecPj9DS0WZlZQCZosVQmosgTY4eiB4R8gUTorEL7vE%20CeW9hd7TuY37RhA474h9wEmSF36Rc+3mjU8ms5//wo8PDyjLkqvTBzx9+pz949vockI+3McGw/1H%20Z9y8/Tn6bk3XLLhx/YQv/uav88X33uTmCVyeHmEklALKAny/xM5XnNw64HNv7yOwSDQhpvqTxHiD%20dLcAqcL8fBF6Gba0+aCKkEdQkf+HvTeNsuy67vt+55w7v7HmoecRUwONeSAJDhI4iYytKLJkL8WS%20YmktxYmdr8pHKF5ay/mQD1nJWl6SHVtyIjKWqViSKQkUQQgkAZIYG41udAPd6Km6a6569ab77njO%20yYf7qgGIpCwxCkMptXu9Hmp41XXrnv/b+7/3/v8phabaxlEoV+K5EAOzucuGKdi/MEV3dY7La5u8%209ubbPHjirr07ey/+xsXm6gYXz11ka6ODm7m0J6Yo84JRWuKMd0BDr0E9jHjkwYeQAlbX11hZWWe/%208tl/6CSjUtKczJE6w+Y5azsDYjdDolicmWNqcYHF/fs4fOIoBsu3LrxFdzRi5Dl4jktmSqwjGRqL%20wGIdhVaKXBeMsgyjFTZwKYRF+B6msOzEQxJjScsSIxXa2kr6KE2QvgslhPWI+e8HRp7ncfToUa4t%209bi1vEqiQ2bmAh545AnqrWnujw3b2ztsbS7ziZ/8PHecdNjegoYP22vgKYNDSZmmWAHTEw4z0wvU%2065AkBc1QIfBBVBopWkORWcCihMB1q0oNuyu7K7BjnW/Hgiwr00pPgKISaJLkGBzAoe3DvhmP3mbC%20/PQky5MtLJKXz5zjv/jkXRxusqf8uBd/o6IclRTDhGatSZzEzO1bZHNtnbjbZ7LeRAnQpcAal5WV%20Daw2rG2so9yImZkDnLj7Tm4sbzJMDW5hmJ+cRuGhBESBz9z+I6jAY2uUMAt0h0Oub2zghQHh1CRx%20HNPr9RFhDbfVBATCdcCRZElM1i/JjUZZh1SXOIGPNZreMMbJcxzfq4YqjUb5PkWe4MlKGSBs1pmZ%20m/3eYLR/ll9pt9u/kWUZhoB+b0R/tMTbV5cZjTSN5gxpmjI/N8H0xEfJh9AMQKcGSY60BkyO5xpa%20jYipiYBGA4IQAumO85tqeU/I6qHe9z8obSVvCRUYjXGpSprEuIKzVOqOwiIwKAy6GmZnSgliC/um%20Qq5tZZw4dpTtlQ4rb9/g5Te2OPrR6X8+Bf/93i2+F38jooDnnnmWbz77TXxcPveZz3H63vvZXtvi%20mT/8MhvLK8y2p7BWcPPmMrduLNNoNLDWMhyNWLq5QfObL1MUBUlsqdUaZAkY6zOIY6xxuHx1GSNK%20OoMdiGqkOqM+PY3re6ysrBAPhjSbbTaHAyK/hhWKkyeOEdRrvPn2BVxtaDTr7IwGTDQnGWQJusjA%20cUmKErRGKIV0BIUu8AKf0hocx6PVbnPk6NHvDUa+4jcPHDjwG81mm0K06A0LRFGlWWHQxBEeSpRs%20r21x8c0lHn/sIGUOukjwlcVRFulofE8SeALPA1WtvlCxPlUFJu0YXOx7ldn3iwp/xh8lxmQRlXul%202H1YiwU84RMKqLkQOoIo8JmZmWHr+iYX3r3GrdPTvzrV2gOjvfjRDzMwlJuZfe2Fl1jZusl/93P/%20hM/9xN/F8zzSAwnT7Ravf/tV3jpzlv5gyPzsAsJKhr0+WVbieQ0Qgu2NAUopZib2IYuUMq/ceJSC%20vIC1jR1SnRAXQ37/j59h4cACq9s7FKZgNBoRhAGr/U3mWnMUQlDonHOX30EFHoXRFI4lHvaqjfwk%20JilzClstwiLU7cqmMBorDKXWSN/FCphbXKDRbn1vMCoNT0202ijporyIJLdYFZJpAcIlyzRhUEcY%20xfVrSzxw30FCD3IEge+gyPBcSRg4hJFLUEkd3QYhB26nO4r3/bkb4/IM7JgPqmbaDQaFBLz3dmPG%207wMQxuAIjSugrqANNFxJ7ksO7d/P6uUVzp5/i3ceOMLJB6YJ9+71vfgRD9mQfOv//CZnvvMan7z3%2043zs8SfxXUV3ZxthJadO3c0dR49z+f4H+NbXX+DMmTdxcZhqTVGL2gyHI4pc0Kq1sAYGnR6T9YAi%20H2GNInSbCFmSpkMyC1JFaBRL6+tY10GXBuG7PPzYo3Q2t7h8+TKRH2EUbO6sUGKZnpmjkJpuPMSr%20R2zHXYy1lQSSkghHYrFoXYn5CwmlNYSuixWCEydOMLkwKb4nGDmSZ72xYWOv08XxZymEg+v55KXA%20dTwsDmHN58rVG5x5Y44f/8QJtHYpyxzHFbhKEvkeUSDx/MpWunLYrlwqb9dd9s+lPxjAIqypzObs%20bs5kUIJqFBtTkUa3P338fNaOZVgyfOXToMqMXDRzs5MsLMzx8jsXeO2td7j/nmm74CDICxrB3pLI%20XvyIxrK1v/2b/5q7Dh/nn/7yP6YW1tjeWMMKCLyAUTLEky4PPvoIhw8f4dSpc1x8823WljfY6Q6o%20BXWaUUhRaHRhaEdTSAzGaoRRGKFQwgVH40oXEcCoHNGPB2QmpTnR5Kd/6h/w93/mp+lsbfPF/+N3%202NzcJNcldlWyvr3FZq9TuX/YksiDJE+xUlXWRlJWvIoFKyzGWNzx2RVCoHyPEydOfBCArTVHP1Cq%20OS7T0zPE3R5ZUTLqD5HCxUgH6TcY5BInbLHeifnqcy9SWnBclzTPsNZWwv6+Q+hXKx7Vl9cINIiy%20AhRRvu9RVMXx7kMUYM17hJF1QDtjD6cKuPT4Ge0Y5ioflUqs3McSAr4AW6REPuxfnKU10eblM2d5%2050YMkj0g2osfybAaWMf++9/+AsvXlvj5n/k59k3NI3PNdLtFGDj4rkQIw05/h053m7mFBT7/k3+X%20f/Bf/kM+/OTHmJtdxJaSPNXIQhDJgJbfAuujnBqoiLJ0GaWapLDEuaafZLSm5zhxzz3gebi1kJ/4%20O5+nP4o5e+FNlrfXqE3VaU03eejxh/nYUx/n0PHDzO+fp9lqsDxYrkQURcXhGjTWvpdxWCkobWV1%20XxQFExMTHDly5APfuyOEvLr7j9fPb9mVlRUOHz7MjdUE4Yako4xCC6z1iOOSsD3NsbvvZd/B/Vx8%2080WuLhUcXnSpN1qgY5QEz1F4Lii5C0bluORyQJo/lxq9lwEhxgy2kON2mngPbMZkk6mWicdAZJHI%20sSqdRVmNM06eAgXonCLLmZxoc+Lkcb7+3J/w4stnuOvwR2zD3RuA3IsfvRAKzp85y7PPfJWf+txP%20cueRkwy3+/ieQhsNZU6uSzwvoNmsozVsbm+iC0Gz2eYTP/5j3Hnsbs6++iZXL14h6Y+wGuJBWgn3%2046IcB2Mz8lKRA8oLiFo+0vNIy5Lp+TkeePg0TuDztWef4fqVq2Q6I9MZaZrQnGmzOL9A1K4zMTuL%20VZJvv/wKr505SynAWoNFIMZgZMaNp6KoTFeLouDQoUMcPHjwg2C0+5edfvLqV77yFd58awXPm2Vm%20eo71Hqhag7I0WClBK1Q4AW6Nk/ecYnPrFt9++TVmP/s4Mw1FORJVZlTZMeGMPbkrMBJjEHFuE9AV%20IMkxKlT1pRSVPQpGIHZ5pNuD2aLyWULCuLF/G8wsKOmNDeYcIk/hSUk/HuIHEUeOHePM61N849sv%208eipYxw/vbB35+/Fj1yUq7k9++obHD1wiM9/5rMUvZSaFwIlo7jD1FQDK1zieITG4Loe0guIrE+R%20lLjS4+Sdd3Di4EneOfs2r774Cp31yl325vYGIy2w0uLIyr/QERGLh+Y5ee8JRqbP5aVLHN13guN3%20nuTbr36HKzeuo63GCz3cwKMf91i6tYSRglqjwYNPPMzh4yeYWpjjlTdex1pRMSrVbxgBxlTeaNZa%20gjAgKwpOnjzJ7LFF8V1gtLK6bs9fvMHNW2vcXF4nbAakacpgs084fZAkyZBRHac9wWg04pvfeo2P%20feRhvGiW1869y4eeeBy0pR06SGWRaiynSwVG1kqEGJdUH3wdGJPVjD9SopEVda2qJMrudtxEBW5m%20l2JCjuFNVhmVsOC6WFP13iIHIinpJSOCIGBhqs2pO+7hxef/lLcuXOLRuxfs/r3saC9+xOI7f/w8%20Mi759CeeqrYMogBJtVQqlUcGlHmGDDwaUYssLRnFBSrwcRwfoSVxMgJtOHr3UQ4e3M/1qze4fOUq%20OyYhH5iq3e5Urq4Gh/m5Azz88GN865UXiIIG/e6QM6++ST/uEPgunc4WSkK8vIzruvihQ2402lo2%20O9vsnI359kuvUGg97p45WFENJBssdmzaKJXCj3zKFPYdWPyu7109/fTTvH118+n//Qu/z2c/9zNc%20vrbKi996jdnZA2RaUqQFrVaLPMspjCEIQrK0JC8dHH+KODUI6XLqVANdFEy2BbUwZXrCR2BIkiGu%20WyfPx2S21Uh7m+2p1tDGBZdAkFMiUBQYtpMembIIxyW1OUooFKIyiLQGaUy1RoJAS0UmBVoKcqDb%20Mwy6I8pRjqMtTb9GIEOuvX2ZSxfO8dijD3NoMvy1vdt/L/6/isRa3PEOJgUMv3LNrl+8wb7JGRbn%20F1CBSypKesWQYKaFbAW49Yj6xATNqWnCZoOo1aI+1cZr1BCBwvEVVhpKkWNVgdt0mDk8y4nTJ8FR%201KIa290OaZbgKIdavcbUxBSj4QirDfUwYmtri9XVVYbDIYPREC+K6A8GKKFwpFOdXKk4cvIEWVly%20c2WNs+fexA0CDh07ihWSm+s3cVWAH4YMBgOieo1CFFjHMjU3w3/9T/4xs/sWPnD+nEGsf/fa9WX8%20oMnE1ByPPv4hri71SNKMRhQiBKTDAUHUAl9VE5Rek36/pNAWKydZ3ynY6ML+yYhR3kW6LlmZ40lL%20EIZowPOc8Xi1eR9l9F6JJgWUWAQKDZWKnAsZGQZwpXObXaoyrvFmv5BoIdGiAqGSangyzwwm04iy%20BJuTm5i59jTHDh7n5Zf+lD955mvs/8WftEdrrkjKjNDx907HXvzQQleE7RiVgPN9u3zxCjN+k2Z7%20miQekbqWcLJBa6pO2AqJJmqVp6DywHEqZ9gx42GNQewSqonBDFPyQUoyGtHr98gGmkc/9iid1R0m%20Zie5duVdbi3dIBkN6fb6+KHHwWP7KG3K1k6HLMsYmRFlUdAfpAzjlNbUDHEcI9OSxmQbz40o0Wxs%20bHD1xnWU57Nw6BBPPfUUd63dw8WL79DZ7hJEEcqV5KOcIit5+MRRZseyIR/IjB77yFO/+zu/8+8Y%20DDPuue8hdrojtrYHoEIK7dLtxySjDCdoIN0aaQZB2CYtKmNG11XkeZ9mvcHRQy5Wp8xMBkhR4joS%20RzrkaYHjKIQdE9Lve1ghsQiMEJS2ApcSKIzBaIiTjDQvCXwPD4kzLuqUqOAIIbBCUErIx2XcsICt%207ohOb0hWaLSufMQ9L8R3FefPvsaVyxd55MH7Ob4w+WuudPZOx178cLtm7ydslzJ75cwFepsdZuZm%20qM9OkAqNagbM7ptjYmaCYG4CNaWQLQkNCXUgBGoGE1lMZLCRQNYFtASi6eI0FESW0tdVM9p4tJpT%20TExOMDM/Q7PZRAtDHMfcuLVEWZYM04TN7S0Gw0q3LM0z8rxECMnmyipZnuOHERrL1s4OF995h6s3%20lxiOEpTyCKKQu+++h+mZGba2O5U5pBD0Br2qdFOCn/3Zn+UTn/vMd1EkTpIktFotfuLv/CwbGxt8%209dmv8dbFZVqT+ykKB0d5NNohWVlSjjKk9NDaVvWVddDGMow1596+xkOn72EyjBgkEHoS8Cui2dqq%20FBPcZnws4+bZ+6js3ayn1JqyMBgjSIYZhS5peCEikNVzicqHTQiBGU9z735+QeW6G49SsrysfMIF%20lGUJwwFHjhzigQce4pk/+hJ/+qcvcPzQEXtsUgptLEruUUh78cOJ3WFfM7DsLK+yubnO3MIs/mQD%207Sua0zO056eg5lU3d636JKOo2ufWYqVBY7GiIqXRFk+4uFZVCjyuIqy38CYC7JzD9VfWUCrCa4cc%20mjjK3P555g4ucPGt85w7e4bl9S38gcNgmIB1cZRLPoyJ05RmK6Q1MUsS9+n2YsQwxnY6DNIRvWSI%2074e4nsfW1hbnL17AC/wqi5LVmS3LEhVKpqameOTRR7/nNZFJnrC1vc3y8jJf+MIXeOedd2i1WrQn%20pvCDiKwsSLMM1/EpshLfDUhHKdIqrJGkmUW6DW6t9bixbCjw6I4khfVBQVZqAt9Fa13NTIvqYdhd%20hv3gy4UAhJVIK1EoHKtwrIuwVQvfom934+y4bViO014DJBqGcU6c5ZTWgHSQwkEpgVQGpQQPPfQI%20M9P7+Y9/8Bx//OWvVzfHHhDtxQ+7VNvW/3zzwpLtrm1SC0PqU028iRq0PeoLbVjwIAIcPT4YDhIf%20YX2k8BF4SHwc4eLLAM/xUcrFSEWpxl2kSKHaEc6Ux/FHDzJ1tE7haXrFABFKDp04whMff5JPfv7z%20tCYm2OkNWFvvsNUZkAxzdCEwhcRolyBsYaVPqSEtDHFSoJwArMJzfYwQOMplY2ODK1eu0O126Q8H%20DEcDGu0GhdYcP1H5L36vcKSUXL16le/8+q8TNuY5eecjTM0dZ2Utptls4vt9BmtdvHASKauyy8YF%202tGUIscoy8Rkk2zU4+131ziwsEjdV8RZpW+itCRwJLrMMUK9Z6r4fiAapzVq/DYXgVASqQXtegOD%20JHJ9hM2rnpuw74ERCjPOiFILvUHJzmBAVmqkdMBKql8C33Xp9raZn1vkoQef4Mt/8H/x5S8/z6MP%20PmIfO1XfQ6O9+KFGttr91f7yFjIvmZmZQfgutYUpaAdQk+/tUHmqusF3t6BkNUQIDlJUQzEKQWns%20eAO9yqJ2x/NuH7QZUD7UhhHFZkaS5jieYnZxjma7gVBgXnuVwSim0+uQl0Ok7+EoTVnA8vImaRYT%20NWq4vkfgKyamWpRYcAVaQH2igVKKYlQQRCF5WdDtdvFqPq7r8uDDD9HeN/c9z5r6n//Fv3zaDSJW%201re559SDWDwuX7nFa6+/Sb01TbM1zTDTpLnBVTW0drCuj8XDGIkb1HA8hZCW4aDD/Pws05MSaS2B%20I4h8ibRVRmLHhJ34ABF9W9QRKQRWG5QUSCmwVuN7Hs2ahyMEwuYozFgIspIhKYWgsIIM6MaGtU6X%20TndIqUEpF2skaDsmCzV5ljHRnMBxAt595yrrq5sIBMfvvOfpyTp73bW9+KFEcSm2nau30IMRzbBG%201KwRTbdxFtrQEhBBqg1WGZSq7uFdPkKPH2a8nqmMQGiDzssxDyuqERgx3p7aJbkTEC54QcXtGKtJ%20khiLxhjD0WPHmJmZ4fCxIyBhfWsTay3WCkbpCM8P6I+GJHmOlZLZuXnuPnUPvXhItz9AuRLH83Bd%20h6IsMBi0NQxHQ5Ii48ChA/ziL/8jjhw/9j3PmTw4XROPPPIIzWaT6zeu8uK3XmBl5RYIS7fbIY4H%20+IGLzRKwmnQ4oBGGKFl9h5HnMoozLC631nrcWhuSadjY0Wx1DUgYjopqtBTeuzKY3d4XUKIoK6Cx%20Ba60OGiELgiVrGyGyuL2RCdIrAUtJMYKClM9yyDJGAxThmlRya5JHznuMFhtyNKE9kSTsF5nYXE/%20Bw+dZGtnxO/9/p/wzFe/tXdC9uKHE6vYnVsb9Fe3CYxDo1ZDOAJ//wx4EJclmYBCaVKTgzKUZJXe%20sku1L+6CdCoJnl03as9zcV2BdQylMuSqUkXFq+hb0QJa4E5DfcbDbSi0m1PIHOsYtnqbzCzO8tGP%20P8mp0/fh+h5WUGkSSYftXg/pBIRRk2Gc8c7ld7lydYntnS7WWnZ2evT7/TH9YtnY2qLb74EUGCwH%20jh7mnntPfd/LIgEO7d/H4vwsGxtrHDiwDz9QhKGP5yo8X+I44EYeUhg8XxAPOwid4WGJe91KSrIQ%201OozvPr6JW6uwlZP0x9JLl9PcHz/fdyQRViLHM9RV9mRxpoCrRMcqUFnKEpqvoMwKUWWYk2OEAKk%20g0FQWEmJpAB6I8PKWszyWofMKoKwjjEuWVqihEfk1/HdyigujmP+7Pnn+fZLr4LymZ0/wDAx/Mt/%20/QVefGvHart3Vvbi/02iCJbfucbqlevUlEczqiGUoj43XZHUAah6ZQ3vOA6e72HQqEBQ2BjtFPRM%20n5yCkoK1zi20iUGnUIwwJBgKtMgYMqDLDrHsYYOs6r7J6mvIFrTnazRn62iZk5mEsOYxGPXY7Gxy%20+oFTfOozT1FQsLxzC6/mU2u1GJYJjuvjBRGFNnz9xRfY6fQwCGZm5ystpeEQz/NwHIeyLPFCH20M%20n/r0p5ldXPi+dIh6+umnybT79NXrS1y7vszK+iZKRUT1FvXGJIEfoa2g2+mhnACBi5QKISUWibG2%20UvQY76RoU1DmOffdM03SH+FIA7ZESolS1ccbU3XBrNW3Sy4pBFJWk9pCSIQcTxJJgZJq7PFksap6%20WSiRjHLYGpQsre9wY61DP7f04pJRapEqxHdrlLlla63DrZu3uHTlEu++e4Xr11cxWuGoCKV8tjY3%20GcYD0jTm0Mk7nl5oe7+mrUGKPRppL/56Y+nlZdtbWqPthDRcH9dzCGcnYHECAijdKpupqKFdza5K%20SNBxLCU53WRAZnMiJ2QqaiCNB6kG4SIQDHQCTjVEbNE4lONlKzDCVg6xEigNRZpTJDlFURD6PqXR%20JFmCkXD8zuM89pHHcVyHl994hUa9hbWSQpcMRwOmZmZAWgbxACsMxhrcoJIHQQq2OtsURjNKE/Yf%203s8v/vIvceDgge9LhTgA8y3EQw/eb8+++S43br5Go6nIdMFwsM3kdMT0VIvNjS6YrGL0rapkCIwB%20fLQoEdLH90KSeMjZ89f41MeO4OMiOj2M1pRlyeJcE9dR+ON5LaxDYQySEiUUxpa3V0Oq5To5Hgeo%20PJeM5yCAFNgZwOr2gJ1hSlwKjD9JWQKOwsGtCLf1LstXllhfusVwsINROUmSIEWIkBpHBkzMLODc%20WMIUDl9+5kX2HzzA1M9/1h5s7rXX9uKvN9bPbtqli+8SjTTR5Ay2LKr7vFmrumYK9HhjqgKgDy5Q%206axAOYrZ2hzDNCXvFUQ2grU+xAVal6jDcwTCULQVrlvN8IUYLBpLWY0ASAHCwal71FoRaTchS3JW%20N1apRQ0c32EQ9ymkz9E7jvILh36B+x9/kC9+4UsUawatC4qRpTfoYzH4vk+e52RFRkPWSbIUL/Qq%20iyJrybKM06dP86GPPPEXnqnbc1d3330n+xZmaDVCJJqd7XWQCZ5fo16XKKkpdIYc8zXSGhwTYNDV%20tKGSeKJJkgsy4fKdV7f56GNTdGOBtBqth5RaUa/5tBsOYVRt9Vcb+lVtaqxTjS+NuwC32SU9lqQF%20uiX0+9Dp5+zEgl7uMsxhZCS1ySbdrYSV5TU2ltfZvrXOcGuHQDq06xMoz6K8jMBvMYoLkszSbk/h%20eA12hgmR2+C3/+0fMz2xwC/9/fsJ9wSz9+KvpTSzDK5t2ze//Ro14zFdbyK0odCaIPAgcEFC+T4w%20UmNl9/dWwWUl/5Hl5NJQF/XKdWcHRpdHXH3jAq7jc8dn5winQ9So4ogKC0pYdD7CemAwlXChqLik%20ej1iFCWMeglhFFGaAtd1qbWbxPmIm2u3mJye4LEPP0YQNfhn/+zX2d7ZZmp6GqMzBnFMc7JBXib0%20+z16vR7DUYzwJLVmg2EyotVu86EPP/mfvEy3wejonCvuP32fvXjpBkvLXSbaDZrtBVCC4WiHZjuk%20s51VQ4RGI7RGYXCxWOshypx0GOPg4zguL37nHHcc/zgLk5P0kjUMz8fwIgAAIABJREFUhn6/SzMK%20aU/UaTQ9wgACDwIfXLcq9eSuBjbjtY4C8hwyA4MCljcSVtY75Ebg1SfBrdOzJdtxzqW33mZ1fZvt%20jS1sqomEQxjN4AiHQgi2NjcwpiSKckZxThjUmV04zPziOr1+Vdtev/QWX/jiczSjKfv3Pn9AhHuy%20R3vx/zA2L920b770Blkn5diBEzQcj3w0ImrViCYbt0npQlXzcu74YDq7/KWg2l6ICxAhNtb4dShX%20YPPMFu6NjORiynbcZb6xTHjfPrzjQAi2dECBMv7tsRpjLGqXxPUcfD9ESYeg5hL3B2TG4PsejvTJ%20ypSVrQ3YgjcvnGNyZpJ6I2R1Y5XRqEsYBQgh2NraIopCsiIlCAJGRYLn+5SDPg88/BBPfvxjf3kw%20Anjyo09w9vw7XLv+DRbmD9GemGFpeYvRKGdu7gj9bkJZZBidY62p9K0FWOOjS7cS755oY3TKVjfm%20zfPX2ffUYYypo4UhS3KywtJNRgRbGb4HYeTRqPn4Pjhu1RUwotp/LQpI8owsL0m14N3lLbQbEIST%20eEHIIINr1za5cOUWtzY7rO8MMFbhCY+6F6DcoHpVilN63SGOCFFKkOcOg+GAnZ2UyakObtCiPXmA%20fmeH1tw9vHVuhX/zb/6A2an/yn7mo7W9cm0vfuDYubxiL198h+3VdU5OH6OmFOlggNYFYX0aAo8C%20jaMcyrFmjkRUQLQrSjG+A/N8hNeMcKUki+GNl9/h6nPnuUsuYHrQWenw4le+zWHu5459x1HjsSOb%20lYiaR9W1Hpce+a4QPTiOhxCKfq+P5/kYLNu9PtIXNGcm6PR3uHDhAl/6vd/jk089xcREi9dff5Uj%20Rw/RatU5d/4sw1GPtMhQStFo19F9Q5ZlKM/lySef5K57Toq/Ehid3OeKY8eP2EbjNaanJ1jbWGPp%205k2kE9JsTOMFAq0NuqicQFwkQjpok2CMC65DkecIZfCDBmffusxddyxwx7EG2ShBqYjCWrKkJB6V%20CFngOhmeG6Mcixc41cwDFm0tWlu0NRTakFuH2UMHWduxXFle4+rNi1y5ucFqb0ApA1StSdDeD1JS%20JgWdfkysY1peSNNp4tci5tp1rC7pdjsYO+L60lV6/RxrXJJ+jikiWu0avURz4a1lvvjFP8SWn7Cf%20+vi8UHLvYO3FXy0G1zbs2dfOsLO5xb65eVpujXKUQlagfEVa5oRobKDIxytNAqqsZVfp1FQ6XkaU%20eNMh1sZ00pI8E/htjztP38Hcls/yxoCwHtJLhjg1n8KBDJABaJESKLdy5RA+Uryv/BBUO57Wwfej%20atfTFvheSNAMKI3l7LnzfOlLv4vyXFbX1lhdX6HerPGZz3yKzs4mL736LRxHQWGqDpoxOL5HkiQc%20P3mcT3ziE3+p6/VdG6Kn7jrKY4/dS3vyIH/0lW9iTUoUNBgMt3FVQKoKjE3RxmJwKs0So7Da4LiC%20uJsQtUK8wGH55k3Onr/GqXvuZHNDEboKZTWCqhunhENmStIkx5gCNzMYYdCIyghXuQjpIh2XQnr8%20yQvXWFrbYnVtg7S0CC8gas6TGUWhBYMkR1qBzjSu8ZhoTbLQakOS091cZ2l1h0F/h+3tTWq1Go7f%20Js89hHFJkpJ2vcXGRoeGN4EXBPyHP/gapelz/M5fsfunEaG3d8D24i8Xyc2OvXj+HKs3l2iEEbNT%200+RbORSSdquBdARxHBPqSbzIIUsNTiDHHa9d3XduTwhbIclNxigvaDSnkA3JtNMkfBC4CXOHp3j5%20lddoNBQnnzgAk7ARZzR9H+EqsjLF4iIcWWVauy+u40ntYteFMDV4QY1G3WV7Z4u3r7zN+TMXKZJK%20qqfRaFIUOefPneUP//DLTE9P4jk+Qjh4XoBQEMcJbuSRlQWnT5/m8Y89Jn4wMLr7AG+8OctbFy9j%20dZ9mzaFe94nThKjmE48ShFMghCQpB0hR4jigRA5FjikM1mvjh00aUZtXXr1KkQc8/NBhDiwAOgNj%20EbIaWLRaIVWIFzbJihTtOAjHpRAuw0yzvLHDjaWrLG/1ubbRxQkipNuoOnlpZbmCNegS/FziKZ90%20EFOmBcNhnytLHco0pRZ6tGYaPHDqFFcuX+bcGxeYah/AEyFrtzo4ok1/x7B/4QSdraskZcFjT36S%20reE2/8P/9K/4ub/3SfuZxw/tlWx78Z+MYrVvz7z0Eq9+59scP3KUowf2Mxr28f0W1lHEtsQ3Es91%20yHcGhCsh/kIdNCQYUqEppMRzJMJWUjkKhZUuflCR2RJw22CGULQSitOS06cfxW+GMFkRT5OeT5nm%20SKGQToRUVce6KEpcO56GdEC7GbnNsMrHIrA6xKfO22de57k/exHpGqb9eZxA8Av/8B/xW7/1W3Q2%20erz0wusYqYlHPVzfx1GCYTokbDTZ7G4wvTDDRz76kb/0dfsuMGpH8lcmJ6PfePvtN9hY3USLOvFg%20B+k2aDYChqMhurCVmL4VGJGjzRBdjpBejdDzceyIbKgxQpKXhrPnrnHz1nUOH7Ac2Nfg+NETzE23%20cCSkKaSpYTgsaU83GWSwtjni8o3rvHtjnfXOkMIohBfhRIsYKciKhDwbgckJPJ/A9QiFxyhLKj2k%20uCQbpAxdgy8dAj+kXmsySlKuXFuh0D4L+0+SDUp2uilK1PADj6jl0elsEEV1PvyRR3nwoYOsrL3N%209Rtn+Xdf+ioq/zH7+ANHRaOxd+D24nuUZct9W5+tizdePcPrr57h0L5DHD90DJ2lKKGQUpKkJWlR%20UA88phoRYRhVaUpanUbHUZSiMpwoqbrwqjSgFEJIFJXfoNzNamoWK0DXASHQvkWG1fscLMo642Fh%20QV5meI5CeQ7kJZRVJzzP83GF46BwmJ2Y44UXXub5Z15E4KDznFEv5d4Td/ONr7/A+TfOV3N/pWEw%20GpIXOb4xOL5D4EfE8RClXB544AE+9OSHfnAwcpV89u477kAIS1nmWFHQHXYIapUZo8BgTTUPZLWp%20dsRkibGKMk1wQ0mWjPCEIKjX0WnCoLuFI0O+dukc9bqk3TrLvvl9nDhxJ8ePH2ZiShIoj2e/cY21%20zS2W1rYYxAXCqeEEUyB9stzS7XfwQpcglNSiCISHKasVlf6oxOYCLUqKtECnBXGiMZ6P7wYoWc1A%20ra+v0qxNUfOmGaU72MJSjxrobMSwv40QKfc/cC8/9uP3sbgAs3OPsX/fPkaDLf79f3iJq1d69vEn%20HuD0nXuStXvxwWgsNsVbXz9nn/+zb9EKajx0+nFGw5jtzQ5zk3OYkSV0PTzfx5GSOM3Q/T7Nlg8q%20Aqo1CoEYzxgZlNHjRTRQbgVGxtw2ykFJgQpDfNdDOGN7oN0h5LHWl5C7GvL2tnQP1q2G/XJL3jfI%203CEfGQ7MLXDj2ibPPfM8g86Qiek6nf4Ok602nufx/PPPs7y+TKvVIisLtClRSpHrEl1ojKMprabW%20iPj0pz/NoSMHxQ8MRlKIq/feefx/fPLDT/zqzZt/zNrGAKHqhK4EY/CEwHclujTkxlAaMa6VXASW%20IgEjUvzQw1OGoU5pN1o8/NBp0vQAg2GX9fUN3rq0wrtLXabeuILjucRpwnavi3J8HDfEyiZGR+jU%20Q4kanmtpBRprU+wooxg72FqjEYWGsqDoZ5RSo4yHUj5ogdUORQLdnYSsUIz6UAxTPCnIE4fAm8CX%20mu1kk1pgePCBe/n4x0/TqMGtW+AoweLcAbLmIpE3zbs3l7m6+nXO33vMPvLIfk7OV6C0Phjaucbe%205v/f/ngfkfO+6N+K7Te+9g2e+8rXuHbpXe44coIzkxeYnZhi3+JR4s4AVUpc18FTDtoUjEYpmdQ4%20aYvIgC4MRgiEsyvLbFH2fUaDY2JbakCYcautyoKEVJVI0u6AHu/xQpXml0UqB4ulTAtcG4KBvFuQ%207OSQurTdNqOO5Wt/9Dw7az1mp+boDTuVk7QUXLr0LkurSzQaDVxXkaZDgrAaIB5lQ0pjSEcjombE%20qfvu5sknn/wrXVn19NNP893ZEc8Kv/n0N77xHVavL7O47xBz8/NYDEVZVKmjdMizHJ0VYxQXSMdB%20KYkuCxAWKQxpGhMFPov75/nIR+/g8LHDzMwcw0iPwShnZ5TRT3IGaYkb1pF+A+XWQIbo0idPBelI%20kCcZjcCBMkGakkAqAk/hYCmSjHyUYXKglEjr4eAjjYewLhiX0UhTFApd+mQDSxqDJ0N0XpLEO3he%20weOPnuTDH7mXQwdhMIBkFOMpjyKrpEkWD0wSNOaIRwWXrlzlxq0NMlF/2m8GTy82vD0g+v8DMR2v%20W11koeNFz+6+bfnimv3OCy/x/Fe/zlf/5GukwwJf+uxsdtnZ7jM7vYAtLC2/gS0NRVZidInjOXhR%20gFMLQQlUzQdHIKQcA5FBjuWZq2ngMTAJMTahGN9yuzY68n2st7QIWQkLVg4dBimgyDJEOTZw7MD2%20tT6jLU3NtglMnWf+49c49/oF2u0J+v0BO90OtXo1V7TWWUHbknq9RhwP0VbjBy6FySlNgeNKRnlM%20e6rFL/zSz/Njn/3EX+lMfF+91R9/7A7x8IOn7dLSGjNTDVwHlpaXyXKNowKUcFC2pLAGiYtSLnkx%20Iqo5GGPJhl0cqQk8lzTu8PrL3+GeUweJM02n12WUZ2glEMJBuC6+qsYEkiQjH6a4MqIWTOD5AUmh%20GfRjNocDpJNQqwfUgojQdymKHO2UoCyF75CNLJQOWBedC6T0sdYlzw0aF6F80Dm+4+JLRWdrBccd%20cd+pgzzyyN3sW6iGLHXZZ6JZx3UgS6Hd9ri5OmRqts6Ju+5gba3G8q1LPPvcq2xuHuO+ew7bew/u%20LbP9bY+wNn/7Z6yTgitvXbdnXzvPudffYvXmBp4IOXnkDiYnpsAqzp29QNxLuPvYCRrH7iBULkEQ%20IRSV2WEGRT/Degq/VcMb+5UaVKVSIXcNTQ0I588JFI3rtbFv4O2JYWF5/yJJJdMjsMaAVnh+AAXE%20mwXxdo5f1vF1jbMvXeT8SxdxTUAxLMmGGaFfY3u7i1AS13UphSVNU5IspdmskeuMvCxQrkQLje97%20LC7O89RTT/2Vr+1fKP78n33+M3S2BwyGhlsrGwy6m2gjCaIGgd/E80Bri5IWYUuEKTCFU+2ZCYMp%20YgK/ji0Ltla3+Rf/6/9CLspqoc8P8aMGOC5JFpNmBQhJ4EfUojo6L+lvrZKPQOITKIlJDYaSUdJH%20xyP8qHKvrfkRk/NzLN/skGuN0B7YgDLXSOXjihBTWLQN8L0ajpOiZIHWA6K64OTxfXz0yXs5sL8a%20nc/zPjAiTVNS6yBFiOd5TM95jNJtTOmwuDjH9GSDleUbvPH6DS6+eZXOj3/ETk/43HmED8wlGVsg%20xd4o99+muHXhpr108QoXzr3D2+cvs3Zrg3NvnGff7CIPnH6Ia+9eoRCayclJdnZ2eP311xGjgsXJ%20GQ7u20+jVq8UE7MMQ4YVChsViMJFNEG5Y6NSIbCy4o2Eszt89L1Kx/eD1PitdtcEXo7NK5zbGkjs%20QHd1hMwjZBZw88oaL3/jDI72saZgc2sLx3eQDqRxTr1Wo7ApRpcUZYlSAtdTDPsJqrL9IUlHtCab%20/MTnP8vBEwfEXysYPfLgaS6cv8yZNy5y7eqIRuiSaUHkuwShAm0oy5IyTyiyjDBqkGdDHDfA9x10%20kZAOCsJaRLPmkRbDKjX1fWSgKExKkiQgHcKokpZN0wFppwelwrURgfCgAJ2UFHmC60NY83CNohym%20JN0RIz8nCgTkDhQCJWsIAoTWWAIwIVaDI1r4IgAlSJMOmg2OHq7xoSeOc+8phyItydIunmPwaoIi%20SwmCCNcrGYy6OBhqocEWEA+H+G7IkUNHGU3OstPZ4o++/A2OHVtgODpm7z4Zioa/y8PtAdHfpjj7%20Z2/ZV156nVs3V7l1Y4VLFy6zubrN4vQByrykVW8x2Z4giQdIYTCiko199dVXWZycY9Dpc/LwUWYn%20p6gpnzwuyLIEIweovAbWhxoIV2JdKgFBkeMhkGNNeT0GHiHE7RxIjv8mEBitQRusFShhK/EjATqG%20MoP+ckF/I6PFDGlf8+bLF0m7BS4eg2FMPYxYH/UZpgNmJ+e50blM6cQYN8f1HYT0SPOcJEuZbLQZ%20JDG5LmhNNPnPf/qnfqDr+heC0WjYw1OGfmeDwNX0ekm1mT/coRHVaDUjut0+UrhEYYS1OZ7jUOQx%20ZSHwvACjC7JRQdSICF0oKdFJTJ7n4Ea4roPVlnyUgxaYrIRRCun4B6DqCO1gCk2AoBE2yLO4Ghhr%201nBx6G2N6JoSKetI0aRIK/mRejgBVlEWltCr46g6eVYgZYzvJuxbDPjsZ+/lgdN14kEfV6TUvAKl%20JK4DXjPA9TSOlzI75yIcUS3tlpYiU+SZpSwKVD2gES5ycP8Cb79znnevX+Whh+6yjzx2gsVJRK/A%201qQVDWevivubHKsXe/bbX3+F5557nmatwZXL11m9tY7NXZrBJKNhysL8LBMTE6ws36Db26Ze88nz%20hNbULK47werKGr2NHTo3Nzm57xAnjhyjNjNNLS8ZvrtNXTvg+lCCrQEeGCFJrBpnOBVXZG8boAoM%20mlLn+Cqo1j2gkgmxTpUFlVXSZHMIcVlfirlxfoV6OY2xgkvnb3Dp/HUc4VXbFVIyTJJK9VYotnrb%20eJ6HtoIwDNnorFfSJ45HVA/R0lAKg+s7/Lf/9L/hwPED4q8djOqRRzzssrF2E1f4+K4lSWMG/RFR%20FNFuz9NqBsSxZjjsoJwI14vAWoy2aKGrGQdcbLFL+1ussWg0pbSg3LFio4FhAmGd0I+q2YnYUKYx%20LgG+UDiew/ryMq12jVoYsbG0DEISTc6TlxKMh1A+nqphTEBZCKSoZEe01mSjmPnZGkWpCUPNE48f%205I4TdTADAq9LKwwI/Yh6vU694RJG1X2BkwMWad3x6DzoEpIM4iEM44Is1ayubXD6wfvo9XZ449xF%203njrEg89fNo++Mh+5uuCwljcPWWSv3Fx5cIV+9KLr/PuuTXIXUzmcenGLZauryMMjHoxYRAgUTh4%20/Kvf/N+YnKqzOD+FJcdFsL65ylS4QFhv0HQi8jjlnTcvsfXuKncdu4N9Rw5TP3IUs7ROf6NH/egs%20zhEfOwLtQOi5aF11zYSo1qTA4oiqheYrp8qbtEWUIG8LYLPrkkqyXdJZHrJ2tUNDzRDZNq98/QJn%20vnmWwK+RJTnalpTklKJAixItSqwwY70ii9aGdrONEZqyzNDSYPOUNE/41Gc+yb333/cDX+e/EIwW%20ZkIxM9GyZRqz3dvEyAhtwHEFjlMtttbqAUWZQi9DI3EcpxJ1siXGaKSUaF1S5hJpfIytxgIMAiN0%20lW7K6oIKERCJgFAEFKYkLwoowHMkruPS7XepBy55MiKOB3hhHYRLOqq4IWMqAX7leAgryIoS33cr%20VC9KQk9T5gPa7YQHH/6/2XvTIEuzu8zvd85597vmzaWy9qqu6n2RWmqptSAJCSQhIQRSIMQygAeI%20YQB7bDwMjB1hWxrGYRgHjvAHxo4Jez74w0RggvAYEyyDENpbS69S79W1b5lZudz1Xc/iD+fNqmqG%20mEGDWhAzeisysqoiK+vmve/9n+f//J/n+R/n0UfX6fUnKLPDgfU+K70BSRSSZZBl0IZDYvbnpVoS%20ylePTIsS8iqkqEMOHT3GlY1tqkZw4uQpLl/d4lN/9hQvnRnz6Bvvdu99YyiMc9TakIbf2dX2t54X%20evGa+9znPse5sxfAxIRiyMtnLzPZm7K9NaeYGlaWlzEBBCLANBWLWcnG5gZ3nHqErNfFugLhFNPd%20GVVTEsqu35JjHJFWTDcmvDx5kcW1GasXd1i68xjDzoDycs50UtI5OSBdhaqCJMOv1HGCSEgsPtUC%20IQiUwPghtl+DJFtuqAY7dhTTinzsOPfMZYbJAVYHQ57+/GWe/uqzFAtLpAJqqylNSeNKanIaUaFl%20jRENWvhAn6IoyLoptbNo3aAx6Kqk28340A9+iIfe9JB4TYoRwKNvepgvv/4+/r8//DOm+Zgo7TMY%20rRInIfliSllqAiXoDvvM54UPcMJHySopfRXXDVUOYSzQRmGdREhJKBxSKJwVCCHIshRpHVQVorZE%20SqKERBhDXS5QouGO08epqopzly4jnEEGCboC25p2rb1F3AnhCAKIE0FDRb9vkezw0OvWeMfb1xn2%20czppwbH1ZZaHHYadALk/MW0nqU4YBLlHRoQI43MenPTDizSFOIUBUDSgomUG3S6TuSHtjIgubHHt%208i6/c/aP2Lx2h3v9Q8d44Hj/O/Dob/F15vGL7mtfe4LrV64zGAx45KG3MuwdwJZdnvjSb/PKSxcY%20dAckUY9qYQlVRlOUdLIOuzsT3vnO97C80uWpZ77EYJixstpn9cAa5Y4hCVJcYTFOMBguEYaC2eaY%20FzfPcOPamPWtGUcfPEVydA1bl+yMt4nWuiwdTXxsbOBbNzJfb2ID2vowQrV/Trq2NcthuqPZ29ph%20Pq7Qe7AUHGAlWeP8sxMe++yTTCcVg+6I8d4elc4pbEHhCipKGlFghEdJTmhUpMjzBlkKtKgJgoCi%20WqASyXe98x08+tZH/1rP+7+3GL3xkbvEj3zsI66sDf/m01/BBQFpGlPXFXu7O9RGkqUDBoM+Zd3g%20aGgagxCKQAistdimwViHVLFHOyjCMESFggDhtxgEAcVkj1AFPn7WKSSBV1k7TWUqTp4+yqHDS5w8%20eYqTl6/w6T//AsVkl97yCWoTUTc+NMpaSxAqgkgQRAZtZlixR2egefCBEe/8rnXW1yEKS+46tcbh%20kURXhjTwAMiaVl9mQajW2ItABcprzxxo22CtBimQQiIIEU5z5EDIaJBw/kJNMY+48+RRVgarbG1d%204yuPvczZs1d56f673RsePsHJlVvqOWPbsLnvXN/2S89gsdu4reubPP/8i+xtT1lfP8TpN9/PfD6n%20qTQmkIQq4f77XsfVS1voxtHrDpnsToiDiEAJdGPodoe88x3vYXfvGi+fHVJWORubOzSFYxSNyLIE%20oxv2tmcEZcCS6EOQQONY7DWc2TvLxqVtDt59jAOnjzBaTtF5zXyrRgwEdWAIo4hkmBH12newbM2u%20FnQDVQH5rGI+XlDOKnSlCZqYcjvn4dNrPP/1OX/0//wZkxsF0sVcuX4dGUClCwoxp2RBJebUoqCS%20NbWosWgUEMcxYHDOYaWlbEpOnzrFT/zUT3DyrhPiNS1GAB/68HeLtbWjrrf0O5y5cJUir7mxN6Us%20c0SY4tpMxiSJKcsKdIULYqzTaKMROJIkJkwl2laUdY2UHlqK1uMmdI2r59ggwDiH1gYlIrqdIcOl%20FdJ0idGBlNFKypHjXU7edQ/9wZAvfeXrTKeW0WCJG9sFSimMbRBWkqYxjZ5jbMVgWHHidMSb3jzi%200BHoZoZTx0as9v3PmMUSUxsCoVCyLQwSHAG39t5qEBIpLKH0aMy12cKGhl4UUTYQCjh9PCKLIs6e%203UGnmpW7TrGztsITTz3Jc899mgsXHuK73/WIO3IEDmR8J6Lkb+DKr+HGO3tsb+8yG+dcvnyV0WCZ%200bGDVKVmd3NBEMQoE3JjY0qvF/PBD36Qzetb/Omf/huOHTxJr9MH63BSoZuCo0dOsLmxzXQx5cEH%203sC1rYtMJjtMJwuCOEAsHPWsodot0RGoXkovTKCyzPZKelmHYivnzPbzbJ/b5NSDd7J84hB0YD4z%20EBlKsWB6ZYZIFCJTmFB6/Y/2B6cxgipvKBc1urIEIiRwGSfXDnDtjOOZx55lb3NGHAyoakNhaoR1%201KKkpKB0CypZUYsKTUWDaUFGRRj6EDNXl+SLnDRNectb3sz7P/y+vzba/0sV2H/ZdfjI6JPG9T6x%20O5mzmOdM5wvKoiZKMpSMQAjCKKauNabWBIFCCUFT12RxzPrhdbqDjMqUNFUBTvs5gK0xpsLakiA0%20bTxJgUDT7aesrS+xtr7McLVLrefESYCxgm6/x+p6l72pYWNrj6XhGmnWp9PpU5Y1ja6IshDtCrr9%20mIcfPsSjb+5x7LhleSXkyKGAtYGvMdVsQhYHCGsRwr0qblI4gbV+QZ5zDVY0OLE/y5AtagqRKOoG%204gCiwO/di0PIohRdjdnc2kKFaxw6ch9xPOD551/mma+/gG5ist7oE8Men/wOt/3aX2YG0+u1u3Fh%207xPXr26xeW2bnRsTFpOSleEauganQ9K4RyQymgoilXJg7TB5UTBaXmIxz3nu68+jG4MSCpygLit6%203R5pmvLyK2e4ePECRZGjjSaKErqdLhSa3c1tdnfG6FogXYiSMU4HFIuaiJBmXhM0kn6YUe1O2Xrl%20EuGsob98EFvUhColsAH1rGI+ySnzhnzeMN6ZM5tUlIVFlz4NAxODSxA2QjUh4TzgM3/4eV558RJZ%20tERVC8qqIQwDZs0MTUEpZlRyRiVyGlnSSI12Dcb5UH/fDTi0ayibkje/7c387M//LMdPHf1r7xz8%20pljUNAvRpiSvF+im8psHxL62QZHGGWVQ0QQNSvkAaWs1SRqxtjqCKKCocorZnKausSbAOd8WOSlB%20+OB+pQSj0YijR9dZWT2As5LpfAerHGfOvswsd+RlzOb2gmvX9+gOB+R6wak770c3iqIuGI8XRFFF%20khiOnUh597uWOLqeMxpMuePIEqMMysIRS8NSf4DRZfuYHTjTTiG86ExJ5SMcPKjHYtEWv25bhAQt%20x5SGvt0y2q+J63X9M1PVCY0V7M5i8jJgbfUwaRxy5sxT/N7v/gEvPXuSd77rDe597zjynXL0Gl67%20ZwpXLGomuxPG4zH5okSIgF7SJ+qllHlFJ4qpK8NsL0cJH8kqrODGxg5hFnH+7Dkeft2DfOD73s8X%20PvNFqqJg1FsmRFLMSy5XGyyvDOh1V7h04QqrB4cIabBJwuHhOoudCuOgFpJrkx3ms4aDvXUGIkMb%20QyLAlA1lvqATxww6GTuvXOf6pesceesDDE6s0x0tYY1CUIOEJG9QAAAgAElEQVQIaQKJEjml1Ghn%200Y3GWosgIhARUsZESvLpT32Vsy9fZnNjTNqxhFFGZQtyPUfFloUu0EKjMdj2l3OmXeRofHjbdAdl%20PEGVdGPe/o638s73vfVbct8K5/7qi8K+8coN92v/3a/z1JPP42zAbGZwLsbYiE62RK87QgjFpUuX%20UEqgq4KkmyEl9Ho9hJJUjaWpBVXpd61laR+lQhaLBaFyxHHIgw/cz4mjR9jd3SWfF3Q6XaxU7DUF%20Ml0mz/uMJzDPJZXVhB3BcNTj2LFjlIXh/EtXCaSikzh6A8073nWae08H3Hl4wfGDIWvLXe9+NhBg%20CSQ4owmC4NUC11c9xRbrGm9QdK1mn+CmC9q1+d0GqJoG4wRxFGCBjc0pFy8tuHK9S7GIsFRYU5JG%20lsn4Bs99/Ql2blzh3e9+G9/znrdz712xACiqhjQOW5DmWi/3d65vig+6gptPG4pFyeVL13DO7+1z%20zuGsaIcd3uburEA4P5G1VmCNxJo2iUx6B7x1mlAqrl6+RqJi4jDln/+v/xvT3RmhigjDmMl0h7X1%20FXYmm6TdkNFyjybPObyyxmRrj/k8956zxiIax4H+GifXDpPpELFoMHsFKjeM4h7rgxViETCvC8ZB%20xcF7TnH8rns5dN8R9gwUEYxZEK3EzOyY6zeu0F8akiY9djdm9LM1IjJeePwcf/57n0ZpPzAyztK4%20itpW1ORoUZLrMSULauY0osBKjUGjXUVjK2TQYKkRgWVztsmP/diP8uu/8UnWji1/S27MbwoZPXh6%20VbzrHW9xT37tSRodMFpaYmtrTrfbIwoVYSTpZB2Wl5eoqoJCGD8OLBcgLFHcYTpZgAsJgw7O+lS4%20TiLoZR2UtBw8eIDXPfAgp0+d5OL5C5x58QyuakgHXQoZMS0Vk4llsYjRTezFXp2ATjbg+PE+X3ns%20DPfdf4oXnvs6aaL4+MceQesx3axidRgwSBTRzcmnJRASJcCpkHYvUuuIhr8or/eaKV+EENIT3G0x%20ArzGQxqU1D5AHYVE0OmGrK4NuXotb/P0DEoKwjBkeXmVu+68F338BJ//7Fc5+8pl3v62N7p3vOsB%20DiyH3gLpXPt/f+f6K10O8svG5eOS2SSnmFbUdU0gAgggDkNUGBIFAUiJEj5ZVFeaxlhM7agah6ks%20tbGgveK5amqSJKEpKzqdlLtP3cXVC1c5dGCdLOgyn5bEUUqTWOZTg9AJ5dywbRbECq5d26Va5Gjd%20HnzCgjTs1BPkGJaiLqkM6A1jkn4XV0luzCdERuCUpCgrzr9wjrPnNzh84R7W7z7FiYdHSNnhxnSO%207MDa6jLGGUyVc+jgOjEJzz19ja995Qlq61DWoG1DYytqk1PjR/lallhVIYSnT3C+JTM0WGcR0qJt%20TdJRzPIFD9x3Hx/68Ae/ZYXomy5GAD/1kz/GxvXr/Mt/+a+4srmJCHtYHTPJ5wip6WYB/V7IxOY0%20BpRyuNJijMFq4zsg4ZASVCCwxlGbisbW9Dox2jTMi5xOt89Dr3sDYdDl4oXL1C6kXNSMx4adnQXG%20CoSMaXRIMw8xeYdzL2gCm/HSN75BQM473/Z2Dh6APE84tJawvARp5jfZem9hu4DSq5xuuqIdt9Yy%20OHELGfk0GXxBcrc8ivtfYo0mkBKp/MJJ2iLSTVPkMnQzR1WBMwZtDFXpiELF8soh4jAgTrtcunye%20P/qTz/P4U8/w8Z/4qHv93akQQjCrLL34Oyz3v+sqNnFVmTOfzJlN5lTzClODEAoZKoajHioMyZKE%20OE2JQ+89lW06h7BQaWgKKGpDtaiZFyX5LKcsGrIkoMwXdLMORjdcuHCOc2cuMVpZ4/nnztLvjChK%20TRz1mBcT0rRHXs2YjGdkaUThapzR7cHi2olvCEqysA2JaMiLgtpWBNkycZxQzWsW0wJjoJAaU2jy%20xYKtZ2vi65c4Mb6bg3cdYnh8yLRcECSKne1thFWMjh1itlvx7Ne/wdmzr9APehhnqG1NbUpqk9PY%20goYKLStUZDDUOGkRzrQLJBu/TFI5pBTsTvbo9BI++sMf5QMfef/Pfytfv2+6GB3sCfHL/+UvuDvv%20OMX5i9e4cukGf/Inn6WYzzG2JAx8L4poCKVDKIkKpJ9yaUsURUgRIoRAKUmSRDgrvGYpgs2dbZ59%207jkG/RF3n76XTm+EY4sbN+Zsj2FRBDSFAKEIo4jACsqJZevKgosvXabXd2ycfZYf+Ni7eeThiCsX%20tjl+rMvBFegmELYIw5jGq1Sdz4Vx1t6GPiRuPy8Gi21dP64V4d+sPrcVIuFAtQIlgUBJ104ZJSGe%20zF4aZsxmOaW2aG1pmgZjIiAgkimr6yc5dvIennr6cf7oj3+fF89d4ft/4APuPe9+iFMHvkNv/6Ug%20yMDsGq6uKuaTMUW+YDod05QVQRDR6/UZDkYknYy0n6JCvxZLhtwytu8H4CsILWBgaBV1lTKfp+zt%20BcynC6pZw2TqC0vWjdndHBPGEadOnSKLhuxsL3j2medJkghB7IlDURGozPvCMKggxDlH5RxCBqSd%20lCiKkU5SSQuRYVZVyHpCKWqkdThZY4xBxClaWoIowyjHmQtnefbKS5x+3V088u43sHp0SCfrMjjW%20RTeC3Ru7fOlzT/P1p7+Bw1CTY0WDpqZyhUdEosKKGisqtNU+uVXUIDUysARIjPWBaUGkmM/GvPPN%2038+PfPyHCWL1L/5GixHAsZVM/OLf/SEArm47d8eJ/5Pf/b3f59z5K2xuVayuHgahCUJ1s73RWiMM%20aBMQRR6V1E2JMYYki+kt9fwTrmB7b4+vPvkUly5tU1eOjas77OxpimYJoQbEwlFpBVIREVE3htlW%20gZSOjb3LfO8H3sN733OCxdTQCXOWu33S0DdYzmmEkyjh/GLNNifm326FZBur67dymtYXtI+qhLup%20sn9VQcL41hThU/j2b3ZhoJPSKtM9THcuQLRrYqxKWCwWZP0uy2unOHL8IR77ypd48ez/xZNPv4MP%20/8B73cP3Z6wP/wKT5RqkCOA/MT6pmcFiF1dMKuazGVWe0+gK3RRYbUiShP6oz9JoRL8/JEgFKuZW%20ANltLZ0Vt1I4HL6GBLEXswZdiAc9yjxj59oecXKAva09JDHHTh4lTQa88NRZ3v+BH+DMCxc4e+aq%20v49lxmK+wCDodIfUtqDWOVJarPOBgEZaRCNxwlE6aETAyrBPR6Ysduds3NhC1IZUJsRhQigl87Im%20wpAliv5yj829G7z80gtsTa5w7M7D3HXvSR54+CEqAc888TW+/KWvMJ/U9Hp9FvMJ1pVo19CIGiMq%20GlHhhMbKhoYK4yqsbhChRUqHxVA3FbVZAJaH7nmAn/ypH+fYfd/6Yct/sCfBWneHlOLc4RUh/sf/%20/ue449QR98lf/5+5/NI5dpVABSlKdZAi8VlHlSGLMpq68T1zqEA3GGpUP2I46jMej9HWsDedMJ5W%20nD+/RRqPcDpksQhpTEAcJ9imoc5rTLUgih04i3AFKih525tex/e//xj9GHZ2Nzh2tMfKMCIElM+c%20QgiHEuomXAaJbMf5TtCaD/1Ne/P3CExbjPbBkaRVa7v9r3VYXYNwCBXcCr9q/0ESA1QgNFGY0hiJ%20VCkWRW0Ux08P+drXrvLkk09DtMRo9TSbm9f5V7/zKZ588mV+8IPfzevuP+EefniVQ61g8j+1RICm%20gJ3rlcvHleeCFjV1WWJ0jTMVQSLo9/ssrfQZrg7JeimEbSRQCLZd0eqEXyGNEOyfGQrQFqy2VEKg%20hEAkkEaQdBVZtIKr4XIkuXJxi+29TTr9Faqm4bGvfJkkGCFUTFNXJGmfZq5xzqGtYDavkAqk8sJc%20h8A0NXqhmeUWaRz9JEGFEhs5CnJyVSKVo8Ag6gUBBVlnQNjPmOsCKyVhorDCsL1xnYuXXualF5/l%20lZfPUjeOp55+mbqoGQ5HTKdTcj3FUGKdQTuPiAwaS4N1xv/Z1Wiq9lB1rQm3ojE1vX7CT//MT/Oh%20H/v+U6/Fa/sfXIykFOcA9maLx5d6nUd+9ie+T5x5+WX327/9f1CWM4QyRFFAFMUkiVedCiFa9y80%20umJ5ZcTBowcJ45Cd3V2iNGL7xhh04F8EGWF7jjRM0M675J3TNLXFaguuoqEmCC1px3HocIcf/sgx%200gD2tuYM+xFS13RjP3b3TZT1jZSQrz4ihfBmXedvlJtrq8TNAxTdoqf9QiS5FTm8H//pSaj91L2b%2035oggDACR+nNwtIrdrW2CBmAFLx8zvHFrzzNuXMXGC6vECTLRJmlKCrOnB3zv/+L/5fXP3Sad77z%20Yd705nvcA/fGv7nc4R/v/z9lAXu7xgmrSCLojfy3/o+B+97dqX5jtlf9WjVrmE8K8kmNzS1oP9OU%20gAhD+p2EldUlRgd6qH7o17PuByW2WdBSuvYI2j9o7M3XWygIlX+tcRbtHEoJhFCkA6CGE3cdxDnH%205XPbZN2YN7zpDfzR738OXWyzsrrO5uYNf+AFGc5JqqpEG0kSKRACIS1CWIyxFGXpRbRKMG8seuca%20uyomFoqwo7Ax5GVBU2qCRqOSIfFyynxvSlVVFPWC3qBDqFLSLGAxnvP4Y19jVlTM54ZubxVtanZm%20N1BRjZYlThq0MFhbe4KaBofGonFK4wS+ZWsakI4wUgRhlw9+6H384Ec+hGjf+39ritH+tdTrPLL/%20+7//c/8ZX/zCYzz/0iUWC9sqNg1hlKCUZTGf0+n2sbWmaRqOHjvEez/4fUxmY37/D/6AOI2RgUKF%20KWm8xGLmmM4KTNqh0RLnDKaucE6RRDFSObSbo8KK/iDkwx9+lOVlyOeQhK21XnsNdRS2U3nh2lG8%20vw2d8zyQuA0Z4W593i9E3u7jsAiPsG7zAu3XIYlCKdFyRcLnqBuLExKh2vhP19zkpBrnRZNRoJAR%20PPbY0zz70lmSJAMZY6VgPN0gSfrUTcWkMHz1qWucuzzma0+c4+1ve+DXHnzg1K8loWY23uKpJ56k%20KnKw0ElSsqTj4jim1+vRH/boL/WQoSOOY5IkJOskdDL1m8ujWwXtb+N19eLYzaYV2xsTTOFoCout%20HMoGRCJASYmSgqWlDoPljNFyH9n1kavGaCwCGYj9iLGbU1K3X4ac53OaRiMCRSQDf8jsx7laA8Ii%20ohACUA0cPH6Afm+Fsy9s0hmOuPf+e3j8yy9x9333UuQNm9s3KCuNDAOsCxn219B2grG2lRM4jDEY%20rYliRZRGlEWBFRqRSWQgKMqSfDZDOEma9WiM4fLuNerQ0Uk6rK6uILYMdVMyn42J0xBjNLX1gyKl%20FLP5BOdKsiymIPehh62bwFjfMhpn/Ge8z1RKgTACqx1COuJORtaL+NGf/Djrpw+9ZkfbN6Uz+qtc%20f/a559w/+ae/xZceexoZDBEypdNZBhlRzkq0cYRhTINlaWmJ1YPr1LqiqBrysmI2LZGqQ7lVEPSO%20cWj9NJvXp6ThkMXMkiYjqkLSWEPWURT1dY7eEfDjP/E+Th5PqcqaSCpockw95fjRHg++rs/qildG%20C/StLOG26bqpN2nvQIHA7OtU8MsZGmeppWN3MkZYyBKfpRQGkjSULVKyVKYgUApFgEVirfTZwwZe%20uWA5e+4G1zanODLCdBlLQtaDT3/mBT77uS/QHfQpy5K15TUOrBzk85/5ImVZUxcaayVZEiNcA6Zk%20ZZRy/Mgyu9vnefRN9/KmNz1IIGoCKZAywNSOxbykyLXn5pIYbTxPhzDEsSLNYtI0IooD1tZWCAJJ%20FEWoQPp9W0oQBv7PaShb4zEMR75+C/naIK9P/+GTrixLTp44xcbGBmncZbZXYhqHLQXKSpQLiFVA%20loSkieTYyTW6owD6QOBwoUXEoj1ILKqdhsoW+d7O+fljBmrd4KwmCEOUkDRG46xBSkWgImgErhII%20DfNduPDShJ2rFZFc4YkvvshTT77IdC9nkZeMJ7s4oXFohCzRbgKuBOHtFbQ2C0GDcA1hoDyXiT8w%20lZMI67DW4qwkSZepaksWJfQ6XbIwJYlDMIZFPqMsc4I4AqEotaXUDq0ltZYUzYI6XGCkRzu+ATMY%20W6FtjbUaK/xjSrqRR3O6pqjnPPDAA/zqf/vLfOBHv+c1xdjf8hyL73nn/aL6lX/ofuVX/wdefPkK%20S8tDdjeuMFo/wmh5wHgyQ+sKiyMMPZLIpznbu+P2dghJ0w52lLG+eojDB49S5te869g0VPWUJF2B%202lJWE44cX+Ltbz/CsRMp2nqCzugMYfDCRBe17vt2xYuwrfDNk9e3f7jb7s7bgNFNHVHZ1DTOYhpN%20UTW42pKlMaNhnzhUKAz7QZ8OSWMs+9qBxkBRVlzZ2KTbO0BRKlAJ1sIXHrvAF7/6JL3lFc6fP0+/%202yXr9njL217Pl7/4OLNpiZ03RINDOBdjraWuFlzf0MxnUyQRYXycg4fuQddTrC78Y05D0kzitI+c%20DJUvQqJdYWxdg3X+RtR1w4Vzmy1iMLclHwiCICAQIVJKJJYwDEjSwAUhSOVQyhGEguFSl8Vi5h9f%20XSGEIEkjlpaWuPOulX/vjfyVz110ly9f5dL5i1w4dx5jHA/df4MTJ+6g2Juj2tSESChvTnYe28Rx%20yGApozsMoIt3tzvRol91c1gm3Ku6cnC3cX7twRSqCKRq23gIVeAjbtrsaSvdzR1mUQd6o4TFRFPP%20C1bXlxhPd7h69YbfcAPEaQfrNOPpjCRW7YSN1oXtEK6VsrYV3Tkfq+NbSO+FFNJhhEAqTX99xFK3%20T1kUbOxcJ5KKTpphhSY3FWFjkUGIthZtLTU+R6smp3a+LRPtc+Ncg3bG80KiIc0SqiZnc3eT1dVV%20pjsTsm6Hn/6Zn+Z9H/6e33ytEfBrEqrzwffdLy5e+nvun/3WP+fCKxfprhxiMd/zc1jhVdZWayaT%20PYy0rT8mJAgT762pamwj0HXNYjqjLkqMbVha7lCUnnzTpmawlPE93/tW3v1ev8DRuhyhGrCZv6FU%20QuMEixJ6NcioPRXd/md3k/9BiJtje/dq6OjbLuEl8VEU4WRAWRQ+nyYSNwG/wSGVQiDxMzVBIP33%20bzRMFiVB1MG4iMZKAgUvvLjJ5x57gt1JQVg2HDh4mMVswjxf8Id/8Bmvz6otMhtibETdREgUYdAB%20XTHZm7I0HLG6eidNA0UpqSsvXIukbH1zEUI6rG1QSvtd68IRSIEKYqIoJYwUaZqgTU3TNNR1TVMb%20/7lpMFoiyChLTZ4b8gLC0Ad9WWdwznDp4g2m0wlBKCnLnLouieIAIS7wmc9GbrA8RIUBgVRcv36d%203e09sJbFbIG0kkBI9rb3OHvmFdI4Bit4JbjGPace9lGrZQNWEKqAQEmM1igFWT9i+WAPem0hkoDV%20GIwPw0P4BAhcK0a9NUm7Oe0UYBuHDIV/W1gH1uIzyjxFgPSrp1EgpSTqwsqBmGpu2ShzDh1f5sTp%20w2RZl0ZLrl/fpGk0UgrSpIuh8Vo14dX0ri32+7/2I2Wd82vesQ6c9IeHFNjIcejkYU6dvIPp7g4v%20PPsc070xum4wjaY2NYHSSN3QGEtjoLbOZ4O5hsZU/vti2x1qFuu0t3xgKesCJy39fp+NG9dZX1/h%20Z37m7/L+D7wflb32rfxrlvD1Cz/3PrE9nrjf+q3fprFztHXkhUOplDBNqBaa2XxKaRrCIGYwXEGF%20Cbop0Y1Fa8fOjW3G2xX5RNPpjRjPdgmCLoiGTi/hxB2HufvuiOEILj07oZs6sKGX8DuBUgGVsSxq%20qAykApwUSKf8HWh9YfqLo17RktLOgXUWhWjVRpAlEYEMSYKQQgZkSUoYKg/zne/HG2GwxoHzIaDG%20wnQOe3sFMuhQ6ZDuoMsr5ws+9edfpjIhYdrDOU1R1qweOECoAkaDEbqsSeOYphQ02qvzrJQESUqa%20dFnMNL1uSidbosxBawkuQMp9XkRjqJDOINycIHL0OilJJ6OTRqTdgH4X4o43+WqXIayPozA1zBaw%20mC2YLwx1ETGfNSwWC4wxONv69ZxECkGahCThGp1ORl7MsVaTZhHPP/88f/Knn2dz+wYyCun3euSz%20OVVR0u/1CAkIhGS8s0soFbO9CcePHiMKIjYu7nH5lS3uPHUHjao8MayE/5B+BJ/2Y5IRN+M0EA4r%20TIuMHA51Mx36Vf3Z7RojB9Y6pGthsfURw7LtQ52z7V879i2MCOiMYGmSsreToyLBo299iL0dzZVL%20N9Bac21jk7ys6PY6zPIxVvrxiBfZ7gdn+dVD5jarirWm5TAdQigchvl4h+3JDQ6UI0ygcbEjd3Oa%20XKOrmjhOkKbB2RBjDNo4GmuxwnnSmqblvzw579GRwQgNwtA4TZam1HVOFCs+/mMf47/4lV98IluS%20j3w7uMHXNG7w5372Y2hX80/+6f8ERHTiDsY2OGcIAkkc++THsqwR0xkq1Ax6I+Koz+52Tj7R1HqB%20kBGINjkyUFRlRRhFzBcFX/zSLi4YcejgOpOxRgV+GqZNg3GGvNHkVYRGYQTtydTiIeFVc3+53cIf%20l6olOFUbJgKOEIkIQ4I0JY0TIhRVU6MkNE3dapQCwiBEAtMZ7GwumC8c0zkMR12mc3jsqy9w6cqE%20E6fvZHdymeFSH63nzCdzmkXB0ZWDvP2tb+Xaues889jXkUsjZJDgrKZaTBCJoConxGGGbL1WgQgR%20YYKSDc5pcDVhbEhiGHQE/WHM6vIS/SXhpQa3xaXUFUTCSyA6ob9n+w1URYeihL1dSMcBwV7NbNpQ%20FhqtHYFKCMOY+dQjqrpUbbRvQhwOEC4hn4EKV5jlJXXtmE8Mi0nBbmQRRmPrBltrssgH1GdBzvHD%20Q+aTKV/74jMcWT1OP84g0O1kzKBCRdoLSHohJK0o1fk3lgva0VjLE7nbVari1oj05opEBzK4ldZg%20ARGom8JIKRUNGicEUgmcsWAkIoTuELrDgO2ruxw4tIQ2U8ylkuW1EVWjuXDxAmUj0Pt7YJ1v5D1S%2080E00gmE84S6w2FvWpM8hjLCYXC8cu5lxrNtkihkMtmjokCmAWEWUVY1zgmcaTyithbtrM8HUwKa%205mZ7iLA42rZdel4rCB3a5MyLMX/np/8OP/9LP8e3qxDBNxEh8s1es8L+38s98cCx03d/oixnPPPs%20N9CNoGkgShJUEPp+3oKuNEJFCKc4dvwk/c6A8c6MxaIkCTskcYpuLFHWR4QJ2ghOHDtJkiY888w3%20GE9qVpZXiUJJGktCJYEAJyoauyBMLP1+ShYD0nn9yM3JmWhvCm4VJGHbvXju5s3gFeMKnEVaUFYg%20LUSBIpQS5zSxCrDa20biIEUpgdWwe6PmyrU9pkVG1FllPoff+9dfYHMzJ0yX2d6dkmUZZV1y+OAB%208tmY6c4uG5ev8dA99xOphLx0VFVIHKUIq7HNnE4Gwi2484513vLm04QKnNWgK4wpcDYnigxLQ8XK%20csSJkyOWlxMGS5Ik8QsjHBZjK4wtCUKLVBqEvsljBIEgjqHTgdEIun1JmmVEscSh0brBWq80D4KI%20uta+LZKKKIoxWrOzs4M2irOXtrlydY/FTJPnDcXCoAhxWqErSMIeihjbQBZl3HfnA8RBxtbGLuvL%20q6wsDQgDr9zHNcjQ0h3G9FYSop5EhMaT1sp5zkcov0OeW2oLIbxi1bVaeXd78QEWRUORl1jnfISy%20V8pi2xD8xulWowa6MiipCIBy4dja2iHL+pR5w/VrN2hqQ1k37I0nqFBS2jlGNlj2NTwaMAhnfaJo%20SwW0uoObKVqubfnTXofJfMpktkvZFDS2xkrru0oJpW6oraG2GiMsvlFtQBlUKDC29vNDsS/MtVip%20vRBXaYpqgXEV3//hD/IPfvmXOHXf0W+rKOQ1Q0a9VP5Ipe3fO3UgFr/6j/+BG89nfOpPnmQ2c1RV%20gQpAqYRIhmgtCVSEUiH5LGdczJnPpjgjsbImkDHOKfJZTtBN6Q/7nL77DgDOnL3AVx67wLkzW7z7%203Y9y5GjCgQOQpJ58LKuCnb2KrR1FP+uQWYuM5b/1g++j81t/cUvuKNsiFeP1JkJKlArQ7B8ylkQo%20lJBoBEEQEoWSuoHZ2LG3vcd4d4aSy8xy+OpXz/L44y9y+Pj9SBmxmO7QGx6gXhRcvbLJ6eNHWaQp%20g6jDE48/zmpvnVPHTjAeX8HWNYEsWT/S5/77jzMbX+XOUwcY9vxjMSZE2BAVRqRdxWApYG0tY2W5%20w6ANknP7dITRKGUJgn1xgruJEqxpMLb2vi4RIJREBILekm/pOv2UtOMIQsPeTklV1kjVI0l9C2VM%20A6JmvsjZ2dmiqEqiuE9VTbBakER9pIxwzgvAQpVQlT7K1DYBupRIl7A0SNjdHPPsMy9w4uAK8SBD%20BdBYg0QTJoowaRFM6HD7ueqtjNFymw4M207NvAMflN8j1r7+dWPYm+xSFSW9QY8wDP1r74wfrkiB%200c5rl4TASQ0qRMSQpJI4kSAaVlYHHDmyznhyHms1nU4HTYVVnvvxgxWDavOscZ4uMK3RUe4/vpZd%20t87zm2WZ++BA59dJG6fbcH5BVTUkcQdj/MHpRby27US814y2bcWZNmDf+HZQeN5otNzlzW95hH/0%20q/8V9z9857ddnfYtR0bW2juEEHsAgRRPAHTi8PqDr3/9Dzzz9eeZTmeMd7exxjEarbA0WPZpc3mD%200Y7dnQm7G9vIIGHQG6G1wTYGFUS4ICXrDVr7Bmxu7rC3NyFNBuxsjTlz5jJNI0myId2+IE4iyqZG%20W0OaxiwPMpQApeRt+WnejCTwRkCPldvPuFdtEPb7qCyxDH2kmlCYuvFEpzVYq6kbDTJGBpJ5Dhtb%20JZevjrmypTHxOn/858/x9DNn6A3XqSvB9WubHDx8mI3Ll4mUIMRSzhfEMma6O6Of9dna3OTK9U2s%20UxRVThgI7rv3Tr73PQ8z6PVY6qeMhv02CmWGlCVpBstLEWtrCWsHUvp96QtQCwWEsKhAtMM+60lT%20a7zGRCikVKh2qiSFQkhDpcdYKpIgIO0EZEns4YbxYr+O82QAACAASURBVM/FYkGWdZBCMZ/PiZOU%20IIy5cvU6V6/tUFQBGxs7OOe3kzZVjdPmponaNpYojKgWFcLBqL9EFmYII8inM06fuINumhBGIbUu%20IDD0RzHd5RSZgJWaBt2StAJBgESi9lFRm0jKbWt+bopcncM6y+7uLot8QZqmdHsZQeDbeSl99LDW%20tQ8OxBdzqSIA8mnDdFywszMlDDpoI7l2fYvFoqQ2NbuTHQg14AuIwCH3EYq0OKGBxvuGlPVWAelR%20nMVghKW2fnNrlARo63etiUARxwlOOBptvMMe59GjdDjjRY1+AEOLCm072Nc4qTHC4GTN277rLfyj%20/+Yf8tCbH/gbkcl+y4vRfiF6FfyS4om1QeeTj7zpkU985Uuf5eLFcyyNlpjszShKzcponTzXWC1R%20IsJYCU6RBClWG8q8RKgAGUZY4UhCibM1ZTFnMZtRFAWjlYOooMOZF87y3IvnsfQYLnWJ0y6Vi1nM%205wTOrwrqpAFhsK+gNkhpcU7jrNuX6LYwf9/s6qG1QBLKEIXE1A7TGEIh/KI+Z1BhgFPe2FQ5uHAd%20vvrMFa7sOIaH7uRff+oSr1wtmMxqGuNw1mJ1yWxni0wKOmHMcneIrAX1vC3Oe2Mm+YxpOaMSNUkn%20QRBy150PkC8kTsOB1R6rKyEqyHF2lyw1HD7S59ixAcvLEUkqkcrDciGdz/Vub/SbpVYopAx9e8st%20wzBCtSyGIVB+4uWcwBhHqBSdLEaJkLpqMI0lLyviKCPNBixygwq6nLuwgZI98kIznc6pihzdNISB%20xOLfVJ1uitUNi9mU1z34EO949G1ILaC29OIei70FipDjR497DsVWJJmk0w/or2VYalywj3j8xFEh%20UVbcHJ8LTFsI2umVcO0Ke1+kmqah3+uyurJMp+NzuAT4xRLcCrsXzqBkyzE5B5WXkVy5dIOyhNoo%20jh5fY3s3ZzKfUpua6XwXJRxREPjH35TgGsJYgGiobU5/kLI33eLgoVUGSxmT2Q5ITRiAdjVhonDS%20F01rLc5BFPiftakasJ6CUFK0MSDaIyLnMNZQG0fa7bOoFrhQMFrtsz2+gREl3/2et/PP/pff4Ngd%20R383jKPf/Y+iGP27rtWlzidP33X3JyaTCc8/+yIqSHFGcmN7zGhpFeEEcdIBF2CMxWrQjUPJgG5v%20SG0DrPGWkiNHjnPP3fezsrJOWQnGeyX5XkV3eNC/Ac5e4fKVPbLOKqOVGEUPXRYoGRDGvhL5gWaD%20lI5AejQgWmRwa9Rya/RSV40XAkqFkoJASWQb0l9pP0jWIsRKyctnC578xjWS3lGidJk//9JVnnx+%20i+0949cDSwWmoZrP0PMFTZGz2B0TSsWgMyBJEvIiZ2d3h8ViD1uWEEVoDYcOnWLQX2W2O+Xg+hrr%20qxFRbBBul7RrWD/QYf3gkKVlb/Z0osLa+hbyu90w9yrcp25Nd269/W7yaAjTphfQTisVoQIhAgIV%20sVhU1LUBEaCdpK4lZQkvvHSeybRgeWkZXXvvXlOXIDSdbgdd59wYbzDsDnjTG9/I+9/zvawvrzG+%20sYOsHcPOErFKGN+Y0O0ucfTIMkJApWf0ljLSToSK5W3FaH9UrlqAuz9Fs7dWv7zqOXCtUdYiZatA%20Fn58f1OHxs0hFFL5wGE/mVLYGhZzzXyqmU4qsmzIzk5BEIZs3dhkPN8lySIW8xm6rjC6RgUQKEdj%20cqyrCSKY52Puvvs0r5x9ia2dDV730H2srS0jhCGIAyrTZsoL/xit3Q+IE2htiILwJurytqd9SYq3%20u3QHQ3Yne8hIEESSK1sXSeKAj//4x/jF//zvc/8b7hd/U4Xo216MAI4fWfvk4WN3fuLq5Q1eeeUC%20WkOSdCjLCm0MgQxxSJyTBDJGiQQhIxwJYTikaQLqypLFQ1ZW1kjjhMU0ZLpX0+0fYrZTUc01abpM%20WRrOnb3KfBKxspwhRELjHNoqnIIoFSRRAIQ0NDeDQqzxLYtv4VueCOm3g0iBNg7TeHjvLW4KR4SI%20Qma55Op1zfMvbbC1ZQjjZa5cMfzhH3+JyQwaI8AYTF1TLvzNKRHEYUivk4F1NLpCKbjz7jv43ve+%20h4cefpj+8gE2Nyc0Y83qgTuQLuDKhYscOrjEoYMJgwEIMWF1LeXokWVW1gRR3GouRUWjSwIV3iw8%20r3pDOq/FuT1C5S9LAXDO3gyYc86T1FJ6q00cKaZTwyKvqGsLbdxpntecv3CVuvF78O65724++tEf%204tSpk1y5eonr168ShwEHVlbJ4pgH776P9eU1rl+8wtXzlwhFQC/rIS1M90qwklMnDhFGMVWzYHV9%20RNoLIJGguK1F8+uefe1tCUGpbitGtwqua0WPQsj2Z7r14YvRbUdT27Za46UhQka4SjIe12xcnzBf%20aCKVUdcNR4+uE0aKRTHl8JED7Gxv0ZgKrSukcuBqGl0SR4qlpQHdbsq1jWvce+89/Mqv/Nd85KM/%20RBiF3LixwSLPESqiqGuMc6gg8DKPfcJ7H79a6zfXOL8yzLefDu0slfGrqcMwYDLZJo4DfvhjH+EX%20funneePbHv4bdzB+24sRwLHDo08eOHT6E+fPnmdj4wZxklCVFXGcImWAcBLrAgKRoFSCsyFFCSoc%204AhpSsNsVrKYGSYTx3yisSbC1CFWpEjVQRCha0lVChZTw+UrY1QYMVmU1FphpfL3ZuS5WyHCm29A%20vzVWgVXgFNLKVjkrcMj/n703DbYrO8s0n7XWns4+59xz7qBZSkk5Z1rpzLTTJo1tbMBUMXjEAy5j%20zDw0FLSL7ooiOqIj4F/96Kr+0REd0a5ucBEBNKaZyg24jAEDxvOQs1JKSVfDnYcz73kN/WOdK2Wm%20aegOfjjTZitu5L0ZUsSRztnf/tb3ve/zepsHEjWPiDEWSg3jKVy+OuZrT1wjK1p0Oqd55pkBf/6p%20rzAYGIxMCcIYhaMqcpp8BtoSRZIkCojDgP39XZqmRir/4YqigCOHD3Hugds4d//DDCcRg90MUxvQ%20DXfcfpSTJ2LSdkWn03D8xAJHj4aEkR9SI2ukMB6ONU9rFy/+JeSLpA1/3+fSz9C87sZTLj3t4KCL%20gEaHzGYlWVZjCIiiDsNRzo21bXDK58lbw4kTx0nbMevr6+zu7tDoBoljIemwkHaYjSasrV6nmpZ0%204jZJEBOKBGVSyklNp71At9tChYLeUot4eX6iDMRcx/P8v4n/dav+vLgYiXkhEjcHv7c6oltqbTe3%20Bfk5tsAYfI69lOgSRvsVezsTwiBlNsnodheo64qynHH+4hPcWLvKeDygKDOMrpDSIIRBSkcriWl3%20UvJ8im4afv7nf5YgkHz0o7/O+sYNEI7FpSVEGJEXFU3jGfNKKKz13ZwKJHXdYOYRWmI+G/XKBot1%20lkpX9Bd75MWYMFG8//3v5Rc//Au84tX3vCSs1N+QYgRw++mlXzt28p5f3djc4sJzF4miiFar5f+R%20VYRwAXUF1iikaCFIKCtLFLcIgwijLXlWMh5lFLMGZwOyaU0r6SFdRDHK0bWg3V5G2hab2yPWdvbZ%20HeXktaRsJHnhKEu/Bg4iT55USKSQN8/e8nnbttr5bYgUAqn8OrUoYXvPsbZV8Oxzu6xeHbI3kMSt%2025hMJX/xV+d56skN+ounmBYVB58PXVfosoSmxjQ1dZGR5zP6/TaLSz3W12+wubrKYDpmdfUqTz25%20zvGjd9BUC2TThuXFZdI4oL8ouO22Nr1+w+FDisNHWyz2/bCjbjKk0n4uNrfavODo9f9afF788/PS%20UubePYed83/8MQEgjCR57hiPC+pGEAZdNjaHrK/tYpwgSkKefOpJLl66yLXr19nb30MK0NowHA7Q%20eeNJrI0jcJLQBZSTnHyaE8s2okrIJxW6rDh27DDtdowTlu6K9HvhcF445kdRMe/2bqquv/509oKC%208/wj2vO/Di7tbrp7cE4inO+lqxns72WM9kuisMVkmtNfXGB7b5390RaNmfDEk19hOhn77ZU0CGWQ%20CoJQEQbBTRX77Xee5a677uRLX/kC166tsnJ4iaLMkKFkcekok2lGnmf+dSoflYXw4lxjrX9mKq+F%20kgF+OO4MVhhEIMjLKUsrPd7znnfxc//NT3PPw7e/ZJgO39CM5X/5XXeKIPh5p5Tiz//y76iqCqW6%20dLunSNMOVgvq0hIEiiAIMI0hkL4tNcogrKZpcmiMN3K2OmSzIVLEdBdXwBmmgxl1pFg4fIrBYJtx%20WTAa7zIYlEwnHYoiZZY5ep2GYystWrFgIfYMm0jecuZb4T+MxnlxYDazTCcVw1HJ7t6Ywbhkmguc%20WODQoWPsj+Ezn7nCtdUJrfQ4ZSGIwwRnGqqyQBcVaOMNc9YLFJ3TxHGffr+LkCdYWlpieXmZp54+%20z+aNDXrde1Ficd5lVBTjfcaThiA8RNIS9JcS0raab38sYSRvKrH/6decdWn90dR3hQdKXn9cS9rQ%207beJ0gll7fVAjXaoMCWSIXk5pNXqIAgYDqYMh2OsdSRxm7AfYIqKvd0hUR1wtH+IhIDJdMq0mkEW%200zIrJEHCeLditlvTX0yYDWv0qEWQHgyXb+3K3MGKX6oXenzgBVS8f8zo65zz0g9p0DgiQpTyb11d%20wyyH2az2frCiIE0jGp2DqGn0jDe9+VHyYszu5ojppGAwGDCbTeZJOCEqColjRd0YrIG/+dvP0O+n%203HfuPgbDHZYPL3PXXfdw6fIWcRx7fvbcSqKUQmt/BPYiRuEjhYTFaIPBgPEq7KIuOHRomfe+7138%209M/9FCfvPPKSgst8wwPfv/s7bhNK/ZyTyvKVr1xgd3fCbLrNwkJMHC0Q4GXCZV2RpAnOTWkai7Wg%20ZBspFVZUqEBQlxlpe4kwiDEmw2pHEgdIBKP9nGT5KHk2Zqua4uqKphRMRoadI4rFvmZrqaLTcvQ6%20Ie1EEipFKC1KeKSDlYKqqZlOC/YGY6aTiqoSVFpR1yEq7NNqLzOcwhe/eJ3Hn7xK3SQkcY+iLGn3%20IrI8Q5cFOEcUxbhA4rTDWX8A3Ny4TrsVcO6+e1lcOcT5Zy5Q5iXvevf7uP3OY/ztX48YjUY0pYBm%20zOEjp+kvBiBm9Pp9gsjM7y6DUmp+v704W0T+AwXnHyhHQt2cQ4gDM7Ewc22MAg1p2ycOT6cWGYDR%20gjBIkSqkHO8TRim9fo8wVIRxzM7WFsPxDgGSQyvHcXlFkWvysCGJE3oLy5i8psg1tqjoLi9iS8PV%205zbpLZ9lIU4YrBsO9xWkzLsVfVNrZOd0KiGCF/rRnsc2/8cK0cHvk2gaGiyOQPiVfpHDeFQwnRaE%20QYtKax/9XszY3LrO3v4W99x3G4+85kE21vZZXb1O0UzJa9CVpTE+lThpp4gKRpMJs2LI4tL9nD5z%20lrPyFMZUXLx0gb1hRV5m8yQaebP7w4LGeNbEXE+lrZ53YY4wCoiigDPHT/DWd7yVD33ogy+5QvQN%20L0Z5qf99mgS/8ubXnxKLi/+D+w//4X/lrz/zNa5f3mFYK9qpIE68V6qqaj80nK9p4yAiDDSmrIFq%20rl2J0XqPuhxjTUCgWqgo9qtoLRivj5HdFkk3ZbQ35bG9fdZX4aEHj/GKc4cps4xWq6YVVwSqQtgC%20awvEgV1EeAe30Y6qsTgboYKUIO4QxCllHaItfPFL1/mrT3+ZQC0SxSlZVtBqJ2TTfYpyCtax0OnS%20CiVVOWE8mKHzjHghoX9kGYThC1/8HEGUMhlnZLMK3cCzz1Y89tiXuf3MXZy77zSbN56ku+Djv9vd%20gLQNQhi0uelT9zMQEc7vvX8C0N/d4sZZa28Cwhxe2+IQSCUJEwjjAOcqGgOzvCLLNEJYZpOK6bRi%20cTHh5KlTdLuL7O+NKUrDkaUVBvtTWihaSUBVWjLT0IvaiCgiG5XEfgVKVTQ8d/4Kt92+xMqJHntb%20Y7rHlmgtzud/iJuCVV9swrnYUX5d/NQtjTN///FVuPmA3wANwtU44QPvnYWqhDyryLMG5QKUCnEW%20oihkd3cXIQSz2YQHH3yAy5c+znQ2oCwz4jgilNJ3uEVBmiZkRY6gZjHtcOHKJfaGGyz0WwyHu1RV%20w9ZOxnQ6w5j5g2ZuoBXOet2cFP6YJiXSeKqBCiXtNCFJE37oA+/lJ37yx+gf6b0kcXvfsJkRQBjI%20Tx18f/RQ/GuveOWjv7q/u8fq1eto7XBOohtDoAKSVnKTuyKFz7c3WuOsJVQBYaiwtsa6BiUhigRK%20zRMwnUZKBTLB1gJbGZQLkSYmHzdsrI+4cH6N48fP0O62aKUpWRmQNQYVdXBBTFaCUktYu4C2KVZ0%20MLQxoo1QXWSgiBP4y7+8xue/8BSQoMKU2bTAGE0cScpiSBIrokB6rKdtqKuSRheEkSRQlgcfOsf9%20997LuXMPsNhbYrg/IVQJRWW5ePkqRluc1WxvXWehI7jnnkOcPBGSpiVHj7YII0s43xoJYqQM5tsv%209fV0yxd0ROKm+vqgGbDW61mk8CJRqw/m2HauSm7mHZNf79e1n6Wtr+VokzKZSa5c3uHG9V2urK6R%20FwVhGFHkNZvbe1y8cIntrV3SqE02zVjqLaMrg6kMQguWFpZJ4jaT4ZTQhbREiq4qOu3E0xKkptXt%20ELUFYUsRJxLZ8TOTWuc4iU98nR/cxE2ZhpsXl4Ni5L/39gx7s/redNA7L0oUosEJTUCEdBH5FDZv%20jNjeHGObAFxAU1u0cQyGA66srnLi1DHOnL0DGSgOHznCE08+gbWWLJ+xPxggA0lV16wcXsIJSxBA%20XswYDPdZ27jOtRtXmcwmnveV1WgraEyDDCTtThsnHNPZFG1qojjw0D5dEkYSJwz7k33uvecufunf%20/CI/+9/+lEg6ya/xEr2+ocXoxdfyovy1u+99+FdxkqefepoiK2klqQeCVxVRMmcTaU2jNUZbr7Uw%20zm8YpCerS+dh4gI8HN35fI+AGGEFyimUCLB1QFNKjA6wNuTixTWGI02ULLC4EhK3uhSNojKSIF6k%20mMUYk+JkmyBsEbZaREmEmkfe/N3nhjx3aY3hoETJGElAmec0dYlzNaaZEoUQSuUpgs5Qlzl1OcVR%20I0TD5tYNtrc2WFpc5pFHHuT13/4ARw7fz7Vr6+wPxhTZjLIq0M2UxX7A2duXuOOODnfe1SJtQRB4%20j7pzPlBAzLkotwqR+wcH2HYO87LWx0t5w+Vcc/OCPzKnH3pT39xGLDEG1tcqskyS5yHXb+yxtTlm%20Z3vfFzknUVFMUZTs7+7TaE0UxkghGY8nxEFMLGOKsqDbWuDkiVMkUQvbOLLhmCMrh1k+tOhvtOEe%20cRpy+uxRalMhE0mUSI8BUQ55wKlyzy9KvMDx5e2nXnEm5+qkgwgqECgZIGXg+UlYAgKqXDAZGnY3%20Sva3C6pMIEyMMyELC8uMRkMuX7pCGAbcdc+9LC4uU9eazY0NVlevMBoNmc2mBEFAp9MmLzL29nZo%20tSIvrlUOpJ0TjRzGaKrGMMsqwiAmTVNa7ZQojtC6pqrKm/aO8WxCGCtULLFO8/o3vI5f+uVf5D0/%20/IMvefhw8FJ7QXefDcRP/Pi7XTtN+Z3f/lMuXbpCkqwQx4eoS0CkhEFCSIQUMZYI10DVzMnVrnle%20WqhXxjobIVyNFBmBUQgXQRVjHTQ6wGiJs5rZ2g57gzHbuxMefNVp7r6/zeJyC0cLXUOnN28K5h/n%20rPRokP1Bw2Ra8tnPP850UqKNIFKCui6o6xm2qimdIElAOYWuNGVZelZQOQFXEQWCqsjodltEUcDV%20a1dYu7HPkUOn6SSHEYTk4wF33H+Os6dvR7qSU0cTDh/pUxQZ+/uCQ8vt502G5vqZFyMN/5HjmnMO%20o93NYmStRSmvr4nDW3EE7uY8xX+5uZpZG7DOa7GyovC8chRFZYjjGAhIWws0TUNZaz+MbzRoQ5Km%20dDoLREYyqjJ2hvt0NjfIhmOm+2M6xFQuQ0TLLC2ucOXagEsXb3DPQ7cjnKNen9IEET0RE/cSUA5j%20vTI8iIP5ylu8KCdBzP8+7uaU6UD86ayksb4Y+I4ckjAlESHT3DDayRhsFpS5f7gpqQi6Ic5E4CLO%20nr2PqhD81V98nmvrq+zvrlHVBVEU0e12GQwG7A12abUSev1FtPXkByVAqhBEPMfhaHCSJAlppy2Q%20grquKIqMrMgp68IPrI3myLHDDIY7VHnBD73n3fzrD/8Cr3zoFS8LCvpLrhhpbd9yz52h+Hf/9u0/%20k6bp//bR3/g9rl/bJc8rHCuoEJAOa+aOcRfdjCEWah47hPHrZmexJkA6OxcVa4QLES71cwUXeRSp%20U9gGOgsnyIsdnvnaVW6sbfDqzXt58OGThCHs7RbYWjCbzRhNB+RlTmUKsrxkOJoynhYEqk1AjJQh%20daUp8hm2LgCN044qq1Au9TOsWqOcI2jFtNI2i0sJD5x7E8aWbG/vsnZjm+2NK8ThNdrJIXbXt2kd%20W+YNb3gNd90Bly9CGhekqSIMQ38TCeY30j9hNHQQ/fy8r4PNzfNnLQex0Ae8b+cEbr5dsha0tkwn%20JWWtaaUd2t2F+fsDUZTQaS+wuLhMVWfoupi7BB37kwFtGaKkojQFq+uXcYVmKe1x++HbyGYzdoe7%203Ll4B/3eIba31nnqsau88g1nGO1l6EhTy4Yl2SHtK6SLEdbitB9Bi3nRFHNo2k1dGQdyADXvJANQ%20fmvoa3mEspAPYHt9xvr1GaM9A3qRfqtLoBSVhiuX9jh/8SLXrl9jOiu4tnada9dWmWUj2m1Hux1j%20dMOhQ4fodDpcvbqKNjXj8T6dburNssYz2oUICaNgjhGWc1KpIMsyptOpF5Y7g4oUcRST5zPG2ZDe%20Up93/eDb+O/++w9z8rZjL5s4hpdcMQrmc6Q44iM/+9NvecvKcue9/+kjv8kXv3SRdr81Nz9qcBHG%20hjRaoWSLOE6A0j/jHH4OYGMvPnEGISzI0Fs95iZYJa3PRZPzp7quiYOERnSZ7mV89bOXWbs8JA4j%208nJG0WTMihGzYgKuIUgD4rSFVDFRvAA2RKkEoSVlU6GrGoFBSYNwNcbU6AZwIUZrpAMnGnSlqUvH%20hYvP8MAr7+P+++/l2NHbuHJhl4vPbjKpClZO3k7pcsrSsbMj2NnZQy4HGN1CiJA0lXPdz0ELNPer%20v9j98I8MsV8s/HPOEQQhYXgLTOase5F6W2HnDvmiBG0Fxgkms4yyLGm3O6ysrHDl0gWi0FE0OVJZ%20GlNT1yVVXdAKJc5ZiiJHBBFpEFCLCqsret0Od9xzmgfO3s8TX3ic3dEu7d0e7c4SbjDkiSeucteD%20Z5DdHvk4oyansY6jrk+cQjA/eqk5RQjAWTsneN6yxEgRYIzD6DkNVIBSvlMRAobbsHOj5Ma1KdlE%200gqPE4WC8Qj29ibs7G3y1LNPsr27xmS6z/UbG2xsb6KCgDBOWFruc9upQ0wmI8oqZzKbEESK7kIH%20Y2sfA68gVOJm7LaPXpZIJ8lmE6zVFEWBcZZWy9MsbON7urLKuePu2/nRH/sRPvDBH+LwkcWXVS5M%208FJ+cd0O7/uxDz1KO5XuY//Xn/Gnn/oqeb6PpEu3fYROb4mmCvyNHTQ0TXNTVevmyYmCEKFihHSo%200PguaM4ANs77qBz+SKJdAbohTlK67Q5Nqbn6zAApI5J2QB3WtHpdTh89RpRKGluRFQVlYTAOFIGn%20H1rr0xmE9CJBq7G2pp0EgCXPp5iyQcYxaRqz0GuxtJQymmyysbFGr7fIHWfP8Yq7X8NnF8/zxc9d%20YG9tg1Pn7uLSpStcX20RB5alO0+iFIyGM4YDxfEjbU8hlHO0qGS+AtPz5b76/1SMlJI3vVnOuZs/%20HxxRb3VRvsUQBHPDKWQzg25AqZCqbCiqmnYS0ul0aHda9Lopmzvr1E1B3AooiqmfP8kIpTxKJkZS%20ZjOclXSSlLQX0urFDKY7iNDhGsF4OqO/eJTF5eNs7d3gwjP73P2aZUxpyE1G2YxxVtFb6tJJPfZE%20RLdEizfDpm6lmqObeazUnKZiDMwmMJ1qqolgeK1EZzGhPkYCjHdgfW3I5UurbG6tMxjvMprukPZC%204qTLLJsRRR2iVkJVTNjdHdDUM7a2NohiycMPP8Q73vkDbG2t8bsf+22fOKvmzPEgQgjhZWjW+tz7%20JkcKXyXj2OfljaYj8jKn1Yp583d/Fx/6sQ/ynvd938synOolV4yyybZrL7xQA/He97xWnDpzwmX6%20f+HxJ6+xcfkqE5fR6zYYl9IYhTARSoY4aXFWIUQDrkGIyLfmymGdz4gwTmNNjRPlvBj5RjwMLVVd%20UueCiC6pWCAMuggSIgVHThzizLmj3HVvgopg9XrBhQsX2N4aeBSGUx4Z01hvl5ivpnxx0jS116iY%202iCCiJWlRQ4fWWb5cJfllQ6v+bZ3sL5xjcuXVzl//jyj3We4fHGfTmuR48dv58zdZ1jbWOP67hbH%20Di3OvXM+kamuNcb4gb0F78rHzL8OQpbif7gYHXjxpH8g+5vhed4sd+uI5hA3iZkCLyoschgOp+RF%20hQo686OFvdlpnTt3P3ffeZZPf+YvWVtfpd1JqJ0iTRIENXk2IcB5QmZoUEIRpwqrNFk9Ze/6DbrB%20Au1uDyskg2FGXQrCYIHzT1+nf7xD+4iATkQ+mbG1PiSb1XTbHZKFiFZPIENvvwkCPBXU+mOle37U%203TydKJ/B/l7N1tYOs12LnK5QjgSDvRmb62OuXNrm+rVN8rxEhpbGKVpJH6tLrLNks5q41cJZBTLk%20wup5Xv2Ku3n41a9hcanLA6+8l0df9whXr17myfOP8fjjX8NaaIxGNn5O5NzcEGsMaStEybnKWghm%20RY4xhrNnz/LQw+f45X/7yzz8mru/rhAVdf7vW1H6K/9cjP5/XgeFyDl7uxDyZljco4+cEP/xf/41%2099GPfozf+s0/Ym1tn6JUBHKRIExJoh5VVSOd8DqQg+5A+COaUJpK+62PNQLrApAJSgQ+6RBLlTc+%20pgdFNhmjqEnjPpGMqIqctevb9I+0KE8kGGDrKm6xogAAIABJREFUxhYbN7Yoy5JWq+s9YNrQ2Apn%20ZxibI3WJEDVS4RW3oU8BjeOAMDZMsh32n7uKXG147Mm/5ezZMzz6bW/k0FKfT/zJk3xleJEkVKio%20xXhUMhzkZJOSeqHCOJ8bjwyYTqY0pkdoFE6JOUzL3CxIzpm5Ec++oCAdpGY8Py9OMv95TsgwN29U%20jXDN8yMPfTT3fAycFzAcZ2SFI00VMvSJIlZ4ek4UR5w6dYQkiSnLnDBxmCLDKkmZj1nptzFVQRpD%20q5sQuIB8NmO8NUQAK1GPlcUOtggoK8Pm1ctUpeHEySPsDWZcuzbitlaffnsRZwXZOKcqZ0ySingU%20kvZSokTR7iS02hBHcxC/nSstDJQ5TEaGfFqTTzWzaUU+gXqWMFwt2VzdY219h9m0Jitq6kLibOA3%20o5VBRYJpNiNp+yQVoxsmoz3iBO44dZogjphlE9a3rrK1vU5ZZ+impNGWKEpoTE3TGIwpfJcqw7lK%20W6EigRIWK6DWFRbNsRNHeOe73sqHfvxD3HXf359p9nIoRC/pY9rzC9HBde+pWPz0j73fHV1a4nd+%20++M8/sQqzhjCaJFsmmFsQhR3kGFIWXt3tApiZOi7IBkkNBpQklAGIAtP7tNeMGkxmEZhiRAixFlL%20UWlqNUUoS0sozn/paS488QytToxTDbKyRM4hmgypBChDnGgIGmzjMJWjKX1YXxCFlMUMlGWxm9Bb%20FpQ6Y3vjKtXOOmJxka3tdS5fus5bv/d9YB1JpHA6ZzIesvrcJnv7U1YOtRmP90Fo6iag242YTBuu%20X8u5+84UKaAqHfG8EdKmAsAID9nyiBR5Uxoo5l2Pel7TZA42/sp3Qto1BKHBNTXOaKKkDUQ0WlJr%20/2c2N2fMZtoHL4QwGo9ZWOqRxC22d7fY3R/xhx//OLu728RxRJVN6HdjVnoSnQQcWVacOn6Gxc4C%20RW7Y3pmxYYaUWrE2GBIfSqGTkHZ7bK6NKUKHNoK1wZDuYsrjj19i6dhrOX1nyM50gVa3zawaUJuG%20aelgECGkIAgLglh6rlWkPJS+sYwGU2KVQpWQjSLKYcBkCNsbOfvrI248W9LUAWU9D+gMFCoIsLKh%20NCW1q3F1DlIwyybeBVBVRKLG6Zq6gSvXNmmahjiNqaqSj//Jf6XIxuwN96gbhwgigsjgdIW1BhFq%20VKg8jyryeYF1XdPoivvuv4+f+qmf4Id/9AfvkJIrvMyv4OX0Yqva/swdp0Lx4V/4ARZ7ffef//Pv%2089jXnqOpLElrkbqqsda3roGMiDvehqDriqLMCOMF/4h30vuV5iMV4RTMuUZC+IG3R3N6kZsTjZ8t%201F7w55BYpbGBjwA2tsY5h4ykJygqA6LxnjPVIJXBOpCBor2wQFXPGI62aXU0J08dYXHxLm4sJMym%20BfnOEBbP0lSOa1c3KHPDYr/DLHdkM02SLCCs9mGRgcQJyPOKVhIxHWvGQ0gjiMIA6xzSOpSczx+4%20hdL1y+zg5h7pIA3llgpgHpcjuCkKnE0GdBZ6RGFIXXtuuQwk1LC2abh+Y5+qVgRhTF40NNaRpm2i%20OAZhWN+4ihSN19goPeeRl/R7fQ6fPsZrHr6HbqxoqorpTHP8+FFOnzGcv7jJtcub7GVjNoZ7RKJi%20mGVUjcShiKwlbAKoHRcvXKN/+E76h2OKugYbowKYZiVGG1pJG+ECmkoz2i1oqtoL7kTIQrLE/giG%202yWT7YLBVsH+5pTBzpR8IgjcMlqDNpaahsaWaFlRU6JdiUZj52RGi/HjAFsgqTA0VFkNCtx8I3a1%20yImigCD0UUjdXp/xZEBZzYjjiE43RalbJl9tS8aTIb1ej+/6nu/h3e9+N299+3d/zzdDIXrZFaM4%20kh85+P5HP/h6cccdd7n/43//XT75yc+xt7dPr3ec3b0hmJBu7wjCacaDMVIE9JcOkZX6lgZ3nkd1%20ELDuACnsLTSpMHPhoJ89OSvRjaRx/ihYqxDb1NS6QrsKYQxogQqcT4+wGtNU1HWJMQ3OQj7zLUQQ%20QiddIAlS0rDLPXfcw3e//l9wdfUG/d4RFnsnWb26y/mnr9NOD9PpHGd/sEssob/SJwoyhOzQSeeu%208dzSCiPGo5LtrYBOO6W3AMZ6mV4YKsAgb6qN50hdDLfyVf1NcnOVj0O5W+t+AaStnt9OElBVJUpJ%20ohaMxnD9+h57+zOC8DCddJnByLC/N2Yy2ae7sIy1mqXlNnm+j8tylNQEgeHIoQXe+B2P8IbX3out%20R/TbERiLFAmd3jH2hw2f+OTnGA8HjIcjNnY26SS1R8mgqQpNgYKggTDkwnPnOXJbyvEzx5lNBUIm%20RCogCSVJr0NZ1GTTGUZDQEQkFhFWIAxcOF+yuzVhuFVQZVBMLJOBoZj5MFBtCrTTNDajZkatZ2iR%20Y0SBURWNrRDUOGGw85wPjR9KWbxXLEwCpFTUdU1WZQhhSVoRcayo6pIwVARhm6apKMucOAkJAoW1%20mr3BDufO3cf3fd/38c53vZ2HHr5P8E10BS/HF22tu11KceUNrzsszp79RXfXXXfxG7/xMS5duky7%20fYQwiCnKCcYUdNIFAhVTl9nNaBo5vxWF9QmLEuWFZdI/oYTQOHswC/EfRGkDrAjn2iWfDGFljXU1%20zjXgNPpgK2M90F6XBbqucHOx3eJSz0dfB4a6zHju/FNcfOoxTp8+xd133sPp2+6knFZ8/qkvc/36%20gCTuEoQp165tIaMOQQiShoVOzOGjp+kvHMALfcZXkdds7YxY6LWIU19ohfLpFdbMuchfZwy95c3y%20jvdbwkac75+kU961HiaYxlLVlijq4oDdbbhyZcD25ow47FPWEisd+awin+ZcuXSDpLVL0grotAPq%20xsfh4AzdhRanz5zgNd/2EN/5nbexszGl3w4RxpJnNeOpZXfnOpeee5Lz649xODjDzniACtr0el0s%20DePJCIlkKUwRgWM6HbN67Sr3j45T1gYRSHIBUdwln+ZYA7GICZIWtoLBDmzeyBjtljx3fp3Z1FBn%20AiUTAplgTYqVCRbHKB+gRY0RBbXLaVxGIzKcrHDU6HkxErK5GfxphUfNCATIAK3tPPstJE1TLzkR%20HnkbRQFVnQGGOPFHwKYpKUuNkIY3vOF1fOCH38/7/9W7fzaOw4/wTXa9LIuRlOKKNuYtgVKfOnEU%208aEf/V533/138B//p//E1au77OxskyQrpEmXsmrmsLIYnJmD2Q/EfV5bIoTA2YOEDIkjwM39Wt7m%20EOBEgnQtv862DmsczjUItO84nCVUCuks1mhMU2J1Ba5BKb8uHg5WOXXmJEeWl2gqyfKCRdcl08EW%20n/qzC3TSZcJwkawIkMESUva8q5uStLuMrqeMh3scWjnCnXeeJoq84jlJIh/r7WA0nrCxE5J0DtHp%20QhpD43eFKPuiIiSeZxJ17hZ4zHmA2kHM2IEcp26gqh0yiJABDEdweXXCtWtDplNHt9unMD49dzLO%20iKIYKSWz6Zi6Ftx28hRxbCjLjHw2Is9zrl69yp/+ySd4+qttTh9dII0cNA11bclLxZWre8ymA452%20VtANjMoxad2nrfqULmOqRywkHeKuz1CrrGR1dZUnnz7JbWePE7cSppOCoB8RCj/cb3LJ5nbJ1Qu7%20rF4cMNrVuKZNmUc4G9M0gtI4ZKgIIkVlK/JyysxlvhNyFY3L0czQrsA5/z4bWyOFRokGMQfrOyHm%20BV7hrMM0Duc0QahQKkBIi6Oa68N8eGPaDugupAwGewxHu9xzzz286c1v4Md/8kd41atfKfgmvYKX%207QtX6lMHXdLJY0KcfPtdnDj+P7rf+q0/5vc+9mds76xRVxmmCVAyodVdpKkq5Dzr3BmDEJ6Wh5NY%20IRDWb+Kkk14MOV9dWxGg8KtWSeC5MRZwNVJapPDOddtorNA4U2N0iWtqhHQ+XUNpTp7tEwQD6ibn%206JFDnH7VA7SjhN3tfa5f2+Kppy4RypSFdoyKIzZ3B7S6LZLlPlk1IJEWR04U9VlZjn00kW2IYklT%20H8gIHPuDCXFLcdj1IFAkydwaaufgP8EtQeT8CX7QDPljq3xB0uo8fBcktNqKxsDaOly5ss/Gxoii%20UERRh/FE0+32iBO4fMUfT+JQoOsGLDz91FMEgWAyybDa0kr8APza1Q1uXBoxvfck0hTUxczbIESb%203UHBbDjFOUeYRkxzwyDfx+xYZvs5BTkJgkm+Q2/pKK1OyP5wh2efvcjJ207R7UBZttAFjGeCzY0d%20rj63zdrqHntrFdUsoh0dZbF7mErXSBnRCEOpJxibEaoAK2uKIKOwMxpRoJ0/mmkKHCVO1OAarKiR%20OIzTKIxPh5UQCI9fsdqihPJRUNbSNBUI//4lrZBZNqSVhjga1tavIiW8/g2P8oEPfIDv//5/wfFT%20h79pC9HLrhhZq98iZfCpF3dJB9+/9pGuOHXig+6uO0/z67/+u5x/+rqPzRaO7b1Vknbfb8nc3CRp%20JcjAb5fMfK/tvMtd3ORCK6Ro/H1qAxzxXOWtcdL4OZMwCKdpitIf2exc4yQdUjgfjyRLpJpQmxEq%20WuS208d58P6jHF0+QhK1CYOUP/rDT/H0M9f47BeepX9Y0u13mNU7ONtGKDh24hCHFhc5eiwlbRuC%20KEDYuclTgTaGMIrJK82NzV0KXTIrF2j3EhbSABH4N1wcDO7FgZvdzjHRzs/P5joif9PcEjs2wmuJ%20tjYtVy5vsLk1xpiYJOoShD2qqqGufHDp/v4u1un58L5CyoiF7jKBhKq0VEWG1Zp85hhSY8qM9faI%20bgvk/GwTxxGtMKQVlx6NgsMow6SckmUZoQ05fGiFxXaXaT5klAUsdFI6vS7rG5ucv3CF4eQUWV4x%20nlY89tgFNjaHDLczlGnRDg4RqRRdJwz2Mz90Z0ZFQUVGRYa0BiKLVZpKTX1HZAsMBU7VIBocFdY1%20COllJNZqEM2tdFs5z0OTEmf9/tKHIwisc1jXYKym002om5wsH9Hvd3nr276fn/iJD/HItz30TV2E%20XpbF6MWF6O+7jh1D/OtfeCOvevU595sf/T3+4Pf/jO29S7RbR3BuhiKZ32h6zn5OEHOqtUMghME5%209Twlt0IQ+nmSnltJLHN8hvMnHdEgnQFdAT4bSypHGEiCQBJIEIEhiEre+fbv5l+9+7288r4ugYXt%20NXju6XWurj7L0cMpr/+OH2HpyF/xlccvM52McFoRdCOOHzvG2RNHuO/uUyjVEEaOOAGtIxpdIUWE%20NppWGFPWOZP9CZUuyaqAxULijgQEC/M4ejlHqvrwpZtDe4dDonx5mqNEDv5rLFy+btjY2Gd9bYeq%20hDBaIE46ONuiKA1Lyy3OP7PD+sYWV69cIu12WFxMmU730Lrh2JEzGO2oK80EKIsZs+mMwAlkY5jM%20KnppjziCoqhoav96AhUhpWRUTNEy8uB5BysrPV75ynvpJAkXzz/DcLLNwuJpDh1a5sLFy3zm775A%20K30WScza5gTjOkynIdr0CIMOTqTUWiGNxkpB2JY0TYmkIFANjSuZNiOM0USxwrgC0xTU5DhKlLAI%202WBdibU1IcLHIaFxtgFbIWQNc9SbwlHVJdYZWq2QNI3RxlDVM6bTAhl47tO5c/fx3ve9i3e+8+2c%20vfPUt0Qhelkf0/6x69sfXRQnjv6Mu/eeU3zsd/+IL37paVYO3cne/h4gabc7GK1pqpowjImCGBBo%20azHa4SweHxEIrC4py5JYKZSUHp3hDODjrVUQop1DqYTZbDTPt/fg/abKidotVg4v8UM//P18+MPf%20C8bPX+oajp+A3Y0O6U7Ml778OWTc5zWvfZDPfuUJ6sYQdVYQYc3hIwusHFrk0qVL3HXPbfR7Pok1%20UJKqbiFki1AtUJVgRYcwWGQ2Dx/IKsFgUnHsUEirBWnbx1urYM4ikp77bawlmQ/VCgN5BrNpw2B3%20xP5+xtrmjDjuESQrWAFNLTFWESiFVBHPnN/ij/74v5AkCWmaMB3vcfzoIkW+z4Unn+QpU/t/WwdF%20kdNpt1joLVFMtwgwPtigbkh7KRQVVV0QJj0WeinLTY/xYERRVVgraccJ7X5C3FU3j0iGmr3RLrFK%20COKI3b19tJ0CCbVuoR1UOiQIAlwQUZmaRtc4Yz15UgpyZuRmSkNFI0uqoMCIxhdGpxFSEwofB+5s%20jaNBOp/MK7HoqkIKQxIplIRGNzjbICPJLMvodFKck9RN4Zcnyvj3IZAIKXnnu97GB3/k/XzHdz76%20LVOEvumL0XBYfPn0mZb48L/5Pl5x7oz73f/z/+YTn/wSoSowxs9WlAyQPqDeM2GswliBECFCBRin%20aUoIw5hup0VVlNz0vTmLcAJnA6wB0BT5GGhQ0a1o4TBULK8scupUnwdf+SoG+7D63BaTwZDzjz2N%20tHDy6Bne+PpHeO7KPjfWN9gbXSdutViUitpJVBKwsrKMCkJWDh9noXeYnR2YrU5J0xbddkCrBcYI%20VAhKRRgitGtT1ZDXEE5gOCpJEksrDb0CPHRIaYkCUIGkaRrqqiGb5oxHBUXhjb22cdSNANsH0cYa%20gTGCTrtHGMDa9QHnz1/kM3/9NwCcPfsAQaiYTsc0ZoaQNaduP0GWTRlPxgQqQQaKsqrRxiJ1QdIW%20GKHJqhl2MCUKQtJeHyRELbCipN2JcKGBxqGEm+u1dggF1DpjMhmTFTOUTNAmoNH+UGpdQOMMKEfj%20GmpToV2J0HreCVkiJIkMqYMZtchoZEMtNNqWaGFQOAI00tVAjRAl4Lse6Rqwmlk1pp8sEAaKfDbE%20UbLQSQhVQFFOWVxqk2UzrNX0+m2E1Ozt7xJGjrO3n+Tf/covc/8r7ubcg3d/yxWib7pipE31M4GK%20PwKwuNh65OD/f8/33CfOnbvXPfjgX/DH/+VTfPbvvkhVFiRxZ85GjoijGIFEW4UUkiiOsVZSliVG%2052hnQSTYA2QGFuE8B8k7v7zJMQpilHIgLEYqolZMGMc4K/njP/grPv2pkLVrV2nKimefOo8Sigfu%20f4jaLGHpYlxNbXLipMfW/oCk3cHUsLa2Sft0n52NHVZXt8kzPzdZWFigFbVxVhK3usRJizTtELci%20wiQibkHSgSQFIxRhJIhiQRhaAuUTPZJIEoZgTUxdS2wTglsCq+aRRAIpfSBkEPhjntFQl3D16pCv%20fOnLPP7414jDiIcePsepE8d57rnzZLMhKhD0e22+/dGHCELBpz/9aTY2dxAoDxKTDusKSlMzmjac%20ue0O+t2YtJWQxF2MFYStgMs7N6imJboRSCMwaKazIZtbN2hHMYiGxlQUVQ4uIgi7hGHfY9OsQVPh%205IRaNGhXUWuH1Q2WEik8ZF+LiFpWNK5C49DO+Dz6uVlN2QKofMSQqIAS5zSSBmcNx/pLVEVOmZXE%20oSOJEgQVdV0haJhN9olaESAYjrawruLU6SO8851v4z3vfQeveu2935JF6JuyGAUq/siLh9zW2tul%20lFeOHRPiF3/pLbzywVe4j//xx/mTP/0kVy7fIGn1iSLJaDwhDjto4/lGjfaxM1EUoKVFNxVIMacC%20+sGLEwJr/FDSCksceeync/Of45hWK6aqKm6s51RlinA1wsGxo6c5ekwym8y4vjHjk3/5JawLuO/c%20qzl8W8y4+CqXVveIU0jimIV2j3a3y+7gIuOhTxA32jGeTKnzKdYE5MUWUoQgI4SSqEiRpCHdhZRW%20J6S30kEFliCUSOlQEsJI0IoiojggTWKstSRRTLfrE1K09jMjFXichlT4LqyGCxev8dhXv8p4ss/h%20oyd4+MFzPPLqB8lnY9Y3VonjZfb2ttjcWOPQoS53nD2ObsYUxQCpvCcwbEWEgcBZw+7+Bg8+8i5e%2099qH6aQJk3HO7v6I1dVNPv/EE5T5CG0jQkIskiJ37OxYFtIWgVTEiaLJDdYYwkgiQoGu515BCY31%20AlUtav9wkRqrGpTAG6ZdiBUWK7Q3p847YGV9BLV1OULWCNcgZOO3qWicq5HOkE9LrGlIopAkCSjL%20EaN6lxaK5ZUlyrqgsTlFmdHvd3njm97EW9/2L3nzm9/IidOL39KF6JvymPb127YXetze9KZj4u47%20f9J9++tfxe997I/49F9/nv3dNYRsocKIqNXBGkFe5hjT+GBJoXAYpPR4kIOU2bnkyJvzpaCqirmj%201GKlh6Y3RmHLAmsaAhuwv7tLv9+n14nJy5iNnV0CZeguaR5+6GHitMdT569QlJp77rmHWsP1Gxvc%20SFKKomFnuE8chEgRMp3NqCuLMxFx2KHfW8FYRa0FjbbUlcEKBSKhakI2dzRCeQOnn3s5VCBoRYIo%20dswm+5RVjtNzw7D0K2glJFHiWD6sELIkTWIaXXDj+mWG+5vcdddpXvfoqzlz+giHDgkujzStVot2%202mcy3me0P+DalcvsbF1kd2+DJAkRMmKWZUBNrCySmiAOGY5HPPHUk4yHI9bWNylrQxB2MBgCJQkD%20BVagrANbM5tqbJWz0O5ghfM+M+kwrqFpMqaFoa4VMopwssG4yne30nd8tzpdCTb0JEhpkc4QWoty%20c0qB0zhXeDyw1ECDFI23CjlvRtZaE0cBQjYU1YwgsBxrL1PVOdt7N7BY+ksLPPrww7z9HT/AO9/1%20/dx2+/K3fBE6uMStKJZvvevZZwbu9//gE/z5f/0bnrt0g42tAWlrmSRewFjlIVtS4qyg0RBE7Tme%20RKKU8h41a33uhJRoawkihZCOStcY613crVaLOEwITEgxK+h228RpzHQ68YiNQLBy5CinTt5GkrY5%20/8xzaCO58+77qcqap556lrS9gBUpRiuWl1Yosprd7Qlh0EGaNmUVUGchjgQhYy/WVHhKQCSRQUgz%2011Ep3zHirJ3HUyuCQII1VFVGU5d+VW0N1mnPEA8aaj0gjDUqsFhT4GxOO1WcOrnE8eNLLC2ltFuS%20G1cvMxxs0e912NraYGdrg9NnjpPnO2xsr2FdSFU7srz0KFpbIGxBGjU88IqzdCKFsQ3DwZTReIYK%20UjZ3xmgTEoQprra42hLKEGEgDAJ6nS4qCsnykqpxyKBNY0NmhaU2AUGkgByHnmusJLgA526FPEZR%20hFIewWaaGmsav2U1BoMfkKMaBA1CaqSYz4ys54EvdDrk2ZSyzIlCRxgKrKuoqimlybj77rt557ve%20xjve8TYeed1d/1yE/rkYff31d5/ZcL/zO3/In33ib9jdnTKdloRhh1bSQQgfP+RjihK08WhSj3qV%20GGOx7v9p79ye5Dqv6/7b3+Wc091zA2YwAHEjAEKUQIEWQQikpchUJaZUcmyV3/xgv8d/Qv6X/AEu%20J6mUU6nETiwltkWZoEiKginFlEyBDEESAxDAXPtyzvluefi+bpDxiyu2UpbT+wWFATA16OmzZu+1%20114rh+kpa4pmMPMNvXeE0CJaU9uGtWoTqwymttx/cI+kEseOrbN/tE87HvO5Z57h2ee+RGUH3Lnz%20EXu7h9y+/T4hBE6eOk9SAw4PWwaDEe3EMz4MrIxOELqG2QEMR6eBYRk3TPaxTlmImVOcq6KrKnqX%20EmmktcboBMEjKubtVHIo8qo5Bofzs2zLIrkzMMZjrUOrFoljYhwznT5kdcVQ6Vi8dxKHe7uQEusb%20A5S03L1/l9ks4IOg6xErK0MIjmETGdYR1+7RjffxvicEIUTBNCMqOyAkoTY1s8MZXdszsitoUWiE%200WjE5vYJDo/GHE47Wqdw0dJ7TRCLUkKM4+ISaghJgdSQdO5yU8qjnhW0SkQ3hTBDyJoxHz3OCFHF%20DEb0KLK2KI8Xkb6bkVKgGdRYE9k/eIRnyrWrz/DPvv4Vfvu3f4uXfv3aU/9UDluXYPQLrD/5k9vp%20j/7DH/Of//g77O9NGDTr+ADOBZRqUHYFFzRKGaxpECy9z29uVZJBu25GJNCMGmyj6VzLdHZE7CNr%20gy26Ykx/ODmkaixNU9H2HRsb6/gUGY1GrK0eYzab4VrHh3c+4szps2yfPMPDw5YPP9zB6gatGtpx%20xKgVtKxRmeP0rSWmASlU5YxFindqjkKOISHGLhwcCdlDWSmDFkjBoZQQ/JTejUECg4FGqYTzHcZa%20pmVjOFzRCFMmk/sY3bK+bplOd6lsYHWloqk0u48e0E4nbGxsoJUnhCNm3RRRA5zPWqEQHATHmdOb%20TA8e0Lb76ORw3QyUoWmGOJ8wxnDixAm0KPYeHnCwd8CoWkGJwXtP0wy5cuUKjw4OePjogMNpi0+W%20KBVJTAmenJVzHYWPAilvTfNtokJSoK7UAoxSmKFSQJLDRUesNJnOdgsgUhIxJUNOAO9z9JQ2cO7s%20SV76+lf5rW9/ixdeuM7mKbPshpZg9Heve3djeu3mW/zHP/ov/Pn/+Et27u9R2QHD0XH2jsDYVYQK%207wRjRzSDDFhH45Z6OEBrIalAFI+yEV0lnJvRzmYoBlg7QETw3hfzrPyg+BK9NBgOqfQA51w27dea%20qmoQXaNU1qjEoAgegtfEoImhJoUKSUOUDBAahCqPIZiSGZcN3VHz+J4cWpAv8nO6hUgm6GPsSRQP%20KDpEOURlZXFMnpiymE9rh+g2n0SkGb07om6ErePrrKw2HB4e8OjBQ5qm4eyZLcbjTzg8eJj1RG2L%209x5rcurIia0NXDdhfLTPbHpISpHKGIwxVFVFXdeokF+nvu3pOgfJUNlBkWFIzogTRUiCjwnvIj7m%20+G1UKgZxsXRCFCfFhEQpDwM56bfk8ClJhN4RvCOR+aG6EUL0ODfDWEFUIIYerROH411EIhcunOWb%203/rnfPvbv8GXnrvK9hPVEoSWYPT34JN+8iDdfPWHvPK917j56hv87P0PsOYUzXAzW2kky3gSaTsw%20dsRwtMbB0RhlTLYzFY8UMIqpp+97ghOQEtKeSSia4QpNVaNE89RTT5GSMBvPePjwIQd7hwvQImkq%20u1pGC8m7h6RJ0eYzlVCRokXJoABSBclCMsWjWudxU6VF0sc8/UPEIuhM0JfzhEQGGVQLklfTSCRG%20B7EnaY/Rjqg6hBbPjEEtTLpDNIlqUJHFwyMtAAAN3ElEQVSCZ9bPWButsH3yONPxffZ275UYJI8Q%20sVqw2rB98jjtZMJ0NqabTUkEtAjaCI2taCqLFmF8eJRtXrXF6JqQdKGgNRFTHCs1IWVf85QSqaRr%20hCJUnf//JQkSU3a6TAmrs++TFiHGSN86XHJUGJpG49wBiY4QPLbS1LWldzN6N6auDU9//gIvvHid%20b/3Gy3z5xjW2n1h2Qksw+ofslD5K6b9/98/43iuv8/1X3+a9D+7RzqaIbLC2eoKYanzQiG4IUdAm%20ny646HJCqV74uFE3w7ySD4EUIsYYhsMVhnWD1prxOEcXd7OeyWRCcB1aF35K1fRtTonVOgcLZsCp%20SMGQoiF4jVYNWg1RUhegmhvPW3yUT6V+hIVzgWARUShl8sfJ3U9iRpIZSL7B0sWhh+RIqssJq6qD%201BJlhjGRtp/m5JRKk2IOgVxfX+fE9jopTLl7938VQ7OIlnwjKMCJE8chepzrCN4Ro19YrzS2oqkt%20VmkePHjAZDJh0KzSNEM6F3E+opTJo5fK94WxJMJGeZx44r1fgJGI5HSWlBZ3wsF5rNY0VY21Fom5%20E0spoU0AmZDo6bqOrpuARNbXV3ju2lW+8tUX+Je/+TIXL51n66RagtASjH5xdbDHm3/wh//t+vdf%20fYPXbr7F7t4YLUN8MLSdEILFB40ydc5bRxFL0kxVNWirUMYUo/wiO0h8pkuZHI2zB06MSIkDUsVe%20KCVFCg1JbAYjKWNYnIdQGlK02YdHD1DSkKIiJb0ApBhNzmYvJmqLzgibU1PLyJiSy2Ak09IhZZ8e%20o4SER1JHkB4lpTNKLUE6gpui6yyi9MnTz6aYuuLyxUt87ulLPHr0MX/z7k842NsnxoBRCu97fDdj%20dX2dlUEDkkjB40NPcNlBs7aWqrI0Vc3h3j7j8RgxhsoOiQihZKKlEv2RSo5b1mvmUMZPj8ZzQNJS%20Ip1Kd7S2skLbzvC9QxvBSAawvu/xzLCqI6YObYRz587wwgtf5le/coMXXnye6y+eXwLQEoz+39ad%20j7r0yvd+wH/90z/j5qtv8vHHu2g1YjTapO0BMrmcxOIDOYerGKCZupi5qbnLZMA5h/c9MUZWR6Pc%20EaR87T/nkpxzOaXWjhDySCeicwcQ5rxRHscyGA1RymaDuDB/MA0xmfxgFkCMMWbiVrJcQUlVOqOQ%20OSNaYpqRpCfRYSUgKkDyROkhdUTpETqSKt5ONiIp0vYzUvRsnzrJizdu8Ny1X+EHr7/CO3/9Yx59%208oAQHNZaYvJMj45oBgNWhk22WU0J5zpc15OIWJWlB8ePrRNCYDKZcXg0IcZEZRvA0DmPsXXuhpDy%20awajhMr3zRE0gpRRVUraydyKt51OEElURjMYDKiMKhHfnkSHMT1XvniZa9e+xI0b13nhxRtc/vzx%20JQj9A5VZvgSfrZTipfyT828HAngfXj5/tpbf+92X+PVvfDX9+O2f8pevvsVf/Plr3Lr1M2I09C7H%20aWs9yh1K1MSYxXWCIfqeKHrR8SgitQGlDLPpwYLn0DofWibAGqGqLH3X54dLMgckOdiHhAYVijda%20V8SYhoTOVrJI8WEyIBqRlL8e4bGbpTKkmP+tEEg4hBZkhtAD2ZFAUgTxqOSIdFlRrnKXJCoSfY8L%20juR7bGWoDRwdPeS92+/wyf27TMf7+NDivUPplGOMTCbOQ3D5PCdlAaEPLv/EjCnfEwrUg4aEYjor%20t3MmolQkElE6EWM+3RABKfNXThhOpRMqcUyLrimW5JTE6prJhnMx0Ic9+j4wGo04++QpTj2xyTde%20/hov/urzfOVrX1wC0LIz+sdZN2++n/7q7Z/yb//df2Jn54B7O3tMpwklDcoMFoehk/YIH3tAMidR%20iFIteWuktV1wFEopJAou5HFG24q2m3tW6/LQzklsUwhtgxKbRzg0KeauSESB5O4JnU1CAik/5Jm6%20JolGYgYvRT6JEHqCtBC7PKqlHqMCIolEGeXo84pbB5yfIRLLwx+wVtMM6rwJU9B2YyZHRwXYPUop%20jFW4tsMYw2iYubMUPG3b4px7PMYSOXZsFWOydetkMqFrfekyczCntZaQYu74IPsIfYqo1/NOaJ7P%20NLeOSTlwwPUzkEhTaTY3j3Hp0gVu3LjB11/6GlefvcK5C6MlCC3B6JejProb0utv/Jjv/On3efPN%20n/DRhw84OuzyWQYJU+cASa0tVVVBEpwLxEiOVnY5b96qBltXSFI4H7KnT2UJqSR8JEVMCqImJoXE%20KvsuRQNiiieRIZVuQqERZT6z2ofHD23etllioIxsCcSXUa0npnyhLmGGVhGjEoEAKadeGJXAeFw3%20Rdnc7fUhX7KL1ph5dlrRMa2srCxW+9oIru2w1rIyHKE0RB+YzSYLwAII0WfZRMoOnUoZYkiEEEBp%20jDEgkkMsYz530VqTFEVT5QsPF0swQQEsfP6cBJ44fZJTp7Z4/rlf4dde+irXr1/nqcvLMWwJRr/k%209aNbe+kHN2/x2uu3+KtbP+HOnTtMZhN8DBhjaeohSlX0naPrAiEprNSIrql0ndfUPhKSzmcPRtP7%20DpTCKktSGny2gI19DgEY1qso0yAROhcggLIGIwoX0yI5V0SK/3UJdEzZ+1tJlbsocucDgURXwiBb%20JM6ygjmG7HJJAp0fZIreJqny55IdJDMYZlCc82GZmM8nNUgi+jyiLYh9kUWibUqZ0E/lgl5rQess%203CTlztLHsOgmQ8gjmqkyad33PT5kO9hBpZlOx4TQoZWiqiqOb67zzDNf4JkvXOab3/wG5588zdVn%20zy0BaAlG//Rqb583f/jGu9ff/vH/5C++/wo7Ozt8+OHHPHq4j+siomtGozWGg3XGRy1KapQ0+fwk%20aNJckKjBJZcdA2IOESQYRFVYVaN0TTv1WVqAxsfSUVmLVtk4rfOeJKmAScwxjlqhkgUx+D6BlOgi%20lRamZcRy/pBaBFc4lpLYq7LtLpL1VHyKg5l3H3Puxtam5MbHom+Ssj3Lgsr19XV86PG9w3uft4pS%20yGaVP08IjhDKxlH0IjobEYzWuNATvUN05oRCjGglVJVhevCI0cqAc6ef4PLnL/PFK1e4evUKX77x%20PJ97emsJQEsw+v+n7u649O7Pb/PGGz/krbdu8bOfvseHd3bYfXREiAlrNxAqFHUOSEyWmBTRJ3wM%201AOT5QJJ4YKQnCIkjRGL6JrGjDL3kxIu5NuzpLKwz8VAMxwQUoLoCBLQCEkJhnwyEfoEymAkjzcK%20j6eD2BNTh5E+W6qmQErl8l9S6ZwyV/S3wSh+iveZa5viojPSWlBlbNzb20PrzP0YqxdnKzF6Ysmh%20m+uujMkkfggB5zo67xjWDZ3viN7lMZJ8uLy6MmI0GvCtf/FrXHrqSZ5/7hrPXL3CmbMrSwBagtGy%20YuTSz9755Patt9/hzTdu8fPbd3j95lt0Pbg+EpLBmAqtsulbSolpN8VYi7UVWg1IUWVSOpWQQZ9P%20O0A9FvYVziXGDEyRVM49wmJkmhPhJINS9nG3QSCmPluspg6r81p/EWjwadApndL/CUT544/N/+fg%20klI2oEspZAU0kY2NDUJwOb7ZdYToMsltFForJKVFl+WcK3ybL19vFpPWjWVtbZXTZ7Z5+unLPP/8%20czx//RpPXbzAk+eX4LMEo2X9ncDpB69+cPvn733AG6//iLd+9Dbvv/8B+/uHdK0jJBitjYgBYhSC%20z4eeSmq0GqDEYs0guwjExyrjOecSU0LZpoCCL0BQwCGoolkSlCo2GkoBviRXZLHfZ8GI0gnxKeBJ%20i83UZzLZSnckxLL9ejx6PQ6VjEymB2g9H7viQiU+vyurjSUGR9e67CFNZDRa4+zZs2xvb/Hss1/k%20yQvnuHr1Ck9//jKXl15BSzBa1t+/7t8n3b//kHdv/5yfvvM3fPzxDj+89SMODifsPjrk6HCKdwqt%20GqxZQasKEYvrAyGkxwQxLDZQCZvvuNS8c0lQ1Mokky1dlUGJKYDg8wo/BiR1KOVzFBM87qpKpyKS%20O578m+x2mTmlx4CUYvjM340xj3YZnHLst9a5m0vErM72fcltiagUObm9zcWLF7l48SLnz5/n0qWL%20XLp0iZMnT/Dkk5u/X1f8m+W7ZwlGy/oF1/sfH6X7n+zy/nt3eO/2R3x45x4ff/QJ93b22N8bM512%20TCctfV8MxIhl1e0RsQyHG8SYbTtCLET0QrdkiSELKefnEznt1BU+KBvRz8HoM28iyarmEPwC/B5v%206x5v7yqT+awQXB7DQgAJiBG0lsW2rG40KytDNk9scv78WS5cuMD2iU2+cPlzbG9uce7cOS49tex6%20lmC0rH90492777nbu7uHfHL/EQ8f7rKzs8Mn9x9y7/5ddnZ22N19SNcGxkeO3gX6rqPtZwTXg6gc%208a0s0eecOIXOSu0USRLz6l48IU4fp89+GohEyqYrFAtWgPm4lrkiJYm6tlRW0zQ1o9GIjWNrbG0d%20Z2t7k9XVEWfOnmZz8xhnz57m9JlTHD+xyYnj6/9+daB+Z/mdXoLRsn6Jy/v08v17R9+ZTCZ0neP+%20vV32D6fsP9pl7/CA2XjCwXjC0f4RR5OW6dGU3kd855i2PaEPuBiyWFAcs24fkbDglIwxi3FQRGia%20Bmstg8GA1bURq6urrKysMBwOsVaxubXK2vqIra0tNjY2GI2y0+Pp01vfMEZ9d/kdW4LR8lVY1qLL%206lv+1eSIf+19Th/JKu3MH7XdAYhfbOnmB7/zjd32ybXfN1Z9d2mruqz/m/rflDjuA+MNcecAAAAA%20SUVORK5CYII=%22%20preserveAspectRatio=%22none%22%20height=%2236.641%22%20width=%2244.866%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "128852cf-a106-4333-a58a-27d39afc53ea",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 96,
                "y": 296
              }
            },
            {
              "id": "b74629e4-010c-4f92-a8f1-1d8ab3438765",
              "type": "basic.output",
              "data": {
                "name": "tic"
              },
              "position": {
                "x": 496,
                "y": 296
              }
            },
            {
              "id": "ec5088d0-ccc9-467d-8861-00b938157810",
              "type": "basic.input",
              "data": {
                "name": "start",
                "clock": false
              },
              "position": {
                "x": 96,
                "y": 360
              }
            },
            {
              "id": "ea220fef-742b-47b9-88c3-d3418b833492",
              "type": "basic.output",
              "data": {
                "name": "end"
              },
              "position": {
                "x": 496,
                "y": 416
              }
            },
            {
              "id": "2a2179f7-24e2-4be3-b71a-8872bd868548",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "15",
                "local": true
              },
              "position": {
                "x": 256,
                "y": 192
              }
            },
            {
              "id": "0835e826-7630-42a1-ac91-3947f939bc6a",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "24",
                "local": true
              },
              "position": {
                "x": 384,
                "y": 192
              }
            },
            {
              "id": "09dcf052-bbda-4c22-bfbf-5bddf05a6303",
              "type": "b66352ef9a0ae6f6a32cbe0bc76047ce8ca5b6ef",
              "position": {
                "x": 312,
                "y": 312
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "9059b710-eaab-4cdf-ae2f-7dc84565554d",
              "type": "basic.info",
              "data": {
                "info": "## NEOHeart: Temporización para el envío de una trama neopixel para un LED\n\nEl periodo de los bits es de 1.25us (15 tics de 12Mhz)  \nLa trama está formada por 24 bits (8 bits por cada color RGB)",
                "readonly": true
              },
              "position": {
                "x": -328,
                "y": -48
              },
              "size": {
                "width": 560,
                "height": 80
              }
            },
            {
              "id": "a8acc44c-9647-44fb-98e9-2245a0257e8d",
              "type": "basic.info",
              "data": {
                "info": "**Enviar los tics**  \n**de cada bit de la trama**",
                "readonly": true
              },
              "position": {
                "x": 496,
                "y": 256
              },
              "size": {
                "width": 224,
                "height": 56
              }
            },
            {
              "id": "ca93075e-1f3a-4590-9370-b3bdc8dcfe8f",
              "type": "basic.info",
              "data": {
                "info": "**Último tic**  \n**enviado**",
                "readonly": true
              },
              "position": {
                "x": 512,
                "y": 376
              },
              "size": {
                "width": 224,
                "height": 56
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "2a2179f7-24e2-4be3-b71a-8872bd868548",
                "port": "constant-out"
              },
              "target": {
                "block": "09dcf052-bbda-4c22-bfbf-5bddf05a6303",
                "port": "96ad1612-7936-4672-b660-9285d183f749"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "0835e826-7630-42a1-ac91-3947f939bc6a",
                "port": "constant-out"
              },
              "target": {
                "block": "09dcf052-bbda-4c22-bfbf-5bddf05a6303",
                "port": "1caece2e-e3d8-4102-af87-572c05b24e16"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "128852cf-a106-4333-a58a-27d39afc53ea",
                "port": "out"
              },
              "target": {
                "block": "09dcf052-bbda-4c22-bfbf-5bddf05a6303",
                "port": "2d69e282-542b-48cc-b0ec-dd419e06f97e"
              }
            },
            {
              "source": {
                "block": "09dcf052-bbda-4c22-bfbf-5bddf05a6303",
                "port": "7b7d1633-22fb-421b-9da7-6bb5c17f4c2a"
              },
              "target": {
                "block": "b74629e4-010c-4f92-a8f1-1d8ab3438765",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "09dcf052-bbda-4c22-bfbf-5bddf05a6303",
                "port": "7cfc535a-b3a4-4bf7-8f94-8759e822e67e"
              },
              "target": {
                "block": "ea220fef-742b-47b9-88c3-d3418b833492",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "ec5088d0-ccc9-467d-8861-00b938157810",
                "port": "out"
              },
              "target": {
                "block": "09dcf052-bbda-4c22-bfbf-5bddf05a6303",
                "port": "bcfe1e9b-4bb8-43c2-bbea-d82aeb7dce9d"
              }
            }
          ]
        }
      }
    },
    "b66352ef9a0ae6f6a32cbe0bc76047ce8ca5b6ef": {
      "package": {
        "name": "Heart-tics",
        "version": "0.1",
        "description": "Corazón  finito de tics. Emitir num tics cuando se recibe un tic de start",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22227.691%22%20height=%22159.585%22%20viewBox=%220%200%2060.243259%2042.223434%22%3E%3Cpath%20d=%22M30.137%2040.073c-.726-1.25-1.853-2.474-3.987-4.332-1.156-1.006-1.859-1.565-5.863-4.658-3.138-2.425-4.704-3.77-6.519-5.602-1.813-1.83-2.879-3.289-3.793-5.19a15.321%2015.321%200%200%201-1.236-3.6c-.316-1.545-.36-2.068-.358-4.342.002-2.984.1-3.48%201.08-5.47.729-1.479%201.282-2.257%202.433-3.427%201.119-1.135%201.845-1.65%203.415-2.427C17.053.162%2018.315-.065%2020.914.02c2.02.065%202.759.266%204.36%201.187%202.52%201.45%204.476%203.778%205.017%205.973.088.358.18.652.203.652.023%200%20.227-.42.453-.933.77-1.743%201.485-2.808%202.62-3.902%203.477-3.353%208.96-3.959%2013.392-1.482C48.769%202.527%2050.242%204%2051.383%205.94c.898%201.527%201.358%203.555%201.436%206.34.114%204.035-.624%206.832-2.589%209.811-.78%201.183-1.356%201.9-2.438%203.029-1.744%201.822-3.318%203.162-7.033%205.987-2.344%201.783-3.733%202.93-5.744%204.742-1.612%201.451-4.109%203.979-4.35%204.401-.104.185-.2.336-.21.336-.012%200-.154-.23-.318-.512z%22%20fill=%22red%22/%3E%3Ctext%20y=%2263.446%22%20x=%2264.25%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%2215.216%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22matrix(.99853%200%200%201.00147%20-42.66%20-45.386)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%22.282%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2263.446%22%20x=%2264.25%22%20font-weight=%22700%22%20font-size=%228.695%22%3Etics%3C/tspan%3E%3C/text%3E%3Cg%20transform=%22matrix(.79321%200%200%20.79321%20-31.345%20-28.118)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.79321%200%200%20.79321%20-68.009%20-28.118)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Ctext%20y=%2258.351%22%20x=%2280.998%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%2222.577%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22matrix(.99853%200%200%201.00147%20-42.66%20-45.386)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%22.419%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2258.351%22%20x=%2280.998%22%20font-weight=%22700%22%20font-size=%2212.901%22%3E#%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "2d69e282-542b-48cc-b0ec-dd419e06f97e",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 520,
                "y": 456
              }
            },
            {
              "id": "bcfe1e9b-4bb8-43c2-bbea-d82aeb7dce9d",
              "type": "basic.input",
              "data": {
                "name": "start",
                "clock": false
              },
              "position": {
                "x": 520,
                "y": 536
              }
            },
            {
              "id": "7b7d1633-22fb-421b-9da7-6bb5c17f4c2a",
              "type": "basic.output",
              "data": {
                "name": "tic"
              },
              "position": {
                "x": 1352,
                "y": 560
              }
            },
            {
              "id": "7cfc535a-b3a4-4bf7-8f94-8759e822e67e",
              "type": "basic.output",
              "data": {
                "name": "end"
              },
              "position": {
                "x": 1352,
                "y": 632
              }
            },
            {
              "id": "96ad1612-7936-4672-b660-9285d183f749",
              "type": "basic.constant",
              "data": {
                "name": "Tics",
                "value": "15",
                "local": false
              },
              "position": {
                "x": 952,
                "y": 376
              }
            },
            {
              "id": "1caece2e-e3d8-4102-af87-572c05b24e16",
              "type": "basic.constant",
              "data": {
                "name": "Num",
                "value": "24",
                "local": false
              },
              "position": {
                "x": 1152,
                "y": 376
              }
            },
            {
              "id": "f6388518-4c42-4573-8f49-63d43d444669",
              "type": "b959c256104d1064a5ef7b38632ffb6eed3b396f",
              "position": {
                "x": 720,
                "y": 520
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "eab6a459-411c-406b-9185-872a44f305e5",
              "type": "d585a59868290d4af219e92f887128dc4b7c8a51",
              "position": {
                "x": 952,
                "y": 520
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "a05b1ecb-b766-482a-9f49-bd698cec989f",
              "type": "d0fde25a657f5921d86a889c7f69e379c4d8e91e",
              "position": {
                "x": 1152,
                "y": 472
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "cd007087-7c8b-49b1-a5ba-b02fdd440737",
              "type": "35f267d0df6ffcb7fc33753bc9df9cf083642cca",
              "position": {
                "x": 952,
                "y": 616
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
                "block": "f6388518-4c42-4573-8f49-63d43d444669",
                "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
              },
              "target": {
                "block": "eab6a459-411c-406b-9185-872a44f305e5",
                "port": "2e992b62-97db-4d64-9620-3fe3310a9a5f"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "96ad1612-7936-4672-b660-9285d183f749",
                "port": "constant-out"
              },
              "target": {
                "block": "eab6a459-411c-406b-9185-872a44f305e5",
                "port": "136e8d6d-892a-4f14-8d6d-0c5bc6c3e844"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "a05b1ecb-b766-482a-9f49-bd698cec989f",
                "port": "cc17ff4d-1c27-4dc3-a14c-da730d54750e"
              },
              "target": {
                "block": "f6388518-4c42-4573-8f49-63d43d444669",
                "port": "86eb8c81-17fc-4371-bd21-51f429191f3c"
              },
              "vertices": [
                {
                  "x": 680,
                  "y": 704
                }
              ]
            },
            {
              "source": {
                "block": "eab6a459-411c-406b-9185-872a44f305e5",
                "port": "c138a610-b61f-4e7c-bb8a-c4f3b0b9f95c"
              },
              "target": {
                "block": "a05b1ecb-b766-482a-9f49-bd698cec989f",
                "port": "26aba23f-8567-4e9b-bd45-c26724030f33"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "cd007087-7c8b-49b1-a5ba-b02fdd440737",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "a05b1ecb-b766-482a-9f49-bd698cec989f",
                "port": "743b5299-2d89-4783-b7c9-12a5b36df406"
              },
              "vertices": [
                {
                  "x": 1088,
                  "y": 592
                }
              ]
            },
            {
              "source": {
                "block": "f6388518-4c42-4573-8f49-63d43d444669",
                "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
              },
              "target": {
                "block": "cd007087-7c8b-49b1-a5ba-b02fdd440737",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": [
                {
                  "x": 880,
                  "y": 600
                }
              ]
            },
            {
              "source": {
                "block": "1caece2e-e3d8-4102-af87-572c05b24e16",
                "port": "constant-out"
              },
              "target": {
                "block": "a05b1ecb-b766-482a-9f49-bd698cec989f",
                "port": "eb9f9c33-e717-43f0-98eb-dbd9c278fa8c"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "bcfe1e9b-4bb8-43c2-bbea-d82aeb7dce9d",
                "port": "out"
              },
              "target": {
                "block": "f6388518-4c42-4573-8f49-63d43d444669",
                "port": "3ae2d46d-7981-497a-899f-b60bfae0f43e"
              }
            },
            {
              "source": {
                "block": "2d69e282-542b-48cc-b0ec-dd419e06f97e",
                "port": "out"
              },
              "target": {
                "block": "f6388518-4c42-4573-8f49-63d43d444669",
                "port": "9f09a4af-8f7a-45c3-af7b-293a244e76d9"
              }
            },
            {
              "source": {
                "block": "2d69e282-542b-48cc-b0ec-dd419e06f97e",
                "port": "out"
              },
              "target": {
                "block": "eab6a459-411c-406b-9185-872a44f305e5",
                "port": "503869f1-ddfd-4d13-93ad-5f90281ba88c"
              }
            },
            {
              "source": {
                "block": "2d69e282-542b-48cc-b0ec-dd419e06f97e",
                "port": "out"
              },
              "target": {
                "block": "a05b1ecb-b766-482a-9f49-bd698cec989f",
                "port": "c90da543-4b9c-4f4c-a5fa-7e1166ee1dd3"
              }
            },
            {
              "source": {
                "block": "eab6a459-411c-406b-9185-872a44f305e5",
                "port": "c138a610-b61f-4e7c-bb8a-c4f3b0b9f95c"
              },
              "target": {
                "block": "7b7d1633-22fb-421b-9da7-6bb5c17f4c2a",
                "port": "in"
              },
              "vertices": [
                {
                  "x": 1120,
                  "y": 576
                }
              ]
            },
            {
              "source": {
                "block": "a05b1ecb-b766-482a-9f49-bd698cec989f",
                "port": "cc17ff4d-1c27-4dc3-a14c-da730d54750e"
              },
              "target": {
                "block": "7cfc535a-b3a4-4bf7-8f94-8759e822e67e",
                "port": "in"
              },
              "vertices": [
                {
                  "x": 1264,
                  "y": 664
                }
              ]
            }
          ]
        }
      }
    },
    "b959c256104d1064a5ef7b38632ffb6eed3b396f": {
      "package": {
        "name": "Biestable-Set-Reset",
        "version": "0.1",
        "description": "Biestable con entradas de Set y Reset síncronas, para poner y quitar notaficaciones de eventos",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20234.62951%20290.44458%22%20id=%22svg30%22%20width=%22234.63%22%20height=%22290.445%22%3E%3Cstyle%20id=%22style2%22%3E.st0%7Bdisplay:none%7D.st1%7Bfill:none;stroke:#303030;stroke-width:.7;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10%7D.st2%7Bfill:#303030%7D%3C/style%3E%3Cg%20id=%22layer1%22%20transform=%22translate(3.47%203.198)%22%3E%3Cpath%20class=%22st1%22%20d=%22M21.358%20145.947a63.75%2063.75%200%200%200%201.152%2011.049%22%20id=%22path9%22%20fill=%22none%22%20stroke=%22#303030%22%20stroke-width=%226.776%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20stroke-miterlimit=%2210%22/%3E%3Cpath%20class=%22st1%22%20d=%22M48.702%2092.116a64.784%2064.784%200%200%200-12.559%2011.68%2064.99%2064.99%200%200%200-12.69%2024.809%22%20id=%22path11%22%20fill=%22none%22%20stroke=%22#303030%22%20stroke-width=%226.776%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20stroke-miterlimit=%2210%22/%3E%3Cpath%20id=%22line17%22%20class=%22st1%22%20fill=%22none%22%20stroke=%22#303030%22%20stroke-width=%226.776%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20stroke-miterlimit=%2210%22%20d=%22M184.865%20207.591L41.298%20262.802%22/%3E%3Cpath%20id=%22path21-3%22%20d=%22M185.448%20175.07l.37.154c2.52.831%204.718%202.386%206.634%204.249%202.02%202.322%203.694%204.777%204.423%208.713%201.496%208.074-3.286%2016.05-10.95%2018.997l-1.06.408L41.298%20262.8l-.733.283c-8.003%203.077-17.551.461-21.82-6.975-3.3-5.748-2.736-12.198.418-21.613%203.155-9.414%202.86-21.856-1.644-33.55l.041.003-12.507-32.667c-12.88-33.415-.747-70.376%2027.41-90.31l-1.102-2.749c-3.685-9.583%201.14-20.438%2010.723-24.124%209.583-3.685%2020.439%201.14%2024.124%2010.723l1.654%203.239c34.881-3.556%2068.594%2015.855%2081.318%2049.33l15.24%2038.432c4.795%208.723%2011.831%2015.955%2021.028%2022.248z%22%20fill=%22#fff%22%20stroke=%22#303030%22%20stroke-width=%227%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20stroke-miterlimit=%2210%22/%3E%3Cpath%20d=%22M64.268%20268.838l45.015-17.115s7.963%2024.296-14.427%2030.38c-22.39%206.086-30.588-13.265-30.588-13.265z%22%20id=%22path826%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%227%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3Cg%20id=%22layer3%22%3E%3Crect%20id=%22rect845%22%20width=%22135.189%22%20height=%22135.189%22%20x=%2295.783%22%20y=%223.671%22%20ry=%2219.847%22%20fill=%22#55acee%22%20stroke=%22#303030%22%20stroke-width=%227%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20stroke-miterlimit=%2210%22/%3E%3C/g%3E%3Cg%20id=%22layer4%22%3E%3Cpath%20class=%22st2%22%20d=%22M172.724%2052.533V27.647h-9.888L144.047%2037.7l2.308%208.9%2014.833-8.076h.33v74.824H172.724V52.533z%22%20id=%22path7%22%20fill=%22#303030%22%20stroke-width=%2214.425%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9f09a4af-8f7a-45c3-af7b-293a244e76d9",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 200,
                "y": 64
              }
            },
            {
              "id": "3ae2d46d-7981-497a-899f-b60bfae0f43e",
              "type": "basic.input",
              "data": {
                "name": "set",
                "clock": false
              },
              "position": {
                "x": 200,
                "y": 152
              }
            },
            {
              "id": "1cb167a4-9e2a-416b-803e-da7b6151eaa5",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 720,
                "y": 152
              }
            },
            {
              "id": "86eb8c81-17fc-4371-bd21-51f429191f3c",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 200,
                "y": 232
              }
            },
            {
              "id": "bf12a800-db30-4289-a7c5-8c08438f9a39",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 464,
                "y": 0
              }
            },
            {
              "id": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
              "type": "basic.code",
              "data": {
                "code": "reg q = INI;\n\nalways @(posedge clk)\n  if (set)\n    q <= 1'b1;\n  else if (rst)\n    q<=1'b0;",
                "params": [
                  {
                    "name": "INI"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "set"
                    },
                    {
                      "name": "rst"
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
                "x": 400,
                "y": 120
              },
              "size": {
                "width": 224,
                "height": 128
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9f09a4af-8f7a-45c3-af7b-293a244e76d9",
                "port": "out"
              },
              "target": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "clk"
              },
              "vertices": [
                {
                  "x": 336,
                  "y": 104
                }
              ]
            },
            {
              "source": {
                "block": "3ae2d46d-7981-497a-899f-b60bfae0f43e",
                "port": "out"
              },
              "target": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "set"
              }
            },
            {
              "source": {
                "block": "86eb8c81-17fc-4371-bd21-51f429191f3c",
                "port": "out"
              },
              "target": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "rst"
              },
              "vertices": [
                {
                  "x": 344,
                  "y": 248
                }
              ]
            },
            {
              "source": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "q"
              },
              "target": {
                "block": "1cb167a4-9e2a-416b-803e-da7b6151eaa5",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "bf12a800-db30-4289-a7c5-8c08438f9a39",
                "port": "constant-out"
              },
              "target": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "INI"
              }
            }
          ]
        }
      }
    },
    "d585a59868290d4af219e92f887128dc4b7c8a51": {
      "package": {
        "name": "Corazon-tics",
        "version": "0.1",
        "description": "Corazón de bombeo de tics, cuyo periodo está especificado en tics también",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22197.514%22%20height=%22161.086%22%20viewBox=%220%200%2052.259014%2042.62059%22%3E%3Cpath%20d=%22M22.153%2040.47c-.727-1.25-1.853-2.474-3.987-4.332-1.156-1.006-1.86-1.565-5.863-4.658-3.138-2.425-4.704-3.77-6.519-5.601-1.813-1.831-2.88-3.29-3.794-5.191a15.321%2015.321%200%200%201-1.235-3.6c-.317-1.545-.36-2.067-.358-4.342.002-2.983.1-3.48%201.08-5.47.728-1.479%201.281-2.257%202.433-3.427C5.028%202.714%205.754%202.2%207.325%201.422%209.069.56%2010.33.333%2012.93.417c2.02.065%202.759.266%204.36%201.188%202.52%201.45%204.475%203.777%205.017%205.972.088.358.18.652.203.652.023%200%20.227-.42.453-.932.77-1.744%201.484-2.808%202.62-3.903C29.06.041%2034.542-.565%2038.974%201.912c1.81%201.012%203.283%202.485%204.425%204.424.898%201.527%201.358%203.555%201.436%206.34.113%204.035-.625%206.832-2.59%209.812-.779%201.182-1.355%201.899-2.437%203.028-1.745%201.823-3.318%203.162-7.033%205.988-2.344%201.782-3.734%202.929-5.745%204.74-1.611%201.452-4.108%203.98-4.349%204.402-.105.185-.2.336-.21.336-.012%200-.154-.23-.318-.512z%22%20fill=%22red%22/%3E%3Ctext%20y=%2263.446%22%20x=%2264.25%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%2215.216%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22matrix(.99853%200%200%201.00147%20-50.645%20-44.99)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%22.282%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2263.446%22%20x=%2264.25%22%20font-weight=%22700%22%20font-size=%228.695%22%3Etics%3C/tspan%3E%3C/text%3E%3Cg%20transform=%22matrix(.79321%200%200%20.79321%20-39.33%20-27.72)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "503869f1-ddfd-4d13-93ad-5f90281ba88c",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 112,
                "y": 72
              }
            },
            {
              "id": "c138a610-b61f-4e7c-bb8a-c4f3b0b9f95c",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 912,
                "y": 192
              }
            },
            {
              "id": "2e992b62-97db-4d64-9620-3fe3310a9a5f",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 112,
                "y": 304
              }
            },
            {
              "id": "136e8d6d-892a-4f14-8d6d-0c5bc6c3e844",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "15",
                "local": false
              },
              "position": {
                "x": 520,
                "y": -128
              }
            },
            {
              "id": "a70d9684-3b18-4f3d-90cd-28faa893b6b2",
              "type": "basic.code",
              "data": {
                "code": "\n\n//-- Los TICs son directamente el módulo del contador\nlocalparam M = TICS;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Cable de reset para el contador\nwire reset;\n\n//-- Registro del divisor\nreg [N-1:0] divcounter;\n\n\n//-- Contador con reset\nalways @(posedge clk)\n  if (reset)\n    divcounter <= 0;\n  else\n    divcounter <= divcounter + 1;\n\nwire ov;\nassign ov = (divcounter == M-1);\n\n//-- Comparador que resetea el contador cuando se alcanza el tope\nassign reset = ov | (ena == 0);\n\n//-- La salida es la señal de overflow\nassign o = ov;\n\n\n\n",
                "params": [
                  {
                    "name": "TICS"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "ena"
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
                "x": 296,
                "y": -8
              },
              "size": {
                "width": 544,
                "height": 456
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "a70d9684-3b18-4f3d-90cd-28faa893b6b2",
                "port": "o"
              },
              "target": {
                "block": "c138a610-b61f-4e7c-bb8a-c4f3b0b9f95c",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "503869f1-ddfd-4d13-93ad-5f90281ba88c",
                "port": "out"
              },
              "target": {
                "block": "a70d9684-3b18-4f3d-90cd-28faa893b6b2",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "136e8d6d-892a-4f14-8d6d-0c5bc6c3e844",
                "port": "constant-out"
              },
              "target": {
                "block": "a70d9684-3b18-4f3d-90cd-28faa893b6b2",
                "port": "TICS"
              }
            },
            {
              "source": {
                "block": "2e992b62-97db-4d64-9620-3fe3310a9a5f",
                "port": "out"
              },
              "target": {
                "block": "a70d9684-3b18-4f3d-90cd-28faa893b6b2",
                "port": "ena"
              }
            }
          ]
        }
      }
    },
    "d0fde25a657f5921d86a889c7f69e379c4d8e91e": {
      "package": {
        "name": "Contador-5bits-up-rst",
        "version": "0.1",
        "description": "Contador módulo M, ascendente, de 5 bits, con reset ",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22327.118%22%20height=%22304.435%22%20viewBox=%220%200%2086.549973%2080.548402%22%3E%3Cdefs%3E%3Cmarker%20id=%22a%22%20orient=%22auto%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M2.308%200l-3.46%202v-4z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22%20stroke=%22#00f%22%20stroke-width=%22.5332%22/%3E%3C/marker%3E%3C/defs%3E%3Cg%20transform=%22translate(-59.162%20-4.54)%22%3E%3Cpath%20d=%22M138.803%2048.49V16.91%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%222.806%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20marker-end=%22url(#a)%22/%3E%3Crect%20rx=%222.807%22%20ry=%222.807%22%20y=%225.289%22%20x=%2299.747%22%20height=%2247.849%22%20width=%2229.538%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%221.497%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20transform=%22scale(.94516%201.05802)%22%20y=%2240.921%22%20x=%22108.575%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%228.982%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%221.497%22%3E%3Ctspan%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2240.921%22%20x=%22108.575%22%20font-weight=%22700%22%20font-size=%2235.656%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M100.868%2030.283h27.764%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222.245%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20rx=%222.807%22%20ry=%222.807%22%20y=%225.289%22%20x=%2266.333%22%20height=%2247.849%22%20width=%2229.538%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%221.497%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20transform=%22scale(.94516%201.05802)%22%20y=%2240.921%22%20x=%2273.223%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%228.982%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%221.497%22%3E%3Ctspan%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2240.921%22%20x=%2273.223%22%20font-weight=%22700%22%20font-size=%2235.656%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M67.454%2030.283h27.764%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222.245%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Cg%20transform=%22matrix(1.00937%200%200%201.00937%20-27.38%20-4.42)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(1.00937%200%200%201.00937%2028.939%20-4.42)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c90da543-4b9c-4f4c-a5fa-7e1166ee1dd3",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 264,
                "y": 176
              }
            },
            {
              "id": "6c029178-38c2-43a1-bd73-4b5a6b932090",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[4:0]",
                "size": 5
              },
              "position": {
                "x": 800,
                "y": 200
              }
            },
            {
              "id": "743b5299-2d89-4783-b7c9-12a5b36df406",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 264,
                "y": 280
              }
            },
            {
              "id": "cc17ff4d-1c27-4dc3-a14c-da730d54750e",
              "type": "basic.output",
              "data": {
                "name": "ov"
              },
              "position": {
                "x": 800,
                "y": 352
              }
            },
            {
              "id": "26aba23f-8567-4e9b-bd45-c26724030f33",
              "type": "basic.input",
              "data": {
                "name": "cnt",
                "clock": false
              },
              "position": {
                "x": 264,
                "y": 376
              }
            },
            {
              "id": "eb9f9c33-e717-43f0-98eb-dbd9c278fa8c",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "32",
                "local": false
              },
              "position": {
                "x": 528,
                "y": 48
              }
            },
            {
              "id": "b35ae5de-a490-4f7b-9200-ac52cd3f333e",
              "type": "basic.info",
              "data": {
                "info": "**Parámetro**: Módulo del contador",
                "readonly": true
              },
              "position": {
                "x": 472,
                "y": 32
              },
              "size": {
                "width": 280,
                "height": 56
              }
            },
            {
              "id": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
              "type": "basic.code",
              "data": {
                "code": "//-- Numero de bits del contador\nlocalparam N = 5; \n\n//-- En contadores de N bits:\n//-- M = 2 ** N\n\n//-- Internamente usamos un bit mas\n//-- (N+1) bits\nreg [N:0] qi = 0;\n\nalways @(posedge clk)\n  if (rst | ov)\n    qi <= 2'b00;\n  else\n    if (cnt)\n      qi <= qi + 1;\n      \nassign q = qi;\n\n//-- Comprobar overflow\nassign ov = (qi == M);\n    ",
                "params": [
                  {
                    "name": "M"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "rst"
                    },
                    {
                      "name": "cnt"
                    }
                  ],
                  "out": [
                    {
                      "name": "q",
                      "range": "[4:0]",
                      "size": 5
                    },
                    {
                      "name": "ov"
                    }
                  ]
                }
              },
              "position": {
                "x": 408,
                "y": 160
              },
              "size": {
                "width": 336,
                "height": 296
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "743b5299-2d89-4783-b7c9-12a5b36df406",
                "port": "out"
              },
              "target": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "eb9f9c33-e717-43f0-98eb-dbd9c278fa8c",
                "port": "constant-out"
              },
              "target": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "M"
              }
            },
            {
              "source": {
                "block": "26aba23f-8567-4e9b-bd45-c26724030f33",
                "port": "out"
              },
              "target": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "cnt"
              }
            },
            {
              "source": {
                "block": "c90da543-4b9c-4f4c-a5fa-7e1166ee1dd3",
                "port": "out"
              },
              "target": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "ov"
              },
              "target": {
                "block": "cc17ff4d-1c27-4dc3-a14c-da730d54750e",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "q"
              },
              "target": {
                "block": "6c029178-38c2-43a1-bd73-4b5a6b932090",
                "port": "in"
              },
              "size": 5
            }
          ]
        }
      }
    },
    "35f267d0df6ffcb7fc33753bc9df9cf083642cca": {
      "package": {
        "name": "NOT",
        "version": "1.0.3",
        "description": "Puerta NOT",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22317.651%22%20height=%22194.058%22%20version=%221%22%3E%3Cpath%20d=%22M69.246%204l161.86%2093.027-161.86%2093.031V4z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20cx=%22253.352%22%20cy=%2296.736%22%20rx=%2221.393%22%20ry=%2221.893%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2097.49h65.262m205.796%200h38.48%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2281.112%22%20y=%22111.734%22%20transform=%22scale(.99532%201.0047)%22%20font-weight=%22400%22%20font-size=%2249.675%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2281.112%22%20y=%22111.734%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ENot%3C/tspan%3E%3C/text%3E%3C/svg%3E"
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
            },
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
        }
      }
    },
    "81613874c6152f06c06ed7014bf4235900cfcc30": {
      "package": {
        "name": "OR",
        "version": "1.0.1",
        "description": "Puerta OR",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20height=%22192.718%22%20width=%22383.697%22%20version=%221%22%3E%3Cpath%20d=%22M175.56%20188.718H84.527s30.345-42.538%2031.086-94.03c.743-51.49-31.821-90.294-31.821-90.294L176.109%204c46.445%201.948%20103.899%2053.44%20123.047%2093.678-32.601%2067.503-92.158%2089.79-123.596%2091.04z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2047.292h99.605M4.883%20145.168h100.981M298.57%2098.89h81.07%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2266.317%22%20y=%22121.28%22%20x=%22131.572%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20font-weight=%22700%22%20y=%22121.28%22%20x=%22131.572%22%3EOR%3C/tspan%3E%3C/text%3E%3C/svg%3E"
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
                "code": "//-- Puerta OR\n\n//-- module and (input wire a, input wire b,\n//--             output wire c);\n\nassign c = a | b;\n\n//-- endmodule",
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
        }
      }
    },
    "21cfcc19a4ad14c5fb5e8cfebd018ec356fe7542": {
      "package": {
        "name": "0",
        "version": "0.1",
        "description": "Un bit constante a 0",
        "author": "Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2233.563%22%20height=%2257.469%22%20viewBox=%220%200%2031.465601%2053.876499%22%3E%3Cpath%20d=%22M21.822%2032.843l4.092%208.992-3.772%209.727%204.181%201.31m-12.967-19.26s-1.091%208.253-2.585%208.919C9.278%2043.198%201%2049.389%201%2049.389l2.647%203.256%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-.863%22%20y=%2230.575%22%20transform=%22scale(.90756%201.10186)%22%20font-weight=%22400%22%20font-size=%2254.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22%3E%3Ctspan%20x=%22-.863%22%20y=%2230.575%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold%20Italic'%22%20font-style=%22italic%22%20font-weight=%22700%22%3Eo%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "3d584b0a-29eb-47af-8c43-c0822282ef05",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 512,
                "y": 160
              }
            },
            {
              "id": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
              "type": "basic.code",
              "data": {
                "code": "//-- Bit constante a 0\nassign q = 1'b0;\n\n",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 168,
                "y": 112
              },
              "size": {
                "width": 256,
                "height": 160
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
                "port": "q"
              },
              "target": {
                "block": "3d584b0a-29eb-47af-8c43-c0822282ef05",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "7292280c50b0eb1d3e838c26c03fed9d24d1ec1d": {
      "package": {
        "name": "NeoReg",
        "version": "0.1",
        "description": "Registro de desplazamiento para envio serie a los neopixels. El valor se introduce en formato RGB",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22302.751%22%20height=%22190.548%22%20viewBox=%220%200%2080.102776%2050.415879%22%3E%3Cg%20transform=%22translate(-57.226%20-63.445)%22%3E%3Cg%20transform=%22matrix(.79321%200%200%20.79321%20-10.782%2043.52)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.79321%200%200%20.79321%20-8.503%2016.683)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cimage%20y=%2265.244%22%20x=%2283.589%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASMAAAD5CAYAAABs8lPQAAAABmJLR0QA/wD/AP+gvaeTAAAACXBI%20WXMAAA7EAAAOxAGVKw4bAAAAB3RJTUUH4gkeCwUT3xIIjgAAABl0RVh0Q29tbWVudABDcmVhdGVk%20IHdpdGggR0lNUFeBDhcAACAASURBVHja7L3ZkyTZdeb3u/f6GntkRu5VWVVZ1V3VW3V1N0ACBEiC%20JIAxDjQSSTNSNmN8GMqkpukvAB+pN9CkfwCUSQ8c44wZJM0MR0abAdggFgINdHd1V++1dO25L5Gx%20uodv9149eGQtDQwH1GwEkKcsKqI8IrIiPdw/P+f7vnOusNZyHMfxHwpjzZoU8vbHt0fp6GtVv/57%20x3voOP5jwzneBcfxk4QU8nZhi887wnnlaFtm0peRxRrAMN21eZ7jCIlSCkd5bzrSfwVACHW7/Bnq%20NkLeFvwoqP0tMLhWmMHXCp2+FLiL4vib+NkNcZwZ/XRHSv7yiPQrBUW7QfVPKrh/dLTdRb0if8yJ%20b6xZG6aDr42TyUtxPCZJc4wtGEUTkiQmmiQYUyCUS6EzitzgORKsJk9SomhEZ26WzkwbRwmklCTx%20mEajgUSglIunHJRS5U04CCHAyvKgExIpJZSvBsrtSgksGms1CI0QFkuBMQWF0WAVRoAQCikcpJQI%20oVDSQSmXdnXhGKyOweg4/pOVQ9i1iPQrMfnveqg3HdTtAr3mIG7XCX/PYNcGTL7m47wCkj7xl1MK%20DAUKl8JmJHFKHI1IxwlZEhONYtLxmEG3j7CGrND0+4ccHPYZjQekWYG1mvubWzQaNVozs8zNzdKe%206ZAXKYWBVqMGWcag10ObnKeeOs/qiWW0LqgEIb7nMBqNUMIiUDhldoTjOLjSQUqHalhDCIFAIUQJ%20JMADkLJotM7Ji4SiSDA2R+scbVK0NaRpjkFiTPk2JV0cx0UKD5CcWj1Np3HiGJCOy7Tj+I+NmPwr%20fSZfzjEUaEC8VGBeyimwFC+ZcWLj8YRoEpMb/VKSpQzjiDiZoK1le3OTLMvIkpQ8zUjGEYPDHsP+%20gCJOmGu2qfoBWmt6/T7D4ZAkz0iShGgSY4xh+cQKynexCrqDPr1BH8/zOHf2DDONGsOoRxyPOZWs%20YKWhKDKiJCXLHXKTYoTEd3wczyH0XYKggud5KOnSqDYRVk7BSAACIRTWCBCGLEsodEqWQZoVZHmG%20tjlG5xQ6Q5uCXFuKQqMLi5yCXJFb0jSnKArSldSuzJ09BqRjMDqO/z+Z0FbWuxXlCdoXDJMx3VGP%20w2jAKBkTZTHjZIJNNJOdHiI3IARGCYajEbsH+wzjMdpaAs9Da40nHXzHZTIas7+7RxxFBChm203C%20akC1WqWzOIfrukhHsbO3y807t7l69SryYJf93gHCUbiuS1bkLC0tcc45S6UW4lc8klxhlUW6FsdC%20oQvyNKFWqeK6LtWwSrVapRbWCIIATwUoHIyxCOs8BkZlYiQARb1WQ1uXovAotEtWeCSJQ5Iq0lwx%20iRMcY8lSgXYsQkisscTxhOFwzM72HtevX6dRf9O227O0mrO0WjOcXDxxVsq/C091HMdg9HMUO4zs%20sEjZjw7Z7O9xEPVZ39+mO+6yc7DP4bBLmmUgLUqCbxTzsslM2GBmYY52s4mXhGRVCyMPK+Cw30cC%20buAiXI/cSMYiJREZrheycGaRU0srrCwuMdNqszi/hOd5fHD1Q77/2g+JkxhtLQf9Q9Ikp1qtAjAp%20UuIkYvcgRyhozdbxPIc4HqOLnFpYIazWqYYVAtcnDKtUwgaBF6KEA0gMAk/6iCk/xIP7aaWGxZIj%20hYfnSlzXwbMOjnKR0kE5CeN4MuWTDEiDVJI8L0iyiOG4z3g84c47b9Pt9mi3ZlheXqVWq+G5wa3A%208zl35izznQWeeOLJP/Q8/0+Pj8JjzujnLnrkl4dMXpJYYmL2ogF3ejvc7G5yu7vF7cMtdkYHBO0a%20uU6Io4jJaICnYbZeZ6kzy3zQ5FSwzInOUpmxmIxUZ2zsbnJj/S6jyZjeaIgQkv5hjzzOELmlt9Ol%20Kn1efPppfu+/+RImnjBTazDfnCUdTtjb2WcwGpJqw/ruDt95/QfsHB4QpQlZljHbatOo1/GFpB36%20fOHXPscvf+azROMhJs1pVCroNGO+M89Mo4PvVgj8Okp6WDyskWU5JSTib8kPwWCn92AQ0/vCZuR5%20Tm4mdAe79IeH5HlKpjOyLEMIwWFvxK1bdzk4GPHBB9dIJhmu6+PIkkAfjQekk4yaqjHT6HDu3DnO%20nj1Hp9NhcXGZkydOsbB0rNQdZ0Y/wzHSydcOVfq7SckH8fbm+2wOdvho/TY3dzc50DFFRWErEl0L%202Rh2CUKHRrXG3HKLthfSqdeZr9VpqxrV1McJJDgGZQUuCr/hYbycrZ1t+tEIoVzGyRid5niFQDua%20oF6hMlNlp79Df3sHPUrwComOUnRSIJRDLsG4LoUpsErg10JIJYnO8POUmdk2T5w7x5NPPcnMTIs8%20S5hECUVW0Kg0addnCd0qrlPBEQESH20kGPXjEqFHLodHT0qMzkGUPBKifIMUCiVdLJJqpUlhCsbj%20PrnJcT1JrguSfEyuJ+x2N0nyCaNJRDHU+K5LUeR0u/t40ucg2qFb3Wdnd4tvfetbpGnK8vIKFy9e%20YmVlxS4tLbHQmeWppy/QnCmVOV3EX8HqNeUee6mOweinmIweK373gAnv37/JO9s3eHP3On0mRGlC%206hc4oUdQ8ZESiiLn9OwcM7Ua840WrSCk7Yc0vZBASnyjUBMBWmMBVFm+1Zo1KrUK8SQqlSohUEph%20pQYsSgiKLGfUH7CxscF4/wAzTvFygZgUYARWSMZ5Si+O2dnaJEET1KsEnoOrHE6dPMGvffbTLLTb%20nD59ijRLmEwmuK5Lvd6k0+ogcAn8Kkr5CNwpOS3Kz3pED/0ESbi1FmtBCErpHnCURChLRTYQCrTW%205CZHOS7RZIw2OY4rWJibQVrY3xuwvb3LaDAgyzKM1jRnGmhVYNKMVqPCiy98grm5BUAShiH1WoNh%2075D1O7e4/MYPOXX6pH3qqadYWlqg2pj/AtasIY55p2Mw+imJ1GQv+9L70wLz+Vv5zpffuX+DK7ev%20cXXjLjcnuxzOwMTTSEfgS4dW1aPZqNP0QnwEy+0ODc+n5XoEKFxrcQ2QG8gNgeuRFgnCyKkHx1Kr%20V1leXmZ5e5n94QBtDHnuI7XAFZY8s6RZwv3NDQ62NgmMZTZo0A5qpUFRgDaGNE0ZDAYopQhcFyEE%20xhg0OVJBs1mnVg/xfMngoI8xmmq1RbPRpjO7SDbJcVQwPaQepkFC2gdENf+BQqj0Iqmp14gpKEmE%20AIWLp3ycSossnaB1Co4mzSIcaWm2qqyurvKDVy+zs7ODJceiqVQD3FyRRDE20ZxcPskv/dKn+exn%20P0sYVhgOxjiOR7PewBjDe++/w/e+812+/dffoFKpsHrqJJ/5zKf/6uILl5idmceiel5Q/yPlHHNO%20x2D09zYTyr4ykpMvD/T+V2/vbvDmrQ+4cvca9/q7DG3OqGJIqz6iFlJzfOrSoxPUONmY5UR9hrYb%200lYBNengC4XSFqENCItFU4gCRzk4Xqk+pTanMDle6LOyssKzecrtzfv0BkPyfI8oTjCOxa/5qMyQ%20FimecrHKQ/ouVgpyXZAbixQOXuBTbzVpCc1YJyQ6x3UVYeAxmUTc+Og60Xyb1eUFPM+l2WwSOiFS%20ergE+GEdUOVtCiTW6hJg5FFqJP89fNG0kpMSa+0DHxFWgJimU9bBGgdXKSphgzSPSIoReZ4gHU21%204pKkQ1zf8MKl54iihCuX32U4HFOv1lBG8tIvXuKzv/hpXnjhJYwx7O93KYqMg/0dXv/BXbKs5Kes%20yalWfA4OdnnnnTd44/VXeeKJJ/jEJz/NE+cvtJ9++umvNtrza4PD/S8PRyNc16fRaPfqrc7M8Zlw%20DEb/1YFoPd/98ub+Du/fvcpr773F9d37TDyL26lTrdfB0VQaIc3ZGU7MzrMYNphzKsx5VTqqShOX%20oJBUpYsvHdSR7G0FRVGQFSmTIib3AgqjGWcxpgCbW6peyJnV06w+scbGzjbXPrzKnVu3iPb7SClQ%20DuSJZmJAGYl1HGrtFlXp4yBRrkduDbXxiOGthO7ekNFkRLvZYm6hQ6NWpz/sYbMxd+/dYqmzROg1%20aDRa1MI6GonEKf1Cj6Q/QohpZmQ/Bjzyb82OStn/KFMSWCuwGKR1kUDohUy8kGhyQJpNgAIhC3a3%20d/EDwYsXnyPw61hteO/dq0grqQc1Xnj+WdozDUbj0mO1ubHF4eEhd2/d5f3332ftzBl6vR7Xr19n%20tj1Du92kXq2g0wlbG+v8i+s3OHXmNOfPn2dufvHLAHmuEUhc128/++yzdmX1JPPLpc/JWrMmjku7%20YzD6LxX3sz17a/sOd7bu8o3vf5OJ1PSyMbFNSK3FVRXasw3OzM4w02zRDOvMVuq0nIC2qjDn1pgT%20DRoEOMri46BwsFhAYVGkTkHGhDgbg2OI0oSqE1M3Kb1igs4SWpUGtcYstVadoOIiPM1NeY1sNCYv%20DFpnVNwOEFBfnOeZiy9ydnGV0PXIsoxhHPFX3/sOWgmMA0Za4iwm1TlGWKIkQhaW+/fvEjoh3myV%20WrVBw5shywzSkTg4j4CRRUg9ffRxEDIf24uPy/2PgdEDMsnFdRTaJijp4vs+pRJsSiLb5DRbFQ66%20e3zw4RXm506ysrJM76DHrY/uYrKcfv+Q7c0NfNdFa83dO/fZ2dmhUa/zwgvP0D8cIIXBdSzLi7Oc%20OXOGwFNMohiJ4cRih1F3j/feHHDh6Wd44YUXaNSbrK9vcv2j69y8/gFra2tcvHjJnn3iHI35M8cK%203TEY/eeP3axv+9GQ25s3+eG7b3Dl6ttkjoaqS7VVoVFrE3aatBbnaMy1aXpVllSLjlcvgUP61PGp%20UfJDEgjwkUgsgsJaEAqJgwdoQlpeHQmMwjGRn5BJizveo4gP8B2H3e4G1F1m5lssnVmiO9qme5Cg%200wQtQLg+o0HObjRgLxpQHfXI44StzU3Wt7e4/P473N64i1f1qbWb6DwjymJSUyPAZTSOieOYIAgI%20wxAppx4ibVCe+zGCWjwCPAUWOyW25SOZkvgR8vox/ujB4ylQWYnRIB2J6/pIKXF9hwCXtACpDNVq%20SPfwgEF/gtWKzc1Nut0un3jhRaIo4v69O8SjMa7rYoyh3ghpt+rUagGOFBRFgqssc/Ntnn3mPIGv%20uHPnDgd7Oxzs9jl7do2XXvoE588/RaPRIMs1J5Y6zDbr7O8fMIpHvPPWDznc32Rtbd3OL85TrdUg%20nPtDxDHPdAxG/ylBKI0tjuHVN37I5XfepDs+YPNgk9pck3pVUZltMLs8R6PTxqmGKF8hXYeG8Xna%20XWBe1KhSI8CjLMYEDiXoPJSdJA4Si8RMT18XD2EyjC1oiCahqDChgKrEdUL2zYDYTTiMR+yN9uiP%20u2i/IA8zJnaMqDps9buIRDK6F5HnKT/IBYP9LlbDxtYm1U6TxvwsVlqEo8jHBYnOqdRrCJ0jZak8%20BUFAs9kCBDkF1bD2EHceq9RKvsugp08XYMueNPFAXhMPQEiIj5VvlscAKU8zXN8HCvI8J6hWqOoK%20h8NtdvZ3GA4i9g/7mEwxnqTsbvXY29vDdV0AsiwpzZoYut19XNelVqtx8flnCDyfXrfLYXebmXaD%20T3/qk5w6scLtm9epVwNuDw55+smzvPT8BS498wRe4JLGY5RyaFdDAlfSbp4qhYw0ZTAc8s6br9Fs%201VlbW2Nlde2rTmvtlWNF7hiM/k5hjFn7ce0DBtbWu9tcufIG//Iv/m/ubdzj5JllWnNN6o0qJ9ZW%208VoVqo0qKnBLoNEOFb/CrKpz0pmhTRUfH4mLxVKYMkOwQj3WwY4tuVsFyOlJKa2HsB6F1WgV4Kgc%20EGi3/BmJyBhEI0aHfbr9LpnIcZsekRAU4xFuWKfi1MlHEzZHh3iJpkhTXOlifAejBEsrJ9nc3qDX%207zHTatFsNvE8j7WVU5ybX6BdrSNQJJMM69lpafYxABGAtdip4mexWGuRyJLZxj4isP3klYxSCjAY%20LFKWnf8WSLKcKI5J8wzpKPLM0u31GAxH1JoNlHWJ45iNjQ2SSYQ2Gt/3yfKUza37bG1tcOH8E2xu%203kMITZpGvPba9zk8OMtg2MXYjNXVZV584SKrJxbxHIHNU3RRgHURKKTRGGtwXZegVqUSOESTCXmR%20sX7/Dtvb25x5YnCr1uhQnVn8Q9RxlnQMRj9B/DggiovsK3/x/Ve+/NG9W1x5603ub96nWq9wcnWF%20sxfOUmnV8BohKnRxPQ9hBUpDxQ2Z8zsshLPUbZPAhkipMEgKLFoenb/qQeEibClAqVJMe7CN6c1B%204VhwrYMSCqEkCoc00ER5RNUN8JWH63t4QQXHRhRRAYWHo0MmacIwi5nxq4Sui7SSltMmqFbwgwDp%20ODiehxKC/f19RFrg5gW//RtfJB8nSK0wpvzMR2BirEEJ+VhGUypqAivKx8YclV8PMyGL5d+r+X9s%20s1RMwajATN9ZWMskL4iTnMFowmgU4xCiXB8hxhijsSYjjmPQBcJotNZIYVFKMR6PefUH3+P6tfeJ%20xyPq9TrLKwvMdlpUKj6gMTrj0vPP8txzz1ANQ4yALM+n1gOB65TTAxDTnjthcNwQx/NI0glxPGY0%206vPOW2+wsrzKydPjrzYa7a/ihW8i/VdwK390fNYdg9FPFG9f/9C+/vZlXrn8PQ7HA4os4dOf+RQX%20LjzB3GKHZqeJdQX7/QPILQaNIxUVr8Ks22bBbzNHG4lLjkJOyy+DnOLLj+YHR4r2x4Ho0Zu0ECoP%20IytlhiAyJvV5zi6sEdmYdC9jNIxAuDgzs+iuoJCg6j5VGbLYWkCmhnQ4xgsDCmu4f/8+w9GQZr2O%20yQocq5htzeI5PkVu0dqiRNlEq5RCo8EWSKseU8msPcqIpmqYZaqMmeksoynJLX7yzMiYAqmKaeGn%20KYwlLwwWifJCxpMuFodaowU2YdCNmcQjijRjqIc0l1aoBB7D4ZDRaECjXuHEiRNkecxh/xCBoWI8%202q0Wo3GP23fG5MWEpaU5PvmLn6DWqGOtwBiB9DyCIMANQgInRLoeUkqyPEfrsn+uphTaFuRpSpZl%20DAZj9vc22d/bZKYzx6kzZ19qLp0uL3ym+Dzy4eC6YzA6jsfi1s6Gffvtt7n85pvc2rxLJDOUK5lp%20zXD69ClOrq4QBB4WmEwmeF6AFqCES9WrMFtrM1dt05CNsmtdOGRCIqbtonYKQ0dskZ2WZEeOHFGe%20vw9LmqMX6em9Kcu4UDoYAhpUaIk6C9UFTs2N6ScjdntdilTiqJBkygUtriwyFzapW5/u+g7d3iGN%20SpXZmQ7GGCZxTDqKmKk2OLNykl947hJLnQ5KOORGURhLURiMMdMPbKYA9HCA2tG2o8NMTEu3h6TS%200WvF44XwY+ra40WyFXpa9Bm0MWS6QFuBH1Rptjuo7UOEFGS5ZRQlWCmo1Stot8BzfJ57/hKVIGR3%20d5vbN28wHB2ipMUUKfVqFUdZwlpIpeazu7eJtHDp0iUuXLhAvVnDKAclPXw/xA/rD0DIVyFyyksZ%20WwKsVAIo/V1ZEpMlE1rNJtFwRK/Xo9/dIRoN6exs/e7yiVO2uvDkWRP3LstK+xPHYHQcDyLVxcuv%20v3vlq9/73vd45/33iKIIVfWoNes4FUUl9Dg8PGB702f19AmsViRJgvUcEApXuVSDBjP1WWb8kiWS%20CCR+CThHHAjiAS8ksGAeMraPgpB98G9ZgpSABz2lFlyjCKXLDA2GNqJiAzr+PKvzZxnmGXbXYxxP%20CGsuFbfKysIJGtalf2+Hzc11+tsHML9IJaxx8alnSEYRt298xLmFVU4tLuNagS9d2vUZelmfyShm%20PIpJwoRarVH+HgKwZgpCcjpEbdpnZkvOCGEf+IiOnv87MHkoKcrJjxRoayi0xiBw/Ar1xgyN5gy3%20bt5j1N1GWRfX8YgnGZV6jU+++Ekq1SoYWFhYojM3w3h4yGQyZnPjLr4rcZRA6wyL4eSpk3RmZrn0%20/HPMzy0SpynN1gxBpUG10sAPKijpg3CAskTjyOApRHnF0AXC5PiVOpiEtNel06qysjzPzu4+d+9v%20cuP6Ad1ul8Wl7q2FxRP4jv8V6f18lm3HYPSxuL5x17515Qpvvn2F7d0dcBS1VpPEZoyTMTYtELrB%20ZDikXqtw5uwpCsDzPCbGIKRAOR6eF+C5IS4hzlQve8B9WFAWpDEPkwH7SCYhDUKCFRYjy0TITDMG%20gcCTJbQ9KNm0wBOSivBpijp1UaeuUk52TuFWQ4Jqkzsb94nlBJMWpGlKdzRkd2uLJJ4gLBRZzsb6%20OoudOUInoF2t0wqrkBn6e4eoxHCw2iPLMrCSPM+J45i0MsGRVQQSSzHlvsyUmlZTDm4q20/BdgpT%2002xP8KOTI8yP+WbKjCgnZ5KX43GzrCAvNIW2FBb8sMrC/ApKHzAeTihyzWSSUg3KVpH/68//H7rd%20HpXQ48knz3HyxCIXLjyNFJr93S0qlYBonDEcDlldPcHTF56iUq/georVhVXcYB6v0sD1wvLUsQqE%20R+k6PwIhsNZQGFuqhp7CQQABTuDAoIvOY+Y6LRqNBgeHA7Z3Drjy5hs8fbGg2u9/eXZ25eVw9ufP%20za3++I//+BiBpvHddy7bV1//IW+99y5ROkH5LrnOEJ6i2WmxfXjA1t4eRpRlQrvTprM4zygZo0IP%205Tn4QUA1qNMIajTcKqH08FAoKxDaIk3Z5qEMZZlip7XXo60PR1KaACsMPCxOHpR48qiGe2DZkaSy%20wCJJyYnTCdJ3qNUa4Egmk4TBcMjB/j7JOGZ/a4fe3j6+6+E5PkoqOrNzCCnAQLvRwhWCyThCaEM0%20HmMxCCzVapXAd3GUg+soPFchUVhRupGFlNPu+yMZX05HiFiEsIjy6SmB/TDrEw+KUzGlpx8kfxg0%20lpTEjBhNBoySAVE6JpqMGY1GRFFMNIr43K98jlMnT3Prxkfsb+/huR7VsEK90uTk6hmKLOegu8/u%207hZxNOTkyUXieMjO9jpZNmFpeYl2u82p02s89cxFatUmYbXJbGcV6TZxvRbgk+WWogDHCUswEhJt%20pmXodNKAlOUgOYNE6HLf4bg4lQZeUMVYKHKN63q0my2uvvcek9EIdBF6wv6xX2/9L8eZ0c9ZbPQP%207atvvsFffv0vyY0mqPg4VY/RaEhCzonFBdaeehI722b7h6+y2R9z6YVT3NzfQ939iNNrq+T5BFEI%20aqr0TzfDCqFy8cprIqKYSmSPJgEPKJMjSU0+4tMpZ/ooK1DW4giDEAr9gG+S5cV5+vOMKP9ypaAl%20AmYIsFmOciRqnHK4vk0aT8jjiC45nhG4jSpplJPkEzrNgH46phhoov6YuD/k9PIJlKeIdMKd9dus%20rq0w26lRMKEfjcnymErdpUpIToFPgBE5whiEVUhblpVYMMYivSnIluL8FGKn/Ww80jRiQGPR0mAR%20aDSGBEuPUbLHOItI84hJMiJNJmAKbJazfe8eP5ikHB4MqPiKLIlwfcHNmzeRxuGzn/k1/oeX/ydG%20/X22Nu/QmW0wGu7RO9wiDEpSvt1u8+wzz7NyYg3HbVNrdqhVZ8CpTseilIqZ64YPS+gHPqlHWlmm%20v1dpaQArXRAeQtXAgHULKqqO57UYdw8Y9Q74xIU1RsMh19/4a65ecbn4iU/b008/A+HPx0IDP5dg%20ZAr9eemoVwC+f+Ute/ndt/nw1jX8aoVBb5/+4YhRPGJnb5fZ+Q5rrfN4tQrGcRjGE86trbK0eorr%20N97nm9/7Hr/qf5Znn32aIs1QroOUoCR4KDBlJoA2Ja9wBEKPcLfaQsFRtlDORSx92A+dysKU56x6%20mDuVWYN4+FhK9XCSorUUSUZmE3SSIYwlixNwPQIVoLOEOE8hz8nTiP2+xaQFVT+EVCMLQ1bkyGqN%20tCgNj66r0CYnyxOkBW1zJtmEiYlw8HCkV5ajknLWtZl+OAlSCigMCA1TSd9KiRUPmaMHDbLCTPeD%20mDJEBk0GFGgKtM1QjsBxHNJJQq/bZzweM9fp0D/skY4Tunv7jIcRF158hkvPzdJqdhCO4oevvYoU%20hsA1XL12n97BFnmW4LiSM2unOHHiBPMLK7RmFqjX5qhWZ3H9JuBh9REH9sg3IMzjbvHHGoIfWh0s%20Ci3E1CNlEbbAURLHswRhFZtFkFmqbh2dzbC1e8B7b77KrTs3OXHuvH3y4me+IH7G1bafKzA6MjNK%20R72y3e3a965+yKuXX2f7YIdJkeGGAf3hgO6gz37/gN29XbrxEDyH1957h639Q/aufYggZWm5w8rq%20Sfpxl92Dfc7kaXmyOpIcgxWUpcsD8vYhFh1p9kdcUGY1hS5QSiGwKCxSWBwhyomHgocc0YO3m7Lp%20VYIWTIe2ahJyYlmUN1MwoUAFDu12k8PxEB1nJMMxxeEYaSQ1L4Cwgk4KlJRobXGlxHEkRZYTuB6h%2057D8RIdOe55QVaEo66wiM4wHY0Qu8Z0Qd9Yv5w9Rjv0oy0qLPPrFjVMeckogpyXaI7uDwkwNDxIc%20ceTdzkEnaBMzjA6J4hHRJMJaTTIp2NvtcffuOnmeU6vU0YXCdQN0IXjpxV/gC5//TaSVRFHM8tIJ%208mKBwHc42L3PtavvsL9zn6WFDp3Zec6dfZKVlVXm5xdpNmcIgyaeWwEUxpoHGZx4oG4+Mscb84ir%203PCwz45HCk6JmhJ9Ujol7w0E9SqKFtv3D/EVdObmCWtNDkYxO4d9em+/w/Ze96/OPfEMJ86cF8dg%209DMQR2bGKx9dt+99+AE3bt/i1p2bHBx26Q4P2djZZpxGGClwAhevGjJOJrx77X0MgrDa4KXf+A2y%20PObmnZv84tJLNGdn+Oj+XZbXTrK0tIRnDanVpMZilChJaGNQaroUjyivnuUhKynQ5EVBrjNc4SCm%20pLUSYkpYM20MsQ/bJew0ncIijEBIgxGGDE1EQkRCqnI0GtdTzM+0efLUGfr7PVRoGMWa1PVxtcIR%20LpWgilUaYQSuUPhIbJqjs5yqH3Lx/FN89hc+xeHe/gNay5EKR0jSJEfaCOtbRuMRvh8SuAIHA7Jc%20+cNhunaa85g5HQAAIABJREFUUh8D1AdJHBaLlEeZU0lVF2hyPSFNY7IiYRIn5IUBq0owM4o0KUEJ%20BEYrTiydZNgfMR7d4NJzZ4jjhG+98tes39+kXm/ywovPce70CYxJWFhYoEjGSKFYWFhiefkEc50l%206vUGQRDiuB5IhbGQZxrXdR6S88I+wmj9ePXvYXZUqojOgwJVlZyYdMC1iDDEo6DVmSUZD8iyFOko%20ZlpthBtwMIjY39zEEQ57O1v2wtPP9SrNzszP2lSAnyswSq19+fVb17/63b/5Nrdv32Z3b5utra1y%20RIfJSxNbxaMfj7FSUK3WGU1GpFZz+vQaX/rNf8TZs2f5f//yL/jg2nscDHqce+o8Vz/6kNsb96nN%20zFCttdBSkWNK1kdCocvRhYXN0QKmAj1mat7TtiA3GmXV9CAvAUvz0H+kkVO7pEDYRzT/qcZfEryG%20lJyJycgpEFbjG5j1q6jZRdZrMwTapZJIUgKSfsxoMEZoUEKhC10a93RBMhiTFWPqMuDi2ac4sbBC%20d6tLnufl/+dYjJBkadknprWlsIZKpUa9kuFPh/ELpTA4uFiUFEgrp8T89JS1Bms1mgJHSiw5hU0p%20bEqeJyR5wiSNyXXGJE3IjcVYRZFnjMcT0rTAakGe5wyzMa4I0QXkuSVNcsajCbVqi8VFy/r6Ot/4%20xjf4ps2ZmakxO1OjFnicO/ckv/qrn8NzA+r1JmFQx3MrCBUALlK4SHnECz3qPOVBqwuYR3rrjmpw%208zCTsqW6pqZ8X3kzCKnAdUH7VNttrDAkeUY8jjHGUqtUEXgc9Af093c57B6g86z91DNP29rsSXGc%20Gf0URm8UX/43P/j2S+99dI3Lr7/B/v4utcDn+UuX+PSnfoFqvYIb+Lzz/rt8/a9f4db6PYwtsNai%20lIPneSwuznP/zm1u377NOI7Y2Nzk9IUzdFaW2NhaZ2U0YLYzj3EkE52TKY2DwmDR1pILU7qQjwgg%207HQG0NRzJARSih9xJdspyZQhkUi8IxXZWB4dZm+BnILc5KA1ZAVSgycNzcLl4tqTfHj9Fpv7t5gM%20o3I+dWZKJS5NkVZRiAJhBdWgyny1iclyXOEwHkZ4XoBSLmDK0bbWUugS+CZmQjyOiXXMxEyoVCp4%20boDjODjCw8PDl7VpL5udMmJ6mi0WGAw5mowUrSckeUxeZGRZTJYnFHl5kuZ5yV9FUUTvcIA1As8L%206B4M8B3NqH8XT3n4bsCdW3do1tv81m/9Fq7rcv36VTbW79Hr7jDoH5DGMedOr3L+/FPkmaZeC/Hc%20EEf5COGWaqco931pH7Jl5vYICFmrHxLY6lHvlH0EkOR0NtPUnjF9SVFS3EipsK4EzwXHRXk+vq8x%20WiGVR2IzokEfrxJy6sxp1u/d4d6tW3zxN3/TNhZ/dsaU/MyDkbF27d0Pb9y6vnGXv3njNd768D22%201tdZXV7ilz71i/zub/8Oz5w+Tzfe57Df5969uyx15hlGQ3Z7XTzHJazVGPT6fOPf/jsmSYxSgmq9%20wu17dxm9EuPXK6Qm4972JvMLS3ihYihGRF6MRxUtp34ie6Saiel8Z/HAJ+dIiStcMEezn6cy+PQK%20XAD5kW9HlF+ceNAzUnbH5xQkZkKRJUgjCAuFygoCY5CF5amVNZJhyl3/Gkk+Bl3gKwdH+fTHQ6yw%206DzDcXzOP3mB3/zsrxF1u/zyL/0yrUabD6Pr5XLVnpq2q+pS8RIWIzK0yUnyjHE0xss9PD/E8zwc%20x8ORDhWnjmPLZamlOBLw7VF+SKYTcpNjioSiyNEmpzAphU7QBfhhBSvAcRwmaYyUkqXlBULfZ297%20j2QyIc8KdKZRSnF//R7dbo9+t4+UkpdevMTS4jz3797i8hvfJ/SqPP30szz5xAWM1ijpo6ZLI2FF%206eFU09VuxUOO6CEQlSV42fqiEdI+XDH3MSJ7yiEdOdDFw1Ygg8RICVLhzMwixgMyXVBoDbnBEQ51%2036fTaGIdQOfsbNzj9ctvsrO9yT/8b3/LnnrimT9R/k+/UfJnFowKaz+/M5781Z2N+7z62g94/d0r%207E8i9np9nr54kf/+t3+HtdWTWODa3Wtcu/oBH374Aes7W8y2mjypzrL16jaTPKVRrzM87HFH3Cao%20BAglSNOUWrPJ/Y0N/EaF2kyDjZ1tzo2GBNLFNy5RfUJN+uhpA6WgLFMEAmElSpQObC1cDAplFNM+%20y+lxXCo1Gs2jLRKPWQIFaGvRwjAmYpzGJEWOEAJfejiFJSgk1kBuFE+fO48eZ1z94Bp3bt2l3+2h%20Ah+JInRDRpMhSaZp1OpcvPg8GzduUglC7t27x7e+8x38WoVqNcQPPZQrcT2J4zs4nmD55AoJKToz%20SA0yd3Bd98HsIc8rJze5QuFIMe1ROyowNdqWsGRsgZAGjMHIDCPKAW/GOKRpirUOeZ5ibEG9XscW%20mqIo+PDDDzi5fJIkyuh05lmcX+LmR7f4zne+RZIkXH7jNS499yyjYQ8lHL74hV/nhUuXmEQJ1loa%209TauV0G6FRA+1kz77QQo9XiuWnJdZVZ0lEE/NG/aI8z5+JVxahB7CGzmyAAqBWQphdbUmw2cWoPx%204ZA8yQkcj+VOB+PC629e5ta16+xsrvPPP/iQbrfLH/yP//OXV596/hiM/l6WZHB5bxK9dO32Tb77%202g+4/OYV1ne2yK3hM7/66/zBP/knOAL+3b/512TjMUtzM6zfv8u9e3fxfZ96vcpTa09QCWu8/vZb%20dLuH1FtNBoMBBYaZhVnmq8uMixgrJP3BEK9W4eCwy9Ub12k8+wLLzTnG2YSa7xMKB1eWoybILVab%20qYavUBKUnB7tP2JELq+eSjgIWYKQAryjdjBrQRpSk9FnxF52iFYCGXjkWY4VEiGcksh2AoajBK8a%208PnP/TpPrZ3nz//Zv0AnmkE/wpMu1hha1QaeUPR6fb75zW/hF4ZsENHtHvDutQ9JbIa1GuUpvNCh%20UvGoNiqEtQDvpovrO4TVEC8M8AIXLwxKLs538EMXKaHiB9TCCq6QpYtaa4wSKMdBOtPyL8tR2uIJ%20B8cBqcFkE6q1kNnZWQqdISUkSUwUjViY69BfWGQ8HuM5Hr/2uV9hbmaO3uGAra0d9vb2CLwKzz/7%20DP/8z/+ML/3DL/LCCy/R6x3iCpidnUVJf6r8lWbUo5Vv7dR2oB5pmXs0MzK27NM7GmsiRXl7vNZ+%20ZDrBtNu/mPKGCnCVC5QzmpJ0QjQeYYqM0AuwRpKYjPeuvMvdmzcokoiZRp0kSfmrr/9btrb3+P1/%20+gf2l7/4j8QxGP09id08t7mSbHa7vPfRDa7evsX6aEAcesSew9xshzPnnyQR8P5bb/H1b3+Lw909%20Lj71JGurJ2l1OtTqVfKi4KNbN5HK5ROXXuDG7Vu899ZbzD2xRq4143GMCASO6yCzcmmg2dlZ2rMt%20hLQkWcI4idiPNV7NUqsFgKFGFeEqrCxlecFjXOjjAxAND8jPo9cpA448MmpbrNCkImNEzNBOGBKx%20l4wY5mOkI2nUQxxCitGEOI7pjYd89N67vHjpBcKwykxzhns371NxQ8bjiCTPSze2F5DGKXfv3kWP%20J3z73jdRniJzLAUW4UikJ9DKEpORp5ZYJCTDCSpwCSo+XujhBT5u4OKHAa6vEBWL61nqQY16UEEa%20S5rmZEWBlYrclmbHPC8wucEzihCFTA0mKnAjSTE2eJ6HKQpajSYnV05QJCme7/ClL32Jd668zfWr%20H/Hd736bWlhjdnaOhfklzj/xJJ32LP3DHv/gC1/kky++xCSKqfgVWs06aZpO9/e0x2xqpXigmUke%20GXZy1F+nEGJq8JQ81nf3Y+PHbBeP/EGUBZ48UlCVxJMwGo/Z395k4+5t8iTCcxWBJ/GkJGxUuHP7%20Fv/b//onbGxt23/8T18WAEVRfN5xfrp8ST9TYGRdl/dv3uTK1Q9ZPzzgMIrYGo/Zy1ISz8NrNdkZ%20jvhXX/86N95/j8x1CDttNnuHFI5lZWGeFMP2/i5RMuGzv/Ir/MrnPse1G9f5My/g9tY61lrEZFIu%201SwFRVrgVj1WlpY5sbrC9tYWG5v3afkV3KBBL5bU/JC2W0eicK2LUhIpHw5NewyQHgUl+eAijQD8%20I2ASoFVGZGMGesyuHrBrR/SdhLHKiDwQypDamHw44XBzm+7ePvdu3+H+3XsURZkBSekgrARtEIWh%206lUwhSWNEvJMI4WD8kPurG+wsrpCIaFQFqUkRioKIMtyIp1CasqpllKTSo1DhiwSnNTFTWNUAPkk%20Jqg6tPIG1cTH5gWTOCUzBqscCgRJUZAmOSbThNYh0Aob5TDKEQPD5DCiyHIa1RrPP3eJJEkYjUYI%20IVhYWMBxHLIs48P33ieKJjSbTWZn5zi39gQvXvwkve4hL1x6nsXFZe7fuwVBOXgtz/NHyqzyalAK%20DXoqLzBtUXl8NK6UctpfJ5HiUa7ooavVTgc6Cfn4kk1lkSqmHYei7E+0GlMU5RR0aSnylO7hLvfu%203QGrydMMP6gwNzvDndvrDOOIONHk29v8+T/7MyZxav+73/kdZhdXxHFm9F9Jst+I46/e3d7l8rvv%20cPn6VXppwjBN2ejuM4hilOvQTRPu7O+SRmN2JxFuo452Ldu9Lr3tiFhZlhbmePbTv8CFCxd47rnn%20cByPd69dwwlCxklK6Lpoa4miCJNYknGEMBnJKKYe1Ngxlo2NDWbCGnPnnmacxdzfvYudO0HhGALh%20EQq/BBRhkUbgCPVwNR9j0QiMMFghpuT09Hos7VTEL4hFzJCIAzFgS3fZt0PGjiESBWOdcjjoc7C9%20z+76Fv2tA9L+iLQ3Bm343vdfRcc5Z0+e5fy589y/ex+pJckkw1cOhc6pBCHLJ1bo7x1QazVpzXbY%20i3poYzBaYHKNsGXjqiZHuBJHll4oZQ0UOVYIpKNwPIX1LU4bKo5FMGEySSkmGWmalr1bnkMuJWmh%20SZMCkRny3CHJQcYFMjIQZ+RZhs40Iyasr2+wfm+dw90uM80ZdrZ26R8OaNbqFEGVZtPiOA5xlLC3%20e8BgMGBxcZGZmRm63S5hGOK55fOtVqtsQ9H5QwASlmJqqjgqzbBH2Q8PzItH0v7RnKbHzJC2bAQW%20U0vDw+vNEX39EOrQFpOlCF2gBKR5Sn+/x97OJv3ePnmaITF0Ztt0Fpe5e2+T3W6/PC6ky707d/k/%20/4//nf39ff7x7/++XT37pDgGo/8CsT08tIEfvtn2w09sTiZf/eDWTW5vbePUaqyefZL+zRts7+wy%20zArcWgPH9+hlOfnBHsJoYmXJ0ghrM0Q9ILU5Hx1u0zi1xNlPXOLppy+ye7DHK9/4Jq/+zatsHuwj%20PR+jFJM0Z5KMcUIXqVzMJOfW9RssLy6w1Jln3+ywvbfN6cUl8KoMhlHp32lrKm6FqqxQmc7AlpKy%20iRbwpIdRBbk9apCVD4T70gJoyMiYkDNiwiF99mSfHeeQnh2xNxoQFRn9wYDd3T12N3YYdPvkkxxP%20S0SR0gqqjIZjmpUqs7OzLLbnGXcH3NnrkSYZlfYsvvQIwyrVap2r+9cwSrGxs4uquBTWovMckZfT%203bQsEI5ACUkx0QgNMhdYpTECpKNxPBebg1SKTBsKlSHTgiyOMFrjuC4y9EmwpNpgCovMDFma4iYW%20L7V4mUQkBq3LFWezTHPv7iZ7O7v4yuPCuWfw3BBrJVlmiKIIKRykLEjTnIODLpcuXeLsmTXiaMTO%201gHNRgUpJY7joHU5ATLPc0yRIx2v3PPWTBuA1eMeIktZogk5BSP5SF+afJgRTaX8B5cUUfrPrLUP%20Wn9ATxvyDCbLUbZshxmMR2xv3ad7sAtYonhEURT0ej3STDMeDSjyFOV4jEdDjBUUWcq//pf/inv3%207vHyyy/bS5/6jDgGo/9cWRDFyz7Ony41ZsQI+7XLm/ftzXsbbPd7tBYWaVcqtFYFlcUFaneWubWx%20wX6vz6TIEH6FrcEATIZ0JX6jShg0ECZj3D/EWsv9UZdvXXmdKx9d5/7N27z3zvtMRmW6H1pDkiQU%20WQpZTrXdYH7pJFE6JhlH3Lt9h8/9+i9Tq3jcuXGTrZ1NghOrWNfQnRwysTmhV6FZqdEIatTU/8fe%20mzxZdt13fp9zzh3flPNQA2rEWCBAkCBAECQokiAlUXL0Qh1qWbJDCzui/S/YO2nnvVfa2SHb0W6Z%20ilazJZGExCYJEiRIDARQQBWGAmrMrBzfdN+dzuTFeVko0i1FdLcGSIFbUVGZVRWVmZX3fe/5fX/f%20oUNKTCxCNH9Yczu0OHp2SmxI76HCUGEZUTCi4JApW+yzVe6y1+xTuIrdg11mdUU9rWjLGpdYkkGC%20xaKNo6lL6qbi+NI6x1aOcf3GDaQWrK2s42tPVYVEwmldUJYlddOQZCkbJ45z48YNEgG10Thv8dLi%20VchCkaki8iLkohiLTAReepwUqDgKIfwo2hk4q3DOYGc1etYgpCfNBapVtApaZ/HGEzmJrxxUDtX6%20oIlCoU2LM5AIjxaeKErZWD3BA/dd4PWfv8FkXFJMa4zxLC72SNOUQX+RhcGA11+7SISk18lYW1uj%20LacYPHmWUxQFed6laRqapiKNkjmBbfHzQSqUCfAhtzQf54SAX94+HAERd3FMiCMZQAAlgQ/hDNaB%20baFp8NrgrMbUJaPRIcPhAXVdooRDKUlVVZSzms6gJssy3r9+iyjrkGQ9nDYoIRiNh/zHv/4uzlj+%201eGhf/LJJ+mtfvTNtv+kwMjgv3qznv5RkmR/lMt8+P7OraWfvvoqh5MZy5sb5P0B46ahRXDsxEm6%20a5ssbVzlrXff5sb+DjaNUMt9nG8RvsW6hnE9xeoaOciQQrCna3769lvQGqrxjNJonPQcFFPybo9Z%20FXq7fNYhihKWF5ZZjhYYTg843NvlxrXrJJGkbkq2d7dZW11mqdun1jWzqiFqE0ZNziDrsZB26SWd%20oPUhQikVKqUd+Ai8kBgMjdOMadiRNTuM2GvHHLgRt9t9tme7jNsxrW2YzUbYqoFSk7qINEmQRqCl%20pTQ13aUFZrcOGJcFbw/fpT6YorTg/PHTHF/Z4I3X32RrOKKtW/b29nnltdfopBlZ3iFOUsajGdoF%20R52MBD4SeGkQrUW0Oizpw2oIL8BJgYgEcZwi0phsdRFdS7RxmKnFVJYkErjGIxsDeUSjA2eS+IhI%20g2s8vnZYpxFaYTTgBNqHFOwk7iBEzP7eiMl4RiwyEtUJKQfETMYliwurOAvPffuvuH1ri/NnT/Pp%20T38SgSTPM/COfr+PMSHrqa5rVNohjhKCOzCEuB1lfP+n+WnxS0D0Ia90xHw7F3goO+eI5NGWzWjQ%20GlPMsE1LU5SMD/YYHh6gTYv1hqKq0VpjjCFSCcePH+eJzz1N9BffZvv2Hl4lQMPBwR5Zp4eKE37w%20/PfYP9hlePi7PPWFZ/yJM/eKj8Ho7+i6hXkuyZaogBfffmvp1Z+/xnRWcfyeU/ROnmKrmBLnHRrn%20KCZTssGAzzzxOKfPneWta1d49f3LVL5ld+823rcsrS0j6oTZ0EMciM8mScBLbGtopYBOisoThIUk%20zUiShDxNaHXIzxmNJgyWuyRJxqie8MJPXqTf79JJYvJowng8ZqnbxzlHnmVY62iqKcOmpoqmoT12%20fpOnvc58HPPYGEzkabGUumFIybvtLrtuykgXFKJm6meM9RRtaiIJRlisabFlTV1olJaggQY6UYIo%20HVnSQRio65bPfe7z3LOyyWR/wnvvX+XNy5eoyoqNzU2qquJ7zz3H5j33oOsGrS26nbd8SIjSCKzH%20CIdvDDSCpBsSLZ0XWB9kkQhwsYEGvGxQcURjLGba4JqGVknSjkAUlqQLTVXSti1WRggfEzUWXWki%20I5A2AiuIlaIqatp6imk1h7dHtKWmk3ZoW0Pd6jl/I4mihHPn7mVjbZUfDUdc++AKl996jcOD21x4%20+H4evP88u7d3OH3mHtpGo02NNhXeNogoJUJgj2wdxPzCIUjIOzT03Sv/u09Edx+YvJBzzZifw5FB%20+BpcBaaknR5CXdDOxoz3dyimwzuj4qQYY60KtVLbWxgkTz71NJ9/6rO88dbbXLx8mTiK6GUZZTmj%2021cMOjmvv/wq9XRGMS35rd9deam/+NGNtf0nFa62hfqDCfDuqORbP/wJb97c4uSFhzlx4QLbxRSb%20ZdRSoCNJlKXISGGNIUti1jfXifs5qpsg0jhYNpzHqRiZd0DFxGmOcQKPJMtzkjylwVJ7g1Dzrdhg%20gDMa07YoqWjaBu092cKA0mhGZcnO7i5CSBZ7C2RC0VcZi2mXzAhkbehGCRHQlDOIBT6B/XbETrPP%20vpywm0y4HQ25GR3wvr/FpfYqF+srvD57jxt+hyFjClFQ2pKmKWjLinZaISuHLyx61GImGlkJUhPj%20ZgY7bEgqSe5SIifIVMru7X3evHiZ19+8xNVr14mThDjJqJqWqqxRUUI9q2iqBqODqz+8kBzOWLzz%204ENtkHAhHE03JogenURYgTMW6QSxjJFCoasKPavwrcEbAdqD8URGYsYtdtIiCossPVEDXoPRHl1a%20qnGDryxee5wRlEVJU9ZkaU6edojThI3NTabFlLosGY9HPPnkE/zu7/63jMdDXn7xBXp5QqcTce36%20Fa68/zbj6ZD1jRXiJAodb87gbUjazGKFUCqs2Z1AkH6YPy5+eWUfQPgOd3RXNApu7tw5iqQVDk+N%20pELYCabYRR/eQhZD2uEe053bzEZD6rpiWk6Z1BVWSKwR9HoDmqZla3uLmzdvsLg0wBnL4d4eVVlg%202ppOkpGnKbpsaaqGYjzhzYtv0TpzvD8Y/MH6+sYffnwy+q+4brfGmyTi9YMZf/XX/5G94YhPPPU0%20K8fW2R6Pyft9qqaeiwghEgLpDcp+uDq9/9Q9DNYWWF5ZZGd4wKiYMq5mlFVB2zYkcYRrGyLrkErg%20qgrvW6xymNZgleDCuXsRzvPGa69y84MrUEWoPCWpW/qDJWSWsD0t2N054PjCCvWgYTouWIq7VK0h%20URFRqhCRxCSWStd4pWlTT3d9hd32kO16n71qxNBMOWwmDOspYzejyUPciPDBMCstuLrFlxpXalyr%20EJVHtUAjoDYYC67SMNP4OhQhGuPw1iOtwGmH8yDSGOPF3KRw1PoaFOBCBpLWW3NHeSDmmz4pJJhw%20ArK1wTqLlwKvg7DTi8CJSOnwssE7i7cGay3CzPXHRuG1C3+vBWFACIuJwurcG4trHZGG1lhsMw+9%20d3MuqjUMJ2OapqFIp9R1TZQmDJKEoij4/ve/z8sv/ZQ4jml0HYTQkUTrhg8+uELdTFldWuYLzzyN%20c2BsRVUOGXtHt1uT5P0AJFaDiH85JeRv9O3fPcHJ+alJihD24lyN11N0PcaVQ1w1pti7RTUc0c4m%20eN2i64bZZMq4mFFpT54uYqwiyzLW19dZX19Deti9vc21q9c5eeI4w2bCpx99hM99/hmGwwl7uwf0%20+wvILONP/59/y/bt2/zO7/yu/9QTT4qPweg/83Jw7tDZl8ok4ifvX+P5199gXE548OEHOX58E4kn%20ihTKGbI4JokkWaTmAOQRLtCPOpHkuSTNIpbynNWFBXanI3aKIfvFmEKXWGvxJsICVgj8TOGoAI3G%20UZqW26MDOnHKwtoK2humxTjc/EXB/WceZFKMmOzsEkvBoLfAbFpyZfw+XZly5tRp6rpmbzJBJJLO%20oI9IoKHFpwlvvv8e28Uut2Z7TPyMUrYUtqBEo5XB1qCx4CASMqimW4ed1OhpjW0kcSuQlcVUGl0Y%20TOtwlYXSgbHQgLUe4ebKbgRJHBMLian0vLHjruTC+YtJHLWSHG2EhLh7GMHLwP0474JvTUqQAhEp%20hFS41mBsG/rOrMMbi3Bho2Qjj9AKjMVqjTMGIQQuCmDoTPBpKadoqhZr7dyAGz6DpmkYHw4ZmlDO%20aI0hjmM6eU7TNLz77ruUZUmSpVR1hTGeTr+DUnA4GlK1M8bjId2FnOXlZY5vHEcpQRJFRC2oyKNi%20QCXzrHL5C8cjIeYpRf7Dm/buN8Q8XSFkU1mE1fi2xlQFZjahHY1xkwmT4Yh6PGY2LalmNcV4yuH+%20kEnd4GSC8IZWt0F4LxTXr9/g8uW3GY6nHDu2wuLiIsePn+TBB+7j2MYGZ0+dZX19g3Pn7iXqdCGJ%20+MELP+J/u7nF7/3ef++ffuZXXu4sDT4yY9tHekxr4F/fhOeul7P8ncMDvvn971Pqlgceup977z2P%201w3SGVZ6AzpKsTHos94LP1e6OYtJykKSspx3WOx0MKYlk5KOiukmCZ0sJU5iZCaRWUyFwaYSUoGL%20g7veGIMxLXhYHQxYW1lmcWmRJIupqmCTMN6wuLiAUpLd7R3GwyHnT57i6cefIHaS4d4BmxvHyLs9%20sl4XmQdCV/Vy9sspb77/Hhc/eJeX3nyNd25dZ3dyQGk0jW0oW4O1BiUkrmlxVYubGWTriFqBbCx2%200qBHFWZcQWkRpcXPDLZoMUWDm2loPba0YEB5iZIRkYhCMEnQ2oGZ1yQdRXD7+XzhPML7YBydvwSF%20EMg7TK5AeD8vkg1AJ/ABMIUiVhGxiGjqGpxDaI9rWoR1RE7O88EDWDpjcdrirQUXgMvNwStxEbpp%20QymAdR8C4dyb1tQN1lqUlBhjQvOKCieJ8+fuZTwKhQLaGpIsRiUKISFOI7IsZnfvNk1doaRHKYG8%2049IPP4M/zSCkwQsDws7rk7iztg+nSYfHzNtSDAId5k3XgqmgLrDlBFNN0NMRzXCfajjCVhXNbMas%20mDGdFuwdjNg5PKRqNDLKQKQcjiZMpqGcsqwqdnZ28M5z4sRJ7jl5kgceeICyqHjvnXfBeeIo2HyW%20lpZ4+utf53B7ix9+7wdceecdEhUdP7l5/A/SfvcPPz4Z/W38kHa+jiVT4JX9fb7zw+exwvPggw+w%202O9SjA7YXF6mF0XEXrC+uEhiPXkkyOZfmIuPwqwEDlhMEgo0pTNMbc5Bp8NCltDNIvJmQtzLOGwK%20JsVpCB1fAAAgAElEQVSYppzhncFHkriTE0mFihJM6tke73Dz/Q8oDkdk/fBnk9GYSAr2bm3TDkeU%20ayWduMtgI2f3+jbXbtwi6nTZ6OS0CD64dYut/V2u7t/k+t4WM1vSxBZySZLlKBljWk3TNhhviBOJ%20kJbEeoyxSBwqCSNoVDjE1MCoRNsYDMgaVO3wlUO0DmkFurEhyEzYIBrwBukl3nqwIOfGXekDqFgn%208NbjvUN4T3Sn9TaE4govAmDddUKK5u2x3kGEIFGK2IbvgKodIgqljkIHgWcUBZuLEkE/hBFzT948%20JVIKnA9aLO89av7DW7Dzj63mSugo+rCPralrbGuDLsnC2soq2vkQ/ephVtU4EtI0dJ2VbUkvz5nM%20hly94ZnMRqwtr7CxscHmxgYDVtCuRUUpcZQjVDK/yxKEsISvVt1Z84sjYHJHYOagrqCdoZsZuiqw%207RQzG1NPJhTDQ2Srg1dPW+pWUx29bx220RTlGOclxnr2D4MIMk1TThw/wfnTZ4iihGI4Znd3F2s9%20t4Rg+9pVsrTD+Qce5Jkvf5nf/NJXqIcTvvkXf86f/N//F21Z8cyXv+JPXLhPfAxGf9OYHUtuWc+L%20V67wwjuX2KoqPv/Yoyz1Oww6KYtph9Vul6U8p4+gA0SRIAXm5TFzweCHROIARYuikVBIzZgOq3HK%20UpqybPtsu5JbxZAbWA7qMtgUhCBWMSry7BdDtm5dR2/vQlPTGSzRSXs0s4JqWlFIga8NWLj+7gdc%20fuMST33mCdaWN7h+8yYiyXn3xg12D/e5fO09dqcjtHK4XEInwjhD2umAV5jKUrZhs4TwOGVCeqK3%20CGNw1mFTiGRENLNEpcMWFt9ajBEkJiLSAmklzgSjqSAOm642cDbM1d9KhI2etw5h5/EY1iHnAkPv%20/J2RSs5DTaS7wx7hjQ8iTRfA40iRHHlJLD3KWyweqR2xj/A+yGrwEOOJvcA5G9ItrcNbQja2AyEd%20SoaiJ2/Dx4+kuiNSjGRoI1FChqxsa9HoEHUiJXVds7W1NT8RBZMvwmJri5ceISOE8lhnyfOEui45%20xKBNiTMVyAYpWxo9o9tfJMq65HmPRPaRIkUKM7/L0qBEP7rfvAVnsF7jjEU5jS9G0NboekZdTTFN%20QT0ZMR2PKaZj9KxClzVFVVPWGmM9QipMbWh0QVEL+oNlvBdIFA888BCPPfIJsixjNBoxGg4Zj8d0%20O306nR4Hu7tEUUQcJbx9+S22rl/j05/5LOePbfLg6TPs7B7yzW98g9tb2/zWv/odf+qTD4mPwehu%20ZTXWVygOgRffeZdvvfQzppHiwU9+ipPHNoibirMbG5yIu2hnWESwCLTG0VOSeD7RKxGe7u4Xmk0l%20OSCdwMiYmpg1qVjLM06xzNt6jxWZsOwVOyKliIZUakxthtS1pjIaYkG8uUJXKmRj2Lu9C3XL6uIy%20o91D+nmHtfP3sLO9zXuX3uOTDz3KyROnKWvNxbcucWtvh2E5xccSm0lcrGiNoxlPIZGQhiJIY2ua%20tkQIP+8d0zS6QQmPMWHjIxNPlKTQOGThoQYqG7Q5KCIR4azHzrdWygdwUk5hnZ+fesIo4iGAiicA%20jzsiXbljgZDzt+WdfrCQ4+PnmT7Cz7sMj/63QzABwnkwhsh64vnqWzduftIBZd2HY5cP8SOWuU0+%20+CWQXuAajXJi3kEXspCED9VKzs1JeSFx2hLHMQKJc0HVs71zmyhJEDKcxjpZjGxbhDRIFRMpyXg6%20CS0hicRLQ21mjAqJp+VgusfyygpZt8egv0KeLxBHPaTsIEWGkhnOzP+fjrxttsGaJnBgukFMxqTO%204nSNLifMpkNm4zHFZERVVRweHmC1o5hWDCcFRdtAlCIjga41cZwyGk1oqpJ7772X3/6tf8ljn3yE%20N9+4yHe+8y2kh1QIOlGErQoOtm6R5zlKKd5++x02l1d5cVah4pSHz51nY2WVNy5d5vm//mu01nx9%208i/86fvuo7+5/I8CSh8pzmgILzXI43vA9956k+ffeIOpg+Nnz3Hm5D0cT2Me3NxgEIe8wGMiok94%20cncRdIQgdh5lbdikCVA4hPAo56BpST1EQpF46AA9r+iIiB4ZxtX0kpR+nrPU6bKQdkg92LKmrWYY%2025DnKc5oiukUbx2dNGT0NGXF+tIy9509zzOfexphBbu3dxn0BkiZUNYVjbHc3tulbjVpN6e2hqIu%20cUogkxgvIMs6xFKgixo7a4k0UGmqwxLZWGTt8KXFlRapIXERsgVTWkQLdqahckQuIiNGWolvwGuH%20qR3SCSSS2Ku5SRZ8a7GNRXnudLvJI1CaN95KFPJoM3mHUwp+KmE8WBtOLUKFeFzviaUiURHKEUho%20Y0lkhDIC1xqEhZQI5SXemHAqMh5rXDCWutAyghcoL3CNCRzWXdVAcq7lsTYAUJIkWGNCTXdV4Zxj%20YTAItg0h0FYHOUIkg/HUtAgBWRYTR5I0i8nyjCRWgEXrhta0NG1BpUsaPcM6g7aGVuu5Yrulbiqs%20aTG2xZgGayp0W9I2U6pqiq6nuNkE5VtwlqYqmE7GTEdDZmVJ02rGkylVaxhOS/bHU8rGIqIYKyRG%20g7GSpm7w3rE0GJCqmIPdXWbTMcfX1hnu78+3cDVKCrppQlXPMHXFxtoakZc4Y+n3eqytrpHFCW3b%20cng45N133sF5T5qlnDh7+kdC/sNna/+jgpF37pwQYghwq535WiXHD4Fvv/Vz/vR732VsLPc+9DCn%20T55hQSqe2NxgVcYsolhGkgIp0BGCDDEvR3TI+WlCzG1EAhF4BTW/ea0PXiADkRd0hSCRkKkI5QO5%20GnvBcnfA8sICWZwQKYFuK3Q9m/eCOeqiRElJN+viWkMqIu7ZPMH60ipYKGcl16/d4K23LnHt+nWU%20imhbQ6NbqqaZN4bMjxLWEyuF0BYzq9HjGaao8EWDrD2JAVe2QZejCZyLBls5XOuIXYSeaWIShJPY%20yoGGmBjhJLoySCNAO7y2CBviKpSXYMAbF0YvE/gh5QXemEA0O0jjhFQl4MC0hrqsaYoK0zRhPEOC%20djitsY0G41Hz3G5TNRSTgkG3j2strjYI54llACLhAk9lmxB5iwdnTCCzrSNWEYmK8a0GJ+7kBVlj%200XULDtIkJU9zvA2nJYEkTVLSJMMYi/MWbU1QPkuJcxpnDUJ4kkQRK4lS82Q7RwCguqZpW7TVGNPS%20uopJMWY8nlC1LUIq4jgUYHp8MPFajXcGZxt0XVBXBXhDHgkwNfVsyrQYc7i/z3B4QBxFKKnYPxwy%20KatgklYxcd4hHywSpR2a1lCUFdaAM46Ffo9ICHa3bjEdDRnkHbppQieJQGtm4xHldIJta2IJg06X%20xcEgfH+to5iGMs/DvQP29vdo65a80+Hy5cscHBzgtf791aXVP8gGvT/8ZzumGWe/Gkl1J2PlCH0b%20Y//1IOn+yVX47W++9iJ/+dMfY5KYe++7j2Nra2z2epxf6LAADPCkCBIgZp7x40AdsaZHITS/dFkc%20ToBSPrjKj0JqbAhxGABe5XjpqOyMpi6YSUs3TTh/71lOnFrn3OlNfvDdv+bKzW0Wuj16q6uMdvdp%20q5KFtMP21ja+0bx/6T2yOOHMmbMhYfDVVyjKGYuLS6Adworgzncaoxy2Cd+J2MVBtewMaINqLdJ5%20lAgxqkY7nBTzToq5eTOWpFlCEqcYb/A2aHJsqSl1i4ssnThnoTOgnsxwLqz7tW0CGMk4NIJEinJa%204K1DCRESA1xIcVMqIiEikhHdbk6ylJAkCYkKEbJKqZDdPT+tOOdwzszHFajrmtmsIkkSZrMZs6qg%20adrwxJcCb0MSQRylqESSpylCZVgvME5jG0tZzeYtvIEFVEoRS4WI/J2K7PF4TJ7npGlK0zRMp1Os%20tfR6PXq9HqYqcMKjrCCOI+JYkkQe7xRt61DS0LaOumzI84RuLw9iRlcznc1YVn2ccESlZlZpZkXL%208tKMpf4aed6j31mkKmfYVpPEil6WkqWK2WzK3mzKSppSVAXDvX2m4wlOu2Di3Tvg+s2tYMT2gqWV%20Ne47cRqnPZcuvc2161u0dUO3s0iqYiIJXrc475iNDtn6QDDp5iSRwrc1yhnQDVJIsk5OHIGtKsqZ%20ZjytaK2j2x+g0g7FwSGzsiR3hm6nxysv/IjpZATW8NQzn/eLp06Jf5ZgdDcQ3X0dVOaPXF/xg0tv%208Fcv/oTrBwd84rFPcfbUSVazjM0k4bSEZaDvRRi/QsghwrnAZYijBWuI9vTzemh3B4wkeu6cTiJB%20PM+iPgIuAWTOsSITmv4iTnluNhNapyGL6HcWSPQG/8Pv/HdcvvwOzz//PFs3w0zuveZg/wDhBJNx%20wagecuGBB3nmmWcYTSdcfu8KrbZMhlPqtsJXGucNRrQ4LMTBwxUhadoKqw0REFuP0TrUJaeSmGB6%209S4QtViLjxxRRxHlEbYwtFWNqQyxV0QqRZoQkdu6mq7KcFJhlUM7jW0t3mm8MHivWO0vszDocWLz%20GPecPMH6+jqL/QHdXk4n63LfvfeTpjmdLCfLQti+vCuONSQdBm7pbhd8XdfBYGwsRVEwOhwznY6Z%20TWYcHu6zu7vLaDxkf++AcTFh//CA0XhEayxRElbzadqhl3Vo65qmqjGtmYNeINa1M5SzKpDfOURR%20wmCwGLRj3lOW4RQrhEMJSSQVyXzcN42hMAbdCKRyxLGgaQ1Na6myhCSJEZHDJwKkR4iaOKoZTypG%204xnLixMGnUVOHvcoIVERGKsZjWbgbeBy4oRJMWVWlUymM8qqRhjPeDzl5o0tDsdTTp9bo7uwyLET%20p+nkPT547yo3bm0zKwp63S6x8OSDLpJwAo2QSNNSTYZEtqXSLd57MgU+EkQyIlUK3dRMpiUq7rG0%200MfMKTqra9YW+5w9c4r1kycpqpbX3rrIwY1rvPKjH2Drgi9/9VnfOX1OuMnwJTn4+7WSfCQI7DZL%20+fbPXuJ///Y3qfKURx59jAfvf4B+HDNQiuNp4IZ6QD5fPTPnNLw/GsfuDjwPkvy7HEN3nZBCuD1C%20EkVH8a1Hn4ihlyUckwu0PcfY1wyrgsIYlIQlH3PPyiqDRzoo63nttdd459JlZqMRSZqGdbuXOBnq%20ew4ODhhNJxgTChoPDg6w1mK8xjgTIFJZhI9QHqLG0xQt6AYVJygHvvFI4YiEmkecBl5HHVUnW3De%20oNuGlAThQyOJ8hIai2kNiUrophmHt3eJkSRJwmKnz/o9G5w7c5b7zt3H5uYmZ0+fYaHfZ21lmRMb%20x0U/6f7DLS5u3/DT6ZThaMTWzm1u3LrBja1b3Ny6xc7ODpPJhIPbu8F7Z8NJMUkSvPdorWnblqWl%20JbTWFEURbu4oZHDLuY0ljaMQmRuJIJg00HqDtwaPpo0VeR6jZEJTQVXOiOOawWBAf5BxuD9DJYI0%20yfGZRdDi3SFN1XCg9ihnU5YXV1gZLIaxcg5EUgS5wtXr10mEwInQ1TQram5c32Z7Z484zbBE5N0F%20qrrlrUuv8NZrlzi4vUuuUrpJxurSMguDAbapmU0nRHhc2+KbGiM9wswbbrVG2aDV8jKUgfY7Hbr9%20ZVY3j9M0mlvbO3S6fT71+OM8+unH2Tx5D6/+/HV6ecLFy5fYvXqV13XLYpLwqc+UvnPvff/TP/tt%202g74Fy5f5t/85bd49+YWn/zC0zz2yKMsd7uoScnJhZxTUSCbExfGsjtlYmHUu8uXeEeSNw+vCsFV%20H3aB2jsAZZBYAUoJormYL42DZ8zg6XpJT8R0o4QmUqRK0msaxjd2sRKe/tSTPHj+Ab7zV8/x8osv%20EztwZUMznSGE4IPr1/jTP/t3IAUHw32McUSEEP4QOm/xwiG9J5KhRVbQIiuNMw7lPdIR4jOkh8ah%2061D2ePRCk3EUNmLG4iKN1Q7pJSkxpjXMJjW2rIm6Azr5Ao9/8VlOHT/BhQsXePD+Bzlx4gRLgyU2%20u8v/6BqTY5v3iGOb/wlz9HDb7+7uMhoNufnBNa5fvcprr712h98wxgSNkYhoqzYor/sdhBDo+enM%20u3CaFp47PjMMGKPRVoffi2KcEehWIkSoILIekkSglEDN66eiTNDtJggliCOJMY5pO0F4z2Q8JEty%20lnqLnNg8wZmTpxl0e+xs73Ljg/c53Dmgl6UoIzAGZrOaw70R48MpvcWI69e3OBgWlFXDtQ+uUw7H%20LPcWWekvILxjoZMTC0fblCTCc2xtNZDU4zFtVWKNoalCuUAUxwgl6Xa7rK6tsbR2nGOn7uXEqfPk%20eU7VaHq9AfnCElUx5fp77/DoQ/ezfesar/7sJxxUBSmGy6/+DFEXPD3o/xEbJ97n7zHK9h8VjEr4%20X597+Q3+jz//D7x5/Saf+fznOXvf/fTjDlFtWI4TNjo5fSCygRsKRyFxJAMO3qc5GDk/VwMfSfPm%20ByV11ILqJQiHFnKuqRVHVVZh7AvxPKQCBiJhJckY+YRaNCjniVvoxzk2ElgLvU6XT1x4mIO9Qy79%20/A2WOz2aoqTT7WJbzc7ODt1+j06nw2w2C2ORlEFnYw1ChtW2EAZvPaZpoTXE3odGVxtIZH8Uqm8F%20NoQdIb1AmDBuQSgn7Xd7TA5GTIcTIplweuMkD1+4wGMPP8qZU6f5wlOfo5OmHBtsCPXLgfEf0evE%200jFxYulYeOez0LQVN7eu+62tLd5//30uXbrE66+/ztWrVxkOh3diQNI0JU5TkiTBGIPVFqObEGYm%20JGYuR3C4uRk2QkpFXRlmRYOMBHmeQ5xQlY6yHiOTFlULTKtwVuGNI8tSpPjQdjQdDtm6doPt6zcZ%20H4w4uXGC8eGYG9e3ySNBMa1RBnyjacoWbwTWCKaTksmsRfu9oImqNUpExEgW8i5ry0vknZhiMqGt%20KrJIsbG0xOkTxylGQ7Zu3qSpKujkZFmH/sKALMtIsozl1VVW1o/TkNK2NVVV3SkPqOsa5wVrS0vU%20xYTHHnqQtx+4n7cuX2L7g6sMkhg/m9HpdHjkC19+Tp0+I/7ZgdE+7vD5S28v/Z9//mdcvH6Dsw9f%204PHPPkW320XWmtgZ1haXGMjQvxp5jfRqPp/NW0kJYDRPA70jcBFHFNLdkcWOUEqPIo64w3W4O8bP%20+SZJCPJEskDKYpTRqxR7rca2LV2RoSqDTxXD6Zg3rrzDG5ffYjwes7q+hp3VdwykKg46HxlJzFz0%205wlbPOcczgZyWiqFmp9ujG6CiE8ovA4rbj8nkVvXEMmUyMdBG2Q82misacnznEHaxVQt9546x4Vn%20H+CJT32GJz/5Gc6fPc+xePG/+gayRqOi+B8dnNIk5/yZB8T5Mw/wzNNfBuDyO2/627dv893vfper%20V69y+fJlbt++jW5npGmKSuKgO7IGYxqcl8g45EcdpTNqb7FOYozFOE9CAJxWK+rGoF1FnDuSXAZr%20ByE3O0tmJLEklsHjJyyUZcnB7X32t/c5dfI0i/1lkijFmBo9mxFbCa1jMizQjSURCU3tIHFoY1FS%20kXYT3KymnpWYqqGXZCwvL5BKR4xFOovwmkh6lvp9Zt0OnZVl8jxlcXGZxcVFsk4HFUcIFePjhMgl%20tChUiBC4kx8uZcTq6irj8Ziz997L1599lk6i+PGPf8xwZ5u2mNA6z9gozj8y9itrq6g8HSarq8t3%20tuJ/B1KAf3Aw2pkc+M5g5U9ulLOlf//dv+KnP3+FBx79NL/6K19BeUFXhtW7lJBmMRKP0o5+HOO1%20uTvnPCzO5jyR404l1f/PaXvn17tGPDXnj47y+IQH5hnGzni8NGCC9qarImymaEpNspQjYsn27lVe%20ufg62/u7bK5vsHpuka0rV5HaUhyOaYsZaZxQlxWTyZgoSYPtQojguzJB1CfndTjCQaMhS2OUiNBG%20461BeIWQEmEkdVMhfWidRUmUg1RkrPVWOba+yX/zG7/JIw9d4NGHHuFUtvZ3+gT7KADR33Q9eP/D%204sH7H+ZLX3yW6zc/8BcvvsVLL/2Un//8dT744Aqj0QSjawbdGOM1rfHEQiBVBB6MDn1tvgkG3DTN%20iKIQ2RHGuGAMboQLVUqZwmmorUZLTxJBoiTYGd28h7QK01qm44LZoKKXOdIkY+/gEF1VdFSGrlp2%20DoYMp8XcRhK2pcLY4JeTEUmao4SmnIy5duUd2nIFgaEfJzgnqMsSbS3Hjx0j6/dJkoQ4C0WUDtBZ%20jsq7GO+YNRqXxHil0LUG58jzLktphm4MVdWQJBmT4ZClhT5fevoLDLe3OTzcZzorWBws8foLP+T2%201k209cyaamnt2HG/eeoUx8+e5szDj4h/UmB0oyp9NFjh5dnwt//0L7/Fd3/2IrGQfOrEKU4RRGmT%204ZAqg87KAjYPgq9YgK/BxA4/H20kaj6Cze0Jfr6JPgrW83cB0J2v1n0IZj78u+Luk9McmYwUVNag%20vSOKYzKRMaPlQGmK1HDx0mVefu1lhtQ0CvbGQzY2Ntk4cQJTtVTTGqka6llFhCAnph7NQo9ZFKGk%20RIoY5x1Gh9OaENHcmKvQ1qF1qMJOVAQWdKvn63WF8IKUmOMnz/G5zz7Fl7/0JR59+BPcu3Lin1X3%20+n/JderkWXHq5Fm+/mu/waVLl/zFi6/z/PM/4pVXXuLa1SsYa0mShCzt4oCyLBBC0OnlIdZEzKUG%20HrwKMSjWB4tJ285QUY/SN5hY0UlCJnhjLFmk6OYdmsoxmUzpdQZggpr6zOkON6/fwNQtbaVphCNP%20O0S9AVkbNFrj4Yi2rMF7lAiC0CyJSPMMYQ2T0QHt8BbdNOLU6bN84pFHWT95Eq9iCilRa5uQ5tgs%20Q+Yd0qyLilOIk+APVJJZWwLQ0R5Tt9iZxjYtUigiBFVV0bSGJM44d+YUn7j/fi7+vEDhKW5eY+As%20t6cHXHzrElZGGBUTLyzw0OOf4V/+3u/5s598TPyTACOHP9fLOy+/NZs9/hc/+CH/5pt/xt6Nbb7w%20+Gc5v3GME50BB+UYrTxGhajP2rUYmaPch6Bh7/SIWZSP5haCgCXmiE6SwfworUP6o8JEGdhvcbR5%20+yUg8h/u3SzgVIT1grrR1K6lTT11R/LGB2/zk9de5Pb2LWIRMa2mDEcl5WjKQ6fvYziZMh6PUcYF%20Y6kxRB7yOCHNOrTWUDU1rmkginAqDuFhuiVJQlKil45UBq+YcnMzrJLoomYw6PLQAw/wxS9+kV/9%206tf47IPhiWSd4+Prw0sIwYULF8SFCxd46qmn/fb2LX784x/z0ss/5aWXXmI0ntDrdekPlqnrktFo%20wsrK0nxsm1tuTAAnpQRRpDBOYo1HY/Gtg4YwLpkQcySaFqUEbeFoRYhjaRpNUZRUVcUbr77O6XtO%20sT437X7117/Om69f5PWXX0NrS6/bBW1JpCRVEtu2FOWMbt5hdXmRMxvLrC0N2DhxkoXVDUSaIfMu%203f4C6cIKKu8gkhyVdVBJGkoFVDQnRQXShURQHNA4/KyhnhTU0xm2qel3c4Z7eyz2crTTfPbJxxnv%203mLrg6v08px6/zZLx49xZm2ZD25u44ViYXWVyc5tbnzwPmc/+dhH/2R0t9jxlZ++zKs/fQUax698%204Yv8i2d/jRUyDnZ2caki7kTEUuK1CYRu5ELfuQ1Ms8Teibhgzmf7OUg11gaNkfPgQpVOLMIRWql5%20ARmAm+uQ5taGu0WSrXfUQIujQjNzLQ0WI2HrYId3r77HaDIiyTOUgTzN6GwucHJlHSkE3swD5aUi%20jgXGOqx1CBkxmk6I45goinBSkqQp3W73jg6mPBwi4oQsTpDOo+uGRhvSOKaT5fz613+TL37hC/zq%20V7/GfevhFGR90M0oKT9GoL/ptHTqlDh16hRPPPEkl99+0//sZz/jueee44UXfsTW1haDQY+19VWm%200/EcfIL8IY7DaGqtpakqoixC2MDVGe/wyoAxYDw+S9GNIVGSum5RKpzfx6Mpt7d32d8/ZDSccO+5%20lEce+STvvfc+3W6Ppgn/VqfXxVQNbV3RCoHIM7IkJu3mnL7nHu4/d4aNpRAM2BksYJXCRyn50jKD%201XVkbwG6A4hjiDOI4g+P+iLUZ0cuC6ZNJDiBGBjyQUVeFJi6wumWST2DRFAXLcfPnuCxxx9lvLeN%20EJ5qNqFfLrDSH7CfHtJPc9YXFtBC0M3Sjz6B7bw/dwREf/H9Hz3+5//u33Px+vs8cOFBvvblZzl9%208h70zgiMw/qw4pbOYhuHy3WYqo4qz0XoqA++qA8rPv2d5k9PazTGWYTwRErgVYSXEAtHNO+490eJ%20Yf4u8lrMU2skVLQMXcHE1ugEGueYtg0X37nM9a1bGDxxHFFOJmAMG5vHOXXiJB+8+S6+NcQqCmZO%2074P0IFLzOFOLyjKiJMYYg7OWqgyhbnVZ0e0NiGQIGZtOJ7i64dQ9p/ja177Gl575Is9+8Sus5/1f%202IQdva2NIY6ij5Hnb7mkVFx46FFx4aFH+dSnPuV//OMXePHFF3njjde4desWg4Ue3geRZNM0lKXF%20E3ikJAkBKsKqeb6TxHmPa8IyIvIKIodTCq0NZdnMNVAGuMl4OOLYsRM0tWZtdZPr127x3b/+Hpfe%20fDOMhU0L2iKEotPJ2dzcZHNjjfWVZY4fO8bm+hpJGoe6pyQmynJ6iyv0VtegvxDWqZ1uCIBTKrxo%20/Jwg9aGG2MdpiF2xjsgTgGshgW6HyLS40QEn8/MMt2+AVUyKMQ9eeIBbV9/l6ntX6WUpbVGQZJbj%20y0ukSysQK9LFRc6fPPnRByMpxPsOf+47L71y5Rv/9htcv3aDXq/D5z/zFA+ev5/J7j7MSiSCOMkD%20xaND7o4zNsRCILEy8DxyPlYd5QyKOdfj5it6Yyy10chYoOIUIRIcjhaLEvE8g+cXpZBehpNV7SwG%20SYVh7CumsqWUjt3JhGv7W0x0SeNt+FwaQ13XxNozPDjkrf0Jt6/coBrP8MbTOoMwjiiOiKKIpnEh%202VEIrDZ45wJZKiOMAy8jUhVRTgqk8zxw5hxPf/Ypnv3Sl3n6qc9xevFvr5r5GIj+865HH/m0eCqZ%20zHkAACAASURBVPSRT/Prv/7r/jvf+Rbf//73+dlLL4aHhHPzptjggYtUMOB62+BaF7agMkSvWGtx%20rcYIBxaE8Fhr8C5YVJpa0zaGtmnobaxz/foNfvrTl7h16xYXf34Rpw1ZmqJbyz0nTrK2tMjJzWNs%20bqyxtrxMf9ANkSl46PZoEcR5Tmd9k97aOnT7AVREBNF8TXz09HYfdqR7KdEIvJCgLMaFqUEJAbGY%20e/4GyGiBjinwmaLYukWWx3zisUcZHRyiRiVat5Szkt7yCv0sZWc6YXljg+n+Hov7O94vr53/L92s%20/b3ewQ5/TiLef/Xa1St/8v/+KTeu3yJNM/qDBbIkBRdGjKTbYXQ4JF7shqeNc+ChNZqinVHEC/SE%20RwmQXv7ipuyOADJI8aWUc6OsQs27rcIPdceEeWf/T3h4BA2cp5KGChjRMlItQ9+w00y4crjFO9ev%204J0hzkJEK0Kjk5jIhFbZ8cGMajxDaEuiIpwzaGuRUmKko2kN3SylqUqcC27/TpqFCNZGY6uGSVFy%208vgJPvf4E/zaV7/GV774K9wzByHr3Mej2N/DdfrUveL3f/9/5Otf/7r/4z/+Y179+cu8/PLLjEaH%20dLvdIDWRkrpsSKJgVPXeI5VEeXCtx2qwSgSLDuBxWBvEmN472rZCCdjbHaKblu9/73msMdR1y9Jg%20IejVnnyI9dUVjq9vsLq8GLhDb1FxhFTBiNuoGNXtMljdpL++Dt1uuJFlDGk6PwnJudwltIoELApR%20uaFKIRCrQql5EK4NLyHhiQd9aAq6x4/BtEMnlhxeu86x02c4d9+9XH7lYtBH6RY3K7GdGZHRKKN5%205ScvcOXmTXyve2X9zFkefuwz4iMDRg5/TiO++vbtrT/6D9/6Di+/9jqNUTRVg24qvv3t59i6scX5%20e06zubTEYHUZF0ZZhJJ46Zk1NXvTEf2uQqZdMhHU0kfHmg9PSZ5IhN1+rmISKfBKEiOI5kyTwocE%200SMAOxrNBBgcDY4axx4zbvkxO7Zgqx7x7nCLK4fb7DUTzGSKLaqQoFi0NFVNOzO4GoSx9PMOxrco%20JxEyQRIsHCaoMcNN7MPTFicohlOqsiRTMcuDJZ556mme/fJX+I1nv8ap5fVf+GZ+DER/v9qlkyfO%20i//lf/4DXnn1x/4b3/gGL/z4h9y8eZPpNLQBp3FER2V4a0KkrfJIHMaEum/vJNZonAtaNWssUTRP%20zLSBnJ7OGvp5xu3bu8QqIpIxs9mM1eUVnnjiCRb6PdI4DrXhTfP/sfemwZrd9Z3f57+c7Vnv0n1v%2071Jv2pGQBAYEAgwyMBgE1rBjA7ZnGGcmqUkqldipVKpQpVJl5sW48m7ArsyEZBY7dnmdGMbYYJuA%20EBJooVu9q/fbd3v2s/+XvDhPS1CTBQwY23O/Vbdud1f17e5TfX73t36+1FWFtJIwitGthFIHtHbt%20prOyAp3uS8tyTsoGzXvT/NP5pi3gGgMFSVNW1kiQzXInCKz3WObQPNVQolAS1esDDikUwWhKXZTc%208YoHmK4PuXTqLJ0wJJvNkDog6fZIt7d58do1tr7+JHUUcfy+VyK18nfec7/4sQcj4/0jWogvVvDI%20V574Ol/40p9Tesc0r3Bas3vXKrPZjG899yzbW1ssdXrccstB9t16CDM3/rOyAeBvZdCfH0kKBE6C%209hC4+V6Rv7nm3+BApNIIqeeOMhbhGn50IOR3Tc1ozoOwwlHNA1GFYp0pl7Nt1kXO1WLExeEGG+UE%202hGxMcwGKenGJswqKEAUlmJq0KWnHbapyhSsII5jRBBS1BXCe5I4xlcGLRWRbvy3srqg3+rw2le9%20modf93p+5t2Pctveg39rtqP/LuqB+18nHrj/dXzjqa/43/7t3+YL/+GPGQ7GtOM2WohmjuIaAoSv%20Bd6pBpAvNdbbOZakQZFIKXDOU9cO70ApTV7UFJWl1WsjPGxvbrN7cYmNjQ2OHDpImqbUVY0OQ9rt%20ZL5HB8ZZWgu7aS8totrtpgckBSIIkEjyokCFQTMLdgbraryrm0GOBIGmE3Vfytxqa6hs420nVIBX%20gtqVtHQLfAUixJqU/oHDXDt5kv2HjnDbnWtcOXuWSIdMZyPSyZi2DtiaTbk+m3EtTRlbS+kt97zy%20Xu685/7vb5ftR8EzkkJcAPjTZ579rc/+y/+V0xcuIoKItK5o9Xvsu/VWwlaLaZpRGcN4MuXUubNM%206hIXSDq7lwjbLcq6JC9LvBCoQBHoaD4ME80o29OgKzzY+TFrkyAJAgGBl8092JwGeNPWvGmy3GxW%20G2ZUpHgusM6GS7nhck5vX+PkjUsMTE4dCExVwaRApCVVVkFWNYTF0uJzg0lLZOWI5o4bdVk1jU2l%20YO5P72tLN0lwxlJlOcePHOUXfu7j/ON/+Ek+8Mg7xe7uwuNSiJ2I8DdA+/cdevyuu+741G3Hb8MY%20x4vnz1NmJVhHEicIIE1TAMIoakwua9s0iKUkCEOEF00D24ExjihMSGcztArQUlJXNQu9HkuLC8ym%20U44fPTI3ITDNrWQrZjAasrRrGREE7Lr1FnQ7QQcRhBqhdJPdz+8cG45ShbMlwldoYQiUJ1QWfZOI%20Zw3CGcR8qdZZg3MWi0XrEAsEIoAoQQYReEUoIzavXWVvt4MyNS9euIjznnanS1oUHLr1MIPpmK3x%20hEOHD3PrsWOs7N3LgQMH3q2j5LM/tsxoWNVPVUI+eOLseX7nD/6Itc0hIoiZVTWFsQyuXaG3d5VD%20Rw5TmZrBaESoAxaXl/j26TNcnw05kE/Ye3g/S0tLBC3JtqmZXr+K3y/ZFbbpobBaUhcVynoiIQmU%20RKrv4FnY7+gn3cyGZPMvts6RFQU+0lipyXBcZcSWS7maDbg42+LabMggmzI2BZmvcNOMXmEJjEBZ%20gbUSagu1R3uFUhFlWlKUNQGaKIowxpDOUmSg6Xc7oGpGm5usrq7y9z/0Ef7+e36GO4/d9unlIPmV%20ndf/b2JAulXsf8+trKzs9a979U/wm5/710zGQ2xV46VEqAjjDNoLAh2idYipyoYcUGWNHZSSxGFE%20HMeUZY0KIqSzlEVNr9vm0P79tMKAK5cu8vyzz/HqB+/HqxilGr7U8vIypqxoLS02qwY6bHC88xzH%20z68QhPdIOfdlEw5s2QSduZk2UkFlm/4Sje+etgY7NzrwQmNFU2IapZrgpSKIQLZLgs4CshizeugQ%20C+fOk2UFaVlQ5CWXL15gsdvhvqVFBrXh6osvcs999xG1u78C4Ix5RH4PB7Y/9GDU0sFnR1n5mf/r%20iW/wtSefYZwVOBXQX1xidxSxtrWBDhsM642tbWazGb1eD59l1N6Srm8wsAUb6ZgDtxxiZc8KrTgi%20ChVntjeYtnrs6fXpi5AkDpqrfA/GejxuDpO389JNoWhMCBE0Ey6pcUrigpCcihEpV+shl/JtRoHj%204niTS+MNNmdDZnlGVuaYuoJxRjmoiGaG2CqMaPAVuObCXiOIkhaVL7BlhatKkigiCbqkRc5wY4u2%20CnnkTW/lPe9+lDe94WFuX923kwb9LdBDr3ujeOh1b+TA6l7/Hz7/BZ742teYphMQCqGgtu6lwVWg%20g2ZCaiq88SgJ3nqKPCcvCvq9DnEYUGY53vuXECdlnvOtp7/BkUP7ufXWW8myDGcsrSimKkqSOEZF%20UTM5U/MbTd/0J8TcHBLvkN5iXYEp0wZ1a5vGe6gjQtWFoNXsIYmm3WFds1F885IB17RCmumch1gh%20WwW618OajJX9Bzhw9CjPPftt0rwkKwuqjRt05V4W9u8jFJob6QxTlgjVBCD5PV76/9DLtKnhM5//%200l/s+9y//S0urd2gu7TMPa98FR/52Y/S7nfYGmwzS1NGkzEbm1s43/BdxumMhV278EpTWMtwmrI5%20GjItcogjonYb5x21txTWUIm5kd/cHqaSzcjdKJpGuJZYKbG6eciVgkoJZpSkomZGxXo54tx4jWvF%20kFnoeHGyybmNa1wdbTKrGohXnea4SQrbM+zGDDWrEaUnsoLASZQRiNLhK/MSP1rTsIazWUqWTom0%20ZmVxiU9+/Bf52Ic/ymM/+YjY1ek+vvOa/+3SsTvuevzO2459qt3tcPHSZa5eu0q706XTbTOZTHDe%20o3VIEDT/L5WUzZquNRRFSZzECNVYPCnhacUxy/0ecRAgnGU6GhKFAceOHSPLUuK4mba2koSw00Yv%2074YwanaK/E2AhUTMm6cSi8CAKcmzMel0QDEbUZcppq4IZICSqsmupAbm6GEdoYIArUK8byiazb1m%20M+3xdUWdzTDTEUkcIFXIC6fPMJvNELqZyg2mU5CKzkIfFYUcv/0Ojt51zxpKP/1jK9Oee+HMg3/8%20+S9y/cYmYdQGGdLpL2FRaK3ZXN9gOBqysv8AnaTDrMgZjSeoOGZ9c0C716UVtvFeMRqnzOrLbOcF%20V3YvcN/xo+TUzHzNuMwY6wlLcUI3CImEINHR3BmkSUOFaLhGQkKNoaAitTmj2ZhBPmHqClJtmYSW%20sbOcWb/Cpa01htm02VsqatSkxAwz2Jqhph6XmzlDW6IdaK8aH3ShMKZGOU+km5wsn5a0kohHHn6Y%20d/29d/Lxn37fTib0t1yHbrtTfHT3yq8evPXWX/7N3/x3PPnkk2wPx3QWFimyGbU12Mo3ppTeNtvx%20NEOLJEmo6oK8qoi1oNfrsbq6SizBZFNC4Tl35hSX77iT1dXdBFLirCXSzU1i02f4jkGMl3NXQFBS%20zJuiGuF0w/TGY7DzisGSVjU+hAjflG1aIiQorUEHc49BB8407w0OlEAEgBZUUmB1yMKeVe554H7+%20/EtfJlABVVFSZzOUBFOXtNodTJFz5omvfGZrNPrMyup+jv3Ea8VfazA6eXHD/9G//wLPPPc8C4vL%20DPOK7dGE02fP8fVvPoWwJVVVcPiWo8SthK3RuIGlI4iCgDTNkUFI2G4TtyJkqCiF58ZgyPp4wCQb%20s2/3Eod3r1ImHYq6YJJNaClNpCRJFM7N/PSc7tcwro1xGG8YZkNEIEnLjEE+wbc0dGPWpyNOXHiR%20a7Mhw2xKmudI5xGzCj2rkamjmlmiUuAzS5kXCAuhUGgh0Si0Bi0DbFkxGQwQ1vDKe+7mPY++i7f/%201Nt48Ja7dgLR3wGVZU5ncflX3vmex37l+O3H/ec+9zm++MUvsr6+jpbN4EI5iHWAVqrxnrMOj2dr%20a5tONyGMI6wpKfMcW1foJEErSbvfZTIac+K5Z9n7yCO4uqLV7eCsRSndjH99493kvcD6JrP5Ltum%20+TdhpRRhpIEArRxBGFGKhnAZCTUnVChePnEAW1dYa0DMz6fwoCVSewigEI7cQSUVr3n4YU6cPMXm%20xgaTyYS41WJtbY12WWOShBNnzjCrDCIIufPue3no3AX/k+9+9/+RdLsf+JGXaWubM/8nf/Zlfvv3%20/oALl69QC8nmaIIRElTIjfUbTF88xy3Hj3HH7XcymUxY39wEKVFhc0SaJG2ch7KqqZ3H6wARBVil%20qLzl2uY10irDmDm21TkclsoZ0ipnmE8ZFSmDYsagmLGdzdjMJmzlMzbzCVv5mJHJqLRA9hLqRHF5%20vMm3zp/i+YunMaFgVmTNTdgkxQymRKkhSh1qVsOshtIhaoevPa5uPOBpfPwwZYkEuq0W9951Fx/+%20wPv5xIc/+umjSwce9t6/xM7Z0d9e6e9AqSzvWn38LW992+OdTutT586eBe+o6xprLFEUEQUaVxvs%20HAuSFTk61CRRDM5gihJvaoSf42qAONDMZlN271pmaXGZMAzBO8J+HzqLoAIQDXLYefBivsxo7dyQ%20woGrMbbC+cZnLwwUIoowQR8RdZBhjJbzA1or8c7irMU5R21qhLdI4ZDCNicOdUY+HVGMJ3jnqEtD%20v9fHGsfFFy+SFjlCaYRSRN0WvYUFTp05y/kLl1he2kWn1cV4x+LK6t0re/c+/iMNRuvbhT93+Sr/%209nd+jzMXLjUMFSdwKAIVM94eoaSmtWuR/tIiZW25sbmNxaOjGOMcrVYLpSRlkZOlM/I8w9rqJUdG%20qaDTTSiLgsHWNtPRCIGg3WoTxAFOCIyz1N5jvKWyhsrVGOcwzmC8Iem0mFUZUis6y322Z2O+/tw3%20OfXiOQzN7ZLJSswkw26O8ZtTdOZICvBpRTFJUU6ghUYLiTQOV9X4skJUNSYvWen3efRtf4//+p/+%20U37mDW8XLRl9EdgJRH+Hdc8r7nv83rvv/tRzzz5HVVSkaYYzzc1abSwqCGh3OiwuLZClGWWWEeuA%20QCpMVeGNQX3HqL8qC5xz3PuKeyjyGWGgCJIWLOwCHYEUTadgDld23mO9RQd63j+aH2y6JuvRMkDo%20FugmEIUqaG4nHThrMcZiTY1Uzc8FBi1BYpt1gDylHI4hL9G2uWkYjcYcO36cbz77LDqMGIzHFNYx%20HE1Y3LWC89Bqt7ntjttZWlxkeXWFIEk4ctvtP7xglFfDpwL13bsDF25MPvU7f/jHnLp4la1Zxqys%20mM4KukkXXzqWk0VsWZMJR+oNVocQhcyKksoZ+r0erSRmodvGVgVlNsHWObbKKPMJdTahzqco50lU%20xHJnAeHg2pUrXLx4CSkD9h84iBASZwy2qnFVRS9MKMdjdrU7hAhMWSGcYGlpkeFoxJ98+c84ceIE%201nhMUWBmOW0rMYOUemNKVIKa1thJTjdsM53MiOIIX9eUaYp2nkRIfJpTjafce/g4/+hjP88nf/bj%203LH3lp3o85+Q9u4/+PgD993/qU63x7mz59nY2qa3sIRUAWleNm4qUoI1UDviKKKdtDBVTV0Ykqg1%20396GpcUFJsMBEsMdtx3BVBkiipBLu6ilorZ1Y/8daIq6oqgrVBCAVLi5Ba+SCWHYIQr7hOEigeoS%20RSGhmi8AzyfBN+29hPDkZY6SDXhOe9/gR6yH0RQznEJaUM29AoUOcFJz+Lbb+PJXvkZpIAzbpGlB%20nuXs33+QheUlhqMBDkuQxGRlzYOve+jxH1rPKAm/265kbYZ/+vkXOHnxCle3NqmloLXQw+kMpKcu%20MyokSkIrSsimBTfqDVrtNkIGSK9wVuKMIB1lVGmBLxxCObwE13gX46qA3ArKUQr9iqV+j36ygMBx%209coaw80tDq6ucvjgPtphC0xNOU1ZaneJvCSdTpBRxEK3z2B9m298+5tcOneRKivxlaHGNMeQgUfP%20DDpzyNpBYfClo6IiCkLiMGJjYxtpHItLC2xcugplzdve9BY+8tj7+In7H2TvwvJOIPpPUMfvvlsc%20v/tulvpL/jd+4ze4fPESYRii44S0qLGVo9/uIltd8ixlNJoQa0WchA0gPwlIs4x+J0EHiu2tDdbX%20rrC0uIAtc0Q2I0g6BEFAVVf4ufGnDBRSafzNG8y5qaQgbEpA7xDCopQDaedX/GJ+wuCazGpu8fWy%205necxkFpsHlJiCRK2qRliXWWoja0u4u8+rWv5/d//w/Q0qBkAE4wHo6Ium267Q54y7XLl7j7/lf/%208BrY3plHhPzunYEzF67ypa9+lTMXL1Aq2EpHUGdE/T67D+ylTBNCEdDtLLA2GOFzi6uB3DZ4WRVQ%20Z57RNENrSV1LnEnwOKgkxoO0AlE56mpG1AoIugskKiBSCrzFFRXbgyHj6xu4NGN1cZGjtx5kWlVU%20RYmrDN1un0pKJlnFM8+d5Omnn2GYTxChoKiacjDPcggsVVbiaosp3HzL2uBthrCOfDylEyf4subG%202hrtOOZtP/UOPvK+D/CeNz6yE4R2xAc/9rNiYWHB/7Nf/TQnT55kdXUVrCFNU5JA0o4TgiDAWINx%20jqqqGE+GdKJljK0xdU27HTHc3uTyxUssdLtga7LxNt2FRdCSwFuMtaggxEtNA9/x83a2avrTQjTN%20aekbbreWzakH80a4EvOYY7DGgAb/nYvDzkNVk+clWV7iJxNCoSirCh1HWOcQgeChh9/A17/xFGde%20OEOYxBTGUjjH7iig0++gkwgfhtx1553/n8/t+yrThPhuNMCLG8Z//kt/wZ/8xVfZmk4ovGH3vhX2%203rKfxV094kDgbYGkItASqQPa7Q6tpEF+FsaBCnFeUaQFTgQ4r5smndR4LecjSI3UikAKkiBAC0Vd%20lLiyIlYh3bhFEoRgDaPNbS5fvIBw0G01kTkOIhySaVnx9W8+zRNPPslgPCEImwdaFyXSCco0Q1QW%20V1h8UeNLiyst3ty0hLaouV1SMU1ZiNu8953v4h/+/C/y9lc9tBOIdgSAVJLjd93x+L133v2ptbU1%20nnvuOXav7CLWqjGgnLuKCCExVYF3Fjk/9o4CTaAgDgOcbW7Ldi0tELQSaqmJ4xYiUI0FuZQ0xr+W%20l88ZX3amEELCHIXyElpEKLwT4BVC3SztBFY04/4wDAmDsJmklTV2PGU2GFJMp3SDuPFiEwKpQ2pj%20GU+m7NmzF2cdF85faK4bshyvBEGrNR/+Sdq9HufOX+D82dOfunD69KdaUfiphV27H/+hjfa/feo8%20X/36N1nbHOIDhfCSxe4COjBU+YTlhQ6vePD1tKOQ4aRgY1pzcX3A9iQlDFtEcURuwDkJHUkt9Etg%20Oi8MaN/EpViiFOxa7KGFY7i2xeXxkOXFBW49dADV6xGpxuu9FbdwQvD8M8+xfWOD/fv2cNvRY+TG%208I1nnuEvv/YEG9sb9JYWKbKCLE/xwlFUOXhPpZqRvbCaurYNRoCmuRgKSShha32D3f0lfuHjn+D9%20j76Xu/bfuhOIdvQf6YGHXyf+S/tf+doavvLnX+bIoQMU6QQvBS0RNw1oIVFKo6RiPB7Ta69SFSWp%208vTbMbPxhCuXLnKk20UmHcrRBrGvoNcD1UK4plxTUmLFzdyI+ee5rZWAxkFQ4pBYJxBCotDN1rVS%20cyqEIxBzqwoLNs1JxxPqvGjAhDQN7jAMyeuaJGnhhcILeO1Dr+OrX32Cjc1tCjPA1I48K3FasjWZ%20cO7yZc5fusKhI0eJkzanz7zAL/6jX/K7971sn/1XDkZXh/hvffsUL5y7TFkLWq0O9z1wN4PtNSIE%20P/mGN3P/XbfzyrtuJ9KaSVnxlyfPM/jTv+Ty9oCwt0g3SEgHEygqSFrNw5PgvWkafbJx0GgcYx2L%20/T77Vle5qi/x/OYWo60hVx1kCz32r65SVyWtMKbfX2RkLIPBkKtXr7K1OUDGEV994husrW/R6XQJ%20ZMTW9hZVXRHGIYwzCIIG5RbHYGQDxW/I7GBKTF0xms64df8BPvjY+/jwY+/jvj07gWhHL6vMC6Ik%20Bprs+TVvflj892Ho/4c85fSJ57Fl2TjSKg3a0up0aGlFOZ0QST9vYmvqukbJFlJ4hlvbTIcDFnoL%20lNNtlLcEWtAAljzKORRRgw6RNxchBW4eQOx8kitp/OKcUA26ucEcNUuTQja/hgNjcdMpxWBENRoj%2085rQQT6boQPVmEDW0/k+U8CzzzxHlhXkRUVZlljfrAiUdUU3WmIyGfHtF06y98B++t02w/GYZ775%20NNcuXWT3vkM/WGZUGj75zAvnePbUWQbTgiDu0+3topg5fC555ase4P1vfw/5aINn/+KbFLMxemGB%20/qFbSPp9SGJsoCFJCPpQq7x56YOwGSWaBgCCrFFzprW1FlsbDh08TCQjLl++QpVlDAdTijRjqdtn%20od9jOByzub7Oyq5ddHttag+nLrzIYDLlxsY2WsUIocnGGa50SCtw1kClm50hD9I3IHbKOZxKSryx%20KOs5tP8gH//Zn+NDH/ggt3R3GtU7+m7dDEQAcbexB7//odeIf/5rv+b/u//2v+Hs6ZPkdUXHGkKt%20iYIAhcPLxjRyNpux0FoC6yjSjE68QJZlrF+7StRfIBJgvENiUN5C0kGpAHxjAGF9Y6skviMz8nP2%20uxXMFxybG05rqoZ6IW2De/Yeiox6OqUeDLGDEWo6Q5eWwEO336eyhiLNSCdTzr14kdEk49nnnmdr%20OCItckbTWYNLCTTT6Yx2XtDpdFleXGLvyioK6LQS2kl003X1BwtGl4b1Z545dZrz1zcoZUSnu0B3%20eS9eahaW97FnzxGE7rI9vIYVCVFLM6kl1y5vUakWYW+VaW0QTtNd3kfWqSi2hqAVwluEtzhXIsVN%20zGzjXT9Lc2rnScuKvKgIowhTlWwNJly9sU5RV+xd3UWRp1R4Ll27TrvbIu506akAtTFobGG2p83a%20epBQ1TnlNGvcH8oa4R1yvteEaR6W1B4qT7/d5qPv+yDve/S9HOnu2glEO/qeddt994r/7L/4J/7X%20/8W/4Otf/RqjIKWfJEjnCOKAbr+HcpatrRusLvYRGLYGKb1OB6xh7dp1dh04RJTEWClI65q2EKjd%20GmLdVBKqKcYUsmF5vWTz3tAfLRYvPEo4oMEiK2+QqnFaxjuYTXHb29jBADnNCIqKuG6+OVsBa+s3%20uHxtjayqOXHmLDUgg5D9+w4S6C02t4bNKUoUcm1zk9Jbbjl+nKNHj6FDzdb2JrtX9nDn7Xewurr7%20r97ABhhWPPXMucv7fvcLX+Lp0y8SLS4TLa6g2l2idodJURG12hihSY2ltbRCd+9BNivBty5usZEK%20UqvxuodMliDoYHyIkyFShASqwboGAmKlibRCeY+xjhLFidNnuH5jHZSmrGpKUyGVYjqbcGN9nTCK%20EErT6fVxwDidsXtlD0Vdc2Njm7oy2MrgKoMpKnxlkE4ga7BZwWK3Rz6eEqDoRC3SaUqoFLt6Pf7B%20Bz7Exz/wIY6t7BfWOXbYQzv6fnTkttsfF8586tTp00xGI7SSeO+JgoDpaDiH8IXYskIJ6HRaKAmB%20UhjnGAy3ufXwLYDA1BapAoosJUTMlx3lS3WXcBasa/hF3iOEBQzeVyhXE/ib/C8DVQnZDHfjOvna%20GsX6OnIyo2MdQWXwwwnjjU1Onj3Hi1eusLaxySzLEFojtKbd6TZb4E4wnaYIqciKEickKo5wXrBv%20/36KMqfVboGQ3P/ggzz09kfFD5QZjTIePH3hMmvDCbrXJ5OavKpQShOFCQMmnNocUVy8M2TIngAA%20IABJREFUQhxp2rMcKeHF9W3OrKfMfEAR7kZ0I1SUYCWIokCqNtJWKF8i6xjqGCUqlKrBZKgyoxIS%20LwVYh8NhlYQwRktPKCWtJGJaliTdDuMsYzweY23N5Rs3yLIMbx1i/iEteOMQFsS8PdVNukw2hvR7%20Hco0R8WeXhiCg/c9+ig/89Pv5vBKg/3YwcDu6K+i9/3sx8VsNvP/8z//NWpraIURl65c5b47b2e6%20udFM040lqwxRXhIoiRCCwDoME06fOMnxu1+BiARVlpLOpjgEzFLai7uQQdRA0eZnIzepkwiBEhXS%20VojKgLVQG8gyGI0pZxPqNEUUJVFVo8qKcpaRbQ0ZXr3B+nDIMFDkQqKlwkhJWWaMi5KgbKy4lpd3%20I9R5JuOMylmcgLKskWnOaDIlimKSbgsvJYePHvuPns33HYyurg35+lPPs7Y1Iu7vIrfgwwi9tMS2%20KZmGzeLW2rVrqEgjQk3tHYOZofA9RNhDJREqinFaUjuLETmooLF0chXCpFCnWFFSC0PtCmyZoqVH%202gpX1Q1Y3DuEUwjZlFWLu1fAGtr9BabjISdOnqI2JUtLSywvLjVQrKq5AxJ1M7LHOoRzCOcpi4JA%20KvLJjHYrwRYFnVbEo48+ykcfez/3Hzq8kwrt6AfWJ37pn4jB1rb/rX/zrxlNxkTtNpMsb8xDbUNs%20xHlCqQgCh9LN8q9OJGvX11nZe4ADR44xKUu8F6SjCTqu5y2FkCCI0DpsLv1v+nAp37iClDk2LRBF%20RVgZRFHiswyZpeiyQeakwyH5aEI1SfFZCZWhnURMnW9u04xhWpakWUllDbUTBFHC4T2rJO0udmuE%20UBotoDA14+mMaGObvbfsIWn3WN23n2O33fWDBaPS8cmTpy9y9sU1rIzwQYQxNQjFxmjQ7Ch0u6Bg%20KjzOQVUbiCLUnl109QqoFgQCJ8XcfsiiXYLyPUwxQzmDcCHetWi8OyusLaDuQDZFmgbZ4V1zGOiN%20wQuBFwLrPMsLSxw5coxQS8qy5NSpF5iMZ0zHM3Tt8LVr/KnsfGpgHcI3EHNhHXEUNlwaPBLPw696%20Nb/08U9w3+49O4FoRz80/YNPfpLLly7x+d//fVb37WNza8hCHOGdobIN76ioPZUFKxSoACEDrJec%20OnOB3ftvoa5sAyrM0sYOazIGIamlaugViDlgBBAeK2psXSGLGlXUUFaoooKigLJmtH4DW9VURUmZ%20N5BAPE0JqDSuKEgnM7ZnM6Z1hU46xHGL0XTGNC3Y3B42CBU8SqrmZMU2PnTDyYR+vozx8JrXPsTK%204aPiBwpGL1yxn/nWiQtMC0fUWWJqIUpaRN0+6XRGe/cC7SjGSUElHD6J0IHGRSFxbxHrFIYaJ3wD%20kgsUoZ4vbyHxdQyuxluFFwmGmsKUeJegTQs9FoRliA4rdBhAGCGqCm0t2nmKoqKMKy5duMSRw7ew%20Z2Uva9euU5Ylg4sXaXcXkLVFGtvYyniH8G5OhRT0+gtMRluNle9kxkOvfRWf/MTPc2Bp8dM7r8+O%20fpjqrewRP/exj/mN69c4/fwJOkGAVxopPEoHIDy1kJQWSguBU2wPUhbQXF47T3d5N3e+4hVM0xwZ%20aMrplCBOkL4ZTCNuOn/Il17yPJ8RCIgsyKzAjzOK0RgzSzFFhXSOqiopypKyrrBeNG0naymNYTrL%20qKqKMAzpRgm91RWs1GyNZ8zSlCef+gabG9tUVY0Wgto3vPogCKlKw3g6ozPLufeBV/0/PpPvKxid%20OX+VU+evUfmAqha4QHH/fQ9w7PhxsnyGq2sCKcirnAoQ7RZ1EDBxhkpIlA4wwuKkRIYCGUiEAusM%20zhuEl1grcU43sHwrkJUntwLlFLGtUVo2gP7aUFFiK0OR54i6ohACm+e8ePoMl86/SJmnbFxbp9fr%20oeI2lCV+nmqql9jYAikF0nuqqiAKQrY3NrnnjuN84ud+jrfc+8qdjGhHPxI9+PCbxIcvX/Gf/h//%20J6ajEd1W0mBrhUd5R+UM07xESoV1UFcZtffU3vLcsye4/e5XYKqahU6HoiiQqm6AbjS+jHr+WTU8%20WaK8wFUl5TTHjKa4cQppjjQOLQQqCjEOMJbKOGohqJynmAejws7pqlFCnefUdU3lDZPJBGNhY2OL%202s5dlAFjDJW3JFHY8O6HU4LWEI/8wYLR9ZHx3/r2GdZHGUHcZ5TO6PSWeO0Dr+L4kT7aQTUFbT3O%201hg8JoywEcyASWlodQRCW9AKAppDWgzGVhhnyPOcsq4xXlAC06piWGRkxoCzGC2hiCjClEJItHNU%20zjUXyAi08wSysW7Z3txE4pFCkE2mhErjqxzpHc2O6ZxkJxs3EYUinU3pJCH79+3hox/5EO944xt3%20AtGOfqT6yUfeysVz5/k3/+pfURtHFGpEoPCmpsoL6sJi6rkJaCtgNJ2xsLzExtY2zz7zPLffeQfO%20WEIdzNlITdtB+Cbzr42hrEpcbaiLmmqSUm9PcLOUsHIkHgIkQijWblylDjQ+jgmTFqXzDCYjrm1s%20MhyOacVtEBIRl2yMx8R1hZWawWBAECb0FhbI85KqNmgdIi3Y0iClJgwFk1lGOJ7w3ImTvHHvyl8t%20GG3NysHVYc1T568yJmJp1x5EfZ1+d4mldp/pusVXKYm3xKGk047QWlNhCNsa1QaDbmiIoUKHcytw%20oOnOxA2n2jf3aqX3pAjGRclmmjGpKrwQuL17qMuKPJtRz2aYWQ5ZSlAYZF1RTadsb24wnQxZX7tO%20d2mBbrfLYH2TbhRhbXNE2ADxfDMCvem5JiWL3Q6b16/zC//5P+YD732MWKidt2VHP1J1VveK93/4%20w/7555/n5DPPoLUmkCFgKIzDVRXWS7yQdDodsnRKqwd5afjTP/tz7nrFvWxvj9i9vISvLdJ7pDV4%20Y6jrgjLLyKfNSYcra0RZI0pDS2o6rRBhHOkkY5alFM6R5SXTWcqoqhkUGZuzlO3JlDTP6HVqlA5p%2064AgjlhZWUFGCVfWNrBCIFVEVpTkZYEIQmSgkbbZ2I4DRTEcYozhhRde4I2PvPn7D0YlfFJ1ogt/%20+EfPPviXL26Q7D7KeukxQZdudzf9GKqsptXWtCNBK3K0k5pYG5RoLKe1D9Ba0mkphHSNTcq8TyPn%20xvd+vh+RB5LUQeo9aSdhGoWMi5xJXVF1WlitqJ2hLnNU7egK6BpJUFuSMGBczvjat57kd//wD6jr%20usmKAoUtDYKQ/sIC19au01noY8q82cfw4IqK6WjII695HT//vg9wy+LCTla0o78W7bntNvG2R9/l%20L1+/xngwwMnGOdl4RRB1qDxkpaPIHaaWTMYFYdIlzTP+5E+/wnvf/SjtIKBOU0Y31sjzlHw8JpuO%20qPMZzhlWl5fJpym9VpvxaIqLIrLKs729jZYBuSlROkS3O4TWMTh3gSsbW2RlSVqURO0WVkje9dh7%20OHj4CE8+/U2eevZZZmVJ0o5Jy4qiytlzaB/DPGOUzti77wAHFm/lwx/6KP/bv/vfuXj5ElErYjoa%20fv9lmoMjU/jVs5ssXtyaUsY9SidpS4kM2nS7fZyBSEE7kfQ6gjioSEJLrDyR9CQqoBso4lABBkVj%2066OQaJqSiQYDjgVymkCUC8jwZFLQV5KJCBkax7gssN4QSY8SFpMVFKVBoKhlRF5mbGdTdC/G5RJR%20FgRGoqxBhAFpXrOwvMpoMiQKNUVR0mm1KaYpdx49zkceez93Htu5N9vRX69e84bXc+LECf7wd38P%20ZQwmK+jFMdksI1TNUes4zZF4lPFgPFlluHjpKk88+TQtHRA6x3h9DVXXhM7QCjVaxeTljK2tbSIh%20maYzwk5n3g6xRMuL1LUhSGK2R1OGV68wTQvWNwZkeYVUIcJZJpOMvbt3cX1jk3Fecv7iiwxGIypr%20KS1M84Lde/dy5vw5uv0uOg65cv0Krz98K5/73OeYzMZ02y2Ud8ym479aMDKw+Oy3z3H+0lV02MJY%20j4w0oQhZXl4EAa12wEJHEeqMOBC0AkESNL73LR3SlpJg/sc1e6J+vrbubsIObg4giQCvBBoIgVgK%20Ytmi5Ry+qijTEmNMM01TjsLaOekuoipLtiYTrm5sEHW6eJfhopLQOJwpcMaTZymtTgLG4LRESyiz%20DOEt73z72/nYRx/bCUQ7+mvXwSPHxTvf+U7/zFNPc/XCBcJ5kzeII/Jpigg9ZpjT7iS4OkImCSII%202Rhs89zJE/TiGGUtsfCs9vo4B5k1KAd5XVJZQdzvsbW5RRRFXL58mdFoxP79B5FCo8OIqN9nvL7B%20JM8pBRghUVo3/OzCcvrsBdYnYzyS0WSCwSPDiNJ7CmM5e/Yss6Jm3/6DPHDsGP3FZXq9Hi+cOsMT%20T1xDSsl0OuXKlSucP33KH739ju99A7uCR1ILz58+z9X1bUSwD2RClMTEBhYWW0Qh9DuKdgy4mlg5%20OlFIOwpJCAhu/iG+6eoLPEo03SLvm0NU7zxeNAxqIZogJGh63AFN5hUp2ZyNhAmBaLzOayXxcYAU%20AicVeV2xNh6wMRqgWy1EVoMMQVvQFlOWOCyT0YgwaXY6kihmurnBa++5l0cffXTnrdjRj2+69tAb%20xDve8Q7/Lz/z60RhQFkZVpeXuDaaUDtJZWukj3FVQeBbhHFEURSMpzNCrYilJIgTRKgZj1Ly6YhQ%20CvCGdpwwnOXc2B6Rpinnz59nOp0SdRa56657aLVa1MbTXt9GRjUiTpld36CuDV4pgiQhqhXZNKeo%20DLWzoAOKrKC0DhGF7Nmzj9e/6c284t5X8oY3vpHWvgO40Yjt4YDPfvaz/Ps//mPyYcHGjXXWrl3n%206O13fO+Z0RR++doGXLy6ybTw2FZI2OoQhZpW6Gi3IloJdNugRUm/HZGEnk6gaBMQMr+Wcc2HlnzX%20NTE3WbzSNqwUZ5GiAUZJBF40wch6iAT4QBJ2O7QKGBYpmXWoKMTqoHk4UYvtqqCQgoV2GztKcUpR%20CwdC4rUkEE0kD4IArKfOc/bu3sVHPvgBHrxzpzzb0Y9PMgh4x0+/ky9/8U+5eOYMwjjK2hLGCbWt%20IdBUQFkUqCyn3W7jpEAoSRgnCGuZ5hl1WVClM1phwOKuZbQUxFrzja9/gyLL2NraIi0NQbtHZ2mZ%20e+57AK01Tzz5NGlZU9aGykBeWWrrGtChkCRxFycdAoNyttkjMo52u8OuPXu565X38uCDD3L8tjtI%200xn/5//yGywuL/Hkk0+ytrbG6u7dOOcwZcXW+sb3V6alBk6cu876OMPrFo4QHbYQytDrdGgnmk4C%20cQChM+xqtwmo0Dia4bxCOYVygjmSaB6H/Jyg9jJC4OaP1Lyh3XhEvfx3CWkgUbECHbdwVYH1Fbnw%20GOXJvSPodRnWJfHiAiJMQGuclFSuwZR72WRkC0t9pqMhiVaYquStb/8pHv3pn955G3b0Y9ctd90j%203vyWt/hff+E00sPG1ibdpEWZVnjvmFUFtnYEUTS3Q4ppt7rEcYvh5jrtMKDV69Pv9eZmjZKtwRZ1%20VnD5yhpRGJLOapSKCHTEYHvCmTMXyNKc82de5OrF6xS1oaotpjQIpalLg/ee2SRFBwHWO0prsUrQ%20SiL27T/E4Ttu400PvxmvJIPBgHMXzvO1J75Kludcv75Gv9tDeIiCgGwy5dLFi99fMBpn8NwL55kU%20oFp9hIwJdIT3NSsru+j3YzotiJWn3wqJMKibTWonkM6jvEQ58VIy1MzSG29efzPm+KZMa9CZc49M%20P+8nzZknsVTIueecFZI6blE5O1+w9NhYk1NzbTIgXOhhS4cPAtABtSgItUQRUGYVQgi0ElRFwT13%203M5jjz7KLb1oJyva0d8Ive0d7+ArX/5zzp48hXOe2nkckrquqKzBW48pDXVpSGSAqw3j7QGz8RQf%20xyx1+8RRSF2WrK+tceq559le36Tf6mGMIyRudphqw7UL1/n8tS+QZhlBEDEdzDDGUtYWJUOUb9A6%20SikW4oZnnZclviixStJJunSTLq0g4ZmnvskwmzJOZ5R1Rafb5dSpkxw9epzpdEo+neCMZZrOuHDu%20PIMbN/zSnj3//6THDH51WsCFa5tkVkHUIdRtpNbgYNfyIr1OQCuCyBuWwwBBSohFowlv+no72WQ4%201jfroGIemITgJoHDzxMm6y0Kgfce6V0TiJwFFNJ5YqkpLbSEZymOmfmazSrHCItot9gaD1mbDFlZ%20XqEs0maZSc/X7ANJGChMlVGkM3YvLrF55QpvfughHnnNq4WfJ2s72tGPW4fvu0+85rWv82dPn6W/%200GW0uY2UqjFsdB7hmvKomubklWPkt9koc7J0SpmlrF++yuFDB7ntllu49dBRzLSgI9tMt8fYzJKE%20CaYqiYOYftBltDUk0CH5dErLa1Ah0yKfs98rVGmI2xFVaZt+i/F4Y4mDgFYUo72gmKUUVQl4Rlvb%20LO7eRZHndFttyizFFhUSQSuMmGUp4+0B+Sz93jKjKfzysyeu883nzyCXD5IZEElIXVd0+m0WFzp0%20WuAqWFkIEBR00GgawJPAvWzHOzdinI/S8B688DT+l81naDahPQIhXFOTNUSol0s2C4n3oAROCNpB%20QBwFeO/JvGFtPGLl4P5mp0hpyjnzJe50kVmGry1aSJaWemxfu849d9zOBx97jLQ0vpvonVC0o78x%20etd73suffOGLrN+4TpgkOFNjS4GSgkgpTFYhCJAoBtfXKbIZQaBYXlqg3+7RChJM4VDKcMv+w5hh%20Rb2ZgXOYWUmbCJVahukG3jkKW6A8LC0tI1AElcQ5T6fXw1rPjcGAIABlPfuWVxhOx0zzjBhFrBUB%20UJuaqio5cvAgK/v3cubcWWbjEXWRU5Y1pqixDrx1XL10mfUbN9h/7OjLPbP/t4cxK+DK9U1KJ0kr%20qJ1qIN5aEEfN3lCkmn5RMzFz84+XMODzr+Re/qI320DzoNN0cJqGtgccct4mkt/1e5ptaQfCEQIJ%20zQpAs8YuMMJTCkcpPSbQOKlwonFxFXN/KC/n/uOhJp1NicOAt77xYQ7u2cOenUC0o79h2nNw/6d/%208q1vQcybxzqMcM7jjMcWBjMrqcYZxWhGPcmaABMkTDZHCCc4eusRDu47gCsd65fWKMY52igip4h9%20SOIDIq9JnKLlNW2h6Qct9rT7HNq1yu6kS1A5FlTEkd17ObZ3P3v6S/SThNCBKCsSFbDc7dOWAdlo%20grYQS006HHPu5CnWr14nlIpWGCGd5/9m782a7EyvK73nnb7hfGfIORNTFVAEauDcKlKiJKrl1mC3%205CnsCP8F/QX3T2j/hPalfdHh4cKhVtuWWx1WUw62mhLbDFIki2QVCjOQ45m/6Z188R6gWKRk+1Ko%20OCsiIxEJIIFMfGdj77X3WgvrMUKyN55AiCxm8/9/ndHpJXzw4ccEmdE5QcxypJQYJRkNS6pCMchh%20oBO5nGp03LQ+klfZTGJTkDYfCpti80khSkPaJ5dGqVMSxE86JOKGOwogFWaz/jdaoZQgOmiDY217%20bAzE4PF9UuYL7wl9jw4eay2ZUjT1gnffuMV/9Lu/y41iW4i2+PuHYn/vn/zjP/xP/us//uM/YX45%20ZW9njM7SLZF2DukDPnR465EIVIjYdcO14xM+f+892rrjT//8f+fjn/yMZrpibAp21SBttmOEjW+S%20jxv7fiGo3YI6HzA0AyqpWLlAgWJkMhYhcjAcooYF2mQ0yzlXqyWx66gyw+5wQEdgd3eXxvZMl3MG%20WtNmhtB30Pf0dUNeSiYHO1zV6d7o/7MYOfi956dTPn74BGEKoszRWY4QgkzCeJAzyCWFhtJstF0v%20C0okpWm87G4Em66GX+p65OYXRD7hjl72VYG0gYsiefnykgOPgSRrBSMUWmtCFHTBUbs+5T+FQLDJ%20bpMQCd4TYsS5Hu08ZV7w27/5Td67+/b2qd/i7y3e/fX3xb133onf/tZfIHWWMtOsRbkW6T3CgYgR%20owSZMLR1x9npKX/5l39JV3c8+/gh+9WYqhhSCkN0EYHEKJWU9dEk4bhSaKUQoSJah2ubZOwmILYd%207WrF4uqKO59/h2t3bnJ4csxoWPLtv/4OF0+eMigL3tjdYVTkCJMlcrzpUBF0gNUqcUahtzjVo6Ng%20MZvz8Ycfferr/VvHtPOWf/X4yTMurhYonaegRamIOJQMjKqCIkt8dLZpfmTYfLqoIOr0YyFfjVnx%20FTeUmCIFKNJiTb18C+m9jC8HvJTz5JApviymUe3VGQASpZLw1fqIDR5pNEYqBIFcSTItQYHJUkCd%207VpuHB/x+7/zj7iWse2Ktvh7jd/+R79DORhivUspNTGZFuJTd4NNXtciQnSexXzFj370AU+fPCP4%20SGZyooOwoXCDSsaGUUtQ6fbuZb5jURX0vsfajuFwwGhnhM41g0HBzRvXOH38gLPHj3HrNQfDIQfD%20IaFtWV5c0ExnHE52GGU5wVoWFxf4pmNvNGF3OGaQ5QyKEhEhOEezWvPo4UOa5fJ//H/tjOZzz8OH%20j2l7iy0iMVcEFxExoGWgLFLqpSLxRTFuouO82oxovAq2jK9YoxTSJF8mFkSPiEm6L34+sWTDW4vN%20SBc3urUoIgi/2Xil7INIRAhB8NA7S9d1hBDAe1xvN583QEj/kFoJrPO8+/Y7265oi9cCv/qNb/DG%20nds8vP8xZWYSrxrSWCU3HtciCFCQ5wX/5X/+n6KMoWtazh4+YyANdtGgbcA1K6QPxBDwtsf1LbZv%206a0HbymKnLIq2T86YHd3D5krFvMVbd+Q5wbXtnz8wY9ZTK9wIqK8Z1KWxL7j4sUpPgZ2rx9z/eiY%20xWLB87Mz9MYfybc9B5Nd5k2D6y0hBE5PTzl/9vy/euOd0d9djM5OL3jw4AExRnrrUTrDAUJElIyU%20ucJsIrw1QIhIoX650YopkNW/6nE2SrSwKUARRIip+rwsYPKTu8jEMaWiEwEpUzHzpC2cj57oPDZ4%20uq6jaRqCdUTr8NYivE0ZbJtI3q7r2JmM+O3f+k3eLNW2K9ri7z3evHtHvP/1r8WPPvoIaTKsapMN%20rNRoqdIJDClX8OTwGn/4h/8xfYhpumg9w/EurDr683NUdOAcrrd426VL7a7BtR3OWVbzBUoL9nf3%20yLKC8eEuz5+9oG1bYoy8c+8uL85f4JqGZdfg2vR3mV4uOZtdMZmeIx/c5+adt3Btx3I2o7M9vXXk%20WUaR56y7nrrrMFqzmi+4uLjgjXfe/ruL0flsxbPzOQFF8J6hUnQikOMwQKEEWVpSbaYwgfjEoIif%20H36Sq5tKpSjt9BFREmJyV0ybtU0tkp90Ri8/h/y5M2yNetU+OQI9gR6w3mF7T/ASgYHYQ5RIoUGm%20W4IMcHXDrVs3+Yff+MZ2PtvitYAZlXzhK1+m/Bf/IvE7m/FMxKQoCDHSeUcMgWo8RGrJ+bOnTIYj%20QmdZfHxGHgSTaogUhhAFJmRkYshASoiesLFhNoMcrE0zHfD2Wzd4J4o0w4lIu14TrKWoBizXK2bz%20OX30XM5nLNqG+48e8r/+n3/G9370A3YPj7EiovKcvaMD3rr7Nj/6wQf4YOlsi5SSrmlZLhZ/N4Hd%20wR9958ePeDHrkLJCO4Gsl5TaUGSGIRXvvlGhHASbRjWlBcH5lCMWYxrVgkg8NuDRQMQIgbObMUxB%204wJ1V6OUohwUhBhQIg1yEsBbBGHTEUnw6YCyFRGrJS9Wc067NVk5Yvb4Bbb2qFDQu5am7hlJQ9da%20jkcT5GJO13T8F7/ze7w3qYRP50pbbPH3Hl/++lc5OD5g9fAp14ZDpss6JYhoSSCSlRltW/PFL77L%209OqM3UnJ7Oo8manKVBCs6ahxhCg2dj2aKASoDJQEGSkHBeAQMtEfMUZc72mbFFutR2NicGRCMDi+%20xhvmTYQQ3LOe4D0Pnj7m/d/4NZ5dXLJylrntITP81fe/z5/+xbcYZQXrZo2NnlE14PT5C2bnl397%20MQrw1v0F/+zp2ZT5usVlA4QE2btUQduOcTnBd9AGS1toVr3AmGT7Qdys8GMSpr5c2KtXZNBmdNuQ%20aSnmJOAkyBCIeIxIMb2CmJJdo9rMaxJ8JCpBrwVLYEmgjp6mi7R1B1ZgG0vfe+ginbXIEJOBWtty%209/oN7t66lf4+20K0xWuCW3duiy984b341x8/xQhJoTWu7yF6IgEpDQeHe4xGI5SMxODJM0WR6URT%20xEhDS2sEXmukLlH5ADMYk1dD8sEAU2TpTic6wEP04MH3DtN05H3PajEn2J667an7nnnTol0giwIl%20JDu7u1y7eZOv7+zC4T7EyLRekf/Jn/DX3/ku73/+S1xdXfHt736XJxenyBCZXl397cVIwv0nT9L+%20f71eU5g9pIhEb0EKmlXHwe4ezoGNjj4KFp2kyiTZqzujl2pYT9jYZf48OZ2qcoRXmWUxFQwfUBtW%20SUqRrrjDy04r3RvVMtJpwYzAWeyY+45eRFZty7ppCM7T1jWh6ZKp+LpmYAMxBmzdcu/zX+LevXvb%20p3uL1wpKKb72q1/ne//qW+nWzxiiEOgokAGMh1vH19gfjsEHemsRSqKzAi8sznkaGWiKDL0zYWfv%20mNFkH1NNIC+SJ71i4/HjeLk6AoEKUNlA5Tyj2RzfNDTzBc10ip2t8PRENjQIsG46Zu1zxPQKbwz5%20aMjhZJc7t27yW7/xm1xeXvLTj+7z7PQFWkhOnz1ndXoZh8f74pfGtKdPn3JxcQEhokQ6QQy+w+iM%20vm/Z39shycYCvXcsG8fOYEi2oYy02CR8x0gMLgnzZZrLAjLxQiFlKUkBuVIoqciQSCnT9yNsmqjw%20Uqcm6YRgZQRzAmeh4el6zjL0BCNplj226xEhEpoe2ft0JNlZVAy4tkGGyOfuvMl7N7b5Z1u8fnjv%20vffY2duFRY3WKdUvkwoVAspaTiZ77FYVGkkfHShBh8eJQDEoyQpNee0QubPD7t4xYrwDwqS+IYCL%20PgWobnoHKTc8sFJEIxARdDVCNy35aMFgUNEO5rj1mrBusV1LZgbEKAhdi607graxUfaJAAAgAElE%20QVRkRUEeJQNpePCTn7FarVLopJAoAufPT1FKTv/WMe3FJgo6yzVGCVx0BN8jo2IyHHIwniSRnu9Z%20LD3CWYa5QI9zSiGJRJRInU0Mm7V6SHFACAkqYhDECJp066CUwqj0XXjZCH1CakuiBCegBc5xPO0W%20PK3nLLXCCs16vaZvWqQDaT3aR6JQxCAwURA7y854xL27n8NsS9EWryFu3LjBG2+8wfMf/ZRcG4TS%20FCiMiEjnGZmCSVmRmwyvBVZBHyMYQ3W4j5mMkW/dhiwHmUNQm4s/UAq0VkCZXnz4Vy/CJNFKW2wh%20SZ3URJKZjGw0IS4WzF+cU19Y2t6SS402OUYrXPDY5ZrLp095/NOP+ODffY+273jx9ClFmbGwHbOr%20K8q9na/9UjF6uuSj09NTuqbGyAHB9wS3IXiM5NbxLSYDnZwWQ2RVrzFCMqtrylIhsgxQ5BuuSMqN%20IYhIZwGwOVpUMcnNpEpE9csUjvjJOy9+PkEEemAKvHArLtqahW2xusJay2w6pV2sECFDdg7RWozf%20zKEBXIjcvvkG797b3hZt8Xpicu1E3Hv77Xj+4X1knpMVOXkfqGQGwTLJSjKp0DGZrQUJXsTECR0f%20wWgEeQlKp5f9SxPDDdUrHERrEcJ/8kIUMd31KY2QAtd3aCFSQdMaqiGiHFD4QN13GBdxXYfrejIv%20kC4gJVQoDqshH373+9TWkmVZKliiZTWd05/PPsqOdz89ps3mNaenp6xWK0KucM2a3mtMjDgtKIi4%20ZcNgnJFpg3cQomC6aMgzTawUXkvQijxNnEljFtO1UNgcLYpPyWM32rMY8QGCkHiR7icDYIE2wEJ6%20HtZXPF1NqV2fVpRCs2o71udzwrJJ3Na6o1+sUE2HicnqX0u4d+9zvHPr+rYv2uK1xVv37vLdPCcf%20SGLdoZsVw1yjtOKgGqIDBO/xMcDAoAcF46NjODpMV8TWp8M/k8YzIdO9X9dZbLOGtkPLgFZJgB6k%20JCpNNAF06qSkTjbPeJlaGakofGBPKKZPn9F3LRJBluUI4Qi9JXORKkrGWUmuMkRZsnSW0mQ0qzVX%20Z+ecHO9+ujOq65r5fE7drJAxIwZDICcIQVSCxeU5F8+fM1AH5CNFiBIXBJfzOnUhakAw4iVFRIgg%20Y8r8FiLxRC+V9CEGpEhX2ekbCEGm+yGnJB7ogDpaln3H3Fuenp0ybdbIMsdojRYK1UXiukd3Edf0%20iKbHrxpE26B8QMbkrX3z+nVGEi5X9T/dHw7+yfbR3uJ1w8HRISozFF4gshzvlxQoBplJI5rU9CJ1%20RqooyHd2GZwcw3AIvYUy34wdPc4rglR477Fdje9asuhQISbulYiNYIXE6YagM4ajCV4liiXEgAkx%20kd/jIYUQDLuedQQX6qS0cB67anCLJdQdxkekNLgAzWJJUQ2IvWM+nXHCL5xMP336nAcPHlBmOVoK%20VAzIYDHCg20YacP//e1/y+XzF4wGFQTFatkxHO1xftXw8OkVT8/XnC08qz7xPFFJnFB0QWEj9CF9%20kV5InJQ4IfFGEzJNKwW9lnSkFNqL2PNoMeVn58/42dNH1KsG1UPmJLLxqNrRnE+5+vgJpvPkNtJP%20l2gbsOsGW7dkWmEyxfvv/wMAtoVoi9e2M7p7l529Xby19G1DpQ2h7TnZO0AjcD7JLJyIkGl2blyH%20yRichSIHHM631HS4PEIuCQV46ehiQ6RHKs9qeYmSHmkiZ9MX1LYmCoeLIfkRSUBJ7Mu7QimhyKn2%209ygnE7Iip+97MqlZXFzRThcMhGZ/MGJSDJAuMC4GFNpwcXb2yg/7U53R5dUVTdNsNmkSqSLRerxt%20sL3gC+/e4/TpA/7iW9/iavqCb3zz6zT9kgePzzg5OWLZB4KIRBy9V4xyqAxkGoxSOJ9mUIVKhDYb%208V6izLBS0m66oYXtuWpWTNdLFl1D23cYDJnRSYzrHJUskGtLGTR10yGdRnYOeotyEWMUXdNy4+iA%20yXi4fZq3eK1RDgtOTk44O52mMAopGWhFrtUrG5CoJDI36EEFZZFGMpfokNC2WCwOhVACaTwSKHLN%20IJbotkbajklV4uoVDsn1w31CUSCyHLXhmCDRKYhAkCqNbUIgxyPyVY1f1MTGopEUUiOsxy7WiUMS%20Au0jMqZzHgj0XffLxejs7IKmaZNUIzhUCEQRyYQhzwxv3bnFmzcP+Mu/+rd88LOfcv3Nm5zcOiav%20DnBUzJYzlk3Poo6UK8u4UIyqjOFAkWcwKPQnEpLNn2k3bw64WqxpvGXlOpZdw9p2dN5hkZispIoZ%20A1OwbGtsGyi84vLJKdoGaDzCR2LT4/se5QMm1zSLBXe+/mUO9/a3T/MWrzXU8aG4efNmnP7oQ5xz%20qAhGZigp0UYlXkhL8uGAfGcHyhKUAe/BeuyqBhGQJiMCKgpyJRFKQpbRPHrIiwcPORiPU1EbVFS7%20e8SNcj1KkZZsHryzxOiJMpDJRM0wrCjGI+x0Tj9fJgN+pdEe2tUS6SNSAi6ksyGfFlrtuv50MeoC%20fzSbzQghIITGux4fFQLNYJhxcLDHl750wOUVvLh8wb/799/hX/+bf8Pv/uP/kFu3b/D8dM5o/wZE%206CP0vme+6pHrJUZ7tApMRuXmfiGt60MIWO/ovcMFS1QSGwM29HQ+ENBErSkyk9aYyw7tBL62yCiI%20refFw6dIGylNxqppCL0l9BblPSpoXG+5d/stJor/Zvs4b/G6Y7I7xnYt0QeEUFjbEWOgKAqiTPYg%20elCQjyowGQDOBXzf47oeRUSEtKo3yiOigLaDuqa9mPLg+z/kTClObtwk29tBCMXg+BhRjBAybb29%20d8TgcN4TZCpmuVCb+J6CLC+xUiL8Jqw1QujdJzZBpItt6SNCwXq5+nQxmjX8s/l8iRCC3GTUNhJd%20TwwOES1lbviX/9t3GO9P+PxXv0h1tMO//NP/g//hf/kTfuO3/gNObr5JtwqJPDMgVZaicaVD64AQ%20nqfTGqkEWhmUlgiRUg9CkAQ0fdMmglsmCUj0ASEjwQpkTJ2QDx4tNHlV4LxnsVigVMHAZCwuV6mY%20uuRiJ7xilGd87tYb7MGWK9ritUee53RdR5YbtJXYukEoSTkaEJTAETFFgShLEJJgPb0PhNaik5CC%20IDxKZaigEj8yW9OenWKvFuzqArteo9Y9i+acxbLjnZ3DtIULG9WEsxAsMQaiVCAVGA29A6PJi4JW%20KVzTYrs+6VaDQCMJQqRRTSlE9AghWK/Xny5GTeO4nE5xziGzJO3wMWBtz2q5YLGc8t/98/+e4e6I%20G2++we7BIfloxMNnL/jn//MfY6oR490jdFEyGFaUw5yi0phSYrKIUpCXg40PdUae56hMoTVomQz8%20c11itKQ0BiNAh9QT6pjOCnRoiL5lMBigR0MePX9BjBElJZ21tH1PdD4dXUYQPnDj5Dq3b97aPsVb%20fCYwGKTX0HA8xiw6hGgpqwozrGilwMpIphXkBmLAbRT4USiiMkQRCEonYzUhEDFQdz3L5YqP7n/M%20WycnDLOCQVXxdLGkUTLdJtU19CHJrILFEbBCIIJCKUX+ksg2GvIMrTXee5qmoW/bV69LKSVaSMxG%20j6oQNPUvjGnL5ZLVakXf9wh6rAVlCoSI9E3NYjFDZBJZZDw+e86D81OG411MNcZmAlWOWNoU4TEL%20NbFeg7QE7RDSgYxEoVHKoLTGZApjNNok9bwmUijBQGtGRlMiMER0CBgkpQycTDL6rkaVOSI3fP8n%20P8EGj9aKermm6zrwPsVkb0zb7t6+w63j4+1TvMVnAqPRiGo0ZOglYnmGygyjyTi1PEriY0zFQxsg%20SToyo3GFJOhI1IKgFU5LyDQqBvphQRiWiMmQ8uiA4f4hBM9oNCQbZNQykotkBISzRN8TCMkxMkp6%20pcikxqhNOREgtELKzdmOda8MFF++LqWURJ9kY03T/AJnVDfEjUNicA29iwy0wSi1EcsGxgcTrI+I%20TJPlJQ4FWqNVhgsRqWQi7nuP84Eo0+8TWiK1QJmCGAXOC/o2IPoOCIgYUHhUbykUDKQgCx7tPMpb%20MinIJdx3DX2/JK8GRAU//MlPEKZgbzdDhzW+68FGTJ5mYh0F14+PuD1S20i0LT4bnVE5ZFxWFGtP%206yBTmrIs03/CIvnG65cRYSEFZZDplJITIjJLGlBHROoULZaPKsLBhK/97j/ELldEJZnOV7gqJ9/d%20YeE6TibX06gmNJlVhOgJeByfKCtgw24Ht3Gi1MgoUEGio0RECchNkLR4VZystb8wpq1rbNORCUXr%20HIO8ol6u0FpTDIfkxnDj5A2+/9MP0EWJ8oq2dujCEqRhNN6lbWukyciLEpXleAK9V/TOEkRA6xbv%20HeWwQkrJcr2iKDJGwwGua3F9h9eQj4ZgW3rXMRhoXEgEXB4lg+oQhKfvao7G+wipKfpI1nrcdMmo%20GLK8vODa/g7Ejttv3qINYOT2Qd7i9UewnlBbHv/0PtdCRq5MigEqh2ADedAwb+BiBTt7G97IoTbK%20CIInE0lkm+qIp8wN+fEB3XoBQ83KOtSkxKgcXQwYFsPkt60KyDUqyxhoSYbHRosQEakB24KCEJIF%209E5R0ixqYucwQqMkOO9QOsM7h9E5mdK0bfvpYuR6i+t72qYhqopBUaKkofcpOXJvZ5f98S5G5Myn%20a3QXMeMhWmiWq5Z68Yzd3X1yrTDW0nc9jbVYwibLMaDHefLRti61jx6ME4guQB8YF0OibWmXNYQO%20IwTBRWTwaKVo24AUIEXA6JK9yV7yv+49i4srlBOEzmNkBiEyGlXs7+6xDSPa4rMCoRXDnV2edpZe%20qaTIKArwPWQl1jtM22J82CjyHa1NkdgFFuEdMQqiEEitkZkGDbLMUQzw2A1XK5Eyw+gBUhWgcnBJ%20BQIpZ14IiQwSpVK4JEKCa/HWpeIV0/2TQkHYdEqbWhA214UhBLz3ny5Gbdu++qBS6tXHbNfTZhne%20ez74mx/SLVaUeUEM0E4X9OsOkw3Yneywvpzjix6tso1HNUijUFqDieQqfRFlZtLRVMxQSm40NRET%20JNZG6tWSMhOUZU5Yd1jbozLNoBwjRcS2PYRIZkow0DYrms4RkLSdJTcG7z37e4e8cfMGxbYYbfEZ%20QVcozP6YtY4scQSjiDsDFlhUOWTtO7p+ReEahExmh63t6Js+CV+9IwQQSqODIFMKYRRIiZQaJQRC%20J65JYEDkrxTrNiaZyEt9afDJuE0INteQ6Uygb9vNz+lX5LkPG996Ij4EPAGHx+LSmNbZP/qEM9pc%20QQ6HQ2w0LJdLbNOSV2mkujw9Q+gSaQPWNQTjkMqAd7i+ZdlNIQiuzmdE65FFTl4MCFKAUchSYvsF%20WWWI1hEEtE1PcI7owNuOmRRoAvQ948M9xjs7RNVicsiLDJllWJ+MwxftGiWTJW1TW+LGh9vbDllm%20+L5nb2+Pa8dHW1PHLT4z6IF1sMhRyXLVMhxWhNJgjSRt6gXWtsyXU3baMYzGFF7SNR1B6hTvJSVS%20a4wxCKlT7NEmqTDlrwqESEH1yTYjySSCTMVEBJ9ew94iY0AoBU6C99jVGrdukzA1BAIxuboGTxc9%20fXDY4DeFyONj8t/2y/qffjKmBY9zDmMMXRuwNnD91i2++tWv0jQNP/7RB6wvavJqjFIK6yLWWoQR%207B/ss7u7z+H+ER988AHPnzxHRokSPV3fEUREVYamcQzjhEyYRKj1jmbdUK9q6B2K1DXFtmXqFXHV%20E51lPCiJIhILg8gkF5cLVospRPsqqqhpHUpm+Nglktw59nd2eHO45a63+Oxgvq55dnZGPh5Tz5ao%20qqKTkWgUNli0UfTRs7i6pBhVFIOSgdF0RiJCTO7yIrnMe5J/iEQQo0BlOVH4lwNhkl0JvTHkT4fc%20Dp/MEa1FBo+SyQ2SEGBV00wX2KbFRMBHOuvpg6ePm/fB4wj4TZGKm0AOodT9V8VIbKJ8XNfjrKAw%20Oe/eu8tvf/M3efbsGY/vP+TFwyccHJygi5Jl17JoWkzU3Dy8zt27b1NmOYuzKevzeXJ99MkSM0hB%20LjROKSpdUqocqTOGhSKTNbGR9LJDeo+KOW3Xc3664PzpJVVpyG/eZL6c8+jyObuHezSrKW2zJF3A%20i2R4GyRSS4TOCB6kEOzt7r7KE9lii88CltMZ08tLhlqzsBap1avXb/QBrQTRR/xyQX12RlEWMB4x%20MToFnbpAv8lOyxBolZNJjdAKH3tAEDbWPknvFjc8T1Lqx40eRJBkILnSqRB1Dns5o57OkdahhcQF%20T2072uDoYtq8eUFyAREyGf8jkVohcvNnr4qRUpu7gJA8rKWULJdLHjx4wPnpGfVqxc2b15kMhlzM%205vTOMhwMUSZnfnnF92bfZVhOOHt2Rl93uBDQnQMNxmiiDWifQafovCMvM6rJGLKMhehpXSB6RcwK%20hPZJZxMtN978HO9/7X0ePLrP4oPAZDLGdy3NusZvnKEUAiEzRBRkZgC+ocgH7O7ubp/eLT5bY9o8%20OVfIPqJjIobLrET5iIoiicRjkoVwOaOPguz4CLm3Q27AK4XyiccRWiefIpmcWK2NhM1BULL6ickU%20MYZkACljknCIZEmdC53W/XUHiyX11Zx2tmQQDUoZvOtpeksbAj0RKyMuRNyGe/KbtxACobO/96li%20lGUZxhgyKen6lr/5/g948ew5XVtzeTYlOEOeVfS2w9lAH9Y0dsFy1UHUePsILTSZKZExIJVCFwZl%20NA7QYoCwhr5LBSTfGyGKCmMawBFEAFmBkfTB0nuPLMbkO4c0Dx/xe7//B0jl+cH3/30i1/sG5yJ9%209FjryHWO1AZ8S55nVFX1izFuW2zxWkO6QFVU2OkKZTJijBSDAZBuimzfISMUWUZcN9S9I1Madseg%20DEW2kW9Ig1Q5UQi8SEGoPgqQm7BUIRApgD4JZWNM6dHpl2DiJu3HWViuWF9Mccsa13RIo5GZxMVA%206yxtDHRC0MeYtKeENLLhU7CHd3Rt+/6rYhQF1G2bDhSjJMsUR4fX2ZlM2B0N+Yn8iKZ2nJ0/o9rZ%20x2Sa6aomKkNTd4DD6BIbJRKVWi+tcAisF/gA9IaudXgpWa3WnF/cx4sUX63znZRAQsBUOda1ZOWQ%20lTR876OHdFLx4YNH9M2UR48e4WIgLwdo75HC4G3A9okMk0IxWywZlBXPW+L1YluPtvhs4Pz8ksfP%20nqPnc2LXMDk+wklJ0IrWOqTUZIBwAe8twnrq0zNwHYO3biF3d0FrYu+xrsWUBVqqlOwjAamIMeK9%20Q0mFlskNIASP8A4VYyK9tYB1B5dXLM8vaeZzmtmaSTVEB0Vd19iuZVqvN51RwCnoQ7rcbnuLMJp2%203aF0Osp8VYy0lmRZhpQdd+7c4ejwGpPJLtOLSy5enDK7umB354h2vub89CmDnUOOTg6ZLXvaeUM2%20OUQKg/UCFyLRS7TSSGFI3aSibSXIDKk0USpi1EShkEaBVng8ymyutb0mOsuTq0s+fvGU9uIZoxL2%20hiYdYpqMullje0eWRep1j5Qao3KMCUjboXXGYb4tRFt8Rviix5fx6fNniYOp11RKUsuAHo+Qw4re%20t0giIsqNOj/Se0vbrAnTwNVHHdXxEbv7x2kiURqsA2vp+haUR+jk8SMBpSQqUxA9aiOCxTtoe1gs%20sBczlpdT6tkM13ZU2SCFsAqB0Gka6r2jDo5ebbginQIjRVDpx0alrd7PF6OiKBiNRvz4w0f4oHj6%205AV4mE2nSB8ZjUZ43/PGmyc8v5gzvTrHSoOXBZiMrChpu0iUkigNUmtCnhONJuqUMCBCjjIGoQxB%20itQVbTxqBVCOx0TpaJsVLgSKKtukh3h2bhxTuRWr6Rmz+QV7+xO+9KUvcefOHda149vf/ktm0yXa%20GJTw+F5hHds0kC0+MwhKsGhr1LCkOQuY0rDOJN3ApKhrBHojg8pUhtoUj05Egrf42YzaO/S6pxrt%20IosKsgIyQ2EKCF06XJSvsnnAxiTxcAFmc+h7WDe00xmrqxn9qkY4T47Cdj12Y21SmIy161jZjiZY%20vFK0rqcnpHsllTyShFYU1QA1yP+nV8WoqirKssQYg1KKs9NzXGcZVUPuvPUmX/nKVxiUQ27evs3D%20Fxf84IP7TBvHrA7MlGO1WCHMEJkNyPMBMsuJxiTPXCmIKDJdIVSGkDIFNWoJWqQoIhxBCbI8B2FB%20CMpC0TYr6n7JxEBTL3jz1jV+//d/iy9/+YucnBxicvjBDx/zV3/9PbKsw2iDjBaHYN202yd4i89O%20MQqBputAJcF6zAyjw0N6nV7YypjNsWHqTrRMfkYekD6gwmbjddnQZxeYvCIvS/LhGMYDMCoVIhk3%20mWEiuR66AC6yvrxAWItrOlzdEruezEeUMkitUDqj6zo8ApOXrLuWWdswrxusdzTBYUWkFwEXA05I%20pFIMhhW6LP7bV8VoOBwym802Xik9zjkOj474+j/4Fb76hS/xztv3eOedd3h2dkbrPKvbt/CPzlm1%20a46PD1nWnvnKY7IKU4wJWuOEwAmFLDLyLMd6hVZZcpZTkBU5WaEIItD7GqMjZSGxSgOBQSEY5BnH%20uwdc35vw/t3f4WhcsrM7RmjB1fQSbUr29vb4xq//Kv/6z76Fs5bCZJi8oOn6LYG9xWcGDz+8z+nT%20Z1ycnSOjQEjN4fEJi7phICJ7OyN0Z5O960aYmkVNFCCCI4sqJehEB84R6xVu2uD0HJ1veCAZk43G%20RljrncD7SIwpcNVbi+gtmY/Jr0wnL1pHZNmsaHtHFBJtcmb1isZbepHsRoJMZz7WB6IShJCOlquq%20Qmj1yWq/qNIqvCxLrLXs7Ozw1a9+lW9+85u8+7m7VHnGIJMc7e1w69oJ69bz6PmUQVFydPMWi1XE%20PTlHmiFS5biYZkaUxhRD8tEIu+qJmUFoBYRkxG8UkZ4YI3lhyLJINRhQmpK9ScHR/pibN45563qB%20aiF2Dav1ghhjOh8wOUWRc+PGDUajEVcXl4yKgmI8oe+SAkZuC9IWnwE8+fBj5i/Oscs1WYiYokT6%20yM9+/FOKIuNgZ4zuLZWLjKWmkBqlJcEoMg0HMiBCADKIa4TMMEKBTmk8ysjNnePGlyipylAY0Arb%20riEEpA8IITAqUTDWpUPGsiyRWcBGMIOCzgeikgSlCcEijUFLoEuJt5GI1Kkzgp/TppVlSQiBvk/Z%202e+8fY/33n4HieD5s2csri45Otzl177xa/za197l+NYdzPCA7/7gPqvecnExoyyGoAYElZOrIh1k%205RmqKEAVhDwp8osyIwSHEFAUAqNzYsgYVYK9Uc7NazscTgoK7agKRVUIfB1ZzS4otEREh9IKoqTt%20akY7Q977/Ft8//t3aeuGoshBdEznS8488Zra1qItXn+cP3yCv1qyZwbEpuHW3hG5E1w+eoExgmdt%20g7GeiReMlaZUBq3TSFdlkk56SgHWS/oeoiooyiHCaHwMlOMKj0druSGVk6ZMSoXKC7KD/Y2Bfbri%20RgiElOQ6w2hBzA0KsCGijaGxHTZ4uuBYtzXlsCRE8Bu72iBi0pxuThNeFaPMMN3d3d3N85ymEYx3%209snLEWcXC5qhw3Wev/nz/4tVF/Ayw4wPyYuK2aLm6VmNo0IVJUENUPmQrBhQlAVBJ1/r3jsClryQ%207E6Kja7MMRkaxpUm15Y7NycMMjjah2EOfa3JFGQSVrMZx3sVksB81ZJlkohmumzo1jWmHPDW3Xf5%20+PEzAp7Wznm+nDFr4aTadkZbvN6I1vPsowcsLi45OLpB7yK337jD3s4+O5dnKC1wKIz2DGzcyDHA%20uySMdb1g0dWQZeAVfWuJoSGaGus86/UKZMTFkK6upQQP1iazQooCtTfCaQEkEzdLIGhJLHLIM9Y4%20dDlAlhV7+wc8fviIdVMjtEDnGW1nCSq+GuWcTr7ZRVF8uhgdlOwZY6JCMygHHB+/yc8evAAhmUwC%20N2+c8NaXR3z84gonMvyLmoVVqHyME55ycoIZHjNdOlwwlGYIQrBuanSmGU8qcu8Y5S05jlI69icZ%20d25VvHGtYGcIpQZDJFObhO8qQIhE7xnuGPpmgdCRg4nCRYezgZ1BjnOBtg2895W3+MHjxzw6fUQr%20hvx0dsmzdeRuJTDb53mL1xiPvvM38fTBYwo0WZ4jteBiNWdWr1jWNdE5dkdD5rNzJodHzKczKqWQ%20IWJiRMiMxucom1PpDNtMORiN8E3HSCiGoiDPDG3bIhDELlIoQ9u3tE2DGuVM+xlLX9PbpDVb9T3T%20Zk0vBZQ5a++pg6fxgXI4pByOqLKCKyHwIeCCpwsBU5Q0sce6wLioKPJf6IwAbt++g+3/HI/j2bMz%20pBnQeWiiIeg5vquTXaQKSB15/OICGyW/8rVvsGgFP/7ojKgHKCPwrsUoxWSgicLjVqeMK8uN0Yg3%20r4852su5tldy7VCxW0GhYFiAEREtJC8nq5jEv2mTYDW966htR91b+hAQGvpYEIVEjuHtL36eq9iw%20cgsW3nK6XPBsMolvbu+NtniNcfbslOn5FUpp1m1L2zaovEBog+0judHMp0u6zvLo2SkZgbX1VFmO%20DC39umMnq1heLZnkBYOsQEqN8zVFPmA8GbCaL5jkQ7RSrBYrQt1TyZxMwXy+Ro4NmZBABAGlzgiV%20oiXijcaThPPYnrDxv37p4hgFyCzHEOmCQ6kMomM4HLO/v//LxejGjetkuSYrJiwWC/KBQJiC5WLF%20xeWMa8cnrNYrXISTG7fpek+eV7zzzj1+9uAFhzsrTi/ndPUVO/sTRHB0y5pr1w/50hfe4O4bBYe7%20mv0dw6iAUQajAkoDKvTsDTIUAr2xz4SNGV0Ai8TKgpUrWLYdq7ajawNNI6glROfovebunUMenh+y%20XDyn7654cXpBd32yfZq3eG3Rny7jD3/0Y5brGpMNaFrHet3i+sDlxZzz55eMRyXtYsW4ypkvVhzt%20Tqi7Hik8oe+ofcvMztG9Y3jrTQaTHawNLJxl2VyxWszRWm8OnyWuc3R1w92AAi0AACAASURBVGQ4%20YTyqyEXJ89UlrU6p0I13dDGkVGg8ddfTxYgTm7ixzhNdZN332BBBSYIAhKDvLSI39NZSjYYcnhz/%20cjHSWnN0dMT+4R1syDm9mDHZOyTiWLeWDx+cMtrZxWQFl9MVKh/wuXtvU5WCZw8/4sXDJ1TjCXlp%20kO6K45MdvvLlX+He2zvs78DxBCZloCogl1DIyKgQDDUoMoJv0LxU4iezprDRxfQYnBRIDcUwZ1Ll%209B0s1p7LWY+rPU2jKTJ449Yxs8s91i8W/OzjJ7j3P7d9ord4bTGbzXj8+ClKF1jR44NAqZzzsznR%20/oRHD56wM6wYZBk3jq+zW+1xuLuDmzRJq4agr9f8+Lv/nnFeokzG2ek5drVmr6rY39mlaQ0Q8F2N%20tZ6qqjhdzLFnZ4wHI8qdETPXYo2mdZZlW9PGiM8UXYwsbItVkjp42hDQRY4qBHVvaW2fVvrWITKN%20jxEpBb21jPd2OTg6/OViNCgKhoMKKTXjasJPPnoGpkJpx2jnkNYblq1knOcolSMF3L9/nw9+/CHC%209Xzh7Ws0qzUnx0N+/Ru/wt27GVJAZuBwF8p4xY52TLIhg8yQK8gEiJg8UggxtUIbph5S4BshUkpB%20Gw2FAAMMBPgCCqVQsUDpQLTQtJbbt444fbHP49kpP/7wAYv2t3kcibe2GrUtXscR7fSci/MrkIZ1%205yiynGo44eJ8yvTskq7pUF7wfPoc4QTRO/5quUApRbNecnx8jPA954s1XRGQ+gLlI6vzC26dHOOy%20jF5EBqMRmTE0ywViZ0I7nzLr1yz7NcNWM1vXSQPnLYu2posQc42VsPY9vZJM10u6GNk9PKCUitZ5%206t6iMoNlwwVnybJEGs3J9WtU1/fFLxWja9eusVrV/Oz+D/jq+9/k2slNdDHk7GqOEzVkOzR9T93P%20MHqBEJF2XXOwv89/9gd/wGI649aNQ04OBVJC5mE8hjwDVpfcfmtAZVpyHTE4QIK36eTcB8jyT8K8%204ZMVmAKQmLA5Ck3BB8n/14CcCIqBgjVM+569YcXJ8QHz5xPOnr/g8Vnk+lvbOrTF64fmtI4/+N4P%20+fijB9jGYr0kixKjB7SrNdE6dkc7DIuc/Rv73Ll9l93JhOl0ynhnxOPHj7m4POPpkzN2yhFt9Mya%20nnFR0ErF2bomXF4yHA5AK4ajip9+9FPcsyecPj9DS0WZlZQCZosVQmosgTY4eiB4R8gUTorEL7vE%20CeW9hd7TuY37RhA474h9wEmSF36Rc+3mjU8ms5//wo8PDyjLkqvTBzx9+pz949vockI+3McGw/1H%20Z9y8/Tn6bk3XLLhx/YQv/uav88X33uTmCVyeHmEklALKAny/xM5XnNw64HNv7yOwSDQhpvqTxHiD%20dLcAqcL8fBF6Gba0+aCKkEdQkf+HvTeNsuy67vt+55w7v7HmoecRUwONeSAJDhI4iYytKLJkL8WS%20YmktxYmdr8pHKF5ay/mQD1nJWl6SHVtyIjKWqViSKQkUQQgkAZIYG41udAPd6Km6a6569ab77njO%20yYf7qgGIpCwxCkMptXu9Hmp41XXrnv/b+7/3/v8phabaxlEoV+K5EAOzucuGKdi/MEV3dY7La5u8%209ubbPHjirr07ey/+xsXm6gYXz11ka6ODm7m0J6Yo84JRWuKMd0BDr0E9jHjkwYeQAlbX11hZWWe/%208tl/6CSjUtKczJE6w+Y5azsDYjdDolicmWNqcYHF/fs4fOIoBsu3LrxFdzRi5Dl4jktmSqwjGRqL%20wGIdhVaKXBeMsgyjFTZwKYRF+B6msOzEQxJjScsSIxXa2kr6KE2QvgslhPWI+e8HRp7ncfToUa4t%209bi1vEqiQ2bmAh545AnqrWnujw3b2ztsbS7ziZ/8PHecdNjegoYP22vgKYNDSZmmWAHTEw4z0wvU%2065AkBc1QIfBBVBopWkORWcCihMB1q0oNuyu7K7BjnW/Hgiwr00pPgKISaJLkGBzAoe3DvhmP3mbC%20/PQky5MtLJKXz5zjv/jkXRxusqf8uBd/o6IclRTDhGatSZzEzO1bZHNtnbjbZ7LeRAnQpcAal5WV%20Daw2rG2so9yImZkDnLj7Tm4sbzJMDW5hmJ+cRuGhBESBz9z+I6jAY2uUMAt0h0Oub2zghQHh1CRx%20HNPr9RFhDbfVBATCdcCRZElM1i/JjUZZh1SXOIGPNZreMMbJcxzfq4YqjUb5PkWe4MlKGSBs1pmZ%20m/3eYLR/ll9pt9u/kWUZhoB+b0R/tMTbV5cZjTSN5gxpmjI/N8H0xEfJh9AMQKcGSY60BkyO5xpa%20jYipiYBGA4IQAumO85tqeU/I6qHe9z8obSVvCRUYjXGpSprEuIKzVOqOwiIwKAy6GmZnSgliC/um%20Qq5tZZw4dpTtlQ4rb9/g5Te2OPrR6X8+Bf/93i2+F38jooDnnnmWbz77TXxcPveZz3H63vvZXtvi%20mT/8MhvLK8y2p7BWcPPmMrduLNNoNLDWMhyNWLq5QfObL1MUBUlsqdUaZAkY6zOIY6xxuHx1GSNK%20OoMdiGqkOqM+PY3re6ysrBAPhjSbbTaHAyK/hhWKkyeOEdRrvPn2BVxtaDTr7IwGTDQnGWQJusjA%20cUmKErRGKIV0BIUu8AKf0hocx6PVbnPk6NHvDUa+4jcPHDjwG81mm0K06A0LRFGlWWHQxBEeSpRs%20r21x8c0lHn/sIGUOukjwlcVRFulofE8SeALPA1WtvlCxPlUFJu0YXOx7ldn3iwp/xh8lxmQRlXul%202H1YiwU84RMKqLkQOoIo8JmZmWHr+iYX3r3GrdPTvzrV2gOjvfjRDzMwlJuZfe2Fl1jZusl/93P/%20hM/9xN/F8zzSAwnT7Ravf/tV3jpzlv5gyPzsAsJKhr0+WVbieQ0Qgu2NAUopZib2IYuUMq/ceJSC%20vIC1jR1SnRAXQ37/j59h4cACq9s7FKZgNBoRhAGr/U3mWnMUQlDonHOX30EFHoXRFI4lHvaqjfwk%20JilzClstwiLU7cqmMBorDKXWSN/FCphbXKDRbn1vMCoNT0202ijporyIJLdYFZJpAcIlyzRhUEcY%20xfVrSzxw30FCD3IEge+gyPBcSRg4hJFLUEkd3QYhB26nO4r3/bkb4/IM7JgPqmbaDQaFBLz3dmPG%207wMQxuAIjSugrqANNFxJ7ksO7d/P6uUVzp5/i3ceOMLJB6YJ9+71vfgRD9mQfOv//CZnvvMan7z3%2043zs8SfxXUV3ZxthJadO3c0dR49z+f4H+NbXX+DMmTdxcZhqTVGL2gyHI4pc0Kq1sAYGnR6T9YAi%20H2GNInSbCFmSpkMyC1JFaBRL6+tY10GXBuG7PPzYo3Q2t7h8+TKRH2EUbO6sUGKZnpmjkJpuPMSr%20R2zHXYy1lQSSkghHYrFoXYn5CwmlNYSuixWCEydOMLkwKb4nGDmSZ72xYWOv08XxZymEg+v55KXA%20dTwsDmHN58rVG5x5Y44f/8QJtHYpyxzHFbhKEvkeUSDx/MpWunLYrlwqb9dd9s+lPxjAIqypzObs%20bs5kUIJqFBtTkUa3P338fNaOZVgyfOXToMqMXDRzs5MsLMzx8jsXeO2td7j/nmm74CDICxrB3pLI%20XvyIxrK1v/2b/5q7Dh/nn/7yP6YW1tjeWMMKCLyAUTLEky4PPvoIhw8f4dSpc1x8823WljfY6Q6o%20BXWaUUhRaHRhaEdTSAzGaoRRGKFQwgVH40oXEcCoHNGPB2QmpTnR5Kd/6h/w93/mp+lsbfPF/+N3%202NzcJNcldlWyvr3FZq9TuX/YksiDJE+xUlXWRlJWvIoFKyzGWNzx2RVCoHyPEydOfBCArTVHP1Cq%20OS7T0zPE3R5ZUTLqD5HCxUgH6TcY5BInbLHeifnqcy9SWnBclzTPsNZWwv6+Q+hXKx7Vl9cINIiy%20AhRRvu9RVMXx7kMUYM17hJF1QDtjD6cKuPT4Ge0Y5ioflUqs3McSAr4AW6REPuxfnKU10eblM2d5%2050YMkj0g2osfybAaWMf++9/+AsvXlvj5n/k59k3NI3PNdLtFGDj4rkQIw05/h053m7mFBT7/k3+X%20f/Bf/kM+/OTHmJtdxJaSPNXIQhDJgJbfAuujnBqoiLJ0GaWapLDEuaafZLSm5zhxzz3gebi1kJ/4%20O5+nP4o5e+FNlrfXqE3VaU03eejxh/nYUx/n0PHDzO+fp9lqsDxYrkQURcXhGjTWvpdxWCkobWV1%20XxQFExMTHDly5APfuyOEvLr7j9fPb9mVlRUOHz7MjdUE4Yako4xCC6z1iOOSsD3NsbvvZd/B/Vx8%2080WuLhUcXnSpN1qgY5QEz1F4Lii5C0bluORyQJo/lxq9lwEhxgy2kON2mngPbMZkk6mWicdAZJHI%20sSqdRVmNM06eAgXonCLLmZxoc+Lkcb7+3J/w4stnuOvwR2zD3RuA3IsfvRAKzp85y7PPfJWf+txP%20cueRkwy3+/ieQhsNZU6uSzwvoNmsozVsbm+iC0Gz2eYTP/5j3Hnsbs6++iZXL14h6Y+wGuJBWgn3%2046IcB2Mz8lKRA8oLiFo+0vNIy5Lp+TkeePg0TuDztWef4fqVq2Q6I9MZaZrQnGmzOL9A1K4zMTuL%20VZJvv/wKr505SynAWoNFIMZgZMaNp6KoTFeLouDQoUMcPHjwg2C0+5edfvLqV77yFd58awXPm2Vm%20eo71Hqhag7I0WClBK1Q4AW6Nk/ecYnPrFt9++TVmP/s4Mw1FORJVZlTZMeGMPbkrMBJjEHFuE9AV%20IMkxKlT1pRSVPQpGIHZ5pNuD2aLyWULCuLF/G8wsKOmNDeYcIk/hSUk/HuIHEUeOHePM61N849sv%208eipYxw/vbB35+/Fj1yUq7k9++obHD1wiM9/5rMUvZSaFwIlo7jD1FQDK1zieITG4Loe0guIrE+R%20lLjS4+Sdd3Di4EneOfs2r774Cp31yl325vYGIy2w0uLIyr/QERGLh+Y5ee8JRqbP5aVLHN13guN3%20nuTbr36HKzeuo63GCz3cwKMf91i6tYSRglqjwYNPPMzh4yeYWpjjlTdex1pRMSrVbxgBxlTeaNZa%20gjAgKwpOnjzJ7LFF8V1gtLK6bs9fvMHNW2vcXF4nbAakacpgs084fZAkyZBRHac9wWg04pvfeo2P%20feRhvGiW1869y4eeeBy0pR06SGWRaiynSwVG1kqEGJdUH3wdGJPVjD9SopEVda2qJMrudtxEBW5m%20l2JCjuFNVhmVsOC6WFP13iIHIinpJSOCIGBhqs2pO+7hxef/lLcuXOLRuxfs/r3saC9+xOI7f/w8%20Mi759CeeqrYMogBJtVQqlUcGlHmGDDwaUYssLRnFBSrwcRwfoSVxMgJtOHr3UQ4e3M/1qze4fOUq%20OyYhH5iq3e5Urq4Gh/m5Azz88GN865UXiIIG/e6QM6++ST/uEPgunc4WSkK8vIzruvihQ2402lo2%20O9vsnI359kuvUGg97p45WFENJBssdmzaKJXCj3zKFPYdWPyu7109/fTTvH118+n//Qu/z2c/9zNc%20vrbKi996jdnZA2RaUqQFrVaLPMspjCEIQrK0JC8dHH+KODUI6XLqVANdFEy2BbUwZXrCR2BIkiGu%20WyfPx2S21Uh7m+2p1tDGBZdAkFMiUBQYtpMembIIxyW1OUooFKIyiLQGaUy1RoJAS0UmBVoKcqDb%20Mwy6I8pRjqMtTb9GIEOuvX2ZSxfO8dijD3NoMvy1vdt/L/6/isRa3PEOJgUMv3LNrl+8wb7JGRbn%20F1CBSypKesWQYKaFbAW49Yj6xATNqWnCZoOo1aI+1cZr1BCBwvEVVhpKkWNVgdt0mDk8y4nTJ8FR%201KIa290OaZbgKIdavcbUxBSj4QirDfUwYmtri9XVVYbDIYPREC+K6A8GKKFwpFOdXKk4cvIEWVly%20c2WNs+fexA0CDh07ihWSm+s3cVWAH4YMBgOieo1CFFjHMjU3w3/9T/4xs/sWPnD+nEGsf/fa9WX8%20oMnE1ByPPv4hri71SNKMRhQiBKTDAUHUAl9VE5Rek36/pNAWKydZ3ynY6ML+yYhR3kW6LlmZ40lL%20EIZowPOc8Xi1eR9l9F6JJgWUWAQKDZWKnAsZGQZwpXObXaoyrvFmv5BoIdGiAqGSangyzwwm04iy%20BJuTm5i59jTHDh7n5Zf+lD955mvs/8WftEdrrkjKjNDx907HXvzQQleE7RiVgPN9u3zxCjN+k2Z7%20miQekbqWcLJBa6pO2AqJJmqVp6DywHEqZ9gx42GNQewSqonBDFPyQUoyGtHr98gGmkc/9iid1R0m%20Zie5duVdbi3dIBkN6fb6+KHHwWP7KG3K1k6HLMsYmRFlUdAfpAzjlNbUDHEcI9OSxmQbz40o0Wxs%20bHD1xnWU57Nw6BBPPfUUd63dw8WL79DZ7hJEEcqV5KOcIit5+MRRZseyIR/IjB77yFO/+zu/8+8Y%20DDPuue8hdrojtrYHoEIK7dLtxySjDCdoIN0aaQZB2CYtKmNG11XkeZ9mvcHRQy5Wp8xMBkhR4joS%20RzrkaYHjKIQdE9Lve1ghsQiMEJS2ApcSKIzBaIiTjDQvCXwPD4kzLuqUqOAIIbBCUErIx2XcsICt%207ohOb0hWaLSufMQ9L8R3FefPvsaVyxd55MH7Ob4w+WuudPZOx178cLtm7ydslzJ75cwFepsdZuZm%20qM9OkAqNagbM7ptjYmaCYG4CNaWQLQkNCXUgBGoGE1lMZLCRQNYFtASi6eI0FESW0tdVM9p4tJpT%20TExOMDM/Q7PZRAtDHMfcuLVEWZYM04TN7S0Gw0q3LM0z8rxECMnmyipZnuOHERrL1s4OF995h6s3%20lxiOEpTyCKKQu+++h+mZGba2O5U5pBD0Br2qdFOCn/3Zn+UTn/vMd1EkTpIktFotfuLv/CwbGxt8%209dmv8dbFZVqT+ykKB0d5NNohWVlSjjKk9NDaVvWVddDGMow1596+xkOn72EyjBgkEHoS8Cui2dqq%20FBPcZnws4+bZ+6js3ayn1JqyMBgjSIYZhS5peCEikNVzicqHTQiBGU9z735+QeW6G49SsrysfMIF%20lGUJwwFHjhzigQce4pk/+hJ/+qcvcPzQEXtsUgptLEruUUh78cOJ3WFfM7DsLK+yubnO3MIs/mQD%207Sua0zO056eg5lU3d636JKOo2ufWYqVBY7GiIqXRFk+4uFZVCjyuIqy38CYC7JzD9VfWUCrCa4cc%20mjjK3P555g4ucPGt85w7e4bl9S38gcNgmIB1cZRLPoyJ05RmK6Q1MUsS9+n2YsQwxnY6DNIRvWSI%2074e4nsfW1hbnL17AC/wqi5LVmS3LEhVKpqameOTRR7/nNZFJnrC1vc3y8jJf+MIXeOedd2i1WrQn%20pvCDiKwsSLMM1/EpshLfDUhHKdIqrJGkmUW6DW6t9bixbCjw6I4khfVBQVZqAt9Fa13NTIvqYdhd%20hv3gy4UAhJVIK1EoHKtwrIuwVQvfom934+y4bViO014DJBqGcU6c5ZTWgHSQwkEpgVQGpQQPPfQI%20M9P7+Y9/8Bx//OWvVzfHHhDtxQ+7VNvW/3zzwpLtrm1SC0PqU028iRq0PeoLbVjwIAIcPT4YDhIf%20YX2k8BF4SHwc4eLLAM/xUcrFSEWpxl2kSKHaEc6Ux/FHDzJ1tE7haXrFABFKDp04whMff5JPfv7z%20tCYm2OkNWFvvsNUZkAxzdCEwhcRolyBsYaVPqSEtDHFSoJwArMJzfYwQOMplY2ODK1eu0O126Q8H%20DEcDGu0GhdYcP1H5L36vcKSUXL16le/8+q8TNuY5eecjTM0dZ2Utptls4vt9BmtdvHASKauyy8YF%202tGUIscoy8Rkk2zU4+131ziwsEjdV8RZpW+itCRwJLrMMUK9Z6r4fiAapzVq/DYXgVASqQXtegOD%20JHJ9hM2rnpuw74ERCjPOiFILvUHJzmBAVmqkdMBKql8C33Xp9raZn1vkoQef4Mt/8H/x5S8/z6MP%20PmIfO1XfQ6O9+KFGttr91f7yFjIvmZmZQfgutYUpaAdQk+/tUHmqusF3t6BkNUQIDlJUQzEKQWns%20eAO9yqJ2x/NuH7QZUD7UhhHFZkaS5jieYnZxjma7gVBgXnuVwSim0+uQl0Ok7+EoTVnA8vImaRYT%20NWq4vkfgKyamWpRYcAVaQH2igVKKYlQQRCF5WdDtdvFqPq7r8uDDD9HeN/c9z5r6n//Fv3zaDSJW%201re559SDWDwuX7nFa6+/Sb01TbM1zTDTpLnBVTW0drCuj8XDGIkb1HA8hZCW4aDD/Pws05MSaS2B%20I4h8ibRVRmLHhJ34ABF9W9QRKQRWG5QUSCmwVuN7Hs2ahyMEwuYozFgIspIhKYWgsIIM6MaGtU6X%20TndIqUEpF2skaDsmCzV5ljHRnMBxAt595yrrq5sIBMfvvOfpyTp73bW9+KFEcSm2nau30IMRzbBG%201KwRTbdxFtrQEhBBqg1WGZSq7uFdPkKPH2a8nqmMQGiDzssxDyuqERgx3p7aJbkTEC54QcXtGKtJ%20khiLxhjD0WPHmJmZ4fCxIyBhfWsTay3WCkbpCM8P6I+GJHmOlZLZuXnuPnUPvXhItz9AuRLH83Bd%20h6IsMBi0NQxHQ5Ii48ChA/ziL/8jjhw/9j3PmTw4XROPPPIIzWaT6zeu8uK3XmBl5RYIS7fbIY4H%20+IGLzRKwmnQ4oBGGKFl9h5HnMoozLC631nrcWhuSadjY0Wx1DUgYjopqtBTeuzKY3d4XUKIoK6Cx%20Ba60OGiELgiVrGyGyuL2RCdIrAUtJMYKClM9yyDJGAxThmlRya5JHznuMFhtyNKE9kSTsF5nYXE/%20Bw+dZGtnxO/9/p/wzFe/tXdC9uKHE6vYnVsb9Fe3CYxDo1ZDOAJ//wx4EJclmYBCaVKTgzKUZJXe%20sku1L+6CdCoJnl03as9zcV2BdQylMuSqUkXFq+hb0QJa4E5DfcbDbSi0m1PIHOsYtnqbzCzO8tGP%20P8mp0/fh+h5WUGkSSYftXg/pBIRRk2Gc8c7ld7lydYntnS7WWnZ2evT7/TH9YtnY2qLb74EUGCwH%20jh7mnntPfd/LIgEO7d/H4vwsGxtrHDiwDz9QhKGP5yo8X+I44EYeUhg8XxAPOwid4WGJe91KSrIQ%201OozvPr6JW6uwlZP0x9JLl9PcHz/fdyQRViLHM9RV9mRxpoCrRMcqUFnKEpqvoMwKUWWYk2OEAKk%20g0FQWEmJpAB6I8PKWszyWofMKoKwjjEuWVqihEfk1/HdyigujmP+7Pnn+fZLr4LymZ0/wDAx/Mt/%20/QVefGvHart3Vvbi/02iCJbfucbqlevUlEczqiGUoj43XZHUAah6ZQ3vOA6e72HQqEBQ2BjtFPRM%20n5yCkoK1zi20iUGnUIwwJBgKtMgYMqDLDrHsYYOs6r7J6mvIFrTnazRn62iZk5mEsOYxGPXY7Gxy%20+oFTfOozT1FQsLxzC6/mU2u1GJYJjuvjBRGFNnz9xRfY6fQwCGZm5ystpeEQz/NwHIeyLPFCH20M%20n/r0p5ldXPi+dIh6+umnybT79NXrS1y7vszK+iZKRUT1FvXGJIEfoa2g2+mhnACBi5QKISUWibG2%20UvQY76RoU1DmOffdM03SH+FIA7ZESolS1ccbU3XBrNW3Sy4pBFJWk9pCSIQcTxJJgZJq7PFksap6%20WSiRjHLYGpQsre9wY61DP7f04pJRapEqxHdrlLlla63DrZu3uHTlEu++e4Xr11cxWuGoCKV8tjY3%20GcYD0jTm0Mk7nl5oe7+mrUGKPRppL/56Y+nlZdtbWqPthDRcH9dzCGcnYHECAijdKpupqKFdza5K%20SNBxLCU53WRAZnMiJ2QqaiCNB6kG4SIQDHQCTjVEbNE4lONlKzDCVg6xEigNRZpTJDlFURD6PqXR%20JFmCkXD8zuM89pHHcVyHl994hUa9hbWSQpcMRwOmZmZAWgbxACsMxhrcoJIHQQq2OtsURjNKE/Yf%203s8v/vIvceDgge9LhTgA8y3EQw/eb8+++S43br5Go6nIdMFwsM3kdMT0VIvNjS6YrGL0rapkCIwB%20fLQoEdLH90KSeMjZ89f41MeO4OMiOj2M1pRlyeJcE9dR+ON5LaxDYQySEiUUxpa3V0Oq5To5Hgeo%20PJeM5yCAFNgZwOr2gJ1hSlwKjD9JWQKOwsGtCLf1LstXllhfusVwsINROUmSIEWIkBpHBkzMLODc%20WMIUDl9+5kX2HzzA1M9/1h5s7rXX9uKvN9bPbtqli+8SjTTR5Ay2LKr7vFmrumYK9HhjqgKgDy5Q%206axAOYrZ2hzDNCXvFUQ2grU+xAVal6jDcwTCULQVrlvN8IUYLBpLWY0ASAHCwal71FoRaTchS3JW%20N1apRQ0c32EQ9ymkz9E7jvILh36B+x9/kC9+4UsUawatC4qRpTfoYzH4vk+e52RFRkPWSbIUL/Qq%20iyJrybKM06dP86GPPPEXnqnbc1d3330n+xZmaDVCJJqd7XWQCZ5fo16XKKkpdIYc8zXSGhwTYNDV%20tKGSeKJJkgsy4fKdV7f56GNTdGOBtBqth5RaUa/5tBsOYVRt9Vcb+lVtaqxTjS+NuwC32SU9lqQF%20uiX0+9Dp5+zEgl7uMsxhZCS1ySbdrYSV5TU2ltfZvrXOcGuHQDq06xMoz6K8jMBvMYoLkszSbk/h%20eA12hgmR2+C3/+0fMz2xwC/9/fsJ9wSz9+KvpTSzDK5t2ze//Ro14zFdbyK0odCaIPAgcEFC+T4w%20UmNl9/dWwWUl/5Hl5NJQF/XKdWcHRpdHXH3jAq7jc8dn5winQ9So4ogKC0pYdD7CemAwlXChqLik%20ej1iFCWMeglhFFGaAtd1qbWbxPmIm2u3mJye4LEPP0YQNfhn/+zX2d7ZZmp6GqMzBnFMc7JBXib0%20+z16vR7DUYzwJLVmg2EyotVu86EPP/mfvEy3wejonCvuP32fvXjpBkvLXSbaDZrtBVCC4WiHZjuk%20s51VQ4RGI7RGYXCxWOshypx0GOPg4zguL37nHHcc/zgLk5P0kjUMz8fwIgAAIABJREFUhn6/SzMK%20aU/UaTQ9wgACDwIfXLcq9eSuBjbjtY4C8hwyA4MCljcSVtY75Ebg1SfBrdOzJdtxzqW33mZ1fZvt%20jS1sqomEQxjN4AiHQgi2NjcwpiSKckZxThjUmV04zPziOr1+Vdtev/QWX/jiczSjKfv3Pn9AhHuy%20R3vx/zA2L920b770Blkn5diBEzQcj3w0ImrViCYbt0npQlXzcu74YDq7/KWg2l6ICxAhNtb4dShX%20YPPMFu6NjORiynbcZb6xTHjfPrzjQAi2dECBMv7tsRpjLGqXxPUcfD9ESYeg5hL3B2TG4PsejvTJ%20ypSVrQ3YgjcvnGNyZpJ6I2R1Y5XRqEsYBQgh2NraIopCsiIlCAJGRYLn+5SDPg88/BBPfvxjf3kw%20Anjyo09w9vw7XLv+DRbmD9GemGFpeYvRKGdu7gj9bkJZZBidY62p9K0FWOOjS7cS755oY3TKVjfm%20zfPX2ffUYYypo4UhS3KywtJNRgRbGb4HYeTRqPn4Pjhu1RUwotp/LQpI8owsL0m14N3lLbQbEIST%20eEHIIINr1za5cOUWtzY7rO8MMFbhCY+6F6DcoHpVilN63SGOCFFKkOcOg+GAnZ2UyakObtCiPXmA%20fmeH1tw9vHVuhX/zb/6A2an/yn7mo7W9cm0vfuDYubxiL198h+3VdU5OH6OmFOlggNYFYX0aAo8C%20jaMcyrFmjkRUQLQrSjG+A/N8hNeMcKUki+GNl9/h6nPnuUsuYHrQWenw4le+zWHu5459x1HjsSOb%20lYiaR9W1Hpce+a4QPTiOhxCKfq+P5/kYLNu9PtIXNGcm6PR3uHDhAl/6vd/jk089xcREi9dff5Uj%20Rw/RatU5d/4sw1GPtMhQStFo19F9Q5ZlKM/lySef5K57Toq/Ehid3OeKY8eP2EbjNaanJ1jbWGPp%205k2kE9JsTOMFAq0NuqicQFwkQjpok2CMC65DkecIZfCDBmffusxddyxwx7EG2ShBqYjCWrKkJB6V%20CFngOhmeG6Mcixc41cwDFm0tWlu0NRTakFuH2UMHWduxXFle4+rNi1y5ucFqb0ApA1StSdDeD1JS%20JgWdfkysY1peSNNp4tci5tp1rC7pdjsYO+L60lV6/RxrXJJ+jikiWu0avURz4a1lvvjFP8SWn7Cf%20+vi8UHLvYO3FXy0G1zbs2dfOsLO5xb65eVpujXKUQlagfEVa5oRobKDIxytNAqqsZVfp1FQ6XkaU%20eNMh1sZ00pI8E/htjztP38Hcls/yxoCwHtJLhjg1n8KBDJABaJESKLdy5RA+Uryv/BBUO57Wwfej%20atfTFvheSNAMKI3l7LnzfOlLv4vyXFbX1lhdX6HerPGZz3yKzs4mL736LRxHQWGqDpoxOL5HkiQc%20P3mcT3ziE3+p6/VdG6Kn7jrKY4/dS3vyIH/0lW9iTUoUNBgMt3FVQKoKjE3RxmJwKs0So7Da4LiC%20uJsQtUK8wGH55k3Onr/GqXvuZHNDEboKZTWCqhunhENmStIkx5gCNzMYYdCIyghXuQjpIh2XQnr8%20yQvXWFrbYnVtg7S0CC8gas6TGUWhBYMkR1qBzjSu8ZhoTbLQakOS091cZ2l1h0F/h+3tTWq1Go7f%20Js89hHFJkpJ2vcXGRoeGN4EXBPyHP/gapelz/M5fsfunEaG3d8D24i8Xyc2OvXj+HKs3l2iEEbNT%200+RbORSSdquBdARxHBPqSbzIIUsNTiDHHa9d3XduTwhbIclNxigvaDSnkA3JtNMkfBC4CXOHp3j5%20lddoNBQnnzgAk7ARZzR9H+EqsjLF4iIcWWVauy+u40ntYteFMDV4QY1G3WV7Z4u3r7zN+TMXKZJK%20qqfRaFIUOefPneUP//DLTE9P4jk+Qjh4XoBQEMcJbuSRlQWnT5/m8Y89Jn4wMLr7AG+8OctbFy9j%20dZ9mzaFe94nThKjmE48ShFMghCQpB0hR4jigRA5FjikM1mvjh00aUZtXXr1KkQc8/NBhDiwAOgNj%20EbIaWLRaIVWIFzbJihTtOAjHpRAuw0yzvLHDjaWrLG/1ubbRxQkipNuoOnlpZbmCNegS/FziKZ90%20EFOmBcNhnytLHco0pRZ6tGYaPHDqFFcuX+bcGxeYah/AEyFrtzo4ok1/x7B/4QSdraskZcFjT36S%20reE2/8P/9K/4ub/3SfuZxw/tlWx78Z+MYrVvz7z0Eq9+59scP3KUowf2Mxr28f0W1lHEtsQ3Es91%20yHcGhCsh/kIdNCQYUqEppMRzJMJWUjkKhZUuflCR2RJw22CGULQSitOS06cfxW+GMFkRT5OeT5nm%20SKGQToRUVce6KEpcO56GdEC7GbnNsMrHIrA6xKfO22de57k/exHpGqb9eZxA8Av/8B/xW7/1W3Q2%20erz0wusYqYlHPVzfx1GCYTokbDTZ7G4wvTDDRz76kb/0dfsuMGpH8lcmJ6PfePvtN9hY3USLOvFg%20B+k2aDYChqMhurCVmL4VGJGjzRBdjpBejdDzceyIbKgxQpKXhrPnrnHz1nUOH7Ac2Nfg+NETzE23%20cCSkKaSpYTgsaU83GWSwtjni8o3rvHtjnfXOkMIohBfhRIsYKciKhDwbgckJPJ/A9QiFxyhLKj2k%20uCQbpAxdgy8dAj+kXmsySlKuXFuh0D4L+0+SDUp2uilK1PADj6jl0elsEEV1PvyRR3nwoYOsrL3N%209Rtn+Xdf+ioq/zH7+ANHRaOxd+D24nuUZct9W5+tizdePcPrr57h0L5DHD90DJ2lKKGQUpKkJWlR%20UA88phoRYRhVaUpanUbHUZSiMpwoqbrwqjSgFEJIFJXfoNzNamoWK0DXASHQvkWG1fscLMo642Fh%20QV5meI5CeQ7kJZRVJzzP83GF46BwmJ2Y44UXXub5Z15E4KDznFEv5d4Td/ONr7/A+TfOV3N/pWEw%20GpIXOb4xOL5D4EfE8RClXB544AE+9OSHfnAwcpV89u477kAIS1nmWFHQHXYIapUZo8BgTTUPZLWp%20dsRkibGKMk1wQ0mWjPCEIKjX0WnCoLuFI0O+dukc9bqk3TrLvvl9nDhxJ8ePH2ZiShIoj2e/cY21%20zS2W1rYYxAXCqeEEUyB9stzS7XfwQpcglNSiCISHKasVlf6oxOYCLUqKtECnBXGiMZ6P7wYoWc1A%20ra+v0qxNUfOmGaU72MJSjxrobMSwv40QKfc/cC8/9uP3sbgAs3OPsX/fPkaDLf79f3iJq1d69vEn%20HuD0nXuStXvxwWgsNsVbXz9nn/+zb9EKajx0+nFGw5jtzQ5zk3OYkSV0PTzfx5GSOM3Q/T7Nlg8q%20Aqo1CoEYzxgZlNHjRTRQbgVGxtw2ykFJgQpDfNdDOGN7oN0h5LHWl5C7GvL2tnQP1q2G/XJL3jfI%203CEfGQ7MLXDj2ibPPfM8g86Qiek6nf4Ok602nufx/PPPs7y+TKvVIisLtClRSpHrEl1ojKMprabW%20iPj0pz/NoSMHxQ8MRlKIq/feefx/fPLDT/zqzZt/zNrGAKHqhK4EY/CEwHclujTkxlAaMa6VXASW%20IgEjUvzQw1OGoU5pN1o8/NBp0vQAg2GX9fUN3rq0wrtLXabeuILjucRpwnavi3J8HDfEyiZGR+jU%20Q4kanmtpBRprU+wooxg72FqjEYWGsqDoZ5RSo4yHUj5ogdUORQLdnYSsUIz6UAxTPCnIE4fAm8CX%20mu1kk1pgePCBe/n4x0/TqMGtW+AoweLcAbLmIpE3zbs3l7m6+nXO33vMPvLIfk7OV6C0Phjaucbe%205v/f/ngfkfO+6N+K7Te+9g2e+8rXuHbpXe44coIzkxeYnZhi3+JR4s4AVUpc18FTDtoUjEYpmdQ4%20aYvIgC4MRgiEsyvLbFH2fUaDY2JbakCYcautyoKEVJVI0u6AHu/xQpXml0UqB4ulTAtcG4KBvFuQ%207OSQurTdNqOO5Wt/9Dw7az1mp+boDTuVk7QUXLr0LkurSzQaDVxXkaZDgrAaIB5lQ0pjSEcjombE%20qfvu5sknn/wrXVn19NNP893ZEc8Kv/n0N77xHVavL7O47xBz8/NYDEVZVKmjdMizHJ0VYxQXSMdB%20KYkuCxAWKQxpGhMFPov75/nIR+/g8LHDzMwcw0iPwShnZ5TRT3IGaYkb1pF+A+XWQIbo0idPBelI%20kCcZjcCBMkGakkAqAk/hYCmSjHyUYXKglEjr4eAjjYewLhiX0UhTFApd+mQDSxqDJ0N0XpLEO3he%20weOPnuTDH7mXQwdhMIBkFOMpjyKrpEkWD0wSNOaIRwWXrlzlxq0NMlF/2m8GTy82vD0g+v8DMR2v%20W11koeNFz+6+bfnimv3OCy/x/Fe/zlf/5GukwwJf+uxsdtnZ7jM7vYAtLC2/gS0NRVZidInjOXhR%20gFMLQQlUzQdHIKQcA5FBjuWZq2ngMTAJMTahGN9yuzY68n2st7QIWQkLVg4dBimgyDJEOTZw7MD2%20tT6jLU3NtglMnWf+49c49/oF2u0J+v0BO90OtXo1V7TWWUHbknq9RhwP0VbjBy6FySlNgeNKRnlM%20e6rFL/zSz/Njn/3EX+lMfF+91R9/7A7x8IOn7dLSGjNTDVwHlpaXyXKNowKUcFC2pLAGiYtSLnkx%20Iqo5GGPJhl0cqQk8lzTu8PrL3+GeUweJM02n12WUZ2glEMJBuC6+qsYEkiQjH6a4MqIWTOD5AUmh%20GfRjNocDpJNQqwfUgojQdymKHO2UoCyF75CNLJQOWBedC6T0sdYlzw0aF6F80Dm+4+JLRWdrBccd%20cd+pgzzyyN3sW6iGLHXZZ6JZx3UgS6Hd9ri5OmRqts6Ju+5gba3G8q1LPPvcq2xuHuO+ew7bew/u%20LbP9bY+wNn/7Z6yTgitvXbdnXzvPudffYvXmBp4IOXnkDiYnpsAqzp29QNxLuPvYCRrH7iBULkEQ%20IRSV2WEGRT/Degq/VcMb+5UaVKVSIXcNTQ0I588JFI3rtbFv4O2JYWF5/yJJJdMjsMaAVnh+AAXE%20mwXxdo5f1vF1jbMvXeT8SxdxTUAxLMmGGaFfY3u7i1AS13UphSVNU5IspdmskeuMvCxQrkQLje97%20LC7O89RTT/2Vr+1fKP78n33+M3S2BwyGhlsrGwy6m2gjCaIGgd/E80Bri5IWYUuEKTCFU+2ZCYMp%20YgK/ji0Ltla3+Rf/6/9CLspqoc8P8aMGOC5JFpNmBQhJ4EfUojo6L+lvrZKPQOITKIlJDYaSUdJH%20xyP8qHKvrfkRk/NzLN/skGuN0B7YgDLXSOXjihBTWLQN8L0ajpOiZIHWA6K64OTxfXz0yXs5sL8a%20nc/zPjAiTVNS6yBFiOd5TM95jNJtTOmwuDjH9GSDleUbvPH6DS6+eZXOj3/ETk/43HmED8wlGVsg%20xd4o99+muHXhpr108QoXzr3D2+cvs3Zrg3NvnGff7CIPnH6Ia+9eoRCayclJdnZ2eP311xGjgsXJ%20GQ7u20+jVq8UE7MMQ4YVChsViMJFNEG5Y6NSIbCy4o2Eszt89L1Kx/eD1PitdtcEXo7NK5zbGkjs%20QHd1hMwjZBZw88oaL3/jDI72saZgc2sLx3eQDqRxTr1Wo7ApRpcUZYlSAtdTDPsJqrL9IUlHtCab%20/MTnP8vBEwfEXysYPfLgaS6cv8yZNy5y7eqIRuiSaUHkuwShAm0oy5IyTyiyjDBqkGdDHDfA9x10%20kZAOCsJaRLPmkRbDKjX1fWSgKExKkiQgHcKokpZN0wFppwelwrURgfCgAJ2UFHmC60NY83CNohym%20JN0RIz8nCgTkDhQCJWsIAoTWWAIwIVaDI1r4IgAlSJMOmg2OHq7xoSeOc+8phyItydIunmPwaoIi%20SwmCCNcrGYy6OBhqocEWEA+H+G7IkUNHGU3OstPZ4o++/A2OHVtgODpm7z4Zioa/y8PtAdHfpjj7%20Z2/ZV156nVs3V7l1Y4VLFy6zubrN4vQByrykVW8x2Z4giQdIYTCiko199dVXWZycY9Dpc/LwUWYn%20p6gpnzwuyLIEIweovAbWhxoIV2JdKgFBkeMhkGNNeT0GHiHE7RxIjv8mEBitQRusFShhK/EjATqG%20MoP+ckF/I6PFDGlf8+bLF0m7BS4eg2FMPYxYH/UZpgNmJ+e50blM6cQYN8f1HYT0SPOcJEuZbLQZ%20JDG5LmhNNPnPf/qnfqDr+heC0WjYw1OGfmeDwNX0ekm1mT/coRHVaDUjut0+UrhEYYS1OZ7jUOQx%20ZSHwvACjC7JRQdSICF0oKdFJTJ7n4Ea4roPVlnyUgxaYrIRRCun4B6DqCO1gCk2AoBE2yLO4Ghhr%201nBx6G2N6JoSKetI0aRIK/mRejgBVlEWltCr46g6eVYgZYzvJuxbDPjsZ+/lgdN14kEfV6TUvAKl%20JK4DXjPA9TSOlzI75yIcUS3tlpYiU+SZpSwKVD2gES5ycP8Cb79znnevX+Whh+6yjzx2gsVJRK/A%201qQVDWevivubHKsXe/bbX3+F5557nmatwZXL11m9tY7NXZrBJKNhysL8LBMTE6ws36Db26Ze88nz%20hNbULK47werKGr2NHTo3Nzm57xAnjhyjNjNNLS8ZvrtNXTvg+lCCrQEeGCFJrBpnOBVXZG8boAoM%20mlLn+Cqo1j2gkgmxTpUFlVXSZHMIcVlfirlxfoV6OY2xgkvnb3Dp/HUc4VXbFVIyTJJK9VYotnrb%20eJ6HtoIwDNnorFfSJ45HVA/R0lAKg+s7/Lf/9L/hwPED4q8djOqRRzzssrF2E1f4+K4lSWMG/RFR%20FNFuz9NqBsSxZjjsoJwI14vAWoy2aKGrGQdcbLFL+1ussWg0pbSg3LFio4FhAmGd0I+q2YnYUKYx%20LgG+UDiew/ryMq12jVoYsbG0DEISTc6TlxKMh1A+nqphTEBZCKSoZEe01mSjmPnZGkWpCUPNE48f%205I4TdTADAq9LKwwI/Yh6vU694RJG1X2BkwMWad3x6DzoEpIM4iEM44Is1ayubXD6wfvo9XZ449xF%203njrEg89fNo++Mh+5uuCwljcPWWSv3Fx5cIV+9KLr/PuuTXIXUzmcenGLZauryMMjHoxYRAgUTh4%20/Kvf/N+YnKqzOD+FJcdFsL65ylS4QFhv0HQi8jjlnTcvsfXuKncdu4N9Rw5TP3IUs7ROf6NH/egs%20zhEfOwLtQOi5aF11zYSo1qTA4oiqheYrp8qbtEWUIG8LYLPrkkqyXdJZHrJ2tUNDzRDZNq98/QJn%20vnmWwK+RJTnalpTklKJAixItSqwwY70ii9aGdrONEZqyzNDSYPOUNE/41Gc+yb333/cDX+e/EIwW%20ZkIxM9GyZRqz3dvEyAhtwHEFjlMtttbqAUWZQi9DI3EcpxJ1siXGaKSUaF1S5hJpfIytxgIMAiN0%20lW7K6oIKERCJgFAEFKYkLwoowHMkruPS7XepBy55MiKOB3hhHYRLOqq4IWMqAX7leAgryIoS33cr%20VC9KQk9T5gPa7YQHH/6/2XvTIEuzu8zvd85597vmzaWy9qqu6n2RWmqptSAJCSQhIQRSIMQygAeI%20YQB7bDwMjB1hWxrGYRgHjvAHxo4Jez74w0RggvAYEyyDENpbS69S79W1b5lZudz1Xc/iD+fNqmqG%20mEGDWhAzeisysqoiK+vmve/9n+f//J/n+R/n0UfX6fUnKLPDgfU+K70BSRSSZZBl0IZDYvbnpVoS%20ylePTIsS8iqkqEMOHT3GlY1tqkZw4uQpLl/d4lN/9hQvnRnz6Bvvdu99YyiMc9TakIbf2dX2t54X%20evGa+9znPse5sxfAxIRiyMtnLzPZm7K9NaeYGlaWlzEBBCLANBWLWcnG5gZ3nHqErNfFugLhFNPd%20GVVTEsqu35JjHJFWTDcmvDx5kcW1GasXd1i68xjDzoDycs50UtI5OSBdhaqCJMOv1HGCSEgsPtUC%20IQiUwPghtl+DJFtuqAY7dhTTinzsOPfMZYbJAVYHQ57+/GWe/uqzFAtLpAJqqylNSeNKanIaUaFl%20jRENWvhAn6IoyLoptbNo3aAx6Kqk28340A9+iIfe9JB4TYoRwKNvepgvv/4+/r8//DOm+Zgo7TMY%20rRInIfliSllqAiXoDvvM54UPcMJHySopfRXXDVUOYSzQRmGdREhJKBxSKJwVCCHIshRpHVQVorZE%20SqKERBhDXS5QouGO08epqopzly4jnEEGCboC25p2rb1F3AnhCAKIE0FDRb9vkezw0OvWeMfb1xn2%20czppwbH1ZZaHHYadALk/MW0nqU4YBLlHRoQI43MenPTDizSFOIUBUDSgomUG3S6TuSHtjIgubHHt%208i6/c/aP2Lx2h3v9Q8d44Hj/O/Dob/F15vGL7mtfe4LrV64zGAx45KG3MuwdwJZdnvjSb/PKSxcY%20dAckUY9qYQlVRlOUdLIOuzsT3vnO97C80uWpZ77EYJixstpn9cAa5Y4hCVJcYTFOMBguEYaC2eaY%20FzfPcOPamPWtGUcfPEVydA1bl+yMt4nWuiwdTXxsbOBbNzJfb2ID2vowQrV/Trq2NcthuqPZ29ph%20Pq7Qe7AUHGAlWeP8sxMe++yTTCcVg+6I8d4elc4pbEHhCipKGlFghEdJTmhUpMjzBlkKtKgJgoCi%20WqASyXe98x08+tZH/1rP+7+3GL3xkbvEj3zsI66sDf/m01/BBQFpGlPXFXu7O9RGkqUDBoM+Zd3g%20aGgagxCKQAistdimwViHVLFHOyjCMESFggDhtxgEAcVkj1AFPn7WKSSBV1k7TWUqTp4+yqHDS5w8%20eYqTl6/w6T//AsVkl97yCWoTUTc+NMpaSxAqgkgQRAZtZlixR2egefCBEe/8rnXW1yEKS+46tcbh%20kURXhjTwAMiaVl9mQajW2ItABcprzxxo22CtBimQQiIIEU5z5EDIaJBw/kJNMY+48+RRVgarbG1d%204yuPvczZs1d56f673RsePsHJlVvqOWPbsLnvXN/2S89gsdu4reubPP/8i+xtT1lfP8TpN9/PfD6n%20qTQmkIQq4f77XsfVS1voxtHrDpnsToiDiEAJdGPodoe88x3vYXfvGi+fHVJWORubOzSFYxSNyLIE%20oxv2tmcEZcCS6EOQQONY7DWc2TvLxqVtDt59jAOnjzBaTtF5zXyrRgwEdWAIo4hkmBH12newbM2u%20FnQDVQH5rGI+XlDOKnSlCZqYcjvn4dNrPP/1OX/0//wZkxsF0sVcuX4dGUClCwoxp2RBJebUoqCS%20NbWosWgUEMcxYHDOYaWlbEpOnzrFT/zUT3DyrhPiNS1GAB/68HeLtbWjrrf0O5y5cJUir7mxN6Us%20c0SY4tpMxiSJKcsKdIULYqzTaKMROJIkJkwl2laUdY2UHlqK1uMmdI2r59ggwDiH1gYlIrqdIcOl%20FdJ0idGBlNFKypHjXU7edQ/9wZAvfeXrTKeW0WCJG9sFSimMbRBWkqYxjZ5jbMVgWHHidMSb3jzi%200BHoZoZTx0as9v3PmMUSUxsCoVCyLQwSHAG39t5qEBIpLKH0aMy12cKGhl4UUTYQCjh9PCKLIs6e%203UGnmpW7TrGztsITTz3Jc899mgsXHuK73/WIO3IEDmR8J6Lkb+DKr+HGO3tsb+8yG+dcvnyV0WCZ%200bGDVKVmd3NBEMQoE3JjY0qvF/PBD36Qzetb/Omf/huOHTxJr9MH63BSoZuCo0dOsLmxzXQx5cEH%203sC1rYtMJjtMJwuCOEAsHPWsodot0RGoXkovTKCyzPZKelmHYivnzPbzbJ/b5NSDd7J84hB0YD4z%20EBlKsWB6ZYZIFCJTmFB6/Y/2B6cxgipvKBc1urIEIiRwGSfXDnDtjOOZx55lb3NGHAyoakNhaoR1%201KKkpKB0CypZUYsKTUWDaUFGRRj6EDNXl+SLnDRNectb3sz7P/y+vzba/0sV2H/ZdfjI6JPG9T6x%20O5mzmOdM5wvKoiZKMpSMQAjCKKauNabWBIFCCUFT12RxzPrhdbqDjMqUNFUBTvs5gK0xpsLakiA0%20bTxJgUDT7aesrS+xtr7McLVLrefESYCxgm6/x+p6l72pYWNrj6XhGmnWp9PpU5Y1ja6IshDtCrr9%20mIcfPsSjb+5x7LhleSXkyKGAtYGvMdVsQhYHCGsRwr0qblI4gbV+QZ5zDVY0OLE/y5AtagqRKOoG%204gCiwO/di0PIohRdjdnc2kKFaxw6ch9xPOD551/mma+/gG5ist7oE8Men/wOt/3aX2YG0+u1u3Fh%207xPXr26xeW2bnRsTFpOSleEauganQ9K4RyQymgoilXJg7TB5UTBaXmIxz3nu68+jG4MSCpygLit6%203R5pmvLyK2e4ePECRZGjjSaKErqdLhSa3c1tdnfG6FogXYiSMU4HFIuaiJBmXhM0kn6YUe1O2Xrl%20EuGsob98EFvUhColsAH1rGI+ySnzhnzeMN6ZM5tUlIVFlz4NAxODSxA2QjUh4TzgM3/4eV558RJZ%20tERVC8qqIQwDZs0MTUEpZlRyRiVyGlnSSI12Dcb5UH/fDTi0ayibkje/7c387M//LMdPHf1r7xz8%20pljUNAvRpiSvF+im8psHxL62QZHGGWVQ0QQNSvkAaWs1SRqxtjqCKKCocorZnKausSbAOd8WOSlB%20+OB+pQSj0YijR9dZWT2As5LpfAerHGfOvswsd+RlzOb2gmvX9+gOB+R6wak770c3iqIuGI8XRFFF%20khiOnUh597uWOLqeMxpMuePIEqMMysIRS8NSf4DRZfuYHTjTTiG86ExJ5SMcPKjHYtEWv25bhAQt%20x5SGvt0y2q+J63X9M1PVCY0V7M5i8jJgbfUwaRxy5sxT/N7v/gEvPXuSd77rDe597zjynXL0Gl67%20ZwpXLGomuxPG4zH5okSIgF7SJ+qllHlFJ4qpK8NsL0cJH8kqrODGxg5hFnH+7Dkeft2DfOD73s8X%20PvNFqqJg1FsmRFLMSy5XGyyvDOh1V7h04QqrB4cIabBJwuHhOoudCuOgFpJrkx3ms4aDvXUGIkMb%20QyLAlA1lvqATxww6GTuvXOf6pesceesDDE6s0x0tYY1CUIOEJG9QAAAgAElEQVQIaQKJEjml1Ghn%200Y3GWosgIhARUsZESvLpT32Vsy9fZnNjTNqxhFFGZQtyPUfFloUu0EKjMdj2l3OmXeRofHjbdAdl%20PEGVdGPe/o638s73vfVbct8K5/7qi8K+8coN92v/3a/z1JPP42zAbGZwLsbYiE62RK87QgjFpUuX%20UEqgq4KkmyEl9Ho9hJJUjaWpBVXpd61laR+lQhaLBaFyxHHIgw/cz4mjR9jd3SWfF3Q6XaxU7DUF%20Ml0mz/uMJzDPJZXVhB3BcNTj2LFjlIXh/EtXCaSikzh6A8073nWae08H3Hl4wfGDIWvLXe9+NhBg%20CSQ4owmC4NUC11c9xRbrGm9QdK1mn+CmC9q1+d0GqJoG4wRxFGCBjc0pFy8tuHK9S7GIsFRYU5JG%20lsn4Bs99/Ql2blzh3e9+G9/znrdz712xACiqhjQOW5DmWi/3d65vig+6gptPG4pFyeVL13DO7+1z%20zuGsaIcd3uburEA4P5G1VmCNxJo2iUx6B7x1mlAqrl6+RqJi4jDln/+v/xvT3RmhigjDmMl0h7X1%20FXYmm6TdkNFyjybPObyyxmRrj/k8956zxiIax4H+GifXDpPpELFoMHsFKjeM4h7rgxViETCvC8ZB%20xcF7TnH8rns5dN8R9gwUEYxZEK3EzOyY6zeu0F8akiY9djdm9LM1IjJeePwcf/57n0ZpPzAyztK4%20itpW1ORoUZLrMSULauY0osBKjUGjXUVjK2TQYKkRgWVztsmP/diP8uu/8UnWji1/S27MbwoZPXh6%20VbzrHW9xT37tSRodMFpaYmtrTrfbIwoVYSTpZB2Wl5eoqoJCGD8OLBcgLFHcYTpZgAsJgw7O+lS4%20TiLoZR2UtBw8eIDXPfAgp0+d5OL5C5x58QyuakgHXQoZMS0Vk4llsYjRTezFXp2ATjbg+PE+X3ns%20DPfdf4oXnvs6aaL4+MceQesx3axidRgwSBTRzcmnJRASJcCpkHYvUuuIhr8or/eaKV+EENIT3G0x%20ArzGQxqU1D5AHYVE0OmGrK4NuXotb/P0DEoKwjBkeXmVu+68F338BJ//7Fc5+8pl3v62N7p3vOsB%20DiyH3gLpXPt/f+f6K10O8svG5eOS2SSnmFbUdU0gAgggDkNUGBIFAUiJEj5ZVFeaxlhM7agah6ks%20tbGgveK5amqSJKEpKzqdlLtP3cXVC1c5dGCdLOgyn5bEUUqTWOZTg9AJ5dywbRbECq5d26Va5Gjd%20HnzCgjTs1BPkGJaiLqkM6A1jkn4XV0luzCdERuCUpCgrzr9wjrPnNzh84R7W7z7FiYdHSNnhxnSO%207MDa6jLGGUyVc+jgOjEJzz19ja995Qlq61DWoG1DYytqk1PjR/lallhVIYSnT3C+JTM0WGcR0qJt%20TdJRzPIFD9x3Hx/68Ae/ZYXomy5GAD/1kz/GxvXr/Mt/+a+4srmJCHtYHTPJ5wip6WYB/V7IxOY0%20BpRyuNJijMFq4zsg4ZASVCCwxlGbisbW9Dox2jTMi5xOt89Dr3sDYdDl4oXL1C6kXNSMx4adnQXG%20CoSMaXRIMw8xeYdzL2gCm/HSN75BQM473/Z2Dh6APE84tJawvARp5jfZem9hu4DSq5xuuqIdt9Yy%20OHELGfk0GXxBcrc8ivtfYo0mkBKp/MJJ2iLSTVPkMnQzR1WBMwZtDFXpiELF8soh4jAgTrtcunye%20P/qTz/P4U8/w8Z/4qHv93akQQjCrLL34Oyz3v+sqNnFVmTOfzJlN5lTzClODEAoZKoajHioMyZKE%20OE2JQ+89lW06h7BQaWgKKGpDtaiZFyX5LKcsGrIkoMwXdLMORjdcuHCOc2cuMVpZ4/nnztLvjChK%20TRz1mBcT0rRHXs2YjGdkaUThapzR7cHi2olvCEqysA2JaMiLgtpWBNkycZxQzWsW0wJjoJAaU2jy%20xYKtZ2vi65c4Mb6bg3cdYnh8yLRcECSKne1thFWMjh1itlvx7Ne/wdmzr9APehhnqG1NbUpqk9PY%20goYKLStUZDDUOGkRzrQLJBu/TFI5pBTsTvbo9BI++sMf5QMfef/Pfytfv2+6GB3sCfHL/+UvuDvv%20OMX5i9e4cukGf/Inn6WYzzG2JAx8L4poCKVDKIkKpJ9yaUsURUgRIoRAKUmSRDgrvGYpgs2dbZ59%207jkG/RF3n76XTm+EY4sbN+Zsj2FRBDSFAKEIo4jACsqJZevKgosvXabXd2ycfZYf+Ni7eeThiCsX%20tjl+rMvBFegmELYIw5jGq1Sdz4Vx1t6GPiRuPy8Gi21dP64V4d+sPrcVIuFAtQIlgUBJ104ZJSGe%20zF4aZsxmOaW2aG1pmgZjIiAgkimr6yc5dvIennr6cf7oj3+fF89d4ft/4APuPe9+iFMHvkNv/6Ug%20yMDsGq6uKuaTMUW+YDod05QVQRDR6/UZDkYknYy0n6JCvxZLhtwytu8H4CsILWBgaBV1lTKfp+zt%20BcynC6pZw2TqC0vWjdndHBPGEadOnSKLhuxsL3j2medJkghB7IlDURGozPvCMKggxDlH5RxCBqSd%20lCiKkU5SSQuRYVZVyHpCKWqkdThZY4xBxClaWoIowyjHmQtnefbKS5x+3V088u43sHp0SCfrMjjW%20RTeC3Ru7fOlzT/P1p7+Bw1CTY0WDpqZyhUdEosKKGisqtNU+uVXUIDUysARIjPWBaUGkmM/GvPPN%2038+PfPyHCWL1L/5GixHAsZVM/OLf/SEArm47d8eJ/5Pf/b3f59z5K2xuVayuHgahCUJ1s73RWiMM%20aBMQRR6V1E2JMYYki+kt9fwTrmB7b4+vPvkUly5tU1eOjas77OxpimYJoQbEwlFpBVIREVE3htlW%20gZSOjb3LfO8H3sN733OCxdTQCXOWu33S0DdYzmmEkyjh/GLNNifm326FZBur67dymtYXtI+qhLup%20sn9VQcL41hThU/j2b3ZhoJPSKtM9THcuQLRrYqxKWCwWZP0uy2unOHL8IR77ypd48ez/xZNPv4MP%20/8B73cP3Z6wP/wKT5RqkCOA/MT6pmcFiF1dMKuazGVWe0+gK3RRYbUiShP6oz9JoRL8/JEgFKuZW%20ANltLZ0Vt1I4HL6GBLEXswZdiAc9yjxj59oecXKAva09JDHHTh4lTQa88NRZ3v+BH+DMCxc4e+aq%20v49lxmK+wCDodIfUtqDWOVJarPOBgEZaRCNxwlE6aETAyrBPR6Ysduds3NhC1IZUJsRhQigl87Im%20wpAliv5yj829G7z80gtsTa5w7M7D3HXvSR54+CEqAc888TW+/KWvMJ/U9Hp9FvMJ1pVo19CIGiMq%20GlHhhMbKhoYK4yqsbhChRUqHxVA3FbVZAJaH7nmAn/ypH+fYfd/6Yct/sCfBWneHlOLc4RUh/sf/%20/ue449QR98lf/5+5/NI5dpVABSlKdZAi8VlHlSGLMpq68T1zqEA3GGpUP2I46jMej9HWsDedMJ5W%20nD+/RRqPcDpksQhpTEAcJ9imoc5rTLUgih04i3AFKih525tex/e//xj9GHZ2Nzh2tMfKMCIElM+c%20QgiHEuomXAaJbMf5TtCaD/1Ne/P3CExbjPbBkaRVa7v9r3VYXYNwCBXcCr9q/0ESA1QgNFGY0hiJ%20VCkWRW0Ux08P+drXrvLkk09DtMRo9TSbm9f5V7/zKZ588mV+8IPfzevuP+EefniVQ61g8j+1RICm%20gJ3rlcvHleeCFjV1WWJ0jTMVQSLo9/ssrfQZrg7JeimEbSRQCLZd0eqEXyGNEOyfGQrQFqy2VEKg%20hEAkkEaQdBVZtIKr4XIkuXJxi+29TTr9Faqm4bGvfJkkGCFUTFNXJGmfZq5xzqGtYDavkAqk8sJc%20h8A0NXqhmeUWaRz9JEGFEhs5CnJyVSKVo8Ag6gUBBVlnQNjPmOsCKyVhorDCsL1xnYuXXualF5/l%20lZfPUjeOp55+mbqoGQ5HTKdTcj3FUGKdQTuPiAwaS4N1xv/Z1Wiq9lB1rQm3ojE1vX7CT//MT/Oh%20H/v+U6/Fa/sfXIykFOcA9maLx5d6nUd+9ie+T5x5+WX327/9f1CWM4QyRFFAFMUkiVedCiFa9y80%20umJ5ZcTBowcJ45Cd3V2iNGL7xhh04F8EGWF7jjRM0M675J3TNLXFaguuoqEmCC1px3HocIcf/sgx%200gD2tuYM+xFS13RjP3b3TZT1jZSQrz4ihfBmXedvlJtrq8TNAxTdoqf9QiS5FTm8H//pSaj91L2b%2035oggDACR+nNwtIrdrW2CBmAFLx8zvHFrzzNuXMXGC6vECTLRJmlKCrOnB3zv/+L/5fXP3Sad77z%20Yd705nvcA/fGv7nc4R/v/z9lAXu7xgmrSCLojfy3/o+B+97dqX5jtlf9WjVrmE8K8kmNzS1oP9OU%20gAhD+p2EldUlRgd6qH7o17PuByW2WdBSuvYI2j9o7M3XWygIlX+tcRbtHEoJhFCkA6CGE3cdxDnH%205XPbZN2YN7zpDfzR738OXWyzsrrO5uYNf+AFGc5JqqpEG0kSKRACIS1CWIyxFGXpRbRKMG8seuca%20uyomFoqwo7Ax5GVBU2qCRqOSIfFyynxvSlVVFPWC3qBDqFLSLGAxnvP4Y19jVlTM54ZubxVtanZm%20N1BRjZYlThq0MFhbe4KaBofGonFK4wS+ZWsakI4wUgRhlw9+6H384Ec+hGjf+39ritH+tdTrPLL/%20+7//c/8ZX/zCYzz/0iUWC9sqNg1hlKCUZTGf0+n2sbWmaRqOHjvEez/4fUxmY37/D/6AOI2RgUKF%20KWm8xGLmmM4KTNqh0RLnDKaucE6RRDFSObSbo8KK/iDkwx9+lOVlyOeQhK21XnsNdRS2U3nh2lG8%20vw2d8zyQuA0Z4W593i9E3u7jsAiPsG7zAu3XIYlCKdFyRcLnqBuLExKh2vhP19zkpBrnRZNRoJAR%20PPbY0zz70lmSJAMZY6VgPN0gSfrUTcWkMHz1qWucuzzma0+c4+1ve+DXHnzg1K8loWY23uKpJ56k%20KnKw0ElSsqTj4jim1+vRH/boL/WQoSOOY5IkJOskdDL1m8ujWwXtb+N19eLYzaYV2xsTTOFoCout%20HMoGRCJASYmSgqWlDoPljNFyH9n1kavGaCwCGYj9iLGbU1K3X4ac53OaRiMCRSQDf8jsx7laA8Ii%20ohACUA0cPH6Afm+Fsy9s0hmOuPf+e3j8yy9x9333UuQNm9s3KCuNDAOsCxn219B2grG2lRM4jDEY%20rYliRZRGlEWBFRqRSWQgKMqSfDZDOEma9WiM4fLuNerQ0Uk6rK6uILYMdVMyn42J0xBjNLX1gyKl%20FLP5BOdKsiymIPehh62bwFjfMhpn/Ge8z1RKgTACqx1COuJORtaL+NGf/Djrpw+9ZkfbN6Uz+qtc%20f/a559w/+ae/xZceexoZDBEypdNZBhlRzkq0cYRhTINlaWmJ1YPr1LqiqBrysmI2LZGqQ7lVEPSO%20cWj9NJvXp6ThkMXMkiYjqkLSWEPWURT1dY7eEfDjP/E+Th5PqcqaSCpockw95fjRHg++rs/qildG%20C/StLOG26bqpN2nvQIHA7OtU8MsZGmeppWN3MkZYyBKfpRQGkjSULVKyVKYgUApFgEVirfTZwwZe%20uWA5e+4G1zanODLCdBlLQtaDT3/mBT77uS/QHfQpy5K15TUOrBzk85/5ImVZUxcaayVZEiNcA6Zk%20ZZRy/Mgyu9vnefRN9/KmNz1IIGoCKZAywNSOxbykyLXn5pIYbTxPhzDEsSLNYtI0IooD1tZWCAJJ%20FEWoQPp9W0oQBv7PaShb4zEMR75+C/naIK9P/+GTrixLTp44xcbGBmncZbZXYhqHLQXKSpQLiFVA%20loSkieTYyTW6owD6QOBwoUXEoj1ILKqdhsoW+d7O+fljBmrd4KwmCEOUkDRG46xBSkWgImgErhII%20DfNduPDShJ2rFZFc4YkvvshTT77IdC9nkZeMJ7s4oXFohCzRbgKuBOHtFbQ2C0GDcA1hoDyXiT8w%20lZMI67DW4qwkSZepaksWJfQ6XbIwJYlDMIZFPqMsc4I4AqEotaXUDq0ltZYUzYI6XGCkRzu+ATMY%20W6FtjbUaK/xjSrqRR3O6pqjnPPDAA/zqf/vLfOBHv+c1xdjf8hyL73nn/aL6lX/ofuVX/wdefPkK%20S8tDdjeuMFo/wmh5wHgyQ+sKiyMMPZLIpznbu+P2dghJ0w52lLG+eojDB49S5te869g0VPWUJF2B%202lJWE44cX+Ltbz/CsRMp2nqCzugMYfDCRBe17vt2xYuwrfDNk9e3f7jb7s7bgNFNHVHZ1DTOYhpN%20UTW42pKlMaNhnzhUKAz7QZ8OSWMs+9qBxkBRVlzZ2KTbO0BRKlAJ1sIXHrvAF7/6JL3lFc6fP0+/%202yXr9njL217Pl7/4OLNpiZ03RINDOBdjraWuFlzf0MxnUyQRYXycg4fuQddTrC78Y05D0kzitI+c%20DJUvQqJdYWxdg3X+RtR1w4Vzmy1iMLclHwiCICAQIVJKJJYwDEjSwAUhSOVQyhGEguFSl8Vi5h9f%20XSGEIEkjlpaWuPOulX/vjfyVz110ly9f5dL5i1w4dx5jHA/df4MTJ+6g2Juj2tSESChvTnYe28Rx%20yGApozsMoIt3tzvRol91c1gm3Ku6cnC3cX7twRSqCKRq23gIVeAjbtrsaSvdzR1mUQd6o4TFRFPP%20C1bXlxhPd7h69YbfcAPEaQfrNOPpjCRW7YSN1oXtEK6VsrYV3Tkfq+NbSO+FFNJhhEAqTX99xFK3%20T1kUbOxcJ5KKTpphhSY3FWFjkUGIthZtLTU+R6smp3a+LRPtc+Ncg3bG80KiIc0SqiZnc3eT1dVV%20pjsTsm6Hn/6Zn+Z9H/6e33ytEfBrEqrzwffdLy5e+nvun/3WP+fCKxfprhxiMd/zc1jhVdZWayaT%20PYy0rT8mJAgT762pamwj0HXNYjqjLkqMbVha7lCUnnzTpmawlPE93/tW3v1ev8DRuhyhGrCZv6FU%20QuMEixJ6NcioPRXd/md3k/9BiJtje/dq6OjbLuEl8VEU4WRAWRQ+nyYSNwG/wSGVQiDxMzVBIP33%20bzRMFiVB1MG4iMZKAgUvvLjJ5x57gt1JQVg2HDh4mMVswjxf8Id/8Bmvz6otMhtibETdREgUYdAB%20XTHZm7I0HLG6eidNA0UpqSsvXIukbH1zEUI6rG1QSvtd68IRSIEKYqIoJYwUaZqgTU3TNNR1TVMb%20/7lpMFoiyChLTZ4b8gLC0Ad9WWdwznDp4g2m0wlBKCnLnLouieIAIS7wmc9GbrA8RIUBgVRcv36d%203e09sJbFbIG0kkBI9rb3OHvmFdI4Bit4JbjGPace9lGrZQNWEKqAQEmM1igFWT9i+WAPem0hkoDV%20GIwPw0P4BAhcK0a9NUm7Oe0UYBuHDIV/W1gH1uIzyjxFgPSrp1EgpSTqwsqBmGpu2ShzDh1f5sTp%20w2RZl0ZLrl/fpGk0UgrSpIuh8Vo14dX0ri32+7/2I2Wd82vesQ6c9IeHFNjIcejkYU6dvIPp7g4v%20PPsc070xum4wjaY2NYHSSN3QGEtjoLbOZ4O5hsZU/vti2x1qFuu0t3xgKesCJy39fp+NG9dZX1/h%20Z37m7/L+D7wflb32rfxrlvD1Cz/3PrE9nrjf+q3fprFztHXkhUOplDBNqBaa2XxKaRrCIGYwXEGF%20Cbop0Y1Fa8fOjW3G2xX5RNPpjRjPdgmCLoiGTi/hxB2HufvuiOEILj07oZs6sKGX8DuBUgGVsSxq%20qAykApwUSKf8HWh9YfqLo17RktLOgXUWhWjVRpAlEYEMSYKQQgZkSUoYKg/zne/HG2GwxoHzIaDG%20wnQOe3sFMuhQ6ZDuoMsr5ws+9edfpjIhYdrDOU1R1qweOECoAkaDEbqsSeOYphQ02qvzrJQESUqa%20dFnMNL1uSidbosxBawkuQMp9XkRjqJDOINycIHL0OilJJ6OTRqTdgH4X4o43+WqXIayPozA1zBaw%20mC2YLwx1ETGfNSwWC4wxONv69ZxECkGahCThGp1ORl7MsVaTZhHPP/88f/Knn2dz+wYyCun3euSz%20OVVR0u/1CAkIhGS8s0soFbO9CcePHiMKIjYu7nH5lS3uPHUHjao8MayE/5B+BJ/2Y5IRN+M0EA4r%20TIuMHA51Mx36Vf3Z7RojB9Y6pGthsfURw7LtQ52z7V879i2MCOiMYGmSsreToyLBo299iL0dzZVL%20N9Bac21jk7ys6PY6zPIxVvrxiBfZ7gdn+dVD5jarirWm5TAdQigchvl4h+3JDQ6UI0ygcbEjd3Oa%20XKOrmjhOkKbB2RBjDNo4GmuxwnnSmqblvzw579GRwQgNwtA4TZam1HVOFCs+/mMf47/4lV98IluS%20j3w7uMHXNG7w5372Y2hX80/+6f8ERHTiDsY2OGcIAkkc++THsqwR0xkq1Ax6I+Koz+52Tj7R1HqB%20kBGINjkyUFRlRRhFzBcFX/zSLi4YcejgOpOxRgV+GqZNg3GGvNHkVYRGYQTtydTiIeFVc3+53cIf%20l6olOFUbJgKOEIkIQ4I0JY0TIhRVU6MkNE3dapQCwiBEAtMZ7GwumC8c0zkMR12mc3jsqy9w6cqE%20E6fvZHdymeFSH63nzCdzmkXB0ZWDvP2tb+Xaues889jXkUsjZJDgrKZaTBCJoConxGGGbL1WgQgR%20YYKSDc5pcDVhbEhiGHQE/WHM6vIS/SXhpQa3xaXUFUTCSyA6ob9n+w1URYeihL1dSMcBwV7NbNpQ%20FhqtHYFKCMOY+dQjqrpUbbRvQhwOEC4hn4EKV5jlJXXtmE8Mi0nBbmQRRmPrBltrssgH1GdBzvHD%20Q+aTKV/74jMcWT1OP84g0O1kzKBCRdoLSHohJK0o1fk3lgva0VjLE7nbVari1oj05opEBzK4ldZg%20ARGom8JIKRUNGicEUgmcsWAkIoTuELrDgO2ruxw4tIQ2U8ylkuW1EVWjuXDxAmUj0Pt7YJ1v5D1S%2080E00gmE84S6w2FvWpM8hjLCYXC8cu5lxrNtkihkMtmjokCmAWEWUVY1zgmcaTyithbtrM8HUwKa%205mZ7iLA42rZdel4rCB3a5MyLMX/np/8OP/9LP8e3qxDBNxEh8s1es8L+38s98cCx03d/oixnPPPs%20N9CNoGkgShJUEPp+3oKuNEJFCKc4dvwk/c6A8c6MxaIkCTskcYpuLFHWR4QJ2ghOHDtJkiY888w3%20GE9qVpZXiUJJGktCJYEAJyoauyBMLP1+ShYD0nn9yM3JmWhvCm4VJGHbvXju5s3gFeMKnEVaUFYg%20LUSBIpQS5zSxCrDa20biIEUpgdWwe6PmyrU9pkVG1FllPoff+9dfYHMzJ0yX2d6dkmUZZV1y+OAB%208tmY6c4uG5ev8dA99xOphLx0VFVIHKUIq7HNnE4Gwi2484513vLm04QKnNWgK4wpcDYnigxLQ8XK%20csSJkyOWlxMGS5Ik8QsjHBZjK4wtCUKLVBqEvsljBIEgjqHTgdEIun1JmmVEscSh0brBWq80D4KI%20uta+LZKKKIoxWrOzs4M2irOXtrlydY/FTJPnDcXCoAhxWqErSMIeihjbQBZl3HfnA8RBxtbGLuvL%20q6wsDQgDr9zHNcjQ0h3G9FYSop5EhMaT1sp5zkcov0OeW2oLIbxi1bVaeXd78QEWRUORl1jnfISy%20V8pi2xD8xulWowa6MiipCIBy4dja2iHL+pR5w/VrN2hqQ1k37I0nqFBS2jlGNlj2NTwaMAhnfaJo%20SwW0uoObKVqubfnTXofJfMpktkvZFDS2xkrru0oJpW6oraG2GiMsvlFtQBlUKDC29vNDsS/MtVip%20vRBXaYpqgXEV3//hD/IPfvmXOHXf0W+rKOQ1Q0a9VP5Ipe3fO3UgFr/6j/+BG89nfOpPnmQ2c1RV%20gQpAqYRIhmgtCVSEUiH5LGdczJnPpjgjsbImkDHOKfJZTtBN6Q/7nL77DgDOnL3AVx67wLkzW7z7%203Y9y5GjCgQOQpJ58LKuCnb2KrR1FP+uQWYuM5b/1g++j81t/cUvuKNsiFeP1JkJKlArQ7B8ylkQo%20lJBoBEEQEoWSuoHZ2LG3vcd4d4aSy8xy+OpXz/L44y9y+Pj9SBmxmO7QGx6gXhRcvbLJ6eNHWaQp%20g6jDE48/zmpvnVPHTjAeX8HWNYEsWT/S5/77jzMbX+XOUwcY9vxjMSZE2BAVRqRdxWApYG0tY2W5%20w6ANknP7dITRKGUJgn1xgruJEqxpMLb2vi4RIJREBILekm/pOv2UtOMIQsPeTklV1kjVI0l9C2VM%20A6JmvsjZ2dmiqEqiuE9VTbBakER9pIxwzgvAQpVQlT7K1DYBupRIl7A0SNjdHPPsMy9w4uAK8SBD%20BdBYg0QTJoowaRFM6HD7ueqtjNFymw4M207NvAMflN8j1r7+dWPYm+xSFSW9QY8wDP1r74wfrkiB%200c5rl4TASQ0qRMSQpJI4kSAaVlYHHDmyznhyHms1nU4HTYVVnvvxgxWDavOscZ4uMK3RUe4/vpZd%20t87zm2WZ++BA59dJG6fbcH5BVTUkcQdj/MHpRby27US814y2bcWZNmDf+HZQeN5otNzlzW95hH/0%20q/8V9z9857ddnfYtR0bW2juEEHsAgRRPAHTi8PqDr3/9Dzzz9eeZTmeMd7exxjEarbA0WPZpc3mD%200Y7dnQm7G9vIIGHQG6G1wTYGFUS4ICXrDVr7Bmxu7rC3NyFNBuxsjTlz5jJNI0myId2+IE4iyqZG%20W0OaxiwPMpQApeRt+WnejCTwRkCPldvPuFdtEPb7qCyxDH2kmlCYuvFEpzVYq6kbDTJGBpJ5Dhtb%20JZevjrmypTHxOn/858/x9DNn6A3XqSvB9WubHDx8mI3Ll4mUIMRSzhfEMma6O6Of9dna3OTK9U2s%20UxRVThgI7rv3Tr73PQ8z6PVY6qeMhv02CmWGlCVpBstLEWtrCWsHUvp96QtQCwWEsKhAtMM+60lT%20a7zGRCikVKh2qiSFQkhDpcdYKpIgIO0EZEns4YbxYr+O82QAACAASURBVM/FYkGWdZBCMZ/PiZOU%20IIy5cvU6V6/tUFQBGxs7OOe3kzZVjdPmponaNpYojKgWFcLBqL9EFmYII8inM06fuINumhBGIbUu%20IDD0RzHd5RSZgJWaBt2StAJBgESi9lFRm0jKbWt+bopcncM6y+7uLot8QZqmdHsZQeDbeSl99LDW%20tQ8OxBdzqSIA8mnDdFywszMlDDpoI7l2fYvFoqQ2NbuTHQg14AuIwCH3EYq0OKGBxvuGlPVWAelR%20nMVghKW2fnNrlARo63etiUARxwlOOBptvMMe59GjdDjjRY1+AEOLCm072Nc4qTHC4GTN277rLfyj%20/+Yf8tCbH/gbkcl+y4vRfiF6FfyS4om1QeeTj7zpkU985Uuf5eLFcyyNlpjszShKzcponTzXWC1R%20IsJYCU6RBClWG8q8RKgAGUZY4UhCibM1ZTFnMZtRFAWjlYOooMOZF87y3IvnsfQYLnWJ0y6Vi1nM%205wTOrwrqpAFhsK+gNkhpcU7jrNuX6LYwf9/s6qG1QBLKEIXE1A7TGEIh/KI+Z1BhgFPe2FQ5uHAd%20vvrMFa7sOIaH7uRff+oSr1wtmMxqGuNw1mJ1yWxni0wKOmHMcneIrAX1vC3Oe2Mm+YxpOaMSNUkn%20QRBy150PkC8kTsOB1R6rKyEqyHF2lyw1HD7S59ixAcvLEUkqkcrDciGdz/Vub/SbpVYopAx9e8st%20wzBCtSyGIVB+4uWcwBhHqBSdLEaJkLpqMI0lLyviKCPNBixygwq6nLuwgZI98kIznc6pihzdNISB%20xOLfVJ1uitUNi9mU1z34EO949G1ILaC29OIei70FipDjR497DsVWJJmk0w/or2VYalywj3j8xFEh%20UVbcHJ8LTFsI2umVcO0Ke1+kmqah3+uyurJMp+NzuAT4xRLcCrsXzqBkyzE5B5WXkVy5dIOyhNoo%20jh5fY3s3ZzKfUpua6XwXJRxREPjH35TgGsJYgGiobU5/kLI33eLgoVUGSxmT2Q5ITRiAdjVhonDS%20F01rLc5BFPiftakasJ6CUFK0MSDaIyLnMNZQG0fa7bOoFrhQMFrtsz2+gREl3/2et/PP/pff4Ngd%20R383jKPf/Y+iGP27rtWlzidP33X3JyaTCc8/+yIqSHFGcmN7zGhpFeEEcdIBF2CMxWrQjUPJgG5v%20SG0DrPGWkiNHjnPP3fezsrJOWQnGeyX5XkV3eNC/Ac5e4fKVPbLOKqOVGEUPXRYoGRDGvhL5gWaD%20lI5AejQgWmRwa9Rya/RSV40XAkqFkoJASWQb0l9pP0jWIsRKyctnC578xjWS3lGidJk//9JVnnx+%20i+0949cDSwWmoZrP0PMFTZGz2B0TSsWgMyBJEvIiZ2d3h8ViD1uWEEVoDYcOnWLQX2W2O+Xg+hrr%20qxFRbBBul7RrWD/QYf3gkKVlb/Z0osLa+hbyu90w9yrcp25Nd269/W7yaAjTphfQTisVoQIhAgIV%20sVhU1LUBEaCdpK4lZQkvvHSeybRgeWkZXXvvXlOXIDSdbgdd59wYbzDsDnjTG9/I+9/zvawvrzG+%20sYOsHcPOErFKGN+Y0O0ucfTIMkJApWf0ljLSToSK5W3FaH9UrlqAuz9Fs7dWv7zqOXCtUdYiZatA%20Fn58f1OHxs0hFFL5wGE/mVLYGhZzzXyqmU4qsmzIzk5BEIZs3dhkPN8lySIW8xm6rjC6RgUQKEdj%20cqyrCSKY52Puvvs0r5x9ia2dDV730H2srS0jhCGIAyrTZsoL/xit3Q+IE2htiILwJurytqd9SYq3%20u3QHQ3Yne8hIEESSK1sXSeKAj//4x/jF//zvc/8b7hd/U4Xo216MAI4fWfvk4WN3fuLq5Q1eeeUC%20WkOSdCjLCm0MgQxxSJyTBDJGiQQhIxwJYTikaQLqypLFQ1ZW1kjjhMU0ZLpX0+0fYrZTUc01abpM%20WRrOnb3KfBKxspwhRELjHNoqnIIoFSRRAIQ0NDeDQqzxLYtv4VueCOm3g0iBNg7TeHjvLW4KR4SI%20Qma55Op1zfMvbbC1ZQjjZa5cMfzhH3+JyQwaI8AYTF1TLvzNKRHEYUivk4F1NLpCKbjz7jv43ve+%20h4cefpj+8gE2Nyc0Y83qgTuQLuDKhYscOrjEoYMJgwEIMWF1LeXokWVW1gRR3GouRUWjSwIV3iw8%20r3pDOq/FuT1C5S9LAXDO3gyYc86T1FJ6q00cKaZTwyKvqGsLbdxpntecv3CVuvF78O65724++tEf%204tSpk1y5eonr168ShwEHVlbJ4pgH776P9eU1rl+8wtXzlwhFQC/rIS1M90qwklMnDhFGMVWzYHV9%20RNoLIJGguK1F8+uefe1tCUGpbitGtwqua0WPQsj2Z7r14YvRbUdT27Za46UhQka4SjIe12xcnzBf%20aCKVUdcNR4+uE0aKRTHl8JED7Gxv0ZgKrSukcuBqGl0SR4qlpQHdbsq1jWvce+89/Mqv/Nd85KM/%20RBiF3LixwSLPESqiqGuMc6gg8DKPfcJ7H79a6zfXOL8yzLefDu0slfGrqcMwYDLZJo4DfvhjH+EX%20funneePbHv4bdzB+24sRwLHDo08eOHT6E+fPnmdj4wZxklCVFXGcImWAcBLrAgKRoFSCsyFFCSoc%204AhpSsNsVrKYGSYTx3yisSbC1CFWpEjVQRCha0lVChZTw+UrY1QYMVmU1FphpfL3ZuS5WyHCm29A%20vzVWgVXgFNLKVjkrcMj/n703DbYrO8s0n7XWns4+59xz7qBZSkk5Z1rpzLTTJo1tbMBUMXjEAy5j%20zDw0FLSL7ooiOqIj4F/96Kr+0REd0a5ucBEBNKaZyg24jAEDxvOQs1JKSVfDnYcz73kN/WOdK2Wm%20aegOfjjTZitu5L0ZUsSRztnf/tb3ve/zepsHEjWPiDEWSg3jKVy+OuZrT1wjK1p0Oqd55pkBf/6p%20rzAYGIxMCcIYhaMqcpp8BtoSRZIkCojDgP39XZqmRir/4YqigCOHD3Hugds4d//DDCcRg90MUxvQ%20DXfcfpSTJ2LSdkWn03D8xAJHj4aEkR9SI2ukMB6ONU9rFy/+JeSLpA1/3+fSz9C87sZTLj3t4KCL%20gEaHzGYlWVZjCIiiDsNRzo21bXDK58lbw4kTx0nbMevr6+zu7tDoBoljIemwkHaYjSasrV6nmpZ0%204jZJEBOKBGVSyklNp71At9tChYLeUot4eX6iDMRcx/P8v4n/dav+vLgYiXkhEjcHv7c6oltqbTe3%20Bfk5tsAYfI69lOgSRvsVezsTwiBlNsnodheo64qynHH+4hPcWLvKeDygKDOMrpDSIIRBSkcriWl3%20UvJ8im4afv7nf5YgkHz0o7/O+sYNEI7FpSVEGJEXFU3jGfNKKKz13ZwKJHXdYOYRWmI+G/XKBot1%20lkpX9Bd75MWYMFG8//3v5Rc//Au84tX3vCSs1N+QYgRw++mlXzt28p5f3djc4sJzF4miiFar5f+R%20VYRwAXUF1iikaCFIKCtLFLcIgwijLXlWMh5lFLMGZwOyaU0r6SFdRDHK0bWg3V5G2hab2yPWdvbZ%20HeXktaRsJHnhKEu/Bg4iT55USKSQN8/e8nnbttr5bYgUAqn8OrUoYXvPsbZV8Oxzu6xeHbI3kMSt%2025hMJX/xV+d56skN+ounmBYVB58PXVfosoSmxjQ1dZGR5zP6/TaLSz3W12+wubrKYDpmdfUqTz25%20zvGjd9BUC2TThuXFZdI4oL8ouO22Nr1+w+FDisNHWyz2/bCjbjKk0n4uNrfavODo9f9afF788/PS%20UubePYed83/8MQEgjCR57hiPC+pGEAZdNjaHrK/tYpwgSkKefOpJLl66yLXr19nb30MK0NowHA7Q%20eeNJrI0jcJLQBZSTnHyaE8s2okrIJxW6rDh27DDtdowTlu6K9HvhcF445kdRMe/2bqquv/509oKC%208/wj2vO/Di7tbrp7cE4inO+lqxns72WM9kuisMVkmtNfXGB7b5390RaNmfDEk19hOhn77ZU0CGWQ%20CoJQEQbBTRX77Xee5a677uRLX/kC166tsnJ4iaLMkKFkcekok2lGnmf+dSoflYXw4lxjrX9mKq+F%20kgF+OO4MVhhEIMjLKUsrPd7znnfxc//NT3PPw7e/ZJgO39CM5X/5XXeKIPh5p5Tiz//y76iqCqW6%20dLunSNMOVgvq0hIEiiAIMI0hkL4tNcogrKZpcmiMN3K2OmSzIVLEdBdXwBmmgxl1pFg4fIrBYJtx%20WTAa7zIYlEwnHYoiZZY5ep2GYystWrFgIfYMm0jecuZb4T+MxnlxYDazTCcVw1HJ7t6Ywbhkmguc%20WODQoWPsj+Ezn7nCtdUJrfQ4ZSGIwwRnGqqyQBcVaOMNc9YLFJ3TxHGffr+LkCdYWlpieXmZp54+%20z+aNDXrde1Ficd5lVBTjfcaThiA8RNIS9JcS0raab38sYSRvKrH/6decdWn90dR3hQdKXn9cS9rQ%207beJ0gll7fVAjXaoMCWSIXk5pNXqIAgYDqYMh2OsdSRxm7AfYIqKvd0hUR1wtH+IhIDJdMq0mkEW%200zIrJEHCeLditlvTX0yYDWv0qEWQHgyXb+3K3MGKX6oXenzgBVS8f8zo65zz0g9p0DgiQpTyb11d%20wyyH2az2frCiIE0jGp2DqGn0jDe9+VHyYszu5ojppGAwGDCbTeZJOCEqColjRd0YrIG/+dvP0O+n%203HfuPgbDHZYPL3PXXfdw6fIWcRx7fvbcSqKUQmt/BPYiRuEjhYTFaIPBgPEq7KIuOHRomfe+7138%209M/9FCfvPPKSgst8wwPfv/s7bhNK/ZyTyvKVr1xgd3fCbLrNwkJMHC0Q4GXCZV2RpAnOTWkai7Wg%20ZBspFVZUqEBQlxlpe4kwiDEmw2pHEgdIBKP9nGT5KHk2Zqua4uqKphRMRoadI4rFvmZrqaLTcvQ6%20Ie1EEipFKC1KeKSDlYKqqZlOC/YGY6aTiqoSVFpR1yEq7NNqLzOcwhe/eJ3Hn7xK3SQkcY+iLGn3%20IrI8Q5cFOEcUxbhA4rTDWX8A3Ny4TrsVcO6+e1lcOcT5Zy5Q5iXvevf7uP3OY/ztX48YjUY0pYBm%20zOEjp+kvBiBm9Pp9gsjM7y6DUmp+v704W0T+AwXnHyhHQt2cQ4gDM7Ewc22MAg1p2ycOT6cWGYDR%20gjBIkSqkHO8TRim9fo8wVIRxzM7WFsPxDgGSQyvHcXlFkWvysCGJE3oLy5i8psg1tqjoLi9iS8PV%205zbpLZ9lIU4YrBsO9xWkzLsVfVNrZOd0KiGCF/rRnsc2/8cK0cHvk2gaGiyOQPiVfpHDeFQwnRaE%20QYtKax/9XszY3LrO3v4W99x3G4+85kE21vZZXb1O0UzJa9CVpTE+lThpp4gKRpMJs2LI4tL9nD5z%20lrPyFMZUXLx0gb1hRV5m8yQaebP7w4LGeNbEXE+lrZ53YY4wCoiigDPHT/DWd7yVD33ogy+5QvQN%20L0Z5qf99mgS/8ubXnxKLi/+D+w//4X/lrz/zNa5f3mFYK9qpIE68V6qqaj80nK9p4yAiDDSmrIFq%20rl2J0XqPuhxjTUCgWqgo9qtoLRivj5HdFkk3ZbQ35bG9fdZX4aEHj/GKc4cps4xWq6YVVwSqQtgC%20awvEgV1EeAe30Y6qsTgboYKUIO4QxCllHaItfPFL1/mrT3+ZQC0SxSlZVtBqJ2TTfYpyCtax0OnS%20CiVVOWE8mKHzjHghoX9kGYThC1/8HEGUMhlnZLMK3cCzz1Y89tiXuf3MXZy77zSbN56ku+Djv9vd%20gLQNQhi0uelT9zMQEc7vvX8C0N/d4sZZa28Cwhxe2+IQSCUJEwjjAOcqGgOzvCLLNEJYZpOK6bRi%20cTHh5KlTdLuL7O+NKUrDkaUVBvtTWihaSUBVWjLT0IvaiCgiG5XEfgVKVTQ8d/4Kt92+xMqJHntb%20Y7rHlmgtzud/iJuCVV9swrnYUX5d/NQtjTN///FVuPmA3wANwtU44QPvnYWqhDyryLMG5QKUCnEW%20oihkd3cXIQSz2YQHH3yAy5c+znQ2oCwz4jgilNJ3uEVBmiZkRY6gZjHtcOHKJfaGGyz0WwyHu1RV%20w9ZOxnQ6w5j5g2ZuoBXOet2cFP6YJiXSeKqBCiXtNCFJE37oA+/lJ37yx+gf6b0kcXvfsJkRQBjI%20Tx18f/RQ/GuveOWjv7q/u8fq1eto7XBOohtDoAKSVnKTuyKFz7c3WuOsJVQBYaiwtsa6BiUhigRK%20zRMwnUZKBTLB1gJbGZQLkSYmHzdsrI+4cH6N48fP0O62aKUpWRmQNQYVdXBBTFaCUktYu4C2KVZ0%20MLQxoo1QXWSgiBP4y7+8xue/8BSQoMKU2bTAGE0cScpiSBIrokB6rKdtqKuSRheEkSRQlgcfOsf9%20997LuXMPsNhbYrg/IVQJRWW5ePkqRluc1WxvXWehI7jnnkOcPBGSpiVHj7YII0s43xoJYqQM5tsv%209fV0yxd0ROKm+vqgGbDW61mk8CJRqw/m2HauSm7mHZNf79e1n6Wtr+VokzKZSa5c3uHG9V2urK6R%20FwVhGFHkNZvbe1y8cIntrV3SqE02zVjqLaMrg6kMQguWFpZJ4jaT4ZTQhbREiq4qOu3E0xKkptXt%20ELUFYUsRJxLZ8TOTWuc4iU98nR/cxE2ZhpsXl4Ni5L/39gx7s/redNA7L0oUosEJTUCEdBH5FDZv%20jNjeHGObAFxAU1u0cQyGA66srnLi1DHOnL0DGSgOHznCE08+gbWWLJ+xPxggA0lV16wcXsIJSxBA%20XswYDPdZ27jOtRtXmcwmnveV1WgraEyDDCTtThsnHNPZFG1qojjw0D5dEkYSJwz7k33uvecufunf%20/CI/+9/+lEg6ya/xEr2+ocXoxdfyovy1u+99+FdxkqefepoiK2klqQeCVxVRMmcTaU2jNUZbr7Uw%20zm8YpCerS+dh4gI8HN35fI+AGGEFyimUCLB1QFNKjA6wNuTixTWGI02ULLC4EhK3uhSNojKSIF6k%20mMUYk+JkmyBsEbZaREmEmkfe/N3nhjx3aY3hoETJGElAmec0dYlzNaaZEoUQSuUpgs5Qlzl1OcVR%20I0TD5tYNtrc2WFpc5pFHHuT13/4ARw7fz7Vr6+wPxhTZjLIq0M2UxX7A2duXuOOODnfe1SJtQRB4%20j7pzPlBAzLkotwqR+wcH2HYO87LWx0t5w+Vcc/OCPzKnH3pT39xGLDEG1tcqskyS5yHXb+yxtTlm%20Z3vfFzknUVFMUZTs7+7TaE0UxkghGY8nxEFMLGOKsqDbWuDkiVMkUQvbOLLhmCMrh1k+tOhvtOEe%20cRpy+uxRalMhE0mUSI8BUQ55wKlyzy9KvMDx5e2nXnEm5+qkgwgqECgZIGXg+UlYAgKqXDAZGnY3%20Sva3C6pMIEyMMyELC8uMRkMuX7pCGAbcdc+9LC4uU9eazY0NVlevMBoNmc2mBEFAp9MmLzL29nZo%20tSIvrlUOpJ0TjRzGaKrGMMsqwiAmTVNa7ZQojtC6pqrKm/aO8WxCGCtULLFO8/o3vI5f+uVf5D0/%20/IMvefhw8FJ7QXefDcRP/Pi7XTtN+Z3f/lMuXbpCkqwQx4eoS0CkhEFCSIQUMZYI10DVzMnVrnle%20WqhXxjobIVyNFBmBUQgXQRVjHTQ6wGiJs5rZ2g57gzHbuxMefNVp7r6/zeJyC0cLXUOnN28K5h/n%20rPRokP1Bw2Ra8tnPP850UqKNIFKCui6o6xm2qimdIElAOYWuNGVZelZQOQFXEQWCqsjodltEUcDV%20a1dYu7HPkUOn6SSHEYTk4wF33H+Os6dvR7qSU0cTDh/pUxQZ+/uCQ8vt502G5vqZFyMN/5HjmnMO%20o93NYmStRSmvr4nDW3EE7uY8xX+5uZpZG7DOa7GyovC8chRFZYjjGAhIWws0TUNZaz+MbzRoQ5Km%20dDoLREYyqjJ2hvt0NjfIhmOm+2M6xFQuQ0TLLC2ucOXagEsXb3DPQ7cjnKNen9IEET0RE/cSUA5j%20vTI8iIP5ylu8KCdBzP8+7uaU6UD86ayksb4Y+I4ckjAlESHT3DDayRhsFpS5f7gpqQi6Ic5E4CLO%20nr2PqhD81V98nmvrq+zvrlHVBVEU0e12GQwG7A12abUSev1FtPXkByVAqhBEPMfhaHCSJAlppy2Q%20grquKIqMrMgp68IPrI3myLHDDIY7VHnBD73n3fzrD/8Cr3zoFS8LCvpLrhhpbd9yz52h+Hf/9u0/%20k6bp//bR3/g9rl/bJc8rHCuoEJAOa+aOcRfdjCEWah47hPHrZmexJkA6OxcVa4QLES71cwUXeRSp%20U9gGOgsnyIsdnvnaVW6sbfDqzXt58OGThCHs7RbYWjCbzRhNB+RlTmUKsrxkOJoynhYEqk1AjJQh%20daUp8hm2LgCN044qq1Au9TOsWqOcI2jFtNI2i0sJD5x7E8aWbG/vsnZjm+2NK8ThNdrJIXbXt2kd%20W+YNb3gNd90Bly9CGhekqSIMQ38TCeY30j9hNHQQ/fy8r4PNzfNnLQex0Ae8b+cEbr5dsha0tkwn%20JWWtaaUd2t2F+fsDUZTQaS+wuLhMVWfoupi7BB37kwFtGaKkojQFq+uXcYVmKe1x++HbyGYzdoe7%203Ll4B/3eIba31nnqsau88g1nGO1l6EhTy4Yl2SHtK6SLEdbitB9Bi3nRFHNo2k1dGQdyADXvJANQ%20fmvoa3mEspAPYHt9xvr1GaM9A3qRfqtLoBSVhiuX9jh/8SLXrl9jOiu4tnada9dWmWUj2m1Hux1j%20dMOhQ4fodDpcvbqKNjXj8T6dburNssYz2oUICaNgjhGWc1KpIMsyptOpF5Y7g4oUcRST5zPG2ZDe%20Up93/eDb+O/++w9z8rZjL5s4hpdcMQrmc6Q44iM/+9NvecvKcue9/+kjv8kXv3SRdr81Nz9qcBHG%20hjRaoWSLOE6A0j/jHH4OYGMvPnEGISzI0Fs95iZYJa3PRZPzp7quiYOERnSZ7mV89bOXWbs8JA4j%208nJG0WTMihGzYgKuIUgD4rSFVDFRvAA2RKkEoSVlU6GrGoFBSYNwNcbU6AZwIUZrpAMnGnSlqUvH%20hYvP8MAr7+P+++/l2NHbuHJhl4vPbjKpClZO3k7pcsrSsbMj2NnZQy4HGN1CiJA0lXPdz0ELNPer%20v9j98I8MsV8s/HPOEQQhYXgLTOase5F6W2HnDvmiBG0Fxgkms4yyLGm3O6ysrHDl0gWi0FE0OVJZ%20GlNT1yVVXdAKJc5ZiiJHBBFpEFCLCqsret0Od9xzmgfO3s8TX3ic3dEu7d0e7c4SbjDkiSeucteD%20Z5DdHvk4oyansY6jrk+cQjA/eqk5RQjAWTsneN6yxEgRYIzD6DkNVIBSvlMRAobbsHOj5Ma1KdlE%200gqPE4WC8Qj29ibs7G3y1LNPsr27xmS6z/UbG2xsb6KCgDBOWFruc9upQ0wmI8oqZzKbEESK7kIH%20Y2sfA68gVOJm7LaPXpZIJ8lmE6zVFEWBcZZWy9MsbON7urLKuePu2/nRH/sRPvDBH+LwkcWXVS5M%208FJ+cd0O7/uxDz1KO5XuY//Xn/Gnn/oqeb6PpEu3fYROb4mmCvyNHTQ0TXNTVevmyYmCEKFihHSo%200PguaM4ANs77qBz+SKJdAbohTlK67Q5Nqbn6zAApI5J2QB3WtHpdTh89RpRKGluRFQVlYTAOFIGn%20H1rr0xmE9CJBq7G2pp0EgCXPp5iyQcYxaRqz0GuxtJQymmyysbFGr7fIHWfP8Yq7X8NnF8/zxc9d%20YG9tg1Pn7uLSpStcX20RB5alO0+iFIyGM4YDxfEjbU8hlHO0qGS+AtPz5b76/1SMlJI3vVnOuZs/%20HxxRb3VRvsUQBHPDKWQzg25AqZCqbCiqmnYS0ul0aHda9Lopmzvr1E1B3AooiqmfP8kIpTxKJkZS%20ZjOclXSSlLQX0urFDKY7iNDhGsF4OqO/eJTF5eNs7d3gwjP73P2aZUxpyE1G2YxxVtFb6tJJPfZE%20RLdEizfDpm6lmqObeazUnKZiDMwmMJ1qqolgeK1EZzGhPkYCjHdgfW3I5UurbG6tMxjvMprukPZC%204qTLLJsRRR2iVkJVTNjdHdDUM7a2NohiycMPP8Q73vkDbG2t8bsf+22fOKvmzPEgQgjhZWjW+tz7%20JkcKXyXj2OfljaYj8jKn1Yp583d/Fx/6sQ/ynvd938synOolV4yyybZrL7xQA/He97xWnDpzwmX6%20f+HxJ6+xcfkqE5fR6zYYl9IYhTARSoY4aXFWIUQDrkGIyLfmymGdz4gwTmNNjRPlvBj5RjwMLVVd%20UueCiC6pWCAMuggSIgVHThzizLmj3HVvgopg9XrBhQsX2N4aeBSGUx4Z01hvl5ivpnxx0jS116iY%202iCCiJWlRQ4fWWb5cJfllQ6v+bZ3sL5xjcuXVzl//jyj3We4fHGfTmuR48dv58zdZ1jbWOP67hbH%20Di3OvXM+kamuNcb4gb0F78rHzL8OQpbif7gYHXjxpH8g+5vhed4sd+uI5hA3iZkCLyoschgOp+RF%20hQo686OFvdlpnTt3P3ffeZZPf+YvWVtfpd1JqJ0iTRIENXk2IcB5QmZoUEIRpwqrNFk9Ze/6DbrB%20Au1uDyskg2FGXQrCYIHzT1+nf7xD+4iATkQ+mbG1PiSb1XTbHZKFiFZPIENvvwkCPBXU+mOle37U%203TydKJ/B/l7N1tYOs12LnK5QjgSDvRmb62OuXNrm+rVN8rxEhpbGKVpJH6tLrLNks5q41cJZBTLk%20wup5Xv2Ku3n41a9hcanLA6+8l0df9whXr17myfOP8fjjX8NaaIxGNn5O5NzcEGsMaStEybnKWghm%20RY4xhrNnz/LQw+f45X/7yzz8mru/rhAVdf7vW1H6K/9cjP5/XgeFyDl7uxDyZljco4+cEP/xf/41%2099GPfozf+s0/Ym1tn6JUBHKRIExJoh5VVSOd8DqQg+5A+COaUJpK+62PNQLrApAJSgQ+6RBLlTc+%20pgdFNhmjqEnjPpGMqIqctevb9I+0KE8kGGDrKm6xogAAIABJREFUxhYbN7Yoy5JWq+s9YNrQ2Apn%20ZxibI3WJEDVS4RW3oU8BjeOAMDZMsh32n7uKXG147Mm/5ezZMzz6bW/k0FKfT/zJk3xleJEkVKio%20xXhUMhzkZJOSeqHCOJ8bjwyYTqY0pkdoFE6JOUzL3CxIzpm5Ec++oCAdpGY8Py9OMv95TsgwN29U%20jXDN8yMPfTT3fAycFzAcZ2SFI00VMvSJIlZ4ek4UR5w6dYQkiSnLnDBxmCLDKkmZj1nptzFVQRpD%20q5sQuIB8NmO8NUQAK1GPlcUOtggoK8Pm1ctUpeHEySPsDWZcuzbitlaffnsRZwXZOKcqZ0ySingU%20kvZSokTR7iS02hBHcxC/nSstDJQ5TEaGfFqTTzWzaUU+gXqWMFwt2VzdY219h9m0Jitq6kLibOA3%20o5VBRYJpNiNp+yQVoxsmoz3iBO44dZogjphlE9a3rrK1vU5ZZ+impNGWKEpoTE3TGIwpfJcqw7lK%20W6EigRIWK6DWFRbNsRNHeOe73sqHfvxD3HXf359p9nIoRC/pY9rzC9HBde+pWPz0j73fHV1a4nd+%20++M8/sQqzhjCaJFsmmFsQhR3kGFIWXt3tApiZOi7IBkkNBpQklAGIAtP7tNeMGkxmEZhiRAixFlL%20UWlqNUUoS0sozn/paS488QytToxTDbKyRM4hmgypBChDnGgIGmzjMJWjKX1YXxCFlMUMlGWxm9Bb%20FpQ6Y3vjKtXOOmJxka3tdS5fus5bv/d9YB1JpHA6ZzIesvrcJnv7U1YOtRmP90Fo6iag242YTBuu%20X8u5+84UKaAqHfG8EdKmAsAID9nyiBR5Uxoo5l2Pel7TZA42/sp3Qto1BKHBNTXOaKKkDUQ0WlJr%20/2c2N2fMZtoHL4QwGo9ZWOqRxC22d7fY3R/xhx//OLu728RxRJVN6HdjVnoSnQQcWVacOn6Gxc4C%20RW7Y3pmxYYaUWrE2GBIfSqGTkHZ7bK6NKUKHNoK1wZDuYsrjj19i6dhrOX1nyM50gVa3zawaUJuG%20aelgECGkIAgLglh6rlWkPJS+sYwGU2KVQpWQjSLKYcBkCNsbOfvrI248W9LUAWU9D+gMFCoIsLKh%20NCW1q3F1DlIwyybeBVBVRKLG6Zq6gSvXNmmahjiNqaqSj//Jf6XIxuwN96gbhwgigsjgdIW1BhFq%20VKg8jyryeYF1XdPoivvuv4+f+qmf4Id/9AfvkJIrvMyv4OX0Yqva/swdp0Lx4V/4ARZ7ffef//Pv%2089jXnqOpLElrkbqqsda3roGMiDvehqDriqLMCOMF/4h30vuV5iMV4RTMuUZC+IG3R3N6kZsTjZ8t%201F7w55BYpbGBjwA2tsY5h4ykJygqA6LxnjPVIJXBOpCBor2wQFXPGI62aXU0J08dYXHxLm4sJMym%20BfnOEBbP0lSOa1c3KHPDYr/DLHdkM02SLCCs9mGRgcQJyPOKVhIxHWvGQ0gjiMIA6xzSOpSczx+4%20hdL1y+zg5h7pIA3llgpgHpcjuCkKnE0GdBZ6RGFIXXtuuQwk1LC2abh+Y5+qVgRhTF40NNaRpm2i%20OAZhWN+4ihSN19goPeeRl/R7fQ6fPsZrHr6HbqxoqorpTHP8+FFOnzGcv7jJtcub7GVjNoZ7RKJi%20mGVUjcShiKwlbAKoHRcvXKN/+E76h2OKugYbowKYZiVGG1pJG+ECmkoz2i1oqtoL7kTIQrLE/giG%202yWT7YLBVsH+5pTBzpR8IgjcMlqDNpaahsaWaFlRU6JdiUZj52RGi/HjAFsgqTA0VFkNCtx8I3a1%20yImigCD0UUjdXp/xZEBZzYjjiE43RalbJl9tS8aTIb1ej+/6nu/h3e9+N299+3d/zzdDIXrZFaM4%20kh85+P5HP/h6cccdd7n/43//XT75yc+xt7dPr3ec3b0hmJBu7wjCacaDMVIE9JcOkZX6lgZ3nkd1%20ELDuACnsLTSpMHPhoJ89OSvRjaRx/ihYqxDb1NS6QrsKYQxogQqcT4+wGtNU1HWJMQ3OQj7zLUQQ%20QiddIAlS0rDLPXfcw3e//l9wdfUG/d4RFnsnWb26y/mnr9NOD9PpHGd/sEssob/SJwoyhOzQSeeu%208dzSCiPGo5LtrYBOO6W3AMZ6mV4YKsAgb6qN50hdDLfyVf1NcnOVj0O5W+t+AaStnt9OElBVJUpJ%20ohaMxnD9+h57+zOC8DCddJnByLC/N2Yy2ae7sIy1mqXlNnm+j8tylNQEgeHIoQXe+B2P8IbX3out%20R/TbERiLFAmd3jH2hw2f+OTnGA8HjIcjNnY26SS1R8mgqQpNgYKggTDkwnPnOXJbyvEzx5lNBUIm%20RCogCSVJr0NZ1GTTGUZDQEQkFhFWIAxcOF+yuzVhuFVQZVBMLJOBoZj5MFBtCrTTNDajZkatZ2iR%20Y0SBURWNrRDUOGGw85wPjR9KWbxXLEwCpFTUdU1WZQhhSVoRcayo6pIwVARhm6apKMucOAkJAoW1%20mr3BDufO3cf3fd/38c53vZ2HHr5P8E10BS/HF22tu11KceUNrzsszp79RXfXXXfxG7/xMS5duky7%20fYQwiCnKCcYUdNIFAhVTl9nNaBo5vxWF9QmLEuWFZdI/oYTQOHswC/EfRGkDrAjn2iWfDGFljXU1%20zjXgNPpgK2M90F6XBbqucHOx3eJSz0dfB4a6zHju/FNcfOoxTp8+xd133sPp2+6knFZ8/qkvc/36%20gCTuEoQp165tIaMOQQiShoVOzOGjp+kvHMALfcZXkdds7YxY6LWIU19ohfLpFdbMuchfZwy95c3y%20jvdbwkac75+kU961HiaYxlLVlijq4oDdbbhyZcD25ow47FPWEisd+awin+ZcuXSDpLVL0grotAPq%20xsfh4AzdhRanz5zgNd/2EN/5nbexszGl3w4RxpJnNeOpZXfnOpeee5Lz649xODjDzniACtr0el0s%20DePJCIlkKUwRgWM6HbN67Sr3j45T1gYRSHIBUdwln+ZYA7GICZIWtoLBDmzeyBjtljx3fp3Z1FBn%20AiUTAplgTYqVCRbHKB+gRY0RBbXLaVxGIzKcrHDU6HkxErK5GfxphUfNCATIAK3tPPstJE1TLzkR%20HnkbRQFVnQGGOPFHwKYpKUuNkIY3vOF1fOCH38/7/9W7fzaOw4/wTXa9LIuRlOKKNuYtgVKfOnEU%208aEf/V533/138B//p//E1au77OxskyQrpEmXsmrmsLIYnJmD2Q/EfV5bIoTA2YOEDIkjwM39Wt7m%20EOBEgnQtv862DmsczjUItO84nCVUCuks1mhMU2J1Ba5BKb8uHg5WOXXmJEeWl2gqyfKCRdcl08EW%20n/qzC3TSZcJwkawIkMESUva8q5uStLuMrqeMh3scWjnCnXeeJoq84jlJIh/r7WA0nrCxE5J0DtHp%20QhpD43eFKPuiIiSeZxJ17hZ4zHmA2kHM2IEcp26gqh0yiJABDEdweXXCtWtDplNHt9unMD49dzLO%20iKIYKSWz6Zi6Ftx28hRxbCjLjHw2Is9zrl69yp/+ySd4+qttTh9dII0cNA11bclLxZWre8ymA452%20VtANjMoxad2nrfqULmOqRywkHeKuz1CrrGR1dZUnnz7JbWePE7cSppOCoB8RCj/cb3LJ5nbJ1Qu7%20rF4cMNrVuKZNmUc4G9M0gtI4ZKgIIkVlK/JyysxlvhNyFY3L0czQrsA5/z4bWyOFRokGMQfrOyHm%20BV7hrMM0Duc0QahQKkBIi6Oa68N8eGPaDugupAwGewxHu9xzzz286c1v4Md/8kd41atfKfgmvYKX%207QtX6lMHXdLJY0KcfPtdnDj+P7rf+q0/5vc+9mds76xRVxmmCVAyodVdpKkq5Dzr3BmDEJ6Wh5NY%20IRDWb+Kkk14MOV9dWxGg8KtWSeC5MRZwNVJapPDOddtorNA4U2N0iWtqhHQ+XUNpTp7tEwQD6ibn%206JFDnH7VA7SjhN3tfa5f2+Kppy4RypSFdoyKIzZ3B7S6LZLlPlk1IJEWR04U9VlZjn00kW2IYklT%20H8gIHPuDCXFLcdj1IFAkydwaaufgP8EtQeT8CX7QDPljq3xB0uo8fBcktNqKxsDaOly5ss/Gxoii%20UERRh/FE0+32iBO4fMUfT+JQoOsGLDz91FMEgWAyybDa0kr8APza1Q1uXBoxvfck0hTUxczbIESb%203UHBbDjFOUeYRkxzwyDfx+xYZvs5BTkJgkm+Q2/pKK1OyP5wh2efvcjJ207R7UBZttAFjGeCzY0d%20rj63zdrqHntrFdUsoh0dZbF7mErXSBnRCEOpJxibEaoAK2uKIKOwMxpRoJ0/mmkKHCVO1OAarKiR%20OIzTKIxPh5UQCI9fsdqihPJRUNbSNBUI//4lrZBZNqSVhjga1tavIiW8/g2P8oEPfIDv//5/wfFT%20h79pC9HLrhhZq98iZfCpF3dJB9+/9pGuOHXig+6uO0/z67/+u5x/+rqPzRaO7b1Vknbfb8nc3CRp%20JcjAb5fMfK/tvMtd3ORCK6Ro/H1qAxzxXOWtcdL4OZMwCKdpitIf2exc4yQdUjgfjyRLpJpQmxEq%20WuS208d58P6jHF0+QhK1CYOUP/rDT/H0M9f47BeepX9Y0u13mNU7ONtGKDh24hCHFhc5eiwlbRuC%20KEDYuclTgTaGMIrJK82NzV0KXTIrF2j3EhbSABH4N1wcDO7FgZvdzjHRzs/P5joif9PcEjs2wmuJ%20tjYtVy5vsLk1xpiYJOoShD2qqqGufHDp/v4u1un58L5CyoiF7jKBhKq0VEWG1Zp85hhSY8qM9faI%20bgvk/GwTxxGtMKQVlx6NgsMow6SckmUZoQ05fGiFxXaXaT5klAUsdFI6vS7rG5ucv3CF4eQUWV4x%20nlY89tgFNjaHDLczlGnRDg4RqRRdJwz2Mz90Z0ZFQUVGRYa0BiKLVZpKTX1HZAsMBU7VIBocFdY1%20COllJNZqEM2tdFs5z0OTEmf9/tKHIwisc1jXYKym002om5wsH9Hvd3nr276fn/iJD/HItz30TV2E%20XpbF6MWF6O+7jh1D/OtfeCOvevU595sf/T3+4Pf/jO29S7RbR3BuhiKZ32h6zn5OEHOqtUMghME5%209Twlt0IQ+nmSnltJLHN8hvMnHdEgnQFdAT4bSypHGEiCQBJIEIEhiEre+fbv5l+9+7288r4ugYXt%20NXju6XWurj7L0cMpr/+OH2HpyF/xlccvM52McFoRdCOOHzvG2RNHuO/uUyjVEEaOOAGtIxpdIUWE%20NppWGFPWOZP9CZUuyaqAxULijgQEC/M4ejlHqvrwpZtDe4dDonx5mqNEDv5rLFy+btjY2Gd9bYeq%20hDBaIE46ONuiKA1Lyy3OP7PD+sYWV69cIu12WFxMmU730Lrh2JEzGO2oK80EKIsZs+mMwAlkY5jM%20KnppjziCoqhoav96AhUhpWRUTNEy8uB5BysrPV75ynvpJAkXzz/DcLLNwuJpDh1a5sLFy3zm775A%20K30WScza5gTjOkynIdr0CIMOTqTUWiGNxkpB2JY0TYmkIFANjSuZNiOM0USxwrgC0xTU5DhKlLAI%202WBdibU1IcLHIaFxtgFbIWQNc9SbwlHVJdYZWq2QNI3RxlDVM6bTAhl47tO5c/fx3ve9i3e+8+2c%20vfPUt0Qhelkf0/6x69sfXRQnjv6Mu/eeU3zsd/+IL37paVYO3cne/h4gabc7GK1pqpowjImCGBBo%20azHa4SweHxEIrC4py5JYKZSUHp3hDODjrVUQop1DqYTZbDTPt/fg/abKidotVg4v8UM//P18+MPf%20C8bPX+oajp+A3Y0O6U7Ml778OWTc5zWvfZDPfuUJ6sYQdVYQYc3hIwusHFrk0qVL3HXPbfR7Pok1%20UJKqbiFki1AtUJVgRYcwWGQ2Dx/IKsFgUnHsUEirBWnbx1urYM4ikp77bawlmQ/VCgN5BrNpw2B3%20xP5+xtrmjDjuESQrWAFNLTFWESiFVBHPnN/ij/74v5AkCWmaMB3vcfzoIkW+z4Unn+QpU/t/WwdF%20kdNpt1joLVFMtwgwPtigbkh7KRQVVV0QJj0WeinLTY/xYERRVVgraccJ7X5C3FU3j0iGmr3RLrFK%20COKI3b19tJ0CCbVuoR1UOiQIAlwQUZmaRtc4Yz15UgpyZuRmSkNFI0uqoMCIxhdGpxFSEwofB+5s%20jaNBOp/MK7HoqkIKQxIplIRGNzjbICPJLMvodFKck9RN4Zcnyvj3IZAIKXnnu97GB3/k/XzHdz76%20LVOEvumL0XBYfPn0mZb48L/5Pl5x7oz73f/z/+YTn/wSoSowxs9WlAyQPqDeM2GswliBECFCBRin%20aUoIw5hup0VVlNz0vTmLcAJnA6wB0BT5GGhQ0a1o4TBULK8scupUnwdf+SoG+7D63BaTwZDzjz2N%20tHDy6Bne+PpHeO7KPjfWN9gbXSdutViUitpJVBKwsrKMCkJWDh9noXeYnR2YrU5J0xbddkCrBcYI%20VAhKRRgitGtT1ZDXEE5gOCpJEksrDb0CPHRIaYkCUIGkaRrqqiGb5oxHBUXhjb22cdSNANsH0cYa%20gTGCTrtHGMDa9QHnz1/kM3/9NwCcPfsAQaiYTsc0ZoaQNaduP0GWTRlPxgQqQQaKsqrRxiJ1QdIW%20GKHJqhl2MCUKQtJeHyRELbCipN2JcKGBxqGEm+u1dggF1DpjMhmTFTOUTNAmoNH+UGpdQOMMKEfj%20GmpToV2J0HreCVkiJIkMqYMZtchoZEMtNNqWaGFQOAI00tVAjRAl4Lse6Rqwmlk1pp8sEAaKfDbE%20UbLQSQhVQFFOWVxqk2UzrNX0+m2E1Ozt7xJGjrO3n+Tf/covc/8r7ubcg3d/yxWib7pipE31M4GK%20PwKwuNh65OD/f8/33CfOnbvXPfjgX/DH/+VTfPbvvkhVFiRxZ85GjoijGIFEW4UUkiiOsVZSliVG%2052hnQSTYA2QGFuE8B8k7v7zJMQpilHIgLEYqolZMGMc4K/njP/grPv2pkLVrV2nKimefOo8Sigfu%20f4jaLGHpYlxNbXLipMfW/oCk3cHUsLa2Sft0n52NHVZXt8kzPzdZWFigFbVxVhK3usRJizTtELci%20wiQibkHSgSQFIxRhJIhiQRhaAuUTPZJIEoZgTUxdS2wTglsCq+aRRAIpfSBkEPhjntFQl3D16pCv%20fOnLPP7414jDiIcePsepE8d57rnzZLMhKhD0e22+/dGHCELBpz/9aTY2dxAoDxKTDusKSlMzmjac%20ue0O+t2YtJWQxF2MFYStgMs7N6imJboRSCMwaKazIZtbN2hHMYiGxlQUVQ4uIgi7hGHfY9OsQVPh%205IRaNGhXUWuH1Q2WEik8ZF+LiFpWNK5C49DO+Dz6uVlN2QKofMSQqIAS5zSSBmcNx/pLVEVOmZXE%20oSOJEgQVdV0haJhN9olaESAYjrawruLU6SO8851v4z3vfQeveu2935JF6JuyGAUq/siLh9zW2tul%20lFeOHRPiF3/pLbzywVe4j//xx/mTP/0kVy7fIGn1iSLJaDwhDjto4/lGjfaxM1EUoKVFNxVIMacC%20+sGLEwJr/FDSCksceeync/Of45hWK6aqKm6s51RlinA1wsGxo6c5ekwym8y4vjHjk3/5JawLuO/c%20qzl8W8y4+CqXVveIU0jimIV2j3a3y+7gIuOhTxA32jGeTKnzKdYE5MUWUoQgI4SSqEiRpCHdhZRW%20J6S30kEFliCUSOlQEsJI0IoiojggTWKstSRRTLfrE1K09jMjFXichlT4LqyGCxev8dhXv8p4ss/h%20oyd4+MFzPPLqB8lnY9Y3VonjZfb2ttjcWOPQoS53nD2ObsYUxQCpvCcwbEWEgcBZw+7+Bg8+8i5e%2099qH6aQJk3HO7v6I1dVNPv/EE5T5CG0jQkIskiJ37OxYFtIWgVTEiaLJDdYYwkgiQoGu515BCY31%20AlUtav9wkRqrGpTAG6ZdiBUWK7Q3p847YGV9BLV1OULWCNcgZOO3qWicq5HOkE9LrGlIopAkCSjL%20EaN6lxaK5ZUlyrqgsTlFmdHvd3njm97EW9/2L3nzm9/IidOL39KF6JvymPb127YXetze9KZj4u47%20f9J9++tfxe997I/49F9/nv3dNYRsocKIqNXBGkFe5hjT+GBJoXAYpPR4kIOU2bnkyJvzpaCqirmj%201GKlh6Y3RmHLAmsaAhuwv7tLv9+n14nJy5iNnV0CZeguaR5+6GHitMdT569QlJp77rmHWsP1Gxvc%20SFKKomFnuE8chEgRMp3NqCuLMxFx2KHfW8FYRa0FjbbUlcEKBSKhakI2dzRCeQOnn3s5VCBoRYIo%20dswm+5RVjtNzw7D0K2glJFHiWD6sELIkTWIaXXDj+mWG+5vcdddpXvfoqzlz+giHDgkujzStVot2%202mcy3me0P+DalcvsbF1kd2+DJAkRMmKWZUBNrCySmiAOGY5HPPHUk4yHI9bWNylrQxB2MBgCJQkD%20BVagrANbM5tqbJWz0O5ghfM+M+kwrqFpMqaFoa4VMopwssG4yne30nd8tzpdCTb0JEhpkc4QWoty%20c0qB0zhXeDyw1ECDFI23CjlvRtZaE0cBQjYU1YwgsBxrL1PVOdt7N7BY+ksLPPrww7z9HT/AO9/1%20/dx2+/K3fBE6uMStKJZvvevZZwbu9//gE/z5f/0bnrt0g42tAWlrmSRewFjlIVtS4qyg0RBE7Tme%20RKKU8h41a33uhJRoawkihZCOStcY613crVaLOEwITEgxK+h228RpzHQ68YiNQLBy5CinTt5GkrY5%20/8xzaCO58+77qcqap556lrS9gBUpRiuWl1Yosprd7Qlh0EGaNmUVUGchjgQhYy/WVHhKQCSRQUgz%2011Ep3zHirJ3HUyuCQII1VFVGU5d+VW0N1mnPEA8aaj0gjDUqsFhT4GxOO1WcOrnE8eNLLC2ltFuS%20G1cvMxxs0e912NraYGdrg9NnjpPnO2xsr2FdSFU7srz0KFpbIGxBGjU88IqzdCKFsQ3DwZTReIYK%20UjZ3xmgTEoQprra42hLKEGEgDAJ6nS4qCsnykqpxyKBNY0NmhaU2AUGkgByHnmusJLgA526FPEZR%20hFIewWaaGmsav2U1BoMfkKMaBA1CaqSYz4ys54EvdDrk2ZSyzIlCRxgKrKuoqimlybj77rt557ve%20xjve8TYeed1d/1yE/rkYff31d5/ZcL/zO3/In33ib9jdnTKdloRhh1bSQQgfP+RjihK08WhSj3qV%20GGOx7v9p79ye5Dqv6/7b3+Wc091zA2YwAHEjAEKUQIEWQQikpchUJaZUcmyV3/xgv8d/Qv6X/AEu%20J6mUU6nETiwltkWZoEiKginFlEyBDEESAxDAXPtyzvluefi+bpDxiyu2UpbT+wWFATA16OmzZu+1%20114rh+kpa4pmMPMNvXeE0CJaU9uGtWoTqwymttx/cI+kEseOrbN/tE87HvO5Z57h2ee+RGUH3Lnz%20EXu7h9y+/T4hBE6eOk9SAw4PWwaDEe3EMz4MrIxOELqG2QEMR6eBYRk3TPaxTlmImVOcq6KrKnqX%20EmmktcboBMEjKubtVHIo8qo5Bofzs2zLIrkzMMZjrUOrFoljYhwznT5kdcVQ6Vi8dxKHe7uQEusb%20A5S03L1/l9ks4IOg6xErK0MIjmETGdYR1+7RjffxvicEIUTBNCMqOyAkoTY1s8MZXdszsitoUWiE%200WjE5vYJDo/GHE47Wqdw0dJ7TRCLUkKM4+ISaghJgdSQdO5yU8qjnhW0SkQ3hTBDyJoxHz3OCFHF%20DEb0KLK2KI8Xkb6bkVKgGdRYE9k/eIRnyrWrz/DPvv4Vfvu3f4uXfv3aU/9UDluXYPQLrD/5k9vp%20j/7DH/Of//g77O9NGDTr+ADOBZRqUHYFFzRKGaxpECy9z29uVZJBu25GJNCMGmyj6VzLdHZE7CNr%20gy26Ykx/ODmkaixNU9H2HRsb6/gUGY1GrK0eYzab4VrHh3c+4szps2yfPMPDw5YPP9zB6gatGtpx%20xKgVtKxRmeP0rSWmASlU5YxFindqjkKOISHGLhwcCdlDWSmDFkjBoZQQ/JTejUECg4FGqYTzHcZa%20pmVjOFzRCFMmk/sY3bK+bplOd6lsYHWloqk0u48e0E4nbGxsoJUnhCNm3RRRA5zPWqEQHATHmdOb%20TA8e0Lb76ORw3QyUoWmGOJ8wxnDixAm0KPYeHnCwd8CoWkGJwXtP0wy5cuUKjw4OePjogMNpi0+W%20KBVJTAmenJVzHYWPAilvTfNtokJSoK7UAoxSmKFSQJLDRUesNJnOdgsgUhIxJUNOAO9z9JQ2cO7s%20SV76+lf5rW9/ixdeuM7mKbPshpZg9Heve3djeu3mW/zHP/ov/Pn/+Et27u9R2QHD0XH2jsDYVYQK%207wRjRzSDDFhH45Z6OEBrIalAFI+yEV0lnJvRzmYoBlg7QETw3hfzrPyg+BK9NBgOqfQA51w27dea%20qmoQXaNU1qjEoAgegtfEoImhJoUKSUOUDBAahCqPIZiSGZcN3VHz+J4cWpAv8nO6hUgm6GPsSRQP%20KDpEOURlZXFMnpiymE9rh+g2n0SkGb07om6ErePrrKw2HB4e8OjBQ5qm4eyZLcbjTzg8eJj1RG2L%209x5rcurIia0NXDdhfLTPbHpISpHKGIwxVFVFXdeokF+nvu3pOgfJUNlBkWFIzogTRUiCjwnvIj7m%20+G1UKgZxsXRCFCfFhEQpDwM56bfk8ClJhN4RvCOR+aG6EUL0ODfDWEFUIIYerROH411EIhcunOWb%203/rnfPvbv8GXnrvK9hPVEoSWYPT34JN+8iDdfPWHvPK917j56hv87P0PsOYUzXAzW2kky3gSaTsw%20dsRwtMbB0RhlTLYzFY8UMIqpp+97ghOQEtKeSSia4QpNVaNE89RTT5GSMBvPePjwIQd7hwvQImkq%20u1pGC8m7h6RJ0eYzlVCRokXJoABSBclCMsWjWudxU6VF0sc8/UPEIuhM0JfzhEQGGVQLklfTSCRG%20B7EnaY/Rjqg6hBbPjEEtTLpDNIlqUJHFwyMtAAAN3ElEQVSCZ9bPWButsH3yONPxffZ275UYJI8Q%20sVqw2rB98jjtZMJ0NqabTUkEtAjaCI2taCqLFmF8eJRtXrXF6JqQdKGgNRFTHCs1IWVf85QSqaRr%20hCJUnf//JQkSU3a6TAmrs++TFiHGSN86XHJUGJpG49wBiY4QPLbS1LWldzN6N6auDU9//gIvvHid%20b/3Gy3z5xjW2n1h2Qksw+ofslD5K6b9/98/43iuv8/1X3+a9D+7RzqaIbLC2eoKYanzQiG4IUdAm%20ny646HJCqV74uFE3w7ySD4EUIsYYhsMVhnWD1prxOEcXd7OeyWRCcB1aF35K1fRtTonVOgcLZsCp%20SMGQoiF4jVYNWg1RUhegmhvPW3yUT6V+hIVzgWARUShl8sfJ3U9iRpIZSL7B0sWhh+RIqssJq6qD%201BJlhjGRtp/m5JRKk2IOgVxfX+fE9jopTLl7938VQ7OIlnwjKMCJE8chepzrCN4Ro19YrzS2oqkt%20VmkePHjAZDJh0KzSNEM6F3E+opTJo5fK94WxJMJGeZx44r1fgJGI5HSWlBZ3wsF5rNY0VY21Fom5%20E0spoU0AmZDo6bqOrpuARNbXV3ju2lW+8tUX+Je/+TIXL51n66RagtASjH5xdbDHm3/wh//t+vdf%20fYPXbr7F7t4YLUN8MLSdEILFB40ydc5bRxFL0kxVNWirUMYUo/wiO0h8pkuZHI2zB06MSIkDUsVe%20KCVFCg1JbAYjKWNYnIdQGlK02YdHD1DSkKIiJb0ApBhNzmYvJmqLzgibU1PLyJiSy2Ak09IhZZ8e%20o4SER1JHkB4lpTNKLUE6gpui6yyi9MnTz6aYuuLyxUt87ulLPHr0MX/z7k842NsnxoBRCu97fDdj%20dX2dlUEDkkjB40NPcNlBs7aWqrI0Vc3h3j7j8RgxhsoOiQihZKKlEv2RSo5b1mvmUMZPj8ZzQNJS%20Ip1Kd7S2skLbzvC9QxvBSAawvu/xzLCqI6YObYRz587wwgtf5le/coMXXnye6y+eXwLQEoz+39ad%20j7r0yvd+wH/90z/j5qtv8vHHu2g1YjTapO0BMrmcxOIDOYerGKCZupi5qbnLZMA5h/c9MUZWR6Pc%20EaR87T/nkpxzOaXWjhDySCeicwcQ5rxRHscyGA1RymaDuDB/MA0xmfxgFkCMMWbiVrJcQUlVOqOQ%20OSNaYpqRpCfRYSUgKkDyROkhdUTpETqSKt5ONiIp0vYzUvRsnzrJizdu8Ny1X+EHr7/CO3/9Yx59%208oAQHNZaYvJMj45oBgNWhk22WU0J5zpc15OIWJWlB8ePrRNCYDKZcXg0IcZEZRvA0DmPsXXuhpDy%20awajhMr3zRE0gpRRVUraydyKt51OEElURjMYDKiMKhHfnkSHMT1XvniZa9e+xI0b13nhxRtc/vzx%20JQj9A5VZvgSfrZTipfyT828HAngfXj5/tpbf+92X+PVvfDX9+O2f8pevvsVf/Plr3Lr1M2I09C7H%20aWs9yh1K1MSYxXWCIfqeKHrR8SgitQGlDLPpwYLn0DofWibAGqGqLH3X54dLMgckOdiHhAYVijda%20V8SYhoTOVrJI8WEyIBqRlL8e4bGbpTKkmP+tEEg4hBZkhtAD2ZFAUgTxqOSIdFlRrnKXJCoSfY8L%20juR7bGWoDRwdPeS92+/wyf27TMf7+NDivUPplGOMTCbOQ3D5PCdlAaEPLv/EjCnfEwrUg4aEYjor%20t3MmolQkElE6EWM+3RABKfNXThhOpRMqcUyLrimW5JTE6prJhnMx0Ic9+j4wGo04++QpTj2xyTde%20/hov/urzfOVrX1wC0LIz+sdZN2++n/7q7Z/yb//df2Jn54B7O3tMpwklDcoMFoehk/YIH3tAMidR%20iFIteWuktV1wFEopJAou5HFG24q2m3tW6/LQzklsUwhtgxKbRzg0KeauSESB5O4JnU1CAik/5Jm6%20JolGYgYvRT6JEHqCtBC7PKqlHqMCIolEGeXo84pbB5yfIRLLwx+wVtMM6rwJU9B2YyZHRwXYPUop%20jFW4tsMYw2iYubMUPG3b4px7PMYSOXZsFWOydetkMqFrfekyczCntZaQYu74IPsIfYqo1/NOaJ7P%20NLeOSTlwwPUzkEhTaTY3j3Hp0gVu3LjB11/6GlefvcK5C6MlCC3B6JejProb0utv/Jjv/On3efPN%20n/DRhw84OuzyWQYJU+cASa0tVVVBEpwLxEiOVnY5b96qBltXSFI4H7KnT2UJqSR8JEVMCqImJoXE%20KvsuRQNiiieRIZVuQqERZT6z2ofHD23etllioIxsCcSXUa0npnyhLmGGVhGjEoEAKadeGJXAeFw3%20Rdnc7fUhX7KL1ph5dlrRMa2srCxW+9oIru2w1rIyHKE0RB+YzSYLwAII0WfZRMoOnUoZYkiEEEBp%20jDEgkkMsYz530VqTFEVT5QsPF0swQQEsfP6cBJ44fZJTp7Z4/rlf4dde+irXr1/nqcvLMWwJRr/k%209aNbe+kHN2/x2uu3+KtbP+HOnTtMZhN8DBhjaeohSlX0naPrAiEprNSIrql0ndfUPhKSzmcPRtP7%20DpTCKktSGny2gI19DgEY1qso0yAROhcggLIGIwoX0yI5V0SK/3UJdEzZ+1tJlbsocucDgURXwiBb%20JM6ygjmG7HJJAp0fZIreJqny55IdJDMYZlCc82GZmM8nNUgi+jyiLYh9kUWibUqZ0E/lgl5rQess%203CTlztLHsOgmQ8gjmqkyad33PT5kO9hBpZlOx4TQoZWiqiqOb67zzDNf4JkvXOab3/wG5588zdVn%20zy0BaAlG//Rqb583f/jGu9ff/vH/5C++/wo7Ozt8+OHHPHq4j+siomtGozWGg3XGRy1KapQ0+fwk%20aNJckKjBJZcdA2IOESQYRFVYVaN0TTv1WVqAxsfSUVmLVtk4rfOeJKmAScwxjlqhkgUx+D6BlOgi%20lRamZcRy/pBaBFc4lpLYq7LtLpL1VHyKg5l3H3Puxtam5MbHom+Ssj3Lgsr19XV86PG9w3uft4pS%20yGaVP08IjhDKxlH0IjobEYzWuNATvUN05oRCjGglVJVhevCI0cqAc6ef4PLnL/PFK1e4evUKX77x%20PJ97emsJQEsw+v+n7u649O7Pb/PGGz/krbdu8bOfvseHd3bYfXREiAlrNxAqFHUOSEyWmBTRJ3wM%201AOT5QJJ4YKQnCIkjRGL6JrGjDL3kxIu5NuzpLKwz8VAMxwQUoLoCBLQCEkJhnwyEfoEymAkjzcK%20j6eD2BNTh5E+W6qmQErl8l9S6ZwyV/S3wSh+iveZa5viojPSWlBlbNzb20PrzP0YqxdnKzF6Ysmh%20m+uujMkkfggB5zo67xjWDZ3viN7lMZJ8uLy6MmI0GvCtf/FrXHrqSZ5/7hrPXL3CmbMrSwBagtGy%20YuTSz9755Patt9/hzTdu8fPbd3j95lt0Pbg+EpLBmAqtsulbSolpN8VYi7UVWg1IUWVSOpWQQZ9P%20O0A9FvYVziXGDEyRVM49wmJkmhPhJINS9nG3QSCmPluspg6r81p/EWjwadApndL/CUT544/N/+fg%20klI2oEspZAU0kY2NDUJwOb7ZdYToMsltFForJKVFl+WcK3ybL19vFpPWjWVtbZXTZ7Z5+unLPP/8%20czx//RpPXbzAk+eX4LMEo2X9ncDpB69+cPvn733AG6//iLd+9Dbvv/8B+/uHdK0jJBitjYgBYhSC%20z4eeSmq0GqDEYs0guwjExyrjOecSU0LZpoCCL0BQwCGoolkSlCo2GkoBviRXZLHfZ8GI0gnxKeBJ%20i83UZzLZSnckxLL9ejx6PQ6VjEymB2g9H7viQiU+vyurjSUGR9e67CFNZDRa4+zZs2xvb/Hss1/k%20yQvnuHr1Ck9//jKXl15BSzBa1t+/7t8n3b//kHdv/5yfvvM3fPzxDj+89SMODifsPjrk6HCKdwqt%20GqxZQasKEYvrAyGkxwQxLDZQCZvvuNS8c0lQ1Mokky1dlUGJKYDg8wo/BiR1KOVzFBM87qpKpyKS%20O578m+x2mTmlx4CUYvjM340xj3YZnHLst9a5m0vErM72fcltiagUObm9zcWLF7l48SLnz5/n0qWL%20XLp0iZMnT/Dkk5u/X1f8m+W7ZwlGy/oF1/sfH6X7n+zy/nt3eO/2R3x45x4ff/QJ93b22N8bM512%20TCctfV8MxIhl1e0RsQyHG8SYbTtCLET0QrdkiSELKefnEznt1BU+KBvRz8HoM28iyarmEPwC/B5v%206x5v7yqT+awQXB7DQgAJiBG0lsW2rG40KytDNk9scv78WS5cuMD2iU2+cPlzbG9uce7cOS49tex6%20lmC0rH90492777nbu7uHfHL/EQ8f7rKzs8Mn9x9y7/5ddnZ22N19SNcGxkeO3gX6rqPtZwTXg6gc%208a0s0eecOIXOSu0USRLz6l48IU4fp89+GohEyqYrFAtWgPm4lrkiJYm6tlRW0zQ1o9GIjWNrbG0d%20Z2t7k9XVEWfOnmZz8xhnz57m9JlTHD+xyYnj6/9+daB+Z/mdXoLRsn6Jy/v08v17R9+ZTCZ0neP+%20vV32D6fsP9pl7/CA2XjCwXjC0f4RR5OW6dGU3kd855i2PaEPuBiyWFAcs24fkbDglIwxi3FQRGia%20Bmstg8GA1bURq6urrKysMBwOsVaxubXK2vqIra0tNjY2GI2y0+Pp01vfMEZ9d/kdW4LR8lVY1qLL%206lv+1eSIf+19Th/JKu3MH7XdAYhfbOnmB7/zjd32ybXfN1Z9d2mruqz/m/rflDjuA+MNcecAAAAA%20SUVORK5CYII=%22%20preserveAspectRatio=%22none%22%20height=%2236.641%22%20width=%2244.866%22/%3E%3Cg%20stroke=%22#000%22%20stroke-width=%221.442%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%3E%3Cpath%20d=%22M126.603%20101.902l9.27%2011.359-4.713-13.99%22%20fill=%22#ccc%22%20stroke-width=%22.7443315599999999%22/%3E%3Cpath%20d=%22M121.572%2096.407l-6.29-13.362-4.395%202.537-1.41-2.441%2014.243-8.223%201.41%202.441-4.151%202.397%208.196%2012.415s3.678-1.38%205.815.505c2.137%201.884%201.717%203.352%201.967%203.251l-16.139%209.292s-1.94-2.518-1.472-4.63c.469-2.113%202.226-4.182%202.226-4.182z%22%20fill=%22red%22%20stroke-width=%22.7443315599999999%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "2f6ae482-e884-4b20-bc74-48b86e061fea",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -8,
                "y": 72
              }
            },
            {
              "id": "31162979-ed80-456e-913e-39e519026e32",
              "type": "basic.input",
              "data": {
                "name": "rgb",
                "range": "[23:0]",
                "clock": false,
                "size": 24
              },
              "position": {
                "x": -40,
                "y": 176
              }
            },
            {
              "id": "fa3c9b31-a09e-4df2-9171-9009e0555152",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 672,
                "y": 256
              }
            },
            {
              "id": "09cff4c5-5eb2-484c-a5b1-ceaa32d37cb6",
              "type": "basic.input",
              "data": {
                "name": "shift",
                "clock": false
              },
              "position": {
                "x": -48,
                "y": 280
              }
            },
            {
              "id": "86356a6a-02fd-46a5-ace8-8fb5315d32d4",
              "type": "basic.input",
              "data": {
                "name": "load",
                "clock": false
              },
              "position": {
                "x": -24,
                "y": 344
              }
            },
            {
              "id": "9c9ae975-2a29-4d92-88a2-e457c5fe65b3",
              "type": "basic.code",
              "data": {
                "code": "reg [23:0] q = 0;\n\nalways @(posedge clk)\n  if (load)\n    q <= {rgb[15:8],rgb[23:16],rgb[7:0]};\n  else\n    if (shift)\n      q <= {q[22:0], 1'b0};\n    \nassign o = q[23];\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "shift"
                    },
                    {
                      "name": "rgb",
                      "range": "[23:0]",
                      "size": 24
                    },
                    {
                      "name": "load"
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
                "x": 192,
                "y": 200
              },
              "size": {
                "width": 408,
                "height": 176
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9c9ae975-2a29-4d92-88a2-e457c5fe65b3",
                "port": "o"
              },
              "target": {
                "block": "fa3c9b31-a09e-4df2-9171-9009e0555152",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "2f6ae482-e884-4b20-bc74-48b86e061fea",
                "port": "out"
              },
              "target": {
                "block": "9c9ae975-2a29-4d92-88a2-e457c5fe65b3",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "09cff4c5-5eb2-484c-a5b1-ceaa32d37cb6",
                "port": "out"
              },
              "target": {
                "block": "9c9ae975-2a29-4d92-88a2-e457c5fe65b3",
                "port": "shift"
              },
              "vertices": [
                {
                  "x": 72,
                  "y": 280
                }
              ]
            },
            {
              "source": {
                "block": "86356a6a-02fd-46a5-ace8-8fb5315d32d4",
                "port": "out"
              },
              "target": {
                "block": "9c9ae975-2a29-4d92-88a2-e457c5fe65b3",
                "port": "load"
              }
            },
            {
              "source": {
                "block": "31162979-ed80-456e-913e-39e519026e32",
                "port": "out"
              },
              "target": {
                "block": "9c9ae975-2a29-4d92-88a2-e457c5fe65b3",
                "port": "rgb"
              },
              "vertices": [
                {
                  "x": 104,
                  "y": 248
                }
              ],
              "size": 24
            }
          ]
        }
      }
    },
    "a936f644f92fe3680cca2c069380788002455af2": {
      "package": {
        "name": "NeoBit",
        "version": "0.1",
        "description": "Temporizador de tiempo de 1 bit de la trama del neopixel",
        "author": "Juan González-Gómez",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22338.627%22%20height=%22138.485%22%20viewBox=%220%200%2089.595139%2036.640702%22%3E%3Cg%20transform=%22translate(-61.77%20-65.244)%22%3E%3Cg%20transform=%22matrix(.79321%200%200%20.79321%20-6.239%2029.354)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cimage%20y=%2265.244%22%20x=%2283.589%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASMAAAD5CAYAAABs8lPQAAAABmJLR0QA/wD/AP+gvaeTAAAACXBI%20WXMAAA7EAAAOxAGVKw4bAAAAB3RJTUUH4gkeCwUT3xIIjgAAABl0RVh0Q29tbWVudABDcmVhdGVk%20IHdpdGggR0lNUFeBDhcAACAASURBVHja7L3ZkyTZdeb3u/f6GntkRu5VWVVZ1V3VW3V1N0ACBEiC%20JIAxDjQSSTNSNmN8GMqkpukvAB+pN9CkfwCUSQ8c44wZJM0MR0abAdggFgINdHd1V++1dO25L5Gx%20uodv9149eGQtDQwH1GwEkKcsKqI8IrIiPdw/P+f7vnOusNZyHMfxHwpjzZoU8vbHt0fp6GtVv/57%20x3voOP5jwzneBcfxk4QU8nZhi887wnnlaFtm0peRxRrAMN21eZ7jCIlSCkd5bzrSfwVACHW7/Bnq%20NkLeFvwoqP0tMLhWmMHXCp2+FLiL4vib+NkNcZwZ/XRHSv7yiPQrBUW7QfVPKrh/dLTdRb0if8yJ%20b6xZG6aDr42TyUtxPCZJc4wtGEUTkiQmmiQYUyCUS6EzitzgORKsJk9SomhEZ26WzkwbRwmklCTx%20mEajgUSglIunHJRS5U04CCHAyvKgExIpJZSvBsrtSgksGms1CI0QFkuBMQWF0WAVRoAQCikcpJQI%20oVDSQSmXdnXhGKyOweg4/pOVQ9i1iPQrMfnveqg3HdTtAr3mIG7XCX/PYNcGTL7m47wCkj7xl1MK%20DAUKl8JmJHFKHI1IxwlZEhONYtLxmEG3j7CGrND0+4ccHPYZjQekWYG1mvubWzQaNVozs8zNzdKe%206ZAXKYWBVqMGWcag10ObnKeeOs/qiWW0LqgEIb7nMBqNUMIiUDhldoTjOLjSQUqHalhDCIFAIUQJ%20JMADkLJotM7Ji4SiSDA2R+scbVK0NaRpjkFiTPk2JV0cx0UKD5CcWj1Np3HiGJCOy7Tj+I+NmPwr%20fSZfzjEUaEC8VGBeyimwFC+ZcWLj8YRoEpMb/VKSpQzjiDiZoK1le3OTLMvIkpQ8zUjGEYPDHsP+%20gCJOmGu2qfoBWmt6/T7D4ZAkz0iShGgSY4xh+cQKynexCrqDPr1BH8/zOHf2DDONGsOoRxyPOZWs%20YKWhKDKiJCXLHXKTYoTEd3wczyH0XYKggud5KOnSqDYRVk7BSAACIRTWCBCGLEsodEqWQZoVZHmG%20tjlG5xQ6Q5uCXFuKQqMLi5yCXJFb0jSnKArSldSuzJ09BqRjMDqO/z+Z0FbWuxXlCdoXDJMx3VGP%20w2jAKBkTZTHjZIJNNJOdHiI3IARGCYajEbsH+wzjMdpaAs9Da40nHXzHZTIas7+7RxxFBChm203C%20akC1WqWzOIfrukhHsbO3y807t7l69SryYJf93gHCUbiuS1bkLC0tcc45S6UW4lc8klxhlUW6FsdC%20oQvyNKFWqeK6LtWwSrVapRbWCIIATwUoHIyxCOs8BkZlYiQARb1WQ1uXovAotEtWeCSJQ5Iq0lwx%20iRMcY8lSgXYsQkisscTxhOFwzM72HtevX6dRf9O227O0mrO0WjOcXDxxVsq/C091HMdg9HMUO4zs%20sEjZjw7Z7O9xEPVZ39+mO+6yc7DP4bBLmmUgLUqCbxTzsslM2GBmYY52s4mXhGRVCyMPK+Cw30cC%20buAiXI/cSMYiJREZrheycGaRU0srrCwuMdNqszi/hOd5fHD1Q77/2g+JkxhtLQf9Q9Ikp1qtAjAp%20UuIkYvcgRyhozdbxPIc4HqOLnFpYIazWqYYVAtcnDKtUwgaBF6KEA0gMAk/6iCk/xIP7aaWGxZIj%20hYfnSlzXwbMOjnKR0kE5CeN4MuWTDEiDVJI8L0iyiOG4z3g84c47b9Pt9mi3ZlheXqVWq+G5wa3A%208zl35izznQWeeOLJP/Q8/0+Pj8JjzujnLnrkl4dMXpJYYmL2ogF3ejvc7G5yu7vF7cMtdkYHBO0a%20uU6Io4jJaICnYbZeZ6kzy3zQ5FSwzInOUpmxmIxUZ2zsbnJj/S6jyZjeaIgQkv5hjzzOELmlt9Ol%20Kn1efPppfu+/+RImnjBTazDfnCUdTtjb2WcwGpJqw/ruDt95/QfsHB4QpQlZljHbatOo1/GFpB36%20fOHXPscvf+azROMhJs1pVCroNGO+M89Mo4PvVgj8Okp6WDyskWU5JSTib8kPwWCn92AQ0/vCZuR5%20Tm4mdAe79IeH5HlKpjOyLEMIwWFvxK1bdzk4GPHBB9dIJhmu6+PIkkAfjQekk4yaqjHT6HDu3DnO%20nj1Hp9NhcXGZkydOsbB0rNQdZ0Y/wzHSydcOVfq7SckH8fbm+2wOdvho/TY3dzc50DFFRWErEl0L%202Rh2CUKHRrXG3HKLthfSqdeZr9VpqxrV1McJJDgGZQUuCr/hYbycrZ1t+tEIoVzGyRid5niFQDua%20oF6hMlNlp79Df3sHPUrwComOUnRSIJRDLsG4LoUpsErg10JIJYnO8POUmdk2T5w7x5NPPcnMTIs8%20S5hECUVW0Kg0addnCd0qrlPBEQESH20kGPXjEqFHLodHT0qMzkGUPBKifIMUCiVdLJJqpUlhCsbj%20PrnJcT1JrguSfEyuJ+x2N0nyCaNJRDHU+K5LUeR0u/t40ucg2qFb3Wdnd4tvfetbpGnK8vIKFy9e%20YmVlxS4tLbHQmeWppy/QnCmVOV3EX8HqNeUee6mOweinmIweK373gAnv37/JO9s3eHP3On0mRGlC%206hc4oUdQ8ZESiiLn9OwcM7Ua840WrSCk7Yc0vZBASnyjUBMBWmMBVFm+1Zo1KrUK8SQqlSohUEph%20pQYsSgiKLGfUH7CxscF4/wAzTvFygZgUYARWSMZ5Si+O2dnaJEET1KsEnoOrHE6dPMGvffbTLLTb%20nD59ijRLmEwmuK5Lvd6k0+ogcAn8Kkr5CNwpOS3Kz3pED/0ESbi1FmtBCErpHnCURChLRTYQCrTW%205CZHOS7RZIw2OY4rWJibQVrY3xuwvb3LaDAgyzKM1jRnGmhVYNKMVqPCiy98grm5BUAShiH1WoNh%2075D1O7e4/MYPOXX6pH3qqadYWlqg2pj/AtasIY55p2Mw+imJ1GQv+9L70wLz+Vv5zpffuX+DK7ev%20cXXjLjcnuxzOwMTTSEfgS4dW1aPZqNP0QnwEy+0ODc+n5XoEKFxrcQ2QG8gNgeuRFgnCyKkHx1Kr%20V1leXmZ5e5n94QBtDHnuI7XAFZY8s6RZwv3NDQ62NgmMZTZo0A5qpUFRgDaGNE0ZDAYopQhcFyEE%20xhg0OVJBs1mnVg/xfMngoI8xmmq1RbPRpjO7SDbJcVQwPaQepkFC2gdENf+BQqj0Iqmp14gpKEmE%20AIWLp3ycSossnaB1Co4mzSIcaWm2qqyurvKDVy+zs7ODJceiqVQD3FyRRDE20ZxcPskv/dKn+exn%20P0sYVhgOxjiOR7PewBjDe++/w/e+812+/dffoFKpsHrqJJ/5zKf/6uILl5idmceiel5Q/yPlHHNO%20x2D09zYTyr4ykpMvD/T+V2/vbvDmrQ+4cvca9/q7DG3OqGJIqz6iFlJzfOrSoxPUONmY5UR9hrYb%200lYBNengC4XSFqENCItFU4gCRzk4Xqk+pTanMDle6LOyssKzecrtzfv0BkPyfI8oTjCOxa/5qMyQ%20FimecrHKQ/ouVgpyXZAbixQOXuBTbzVpCc1YJyQ6x3UVYeAxmUTc+Og60Xyb1eUFPM+l2WwSOiFS%20ergE+GEdUOVtCiTW6hJg5FFqJP89fNG0kpMSa+0DHxFWgJimU9bBGgdXKSphgzSPSIoReZ4gHU21%204pKkQ1zf8MKl54iihCuX32U4HFOv1lBG8tIvXuKzv/hpXnjhJYwx7O93KYqMg/0dXv/BXbKs5Kes%20yalWfA4OdnnnnTd44/VXeeKJJ/jEJz/NE+cvtJ9++umvNtrza4PD/S8PRyNc16fRaPfqrc7M8Zlw%20DEb/1YFoPd/98ub+Du/fvcpr773F9d37TDyL26lTrdfB0VQaIc3ZGU7MzrMYNphzKsx5VTqqShOX%20oJBUpYsvHdSR7G0FRVGQFSmTIib3AgqjGWcxpgCbW6peyJnV06w+scbGzjbXPrzKnVu3iPb7SClQ%20DuSJZmJAGYl1HGrtFlXp4yBRrkduDbXxiOGthO7ekNFkRLvZYm6hQ6NWpz/sYbMxd+/dYqmzROg1%20aDRa1MI6GonEKf1Cj6Q/QohpZmQ/Bjzyb82OStn/KFMSWCuwGKR1kUDohUy8kGhyQJpNgAIhC3a3%20d/EDwYsXnyPw61hteO/dq0grqQc1Xnj+WdozDUbj0mO1ubHF4eEhd2/d5f3332ftzBl6vR7Xr19n%20tj1Du92kXq2g0wlbG+v8i+s3OHXmNOfPn2dufvHLAHmuEUhc128/++yzdmX1JPPLpc/JWrMmjku7%20YzD6LxX3sz17a/sOd7bu8o3vf5OJ1PSyMbFNSK3FVRXasw3OzM4w02zRDOvMVuq0nIC2qjDn1pgT%20DRoEOMri46BwsFhAYVGkTkHGhDgbg2OI0oSqE1M3Kb1igs4SWpUGtcYstVadoOIiPM1NeY1sNCYv%20DFpnVNwOEFBfnOeZiy9ydnGV0PXIsoxhHPFX3/sOWgmMA0Za4iwm1TlGWKIkQhaW+/fvEjoh3myV%20WrVBw5shywzSkTg4j4CRRUg9ffRxEDIf24uPy/2PgdEDMsnFdRTaJijp4vs+pRJsSiLb5DRbFQ66%20e3zw4RXm506ysrJM76DHrY/uYrKcfv+Q7c0NfNdFa83dO/fZ2dmhUa/zwgvP0D8cIIXBdSzLi7Oc%20OXOGwFNMohiJ4cRih1F3j/feHHDh6Wd44YUXaNSbrK9vcv2j69y8/gFra2tcvHjJnn3iHI35M8cK%203TEY/eeP3axv+9GQ25s3+eG7b3Dl6ttkjoaqS7VVoVFrE3aatBbnaMy1aXpVllSLjlcvgUP61PGp%20UfJDEgjwkUgsgsJaEAqJgwdoQlpeHQmMwjGRn5BJizveo4gP8B2H3e4G1F1m5lssnVmiO9qme5Cg%200wQtQLg+o0HObjRgLxpQHfXI44StzU3Wt7e4/P473N64i1f1qbWb6DwjymJSUyPAZTSOieOYIAgI%20wxAppx4ibVCe+zGCWjwCPAUWOyW25SOZkvgR8vox/ujB4ylQWYnRIB2J6/pIKXF9hwCXtACpDNVq%20SPfwgEF/gtWKzc1Nut0un3jhRaIo4v69O8SjMa7rYoyh3ghpt+rUagGOFBRFgqssc/Ntnn3mPIGv%20uHPnDgd7Oxzs9jl7do2XXvoE588/RaPRIMs1J5Y6zDbr7O8fMIpHvPPWDznc32Rtbd3OL85TrdUg%20nPtDxDHPdAxG/ylBKI0tjuHVN37I5XfepDs+YPNgk9pck3pVUZltMLs8R6PTxqmGKF8hXYeG8Xna%20XWBe1KhSI8CjLMYEDiXoPJSdJA4Si8RMT18XD2EyjC1oiCahqDChgKrEdUL2zYDYTTiMR+yN9uiP%20u2i/IA8zJnaMqDps9buIRDK6F5HnKT/IBYP9LlbDxtYm1U6TxvwsVlqEo8jHBYnOqdRrCJ0jZak8%20BUFAs9kCBDkF1bD2EHceq9RKvsugp08XYMueNPFAXhMPQEiIj5VvlscAKU8zXN8HCvI8J6hWqOoK%20h8NtdvZ3GA4i9g/7mEwxnqTsbvXY29vDdV0AsiwpzZoYut19XNelVqtx8flnCDyfXrfLYXebmXaD%20T3/qk5w6scLtm9epVwNuDw55+smzvPT8BS498wRe4JLGY5RyaFdDAlfSbp4qhYw0ZTAc8s6br9Fs%201VlbW2Nlde2rTmvtlWNF7hiM/k5hjFn7ce0DBtbWu9tcufIG//Iv/m/ubdzj5JllWnNN6o0qJ9ZW%208VoVqo0qKnBLoNEOFb/CrKpz0pmhTRUfH4mLxVKYMkOwQj3WwY4tuVsFyOlJKa2HsB6F1WgV4Kgc%20EGi3/BmJyBhEI0aHfbr9LpnIcZsekRAU4xFuWKfi1MlHEzZHh3iJpkhTXOlifAejBEsrJ9nc3qDX%207zHTatFsNvE8j7WVU5ybX6BdrSNQJJMM69lpafYxABGAtdip4mexWGuRyJLZxj4isP3klYxSCjAY%20LFKWnf8WSLKcKI5J8wzpKPLM0u31GAxH1JoNlHWJ45iNjQ2SSYQ2Gt/3yfKUza37bG1tcOH8E2xu%203kMITZpGvPba9zk8OMtg2MXYjNXVZV584SKrJxbxHIHNU3RRgHURKKTRGGtwXZegVqUSOESTCXmR%20sX7/Dtvb25x5YnCr1uhQnVn8Q9RxlnQMRj9B/DggiovsK3/x/Ve+/NG9W1x5603ub96nWq9wcnWF%20sxfOUmnV8BohKnRxPQ9hBUpDxQ2Z8zsshLPUbZPAhkipMEgKLFoenb/qQeEibClAqVJMe7CN6c1B%204VhwrYMSCqEkCoc00ER5RNUN8JWH63t4QQXHRhRRAYWHo0MmacIwi5nxq4Sui7SSltMmqFbwgwDp%20ODiehxKC/f19RFrg5gW//RtfJB8nSK0wpvzMR2BirEEJ+VhGUypqAivKx8YclV8PMyGL5d+r+X9s%20s1RMwajATN9ZWMskL4iTnMFowmgU4xCiXB8hxhijsSYjjmPQBcJotNZIYVFKMR6PefUH3+P6tfeJ%20xyPq9TrLKwvMdlpUKj6gMTrj0vPP8txzz1ANQ4yALM+n1gOB65TTAxDTnjthcNwQx/NI0glxPGY0%206vPOW2+wsrzKydPjrzYa7a/ihW8i/VdwK390fNYdg9FPFG9f/9C+/vZlXrn8PQ7HA4os4dOf+RQX%20LjzB3GKHZqeJdQX7/QPILQaNIxUVr8Ks22bBbzNHG4lLjkJOyy+DnOLLj+YHR4r2x4Ho0Zu0ECoP%20IytlhiAyJvV5zi6sEdmYdC9jNIxAuDgzs+iuoJCg6j5VGbLYWkCmhnQ4xgsDCmu4f/8+w9GQZr2O%20yQocq5htzeI5PkVu0dqiRNlEq5RCo8EWSKseU8msPcqIpmqYZaqMmeksoynJLX7yzMiYAqmKaeGn%20KYwlLwwWifJCxpMuFodaowU2YdCNmcQjijRjqIc0l1aoBB7D4ZDRaECjXuHEiRNkecxh/xCBoWI8%202q0Wo3GP23fG5MWEpaU5PvmLn6DWqGOtwBiB9DyCIMANQgInRLoeUkqyPEfrsn+uphTaFuRpSpZl%20DAZj9vc22d/bZKYzx6kzZ19qLp0uL3ym+Dzy4eC6YzA6jsfi1s6Gffvtt7n85pvc2rxLJDOUK5lp%20zXD69ClOrq4QBB4WmEwmeF6AFqCES9WrMFtrM1dt05CNsmtdOGRCIqbtonYKQ0dskZ2WZEeOHFGe%20vw9LmqMX6em9Kcu4UDoYAhpUaIk6C9UFTs2N6ScjdntdilTiqJBkygUtriwyFzapW5/u+g7d3iGN%20SpXZmQ7GGCZxTDqKmKk2OLNykl947hJLnQ5KOORGURhLURiMMdMPbKYA9HCA2tG2o8NMTEu3h6TS%200WvF44XwY+ra40WyFXpa9Bm0MWS6QFuBH1Rptjuo7UOEFGS5ZRQlWCmo1Stot8BzfJ57/hKVIGR3%20d5vbN28wHB2ipMUUKfVqFUdZwlpIpeazu7eJtHDp0iUuXLhAvVnDKAclPXw/xA/rD0DIVyFyyksZ%20WwKsVAIo/V1ZEpMlE1rNJtFwRK/Xo9/dIRoN6exs/e7yiVO2uvDkWRP3LstK+xPHYHQcDyLVxcuv%20v3vlq9/73vd45/33iKIIVfWoNes4FUUl9Dg8PGB702f19AmsViRJgvUcEApXuVSDBjP1WWb8kiWS%20CCR+CThHHAjiAS8ksGAeMraPgpB98G9ZgpSABz2lFlyjCKXLDA2GNqJiAzr+PKvzZxnmGXbXYxxP%20CGsuFbfKysIJGtalf2+Hzc11+tsHML9IJaxx8alnSEYRt298xLmFVU4tLuNagS9d2vUZelmfyShm%20PIpJwoRarVH+HgKwZgpCcjpEbdpnZkvOCGEf+IiOnv87MHkoKcrJjxRoayi0xiBw/Ar1xgyN5gy3%20bt5j1N1GWRfX8YgnGZV6jU+++Ekq1SoYWFhYojM3w3h4yGQyZnPjLr4rcZRA6wyL4eSpk3RmZrn0%20/HPMzy0SpynN1gxBpUG10sAPKijpg3CAskTjyOApRHnF0AXC5PiVOpiEtNel06qysjzPzu4+d+9v%20cuP6Ad1ul8Wl7q2FxRP4jv8V6f18lm3HYPSxuL5x17515Qpvvn2F7d0dcBS1VpPEZoyTMTYtELrB%20ZDikXqtw5uwpCsDzPCbGIKRAOR6eF+C5IS4hzlQve8B9WFAWpDEPkwH7SCYhDUKCFRYjy0TITDMG%20gcCTJbQ9KNm0wBOSivBpijp1UaeuUk52TuFWQ4Jqkzsb94nlBJMWpGlKdzRkd2uLJJ4gLBRZzsb6%20OoudOUInoF2t0wqrkBn6e4eoxHCw2iPLMrCSPM+J45i0MsGRVQQSSzHlvsyUmlZTDm4q20/BdgpT%2002xP8KOTI8yP+WbKjCgnZ5KX43GzrCAvNIW2FBb8sMrC/ApKHzAeTihyzWSSUg3KVpH/68//H7rd%20HpXQ48knz3HyxCIXLjyNFJr93S0qlYBonDEcDlldPcHTF56iUq/georVhVXcYB6v0sD1wvLUsQqE%20R+k6PwIhsNZQGFuqhp7CQQABTuDAoIvOY+Y6LRqNBgeHA7Z3Drjy5hs8fbGg2u9/eXZ25eVw9ufP%20za3++I//+BiBpvHddy7bV1//IW+99y5ROkH5LrnOEJ6i2WmxfXjA1t4eRpRlQrvTprM4zygZo0IP%205Tn4QUA1qNMIajTcKqH08FAoKxDaIk3Z5qEMZZlip7XXo60PR1KaACsMPCxOHpR48qiGe2DZkaSy%20wCJJyYnTCdJ3qNUa4Egmk4TBcMjB/j7JOGZ/a4fe3j6+6+E5PkoqOrNzCCnAQLvRwhWCyThCaEM0%20HmMxCCzVapXAd3GUg+soPFchUVhRupGFlNPu+yMZX05HiFiEsIjy6SmB/TDrEw+KUzGlpx8kfxg0%20lpTEjBhNBoySAVE6JpqMGY1GRFFMNIr43K98jlMnT3Prxkfsb+/huR7VsEK90uTk6hmKLOegu8/u%207hZxNOTkyUXieMjO9jpZNmFpeYl2u82p02s89cxFatUmYbXJbGcV6TZxvRbgk+WWogDHCUswEhJt%20pmXodNKAlOUgOYNE6HLf4bg4lQZeUMVYKHKN63q0my2uvvcek9EIdBF6wv6xX2/9L8eZ0c9ZbPQP%207atvvsFffv0vyY0mqPg4VY/RaEhCzonFBdaeehI722b7h6+y2R9z6YVT3NzfQ939iNNrq+T5BFEI%20aqr0TzfDCqFy8cprIqKYSmSPJgEPKJMjSU0+4tMpZ/ooK1DW4giDEAr9gG+S5cV5+vOMKP9ypaAl%20AmYIsFmOciRqnHK4vk0aT8jjiC45nhG4jSpplJPkEzrNgH46phhoov6YuD/k9PIJlKeIdMKd9dus%20rq0w26lRMKEfjcnymErdpUpIToFPgBE5whiEVUhblpVYMMYivSnIluL8FGKn/Ww80jRiQGPR0mAR%20aDSGBEuPUbLHOItI84hJMiJNJmAKbJazfe8eP5ikHB4MqPiKLIlwfcHNmzeRxuGzn/k1/oeX/ydG%20/X22Nu/QmW0wGu7RO9wiDEpSvt1u8+wzz7NyYg3HbVNrdqhVZ8CpTseilIqZ64YPS+gHPqlHWlmm%20v1dpaQArXRAeQtXAgHULKqqO57UYdw8Y9Q74xIU1RsMh19/4a65ecbn4iU/b008/A+HPx0IDP5dg%20ZAr9eemoVwC+f+Ute/ndt/nw1jX8aoVBb5/+4YhRPGJnb5fZ+Q5rrfN4tQrGcRjGE86trbK0eorr%20N97nm9/7Hr/qf5Znn32aIs1QroOUoCR4KDBlJoA2Ja9wBEKPcLfaQsFRtlDORSx92A+dysKU56x6%20mDuVWYN4+FhK9XCSorUUSUZmE3SSIYwlixNwPQIVoLOEOE8hz8nTiP2+xaQFVT+EVCMLQ1bkyGqN%20tCgNj66r0CYnyxOkBW1zJtmEiYlw8HCkV5ajknLWtZl+OAlSCigMCA1TSd9KiRUPmaMHDbLCTPeD%20mDJEBk0GFGgKtM1QjsBxHNJJQq/bZzweM9fp0D/skY4Tunv7jIcRF158hkvPzdJqdhCO4oevvYoU%20hsA1XL12n97BFnmW4LiSM2unOHHiBPMLK7RmFqjX5qhWZ3H9JuBh9REH9sg3IMzjbvHHGoIfWh0s%20Ci3E1CNlEbbAURLHswRhFZtFkFmqbh2dzbC1e8B7b77KrTs3OXHuvH3y4me+IH7G1bafKzA6MjNK%20R72y3e3a965+yKuXX2f7YIdJkeGGAf3hgO6gz37/gN29XbrxEDyH1957h639Q/aufYggZWm5w8rq%20Sfpxl92Dfc7kaXmyOpIcgxWUpcsD8vYhFh1p9kdcUGY1hS5QSiGwKCxSWBwhyomHgocc0YO3m7Lp%20VYIWTIe2ahJyYlmUN1MwoUAFDu12k8PxEB1nJMMxxeEYaSQ1L4Cwgk4KlJRobXGlxHEkRZYTuB6h%2057D8RIdOe55QVaEo66wiM4wHY0Qu8Z0Qd9Yv5w9Rjv0oy0qLPPrFjVMeckogpyXaI7uDwkwNDxIc%20ceTdzkEnaBMzjA6J4hHRJMJaTTIp2NvtcffuOnmeU6vU0YXCdQN0IXjpxV/gC5//TaSVRFHM8tIJ%208mKBwHc42L3PtavvsL9zn6WFDp3Zec6dfZKVlVXm5xdpNmcIgyaeWwEUxpoHGZx4oG4+Mscb84ir%203PCwz45HCk6JmhJ9Ujol7w0E9SqKFtv3D/EVdObmCWtNDkYxO4d9em+/w/Ze96/OPfEMJ86cF8dg%209DMQR2bGKx9dt+99+AE3bt/i1p2bHBx26Q4P2djZZpxGGClwAhevGjJOJrx77X0MgrDa4KXf+A2y%20PObmnZv84tJLNGdn+Oj+XZbXTrK0tIRnDanVpMZilChJaGNQaroUjyivnuUhKynQ5EVBrjNc4SCm%20pLUSYkpYM20MsQ/bJew0ncIijEBIgxGGDE1EQkRCqnI0GtdTzM+0efLUGfr7PVRoGMWa1PVxtcIR%20LpWgilUaYQSuUPhIbJqjs5yqH3Lx/FN89hc+xeHe/gNay5EKR0jSJEfaCOtbRuMRvh8SuAIHA7Jc%20+cNhunaa85g5HQAAIABJREFUUh8D1AdJHBaLlEeZU0lVF2hyPSFNY7IiYRIn5IUBq0owM4o0KUEJ%20BEYrTiydZNgfMR7d4NJzZ4jjhG+98tes39+kXm/ywovPce70CYxJWFhYoEjGSKFYWFhiefkEc50l%206vUGQRDiuB5IhbGQZxrXdR6S88I+wmj9ePXvYXZUqojOgwJVlZyYdMC1iDDEo6DVmSUZD8iyFOko%20ZlpthBtwMIjY39zEEQ57O1v2wtPP9SrNzszP2lSAnyswSq19+fVb17/63b/5Nrdv32Z3b5utra1y%20RIfJSxNbxaMfj7FSUK3WGU1GpFZz+vQaX/rNf8TZs2f5f//yL/jg2nscDHqce+o8Vz/6kNsb96nN%20zFCttdBSkWNK1kdCocvRhYXN0QKmAj1mat7TtiA3GmXV9CAvAUvz0H+kkVO7pEDYRzT/qcZfEryG%20lJyJycgpEFbjG5j1q6jZRdZrMwTapZJIUgKSfsxoMEZoUEKhC10a93RBMhiTFWPqMuDi2ac4sbBC%20d6tLnufl/+dYjJBkadknprWlsIZKpUa9kuFPh/ELpTA4uFiUFEgrp8T89JS1Bms1mgJHSiw5hU0p%20bEqeJyR5wiSNyXXGJE3IjcVYRZFnjMcT0rTAakGe5wyzMa4I0QXkuSVNcsajCbVqi8VFy/r6Ot/4%20xjf4ps2ZmakxO1OjFnicO/ckv/qrn8NzA+r1JmFQx3MrCBUALlK4SHnECz3qPOVBqwuYR3rrjmpw%208zCTsqW6pqZ8X3kzCKnAdUH7VNttrDAkeUY8jjHGUqtUEXgc9Af093c57B6g86z91DNP29rsSXGc%20Gf0URm8UX/43P/j2S+99dI3Lr7/B/v4utcDn+UuX+PSnfoFqvYIb+Lzz/rt8/a9f4db6PYwtsNai%20lIPneSwuznP/zm1u377NOI7Y2Nzk9IUzdFaW2NhaZ2U0YLYzj3EkE52TKY2DwmDR1pILU7qQjwgg%207HQG0NRzJARSih9xJdspyZQhkUi8IxXZWB4dZm+BnILc5KA1ZAVSgycNzcLl4tqTfHj9Fpv7t5gM%20o3I+dWZKJS5NkVZRiAJhBdWgyny1iclyXOEwHkZ4XoBSLmDK0bbWUugS+CZmQjyOiXXMxEyoVCp4%20boDjODjCw8PDl7VpL5udMmJ6mi0WGAw5mowUrSckeUxeZGRZTJYnFHl5kuZ5yV9FUUTvcIA1As8L%206B4M8B3NqH8XT3n4bsCdW3do1tv81m/9Fq7rcv36VTbW79Hr7jDoH5DGMedOr3L+/FPkmaZeC/Hc%20EEf5COGWaqco931pH7Jl5vYICFmrHxLY6lHvlH0EkOR0NtPUnjF9SVFS3EipsK4EzwXHRXk+vq8x%20WiGVR2IzokEfrxJy6sxp1u/d4d6tW3zxN3/TNhZ/dsaU/MyDkbF27d0Pb9y6vnGXv3njNd768D22%201tdZXV7ilz71i/zub/8Oz5w+Tzfe57Df5969uyx15hlGQ3Z7XTzHJazVGPT6fOPf/jsmSYxSgmq9%20wu17dxm9EuPXK6Qm4972JvMLS3ihYihGRF6MRxUtp34ie6Saiel8Z/HAJ+dIiStcMEezn6cy+PQK%20XAD5kW9HlF+ceNAzUnbH5xQkZkKRJUgjCAuFygoCY5CF5amVNZJhyl3/Gkk+Bl3gKwdH+fTHQ6yw%206DzDcXzOP3mB3/zsrxF1u/zyL/0yrUabD6Pr5XLVnpq2q+pS8RIWIzK0yUnyjHE0xss9PD/E8zwc%20x8ORDhWnjmPLZamlOBLw7VF+SKYTcpNjioSiyNEmpzAphU7QBfhhBSvAcRwmaYyUkqXlBULfZ297%20j2QyIc8KdKZRSnF//R7dbo9+t4+UkpdevMTS4jz3797i8hvfJ/SqPP30szz5xAWM1ijpo6ZLI2FF%206eFU09VuxUOO6CEQlSV42fqiEdI+XDH3MSJ7yiEdOdDFw1Ygg8RICVLhzMwixgMyXVBoDbnBEQ51%2036fTaGIdQOfsbNzj9ctvsrO9yT/8b3/LnnrimT9R/k+/UfJnFowKaz+/M5781Z2N+7z62g94/d0r%207E8i9np9nr54kf/+t3+HtdWTWODa3Wtcu/oBH374Aes7W8y2mjypzrL16jaTPKVRrzM87HFH3Cao%20BAglSNOUWrPJ/Y0N/EaF2kyDjZ1tzo2GBNLFNy5RfUJN+uhpA6WgLFMEAmElSpQObC1cDAplFNM+%20y+lxXCo1Gs2jLRKPWQIFaGvRwjAmYpzGJEWOEAJfejiFJSgk1kBuFE+fO48eZ1z94Bp3bt2l3+2h%20Ah+JInRDRpMhSaZp1OpcvPg8GzduUglC7t27x7e+8x38WoVqNcQPPZQrcT2J4zs4nmD55AoJKToz%20SA0yd3Bd98HsIc8rJze5QuFIMe1ROyowNdqWsGRsgZAGjMHIDCPKAW/GOKRpirUOeZ5ibEG9XscW%20mqIo+PDDDzi5fJIkyuh05lmcX+LmR7f4zne+RZIkXH7jNS499yyjYQ8lHL74hV/nhUuXmEQJ1loa%209TauV0G6FRA+1kz77QQo9XiuWnJdZVZ0lEE/NG/aI8z5+JVxahB7CGzmyAAqBWQphdbUmw2cWoPx%204ZA8yQkcj+VOB+PC629e5ta16+xsrvPPP/iQbrfLH/yP//OXV596/hiM/l6WZHB5bxK9dO32Tb77%202g+4/OYV1ne2yK3hM7/66/zBP/knOAL+3b/512TjMUtzM6zfv8u9e3fxfZ96vcpTa09QCWu8/vZb%20dLuH1FtNBoMBBYaZhVnmq8uMixgrJP3BEK9W4eCwy9Ub12k8+wLLzTnG2YSa7xMKB1eWoybILVab%20qYavUBKUnB7tP2JELq+eSjgIWYKQAryjdjBrQRpSk9FnxF52iFYCGXjkWY4VEiGcksh2AoajBK8a%208PnP/TpPrZ3nz//Zv0AnmkE/wpMu1hha1QaeUPR6fb75zW/hF4ZsENHtHvDutQ9JbIa1GuUpvNCh%20UvGoNiqEtQDvpovrO4TVEC8M8AIXLwxKLs538EMXKaHiB9TCCq6QpYtaa4wSKMdBOtPyL8tR2uIJ%20B8cBqcFkE6q1kNnZWQqdISUkSUwUjViY69BfWGQ8HuM5Hr/2uV9hbmaO3uGAra0d9vb2CLwKzz/7%20DP/8z/+ML/3DL/LCCy/R6x3iCpidnUVJf6r8lWbUo5Vv7dR2oB5pmXs0MzK27NM7GmsiRXl7vNZ+%20ZDrBtNu/mPKGCnCVC5QzmpJ0QjQeYYqM0AuwRpKYjPeuvMvdmzcokoiZRp0kSfmrr/9btrb3+P1/%20+gf2l7/4j8QxGP09id08t7mSbHa7vPfRDa7evsX6aEAcesSew9xshzPnnyQR8P5bb/H1b3+Lw909%20Lj71JGurJ2l1OtTqVfKi4KNbN5HK5ROXXuDG7Vu899ZbzD2xRq4143GMCASO6yCzcmmg2dlZ2rMt%20hLQkWcI4idiPNV7NUqsFgKFGFeEqrCxlecFjXOjjAxAND8jPo9cpA448MmpbrNCkImNEzNBOGBKx%20l4wY5mOkI2nUQxxCitGEOI7pjYd89N67vHjpBcKwykxzhns371NxQ8bjiCTPSze2F5DGKXfv3kWP%20J3z73jdRniJzLAUW4UikJ9DKEpORp5ZYJCTDCSpwCSo+XujhBT5u4OKHAa6vEBWL61nqQY16UEEa%20S5rmZEWBlYrclmbHPC8wucEzihCFTA0mKnAjSTE2eJ6HKQpajSYnV05QJCme7/ClL32Jd668zfWr%20H/Hd736bWlhjdnaOhfklzj/xJJ32LP3DHv/gC1/kky++xCSKqfgVWs06aZpO9/e0x2xqpXigmUke%20GXZy1F+nEGJq8JQ81nf3Y+PHbBeP/EGUBZ48UlCVxJMwGo/Z395k4+5t8iTCcxWBJ/GkJGxUuHP7%20Fv/b//onbGxt23/8T18WAEVRfN5xfrp8ST9TYGRdl/dv3uTK1Q9ZPzzgMIrYGo/Zy1ISz8NrNdkZ%20jvhXX/86N95/j8x1CDttNnuHFI5lZWGeFMP2/i5RMuGzv/Ir/MrnPse1G9f5My/g9tY61lrEZFIu%201SwFRVrgVj1WlpY5sbrC9tYWG5v3afkV3KBBL5bU/JC2W0eicK2LUhIpHw5NewyQHgUl+eAijQD8%20I2ASoFVGZGMGesyuHrBrR/SdhLHKiDwQypDamHw44XBzm+7ePvdu3+H+3XsURZkBSekgrARtEIWh%206lUwhSWNEvJMI4WD8kPurG+wsrpCIaFQFqUkRioKIMtyIp1CasqpllKTSo1DhiwSnNTFTWNUAPkk%20Jqg6tPIG1cTH5gWTOCUzBqscCgRJUZAmOSbThNYh0Aob5TDKEQPD5DCiyHIa1RrPP3eJJEkYjUYI%20IVhYWMBxHLIs48P33ieKJjSbTWZn5zi39gQvXvwkve4hL1x6nsXFZe7fuwVBOXgtz/NHyqzyalAK%20DXoqLzBtUXl8NK6UctpfJ5HiUa7ooavVTgc6Cfn4kk1lkSqmHYei7E+0GlMU5RR0aSnylO7hLvfu%203QGrydMMP6gwNzvDndvrDOOIONHk29v8+T/7MyZxav+73/kdZhdXxHFm9F9Jst+I46/e3d7l8rvv%20cPn6VXppwjBN2ejuM4hilOvQTRPu7O+SRmN2JxFuo452Ldu9Lr3tiFhZlhbmePbTv8CFCxd47rnn%20cByPd69dwwlCxklK6Lpoa4miCJNYknGEMBnJKKYe1Ngxlo2NDWbCGnPnnmacxdzfvYudO0HhGALh%20EQq/BBRhkUbgCPVwNR9j0QiMMFghpuT09Hos7VTEL4hFzJCIAzFgS3fZt0PGjiESBWOdcjjoc7C9%20z+76Fv2tA9L+iLQ3Bm343vdfRcc5Z0+e5fy589y/ex+pJckkw1cOhc6pBCHLJ1bo7x1QazVpzXbY%20i3poYzBaYHKNsGXjqiZHuBJHll4oZQ0UOVYIpKNwPIX1LU4bKo5FMGEySSkmGWmalr1bnkMuJWmh%20SZMCkRny3CHJQcYFMjIQZ+RZhs40Iyasr2+wfm+dw90uM80ZdrZ26R8OaNbqFEGVZtPiOA5xlLC3%20e8BgMGBxcZGZmRm63S5hGOK55fOtVqtsQ9H5QwASlmJqqjgqzbBH2Q8PzItH0v7RnKbHzJC2bAQW%20U0vDw+vNEX39EOrQFpOlCF2gBKR5Sn+/x97OJv3ePnmaITF0Ztt0Fpe5e2+T3W6/PC6ky707d/k/%20/4//nf39ff7x7/++XT37pDgGo/8CsT08tIEfvtn2w09sTiZf/eDWTW5vbePUaqyefZL+zRts7+wy%20zArcWgPH9+hlOfnBHsJoYmXJ0ghrM0Q9ILU5Hx1u0zi1xNlPXOLppy+ye7DHK9/4Jq/+zatsHuwj%20PR+jFJM0Z5KMcUIXqVzMJOfW9RssLy6w1Jln3+ywvbfN6cUl8KoMhlHp32lrKm6FqqxQmc7AlpKy%20iRbwpIdRBbk9apCVD4T70gJoyMiYkDNiwiF99mSfHeeQnh2xNxoQFRn9wYDd3T12N3YYdPvkkxxP%20S0SR0gqqjIZjmpUqs7OzLLbnGXcH3NnrkSYZlfYsvvQIwyrVap2r+9cwSrGxs4uquBTWovMckZfT%203bQsEI5ACUkx0QgNMhdYpTECpKNxPBebg1SKTBsKlSHTgiyOMFrjuC4y9EmwpNpgCovMDFma4iYW%20L7V4mUQkBq3LFWezTHPv7iZ7O7v4yuPCuWfw3BBrJVlmiKIIKRykLEjTnIODLpcuXeLsmTXiaMTO%201gHNRgUpJY7joHU5ATLPc0yRIx2v3PPWTBuA1eMeIktZogk5BSP5SF+afJgRTaX8B5cUUfrPrLUP%20Wn9ATxvyDCbLUbZshxmMR2xv3ad7sAtYonhEURT0ej3STDMeDSjyFOV4jEdDjBUUWcq//pf/inv3%207vHyyy/bS5/6jDgGo/9cWRDFyz7Ony41ZsQI+7XLm/ftzXsbbPd7tBYWaVcqtFYFlcUFaneWubWx%20wX6vz6TIEH6FrcEATIZ0JX6jShg0ECZj3D/EWsv9UZdvXXmdKx9d5/7N27z3zvtMRmW6H1pDkiQU%20WQpZTrXdYH7pJFE6JhlH3Lt9h8/9+i9Tq3jcuXGTrZ1NghOrWNfQnRwysTmhV6FZqdEIatTU/8fe%20mzxZdt13fp9zzh3flPNQA2rEWCBAkCBAECQokiAlUXL0Qh1qWbJDCzui/S/YO2nnvVfa2SHb0W6Z%20ilazJZGExCYJEiRIDARQQBWGAmrMrBzfdN+dzuTFeVko0i1FdLcGSIFbUVGZVRWVmZX3fe/5fX/f%20oUNKTCxCNH9Yczu0OHp2SmxI76HCUGEZUTCi4JApW+yzVe6y1+xTuIrdg11mdUU9rWjLGpdYkkGC%20xaKNo6lL6qbi+NI6x1aOcf3GDaQWrK2s42tPVYVEwmldUJYlddOQZCkbJ45z48YNEgG10Thv8dLi%20VchCkaki8iLkohiLTAReepwUqDgKIfwo2hk4q3DOYGc1etYgpCfNBapVtApaZ/HGEzmJrxxUDtX6%20oIlCoU2LM5AIjxaeKErZWD3BA/dd4PWfv8FkXFJMa4zxLC72SNOUQX+RhcGA11+7SISk18lYW1uj%20LacYPHmWUxQFed6laRqapiKNkjmBbfHzQSqUCfAhtzQf54SAX94+HAERd3FMiCMZQAAlgQ/hDNaB%20baFp8NrgrMbUJaPRIcPhAXVdooRDKUlVVZSzms6gJssy3r9+iyjrkGQ9nDYoIRiNh/zHv/4uzlj+%201eGhf/LJJ+mtfvTNtv+kwMjgv3qznv5RkmR/lMt8+P7OraWfvvoqh5MZy5sb5P0B46ahRXDsxEm6%20a5ssbVzlrXff5sb+DjaNUMt9nG8RvsW6hnE9xeoaOciQQrCna3769lvQGqrxjNJonPQcFFPybo9Z%20FXq7fNYhihKWF5ZZjhYYTg843NvlxrXrJJGkbkq2d7dZW11mqdun1jWzqiFqE0ZNziDrsZB26SWd%20oPUhQikVKqUd+Ai8kBgMjdOMadiRNTuM2GvHHLgRt9t9tme7jNsxrW2YzUbYqoFSk7qINEmQRqCl%20pTQ13aUFZrcOGJcFbw/fpT6YorTg/PHTHF/Z4I3X32RrOKKtW/b29nnltdfopBlZ3iFOUsajGdoF%20R52MBD4SeGkQrUW0Oizpw2oIL8BJgYgEcZwi0phsdRFdS7RxmKnFVJYkErjGIxsDeUSjA2eS+IhI%20g2s8vnZYpxFaYTTgBNqHFOwk7iBEzP7eiMl4RiwyEtUJKQfETMYliwurOAvPffuvuH1ri/NnT/Pp%20T38SgSTPM/COfr+PMSHrqa5rVNohjhKCOzCEuB1lfP+n+WnxS0D0Ia90xHw7F3goO+eI5NGWzWjQ%20GlPMsE1LU5SMD/YYHh6gTYv1hqKq0VpjjCFSCcePH+eJzz1N9BffZvv2Hl4lQMPBwR5Zp4eKE37w%20/PfYP9hlePi7PPWFZ/yJM/eKj8Ho7+i6hXkuyZaogBfffmvp1Z+/xnRWcfyeU/ROnmKrmBLnHRrn%20KCZTssGAzzzxOKfPneWta1d49f3LVL5ld+823rcsrS0j6oTZ0EMciM8mScBLbGtopYBOisoThIUk%20zUiShDxNaHXIzxmNJgyWuyRJxqie8MJPXqTf79JJYvJowng8ZqnbxzlHnmVY62iqKcOmpoqmoT12%20fpOnvc58HPPYGEzkabGUumFIybvtLrtuykgXFKJm6meM9RRtaiIJRlisabFlTV1olJaggQY6UYIo%20HVnSQRio65bPfe7z3LOyyWR/wnvvX+XNy5eoyoqNzU2qquJ7zz3H5j33oOsGrS26nbd8SIjSCKzH%20CIdvDDSCpBsSLZ0XWB9kkQhwsYEGvGxQcURjLGba4JqGVknSjkAUlqQLTVXSti1WRggfEzUWXWki%20I5A2AiuIlaIqatp6imk1h7dHtKWmk3ZoW0Pd6jl/I4mihHPn7mVjbZUfDUdc++AKl996jcOD21x4%20+H4evP88u7d3OH3mHtpGo02NNhXeNogoJUJgj2wdxPzCIUjIOzT03Sv/u09Edx+YvJBzzZifw5FB%20+BpcBaaknR5CXdDOxoz3dyimwzuj4qQYY60KtVLbWxgkTz71NJ9/6rO88dbbXLx8mTiK6GUZZTmj%2021cMOjmvv/wq9XRGMS35rd9deam/+NGNtf0nFa62hfqDCfDuqORbP/wJb97c4uSFhzlx4QLbxRSb%20ZdRSoCNJlKXISGGNIUti1jfXifs5qpsg0jhYNpzHqRiZd0DFxGmOcQKPJMtzkjylwVJ7g1Dzrdhg%20gDMa07YoqWjaBu092cKA0mhGZcnO7i5CSBZ7C2RC0VcZi2mXzAhkbehGCRHQlDOIBT6B/XbETrPP%20vpywm0y4HQ25GR3wvr/FpfYqF+srvD57jxt+hyFjClFQ2pKmKWjLinZaISuHLyx61GImGlkJUhPj%20ZgY7bEgqSe5SIifIVMru7X3evHiZ19+8xNVr14mThDjJqJqWqqxRUUI9q2iqBqODqz+8kBzOWLzz%204ENtkHAhHE03JogenURYgTMW6QSxjJFCoasKPavwrcEbAdqD8URGYsYtdtIiCossPVEDXoPRHl1a%20qnGDryxee5wRlEVJU9ZkaU6edojThI3NTabFlLosGY9HPPnkE/zu7/63jMdDXn7xBXp5QqcTce36%20Fa68/zbj6ZD1jRXiJAodb87gbUjazGKFUCqs2Z1AkH6YPy5+eWUfQPgOd3RXNApu7tw5iqQVDk+N%20pELYCabYRR/eQhZD2uEe053bzEZD6rpiWk6Z1BVWSKwR9HoDmqZla3uLmzdvsLg0wBnL4d4eVVlg%202ppOkpGnKbpsaaqGYjzhzYtv0TpzvD8Y/MH6+sYffnwy+q+4brfGmyTi9YMZf/XX/5G94YhPPPU0%20K8fW2R6Pyft9qqaeiwghEgLpDcp+uDq9/9Q9DNYWWF5ZZGd4wKiYMq5mlFVB2zYkcYRrGyLrkErg%20qgrvW6xymNZgleDCuXsRzvPGa69y84MrUEWoPCWpW/qDJWSWsD0t2N054PjCCvWgYTouWIq7VK0h%20URFRqhCRxCSWStd4pWlTT3d9hd32kO16n71qxNBMOWwmDOspYzejyUPciPDBMCstuLrFlxpXalyr%20EJVHtUAjoDYYC67SMNP4OhQhGuPw1iOtwGmH8yDSGOPF3KRw1PoaFOBCBpLWW3NHeSDmmz4pJJhw%20ArK1wTqLlwKvg7DTi8CJSOnwssE7i7cGay3CzPXHRuG1C3+vBWFACIuJwurcG4trHZGG1lhsMw+9%20d3MuqjUMJ2OapqFIp9R1TZQmDJKEoij4/ve/z8sv/ZQ4jml0HYTQkUTrhg8+uELdTFldWuYLzzyN%20c2BsRVUOGXtHt1uT5P0AJFaDiH85JeRv9O3fPcHJ+alJihD24lyN11N0PcaVQ1w1pti7RTUc0c4m%20eN2i64bZZMq4mFFpT54uYqwiyzLW19dZX19Deti9vc21q9c5eeI4w2bCpx99hM99/hmGwwl7uwf0%20+wvILONP/59/y/bt2/zO7/yu/9QTT4qPweg/83Jw7tDZl8ok4ifvX+P5199gXE548OEHOX58E4kn%20ihTKGbI4JokkWaTmAOQRLtCPOpHkuSTNIpbynNWFBXanI3aKIfvFmEKXWGvxJsICVgj8TOGoAI3G%20UZqW26MDOnHKwtoK2humxTjc/EXB/WceZFKMmOzsEkvBoLfAbFpyZfw+XZly5tRp6rpmbzJBJJLO%20oI9IoKHFpwlvvv8e28Uut2Z7TPyMUrYUtqBEo5XB1qCx4CASMqimW4ed1OhpjW0kcSuQlcVUGl0Y%20TOtwlYXSgbHQgLUe4ebKbgRJHBMLian0vLHjruTC+YtJHLWSHG2EhLh7GMHLwP0474JvTUqQAhEp%20hFS41mBsG/rOrMMbi3Bho2Qjj9AKjMVqjTMGIQQuCmDoTPBpKadoqhZr7dyAGz6DpmkYHw4ZmlDO%20aI0hjmM6eU7TNLz77ruUZUmSpVR1hTGeTr+DUnA4GlK1M8bjId2FnOXlZY5vHEcpQRJFRC2oyKNi%20QCXzrHL5C8cjIeYpRf7Dm/buN8Q8XSFkU1mE1fi2xlQFZjahHY1xkwmT4Yh6PGY2LalmNcV4yuH+%20kEnd4GSC8IZWt0F4LxTXr9/g8uW3GY6nHDu2wuLiIsePn+TBB+7j2MYGZ0+dZX19g3Pn7iXqdCGJ%20+MELP+J/u7nF7/3ef++ffuZXXu4sDT4yY9tHekxr4F/fhOeul7P8ncMDvvn971Pqlgceup977z2P%201w3SGVZ6AzpKsTHos94LP1e6OYtJykKSspx3WOx0MKYlk5KOiukmCZ0sJU5iZCaRWUyFwaYSUoGL%20g7veGIMxLXhYHQxYW1lmcWmRJIupqmCTMN6wuLiAUpLd7R3GwyHnT57i6cefIHaS4d4BmxvHyLs9%20sl4XmQdCV/Vy9sspb77/Hhc/eJeX3nyNd25dZ3dyQGk0jW0oW4O1BiUkrmlxVYubGWTriFqBbCx2%200qBHFWZcQWkRpcXPDLZoMUWDm2loPba0YEB5iZIRkYhCMEnQ2oGZ1yQdRXD7+XzhPML7YBydvwSF%20EMg7TK5AeD8vkg1AJ/ABMIUiVhGxiGjqGpxDaI9rWoR1RE7O88EDWDpjcdrirQUXgMvNwStxEbpp%20QymAdR8C4dyb1tQN1lqUlBhjQvOKCieJ8+fuZTwKhQLaGpIsRiUKISFOI7IsZnfvNk1doaRHKYG8%2049IPP4M/zSCkwQsDws7rk7iztg+nSYfHzNtSDAId5k3XgqmgLrDlBFNN0NMRzXCfajjCVhXNbMas%20mDGdFuwdjNg5PKRqNDLKQKQcjiZMpqGcsqwqdnZ28M5z4sRJ7jl5kgceeICyqHjvnXfBeeIo2HyW%20lpZ4+utf53B7ix9+7wdceecdEhUdP7l5/A/SfvcPPz4Z/W38kHa+jiVT4JX9fb7zw+exwvPggw+w%202O9SjA7YXF6mF0XEXrC+uEhiPXkkyOZfmIuPwqwEDlhMEgo0pTNMbc5Bp8NCltDNIvJmQtzLOGwK%20JsVpCB1fAAAgAElEQVSYppzhncFHkriTE0mFihJM6tke73Dz/Q8oDkdk/fBnk9GYSAr2bm3TDkeU%20ayWduMtgI2f3+jbXbtwi6nTZ6OS0CD64dYut/V2u7t/k+t4WM1vSxBZySZLlKBljWk3TNhhviBOJ%20kJbEeoyxSBwqCSNoVDjE1MCoRNsYDMgaVO3wlUO0DmkFurEhyEzYIBrwBukl3nqwIOfGXekDqFgn%208NbjvUN4T3Sn9TaE4govAmDddUKK5u2x3kGEIFGK2IbvgKodIgqljkIHgWcUBZuLEkE/hBFzT948%20JVIKnA9aLO89av7DW7Dzj63mSugo+rCPralrbGuDLsnC2soq2vkQ/ephVtU4EtI0dJ2VbUkvz5nM%20hly94ZnMRqwtr7CxscHmxgYDVtCuRUUpcZQjVDK/yxKEsISvVt1Z84sjYHJHYOagrqCdoZsZuiqw%207RQzG1NPJhTDQ2Srg1dPW+pWUx29bx220RTlGOclxnr2D4MIMk1TThw/wfnTZ4iihGI4Znd3F2s9%20t4Rg+9pVsrTD+Qce5Jkvf5nf/NJXqIcTvvkXf86f/N//F21Z8cyXv+JPXLhPfAxGf9OYHUtuWc+L%20V67wwjuX2KoqPv/Yoyz1Oww6KYtph9Vul6U8p4+gA0SRIAXm5TFzweCHROIARYuikVBIzZgOq3HK%20UpqybPtsu5JbxZAbWA7qMtgUhCBWMSry7BdDtm5dR2/vQlPTGSzRSXs0s4JqWlFIga8NWLj+7gdc%20fuMST33mCdaWN7h+8yYiyXn3xg12D/e5fO09dqcjtHK4XEInwjhD2umAV5jKUrZhs4TwOGVCeqK3%20CGNw1mFTiGRENLNEpcMWFt9ajBEkJiLSAmklzgSjqSAOm642cDbM1d9KhI2etw5h5/EY1iHnAkPv%20/J2RSs5DTaS7wx7hjQ8iTRfA40iRHHlJLD3KWyweqR2xj/A+yGrwEOOJvcA5G9ItrcNbQja2AyEd%20SoaiJ2/Dx4+kuiNSjGRoI1FChqxsa9HoEHUiJXVds7W1NT8RBZMvwmJri5ceISOE8lhnyfOEui45%20xKBNiTMVyAYpWxo9o9tfJMq65HmPRPaRIkUKM7/L0qBEP7rfvAVnsF7jjEU5jS9G0NboekZdTTFN%20QT0ZMR2PKaZj9KxClzVFVVPWGmM9QipMbWh0QVEL+oNlvBdIFA888BCPPfIJsixjNBoxGg4Zj8d0%20O306nR4Hu7tEUUQcJbx9+S22rl/j05/5LOePbfLg6TPs7B7yzW98g9tb2/zWv/odf+qTD4mPwehu%20ZTXWVygOgRffeZdvvfQzppHiwU9+ipPHNoibirMbG5yIu2hnWESwCLTG0VOSeD7RKxGe7u4Xmk0l%20OSCdwMiYmpg1qVjLM06xzNt6jxWZsOwVOyKliIZUakxthtS1pjIaYkG8uUJXKmRj2Lu9C3XL6uIy%20o91D+nmHtfP3sLO9zXuX3uOTDz3KyROnKWvNxbcucWtvh2E5xccSm0lcrGiNoxlPIZGQhiJIY2ua%20tkQIP+8d0zS6QQmPMWHjIxNPlKTQOGThoQYqG7Q5KCIR4azHzrdWygdwUk5hnZ+fesIo4iGAiicA%20jzsiXbljgZDzt+WdfrCQ4+PnmT7Cz7sMj/63QzABwnkwhsh64vnqWzduftIBZd2HY5cP8SOWuU0+%20+CWQXuAajXJi3kEXspCED9VKzs1JeSFx2hLHMQKJc0HVs71zmyhJEDKcxjpZjGxbhDRIFRMpyXg6%20CS0hicRLQ21mjAqJp+VgusfyygpZt8egv0KeLxBHPaTsIEWGkhnOzP+fjrxttsGaJnBgukFMxqTO%204nSNLifMpkNm4zHFZERVVRweHmC1o5hWDCcFRdtAlCIjga41cZwyGk1oqpJ7772X3/6tf8ljn3yE%20N9+4yHe+8y2kh1QIOlGErQoOtm6R5zlKKd5++x02l1d5cVah4pSHz51nY2WVNy5d5vm//mu01nx9%208i/86fvuo7+5/I8CSh8pzmgILzXI43vA9956k+ffeIOpg+Nnz3Hm5D0cT2Me3NxgEIe8wGMiok94%20cncRdIQgdh5lbdikCVA4hPAo56BpST1EQpF46AA9r+iIiB4ZxtX0kpR+nrPU6bKQdkg92LKmrWYY%2025DnKc5oiukUbx2dNGT0NGXF+tIy9509zzOfexphBbu3dxn0BkiZUNYVjbHc3tulbjVpN6e2hqIu%20cUogkxgvIMs6xFKgixo7a4k0UGmqwxLZWGTt8KXFlRapIXERsgVTWkQLdqahckQuIiNGWolvwGuH%20qR3SCSSS2Ku5SRZ8a7GNRXnudLvJI1CaN95KFPJoM3mHUwp+KmE8WBtOLUKFeFzviaUiURHKEUho%20Y0lkhDIC1xqEhZQI5SXemHAqMh5rXDCWutAyghcoL3CNCRzWXdVAcq7lsTYAUJIkWGNCTXdV4Zxj%20YTAItg0h0FYHOUIkg/HUtAgBWRYTR5I0i8nyjCRWgEXrhta0NG1BpUsaPcM6g7aGVuu5Yrulbiqs%20aTG2xZgGayp0W9I2U6pqiq6nuNkE5VtwlqYqmE7GTEdDZmVJ02rGkylVaxhOS/bHU8rGIqIYKyRG%20g7GSpm7w3rE0GJCqmIPdXWbTMcfX1hnu78+3cDVKCrppQlXPMHXFxtoakZc4Y+n3eqytrpHFCW3b%20cng45N133sF5T5qlnDh7+kdC/sNna/+jgpF37pwQYghwq535WiXHD4Fvv/Vz/vR732VsLPc+9DCn%20T55hQSqe2NxgVcYsolhGkgIp0BGCDDEvR3TI+WlCzG1EAhF4BTW/ea0PXiADkRd0hSCRkKkI5QO5%20GnvBcnfA8sICWZwQKYFuK3Q9m/eCOeqiRElJN+viWkMqIu7ZPMH60ipYKGcl16/d4K23LnHt+nWU%20imhbQ6NbqqaZN4bMjxLWEyuF0BYzq9HjGaao8EWDrD2JAVe2QZejCZyLBls5XOuIXYSeaWIShJPY%20yoGGmBjhJLoySCNAO7y2CBviKpSXYMAbF0YvE/gh5QXemEA0O0jjhFQl4MC0hrqsaYoK0zRhPEOC%20djitsY0G41Hz3G5TNRSTgkG3j2strjYI54llACLhAk9lmxB5iwdnTCCzrSNWEYmK8a0GJ+7kBVlj%200XULDtIkJU9zvA2nJYEkTVLSJMMYi/MWbU1QPkuJcxpnDUJ4kkQRK4lS82Q7RwCguqZpW7TVGNPS%20uopJMWY8nlC1LUIq4jgUYHp8MPFajXcGZxt0XVBXBXhDHgkwNfVsyrQYc7i/z3B4QBxFKKnYPxwy%20KatgklYxcd4hHywSpR2a1lCUFdaAM46Ffo9ICHa3bjEdDRnkHbppQieJQGtm4xHldIJta2IJg06X%20xcEgfH+to5iGMs/DvQP29vdo65a80+Hy5cscHBzgtf791aXVP8gGvT/8ZzumGWe/Gkl1J2PlCH0b%20Y//1IOn+yVX47W++9iJ/+dMfY5KYe++7j2Nra2z2epxf6LAADPCkCBIgZp7x40AdsaZHITS/dFkc%20ToBSPrjKj0JqbAhxGABe5XjpqOyMpi6YSUs3TTh/71lOnFrn3OlNfvDdv+bKzW0Wuj16q6uMdvdp%20q5KFtMP21ja+0bx/6T2yOOHMmbMhYfDVVyjKGYuLS6Adworgzncaoxy2Cd+J2MVBtewMaINqLdJ5%20lAgxqkY7nBTzToq5eTOWpFlCEqcYb/A2aHJsqSl1i4ssnThnoTOgnsxwLqz7tW0CGMk4NIJEinJa%204K1DCRESA1xIcVMqIiEikhHdbk6ylJAkCYkKEbJKqZDdPT+tOOdwzszHFajrmtmsIkkSZrMZs6qg%20adrwxJcCb0MSQRylqESSpylCZVgvME5jG0tZzeYtvIEFVEoRS4WI/J2K7PF4TJ7npGlK0zRMp1Os%20tfR6PXq9HqYqcMKjrCCOI+JYkkQe7xRt61DS0LaOumzI84RuLw9iRlcznc1YVn2ccESlZlZpZkXL%208tKMpf4aed6j31mkKmfYVpPEil6WkqWK2WzK3mzKSppSVAXDvX2m4wlOu2Di3Tvg+s2tYMT2gqWV%20Ne47cRqnPZcuvc2161u0dUO3s0iqYiIJXrc475iNDtn6QDDp5iSRwrc1yhnQDVJIsk5OHIGtKsqZ%20ZjytaK2j2x+g0g7FwSGzsiR3hm6nxysv/IjpZATW8NQzn/eLp06Jf5ZgdDcQ3X0dVOaPXF/xg0tv%208Fcv/oTrBwd84rFPcfbUSVazjM0k4bSEZaDvRRi/QsghwrnAZYijBWuI9vTzemh3B4wkeu6cTiJB%20PM+iPgIuAWTOsSITmv4iTnluNhNapyGL6HcWSPQG/8Pv/HdcvvwOzz//PFs3w0zuveZg/wDhBJNx%20wagecuGBB3nmmWcYTSdcfu8KrbZMhlPqtsJXGucNRrQ4LMTBwxUhadoKqw0REFuP0TrUJaeSmGB6%209S4QtViLjxxRRxHlEbYwtFWNqQyxV0QqRZoQkdu6mq7KcFJhlUM7jW0t3mm8MHivWO0vszDocWLz%20GPecPMH6+jqL/QHdXk4n63LfvfeTpjmdLCfLQti+vCuONSQdBm7pbhd8XdfBYGwsRVEwOhwznY6Z%20TWYcHu6zu7vLaDxkf++AcTFh//CA0XhEayxRElbzadqhl3Vo65qmqjGtmYNeINa1M5SzKpDfOURR%20wmCwGLRj3lOW4RQrhEMJSSQVyXzcN42hMAbdCKRyxLGgaQ1Na6myhCSJEZHDJwKkR4iaOKoZTypG%204xnLixMGnUVOHvcoIVERGKsZjWbgbeBy4oRJMWVWlUymM8qqRhjPeDzl5o0tDsdTTp9bo7uwyLET%20p+nkPT547yo3bm0zKwp63S6x8OSDLpJwAo2QSNNSTYZEtqXSLd57MgU+EkQyIlUK3dRMpiUq7rG0%200MfMKTqra9YW+5w9c4r1kycpqpbX3rrIwY1rvPKjH2Drgi9/9VnfOX1OuMnwJTn4+7WSfCQI7DZL%20+fbPXuJ///Y3qfKURx59jAfvf4B+HDNQiuNp4IZ6QD5fPTPnNLw/GsfuDjwPkvy7HEN3nZBCuD1C%20EkVH8a1Hn4ihlyUckwu0PcfY1wyrgsIYlIQlH3PPyiqDRzoo63nttdd459JlZqMRSZqGdbuXOBnq%20ew4ODhhNJxgTChoPDg6w1mK8xjgTIFJZhI9QHqLG0xQt6AYVJygHvvFI4YiEmkecBl5HHVUnW3De%20oNuGlAThQyOJ8hIai2kNiUrophmHt3eJkSRJwmKnz/o9G5w7c5b7zt3H5uYmZ0+fYaHfZ21lmRMb%20x0U/6f7DLS5u3/DT6ZThaMTWzm1u3LrBja1b3Ny6xc7ODpPJhIPbu8F7Z8NJMUkSvPdorWnblqWl%20JbTWFEURbu4oZHDLuY0ljaMQmRuJIJg00HqDtwaPpo0VeR6jZEJTQVXOiOOawWBAf5BxuD9DJYI0%20yfGZRdDi3SFN1XCg9ihnU5YXV1gZLIaxcg5EUgS5wtXr10mEwInQ1TQram5c32Z7Z484zbBE5N0F%20qrrlrUuv8NZrlzi4vUuuUrpJxurSMguDAbapmU0nRHhc2+KbGiM9wswbbrVG2aDV8jKUgfY7Hbr9%20ZVY3j9M0mlvbO3S6fT71+OM8+unH2Tx5D6/+/HV6ecLFy5fYvXqV13XLYpLwqc+UvnPvff/TP/tt%202g74Fy5f5t/85bd49+YWn/zC0zz2yKMsd7uoScnJhZxTUSCbExfGsjtlYmHUu8uXeEeSNw+vCsFV%20H3aB2jsAZZBYAUoJormYL42DZ8zg6XpJT8R0o4QmUqRK0msaxjd2sRKe/tSTPHj+Ab7zV8/x8osv%20EztwZUMznSGE4IPr1/jTP/t3IAUHw32McUSEEP4QOm/xwiG9J5KhRVbQIiuNMw7lPdIR4jOkh8ah%2061D2ePRCk3EUNmLG4iKN1Q7pJSkxpjXMJjW2rIm6Azr5Ao9/8VlOHT/BhQsXePD+Bzlx4gRLgyU2%20u8v/6BqTY5v3iGOb/wlz9HDb7+7uMhoNufnBNa5fvcprr712h98wxgSNkYhoqzYor/sdhBDo+enM%20u3CaFp47PjMMGKPRVoffi2KcEehWIkSoILIekkSglEDN66eiTNDtJggliCOJMY5pO0F4z2Q8JEty%20lnqLnNg8wZmTpxl0e+xs73Ljg/c53Dmgl6UoIzAGZrOaw70R48MpvcWI69e3OBgWlFXDtQ+uUw7H%20LPcWWekvILxjoZMTC0fblCTCc2xtNZDU4zFtVWKNoalCuUAUxwgl6Xa7rK6tsbR2nGOn7uXEqfPk%20eU7VaHq9AfnCElUx5fp77/DoQ/ezfesar/7sJxxUBSmGy6/+DFEXPD3o/xEbJ97n7zHK9h8VjEr4%20X597+Q3+jz//D7x5/Saf+fznOXvf/fTjDlFtWI4TNjo5fSCygRsKRyFxJAMO3qc5GDk/VwMfSfPm%20ByV11ILqJQiHFnKuqRVHVVZh7AvxPKQCBiJhJckY+YRaNCjniVvoxzk2ElgLvU6XT1x4mIO9Qy79%20/A2WOz2aoqTT7WJbzc7ODt1+j06nw2w2C2ORlEFnYw1ChtW2EAZvPaZpoTXE3odGVxtIZH8Uqm8F%20NoQdIb1AmDBuQSgn7Xd7TA5GTIcTIplweuMkD1+4wGMPP8qZU6f5wlOfo5OmHBtsCPXLgfEf0evE%200jFxYulYeOez0LQVN7eu+62tLd5//30uXbrE66+/ztWrVxkOh3diQNI0JU5TkiTBGIPVFqObEGYm%20JGYuR3C4uRk2QkpFXRlmRYOMBHmeQ5xQlY6yHiOTFlULTKtwVuGNI8tSpPjQdjQdDtm6doPt6zcZ%20H4w4uXGC8eGYG9e3ySNBMa1RBnyjacoWbwTWCKaTksmsRfu9oImqNUpExEgW8i5ry0vknZhiMqGt%20KrJIsbG0xOkTxylGQ7Zu3qSpKujkZFmH/sKALMtIsozl1VVW1o/TkNK2NVVV3SkPqOsa5wVrS0vU%20xYTHHnqQtx+4n7cuX2L7g6sMkhg/m9HpdHjkC19+Tp0+I/7ZgdE+7vD5S28v/Z9//mdcvH6Dsw9f%204PHPPkW320XWmtgZ1haXGMjQvxp5jfRqPp/NW0kJYDRPA70jcBFHFNLdkcWOUEqPIo64w3W4O8bP%20+SZJCPJEskDKYpTRqxR7rca2LV2RoSqDTxXD6Zg3rrzDG5ffYjwes7q+hp3VdwykKg46HxlJzFz0%205wlbPOcczgZyWiqFmp9ujG6CiE8ovA4rbj8nkVvXEMmUyMdBG2Q82misacnznEHaxVQt9546x4Vn%20H+CJT32GJz/5Gc6fPc+xePG/+gayRqOi+B8dnNIk5/yZB8T5Mw/wzNNfBuDyO2/627dv893vfper%20V69y+fJlbt++jW5npGmKSuKgO7IGYxqcl8g45EcdpTNqb7FOYozFOE9CAJxWK+rGoF1FnDuSXAZr%20ByE3O0tmJLEklsHjJyyUZcnB7X32t/c5dfI0i/1lkijFmBo9mxFbCa1jMizQjSURCU3tIHFoY1FS%20kXYT3KymnpWYqqGXZCwvL5BKR4xFOovwmkh6lvp9Zt0OnZVl8jxlcXGZxcVFsk4HFUcIFePjhMgl%20tChUiBC4kx8uZcTq6irj8Ziz997L1599lk6i+PGPf8xwZ5u2mNA6z9gozj8y9itrq6g8HSarq8t3%20tuJ/B1KAf3Aw2pkc+M5g5U9ulLOlf//dv+KnP3+FBx79NL/6K19BeUFXhtW7lJBmMRKP0o5+HOO1%20uTvnPCzO5jyR404l1f/PaXvn17tGPDXnj47y+IQH5hnGzni8NGCC9qarImymaEpNspQjYsn27lVe%20ufg62/u7bK5vsHpuka0rV5HaUhyOaYsZaZxQlxWTyZgoSYPtQojguzJB1CfndTjCQaMhS2OUiNBG%20461BeIWQEmEkdVMhfWidRUmUg1RkrPVWOba+yX/zG7/JIw9d4NGHHuFUtvZ3+gT7KADR33Q9eP/D%204sH7H+ZLX3yW6zc/8BcvvsVLL/2Un//8dT744Aqj0QSjawbdGOM1rfHEQiBVBB6MDn1tvgkG3DTN%20iKIQ2RHGuGAMboQLVUqZwmmorUZLTxJBoiTYGd28h7QK01qm44LZoKKXOdIkY+/gEF1VdFSGrlp2%20DoYMp8XcRhK2pcLY4JeTEUmao4SmnIy5duUd2nIFgaEfJzgnqMsSbS3Hjx0j6/dJkoQ4C0WUDtBZ%20jsq7GO+YNRqXxHil0LUG58jzLktphm4MVdWQJBmT4ZClhT5fevoLDLe3OTzcZzorWBws8foLP+T2%201k209cyaamnt2HG/eeoUx8+e5szDj4h/UmB0oyp9NFjh5dnwt//0L7/Fd3/2IrGQfOrEKU4RRGmT%204ZAqg87KAjYPgq9YgK/BxA4/H20kaj6Cze0Jfr6JPgrW83cB0J2v1n0IZj78u+Luk9McmYwUVNag%20vSOKYzKRMaPlQGmK1HDx0mVefu1lhtQ0CvbGQzY2Ntk4cQJTtVTTGqka6llFhCAnph7NQo9ZFKGk%20RIoY5x1Gh9OaENHcmKvQ1qF1qMJOVAQWdKvn63WF8IKUmOMnz/G5zz7Fl7/0JR59+BPcu3Lin1X3%20+n/JderkWXHq5Fm+/mu/waVLl/zFi6/z/PM/4pVXXuLa1SsYa0mShCzt4oCyLBBC0OnlIdZEzKUG%20HrwKMSjWB4tJ285QUY/SN5hY0UlCJnhjLFmk6OYdmsoxmUzpdQZggpr6zOkON6/fwNQtbaVphCNP%20O0S9AVkbNFrj4Yi2rMF7lAiC0CyJSPMMYQ2T0QHt8BbdNOLU6bN84pFHWT95Eq9iCilRa5uQ5tgs%20Q+Yd0qyLilOIk+APVJJZWwLQ0R5Tt9iZxjYtUigiBFVV0bSGJM44d+YUn7j/fi7+vEDhKW5eY+As%20t6cHXHzrElZGGBUTLyzw0OOf4V/+3u/5s598TPyTACOHP9fLOy+/NZs9/hc/+CH/5pt/xt6Nbb7w%20+Gc5v3GME50BB+UYrTxGhajP2rUYmaPch6Bh7/SIWZSP5haCgCXmiE6SwfworUP6o8JEGdhvcbR5%20+yUg8h/u3SzgVIT1grrR1K6lTT11R/LGB2/zk9de5Pb2LWIRMa2mDEcl5WjKQ6fvYziZMh6PUcYF%20Y6kxRB7yOCHNOrTWUDU1rmkginAqDuFhuiVJQlKil45UBq+YcnMzrJLoomYw6PLQAw/wxS9+kV/9%206tf47IPhiWSd4+Prw0sIwYULF8SFCxd46qmn/fb2LX784x/z0ss/5aWXXmI0ntDrdekPlqnrktFo%20wsrK0nxsm1tuTAAnpQRRpDBOYo1HY/Gtg4YwLpkQcySaFqUEbeFoRYhjaRpNUZRUVcUbr77O6XtO%20sT437X7117/Om69f5PWXX0NrS6/bBW1JpCRVEtu2FOWMbt5hdXmRMxvLrC0N2DhxkoXVDUSaIfMu%203f4C6cIKKu8gkhyVdVBJGkoFVDQnRQXShURQHNA4/KyhnhTU0xm2qel3c4Z7eyz2crTTfPbJxxnv%203mLrg6v08px6/zZLx49xZm2ZD25u44ViYXWVyc5tbnzwPmc/+dhH/2R0t9jxlZ++zKs/fQUax698%204Yv8i2d/jRUyDnZ2caki7kTEUuK1CYRu5ELfuQ1Ms8Teibhgzmf7OUg11gaNkfPgQpVOLMIRWql5%20ARmAm+uQ5taGu0WSrXfUQIujQjNzLQ0WI2HrYId3r77HaDIiyTOUgTzN6GwucHJlHSkE3swD5aUi%20jgXGOqx1CBkxmk6I45goinBSkqQp3W73jg6mPBwi4oQsTpDOo+uGRhvSOKaT5fz613+TL37hC/zq%20V7/GfevhFGR90M0oKT9GoL/ptHTqlDh16hRPPPEkl99+0//sZz/jueee44UXfsTW1haDQY+19VWm%200/EcfIL8IY7DaGqtpakqoixC2MDVGe/wyoAxYDw+S9GNIVGSum5RKpzfx6Mpt7d32d8/ZDSccO+5%20lEce+STvvfc+3W6Ppgn/VqfXxVQNbV3RCoHIM7IkJu3mnL7nHu4/d4aNpRAM2BksYJXCRyn50jKD%201XVkbwG6A4hjiDOI4g+P+iLUZ0cuC6ZNJDiBGBjyQUVeFJi6wumWST2DRFAXLcfPnuCxxx9lvLeN%20EJ5qNqFfLrDSH7CfHtJPc9YXFtBC0M3Sjz6B7bw/dwREf/H9Hz3+5//u33Px+vs8cOFBvvblZzl9%208h70zgiMw/qw4pbOYhuHy3WYqo4qz0XoqA++qA8rPv2d5k9PazTGWYTwRErgVYSXEAtHNO+490eJ%20Yf4u8lrMU2skVLQMXcHE1ugEGueYtg0X37nM9a1bGDxxHFFOJmAMG5vHOXXiJB+8+S6+NcQqCmZO%2074P0IFLzOFOLyjKiJMYYg7OWqgyhbnVZ0e0NiGQIGZtOJ7i64dQ9p/ja177Gl575Is9+8Sus5/1f%202IQdva2NIY6ij5Hnb7mkVFx46FFx4aFH+dSnPuV//OMXePHFF3njjde4desWg4Ue3geRZNM0lKXF%20E3ikJAkBKsKqeb6TxHmPa8IyIvIKIodTCq0NZdnMNVAGuMl4OOLYsRM0tWZtdZPr127x3b/+Hpfe%20fDOMhU0L2iKEotPJ2dzcZHNjjfWVZY4fO8bm+hpJGoe6pyQmynJ6iyv0VtegvxDWqZ1uCIBTKrxo%20/Jwg9aGG2MdpiF2xjsgTgGshgW6HyLS40QEn8/MMt2+AVUyKMQ9eeIBbV9/l6ntX6WUpbVGQZJbj%20y0ukSysQK9LFRc6fPPnRByMpxPsOf+47L71y5Rv/9htcv3aDXq/D5z/zFA+ev5/J7j7MSiSCOMkD%20xaND7o4zNsRCILEy8DxyPlYd5QyKOdfj5it6Yyy10chYoOIUIRIcjhaLEvE8g+cXpZBehpNV7SwG%20SYVh7CumsqWUjt3JhGv7W0x0SeNt+FwaQ13XxNozPDjkrf0Jt6/coBrP8MbTOoMwjiiOiKKIpnEh%202VEIrDZ45wJZKiOMAy8jUhVRTgqk8zxw5hxPf/Ypnv3Sl3n6qc9xevFvr5r5GIj+865HH/m0eCqZ%20zHkAACAASURBVPSRT/Prv/7r/jvf+Rbf//73+dlLL4aHhHPzptjggYtUMOB62+BaF7agMkSvWGtx%20rcYIBxaE8Fhr8C5YVJpa0zaGtmnobaxz/foNfvrTl7h16xYXf34Rpw1ZmqJbyz0nTrK2tMjJzWNs%20bqyxtrxMf9ANkSl46PZoEcR5Tmd9k97aOnT7AVREBNF8TXz09HYfdqR7KdEIvJCgLMaFqUEJAbGY%20e/4GyGiBjinwmaLYukWWx3zisUcZHRyiRiVat5Szkt7yCv0sZWc6YXljg+n+Hov7O94vr53/L92s%20/b3ewQ5/TiLef/Xa1St/8v/+KTeu3yJNM/qDBbIkBRdGjKTbYXQ4JF7shqeNc+ChNZqinVHEC/SE%20RwmQXv7ipuyOADJI8aWUc6OsQs27rcIPdceEeWf/T3h4BA2cp5KGChjRMlItQ9+w00y4crjFO9ev%204J0hzkJEK0Kjk5jIhFbZ8cGMajxDaEuiIpwzaGuRUmKko2kN3SylqUqcC27/TpqFCNZGY6uGSVFy%208vgJPvf4E/zaV7/GV774K9wzByHr3Mej2N/DdfrUveL3f/9/5Otf/7r/4z/+Y179+cu8/PLLjEaH%20dLvdIDWRkrpsSKJgVPXeI5VEeXCtx2qwSgSLDuBxWBvEmN472rZCCdjbHaKblu9/73msMdR1y9Jg%20IejVnnyI9dUVjq9vsLq8GLhDb1FxhFTBiNuoGNXtMljdpL++Dt1uuJFlDGk6PwnJudwltIoELApR%20uaFKIRCrQql5EK4NLyHhiQd9aAq6x4/BtEMnlhxeu86x02c4d9+9XH7lYtBH6RY3K7GdGZHRKKN5%205ScvcOXmTXyve2X9zFkefuwz4iMDRg5/TiO++vbtrT/6D9/6Di+/9jqNUTRVg24qvv3t59i6scX5%20e06zubTEYHUZF0ZZhJJ46Zk1NXvTEf2uQqZdMhHU0kfHmg9PSZ5IhN1+rmISKfBKEiOI5kyTwocE%200SMAOxrNBBgcDY4axx4zbvkxO7Zgqx7x7nCLK4fb7DUTzGSKLaqQoFi0NFVNOzO4GoSx9PMOxrco%20JxEyQRIsHCaoMcNN7MPTFicohlOqsiRTMcuDJZ556mme/fJX+I1nv8ap5fVf+GZ+DER/v9qlkyfO%20i//lf/4DXnn1x/4b3/gGL/z4h9y8eZPpNLQBp3FER2V4a0KkrfJIHMaEum/vJNZonAtaNWssUTRP%20zLSBnJ7OGvp5xu3bu8QqIpIxs9mM1eUVnnjiCRb6PdI4DrXhTfP/sfemwZrd9Z3f57+c7Vnv0n1v%2071Jv2pGQBAYEAgwyMBgE1rBjA7ZnGGcmqUkqldipVKpQpVJl5sW48m7ArsyEZBY7dnmdGMbYYJuA%20EBJooVu9q/fbd3v2s/+XvDhPS1CTBQwY23O/Vbdud1f17e5TfX73t36+1FWFtJIwitGthFIHtHbt%20prOyAp3uS8tyTsoGzXvT/NP5pi3gGgMFSVNW1kiQzXInCKz3WObQPNVQolAS1esDDikUwWhKXZTc%208YoHmK4PuXTqLJ0wJJvNkDog6fZIt7d58do1tr7+JHUUcfy+VyK18nfec7/4sQcj4/0jWogvVvDI%20V574Ol/40p9Tesc0r3Bas3vXKrPZjG899yzbW1ssdXrccstB9t16CDM3/rOyAeBvZdCfH0kKBE6C%209hC4+V6Rv7nm3+BApNIIqeeOMhbhGn50IOR3Tc1ozoOwwlHNA1GFYp0pl7Nt1kXO1WLExeEGG+UE%202hGxMcwGKenGJswqKEAUlmJq0KWnHbapyhSsII5jRBBS1BXCe5I4xlcGLRWRbvy3srqg3+rw2le9%20modf93p+5t2Pctveg39rtqP/LuqB+18nHrj/dXzjqa/43/7t3+YL/+GPGQ7GtOM2WohmjuIaAoSv%20Bd6pBpAvNdbbOZakQZFIKXDOU9cO70ApTV7UFJWl1WsjPGxvbrN7cYmNjQ2OHDpImqbUVY0OQ9rt%20ZL5HB8ZZWgu7aS8totrtpgckBSIIkEjyokCFQTMLdgbraryrm0GOBIGmE3Vfytxqa6hs420nVIBX%20gtqVtHQLfAUixJqU/oHDXDt5kv2HjnDbnWtcOXuWSIdMZyPSyZi2DtiaTbk+m3EtTRlbS+kt97zy%20Xu685/7vb5ftR8EzkkJcAPjTZ579rc/+y/+V0xcuIoKItK5o9Xvsu/VWwlaLaZpRGcN4MuXUubNM%206hIXSDq7lwjbLcq6JC9LvBCoQBHoaD4ME80o29OgKzzY+TFrkyAJAgGBl8092JwGeNPWvGmy3GxW%20G2ZUpHgusM6GS7nhck5vX+PkjUsMTE4dCExVwaRApCVVVkFWNYTF0uJzg0lLZOWI5o4bdVk1jU2l%20YO5P72tLN0lwxlJlOcePHOUXfu7j/ON/+Ek+8Mg7xe7uwuNSiJ2I8DdA+/cdevyuu+741G3Hb8MY%20x4vnz1NmJVhHEicIIE1TAMIoakwua9s0iKUkCEOEF00D24ExjihMSGcztArQUlJXNQu9HkuLC8ym%20U44fPTI3ITDNrWQrZjAasrRrGREE7Lr1FnQ7QQcRhBqhdJPdz+8cG45ShbMlwldoYQiUJ1QWfZOI%20Zw3CGcR8qdZZg3MWi0XrEAsEIoAoQQYReEUoIzavXWVvt4MyNS9euIjznnanS1oUHLr1MIPpmK3x%20hEOHD3PrsWOs7N3LgQMH3q2j5LM/tsxoWNVPVUI+eOLseX7nD/6Itc0hIoiZVTWFsQyuXaG3d5VD%20Rw5TmZrBaESoAxaXl/j26TNcnw05kE/Ye3g/S0tLBC3JtqmZXr+K3y/ZFbbpobBaUhcVynoiIQmU%20RKrv4FnY7+gn3cyGZPMvts6RFQU+0lipyXBcZcSWS7maDbg42+LabMggmzI2BZmvcNOMXmEJjEBZ%20gbUSagu1R3uFUhFlWlKUNQGaKIowxpDOUmSg6Xc7oGpGm5usrq7y9z/0Ef7+e36GO4/d9unlIPmV%20ndf/b2JAulXsf8+trKzs9a979U/wm5/710zGQ2xV46VEqAjjDNoLAh2idYipyoYcUGWNHZSSxGFE%20HMeUZY0KIqSzlEVNr9vm0P79tMKAK5cu8vyzz/HqB+/HqxilGr7U8vIypqxoLS02qwY6bHC88xzH%20z68QhPdIOfdlEw5s2QSduZk2UkFlm/4Sje+etgY7NzrwQmNFU2IapZrgpSKIQLZLgs4CshizeugQ%20C+fOk2UFaVlQ5CWXL15gsdvhvqVFBrXh6osvcs999xG1u78C4Ix5RH4PB7Y/9GDU0sFnR1n5mf/r%20iW/wtSefYZwVOBXQX1xidxSxtrWBDhsM642tbWazGb1eD59l1N6Srm8wsAUb6ZgDtxxiZc8KrTgi%20ChVntjeYtnrs6fXpi5AkDpqrfA/GejxuDpO389JNoWhMCBE0Ey6pcUrigpCcihEpV+shl/JtRoHj%204niTS+MNNmdDZnlGVuaYuoJxRjmoiGaG2CqMaPAVuObCXiOIkhaVL7BlhatKkigiCbqkRc5wY4u2%20CnnkTW/lPe9+lDe94WFuX923kwb9LdBDr3ujeOh1b+TA6l7/Hz7/BZ742teYphMQCqGgtu6lwVWg%20g2ZCaiq88SgJ3nqKPCcvCvq9DnEYUGY53vuXECdlnvOtp7/BkUP7ufXWW8myDGcsrSimKkqSOEZF%20UTM5U/MbTd/0J8TcHBLvkN5iXYEp0wZ1a5vGe6gjQtWFoNXsIYmm3WFds1F885IB17RCmumch1gh%20WwW618OajJX9Bzhw9CjPPftt0rwkKwuqjRt05V4W9u8jFJob6QxTlgjVBCD5PV76/9DLtKnhM5//%200l/s+9y//S0urd2gu7TMPa98FR/52Y/S7nfYGmwzS1NGkzEbm1s43/BdxumMhV278EpTWMtwmrI5%20GjItcogjonYb5x21txTWUIm5kd/cHqaSzcjdKJpGuJZYKbG6eciVgkoJZpSkomZGxXo54tx4jWvF%20kFnoeHGyybmNa1wdbTKrGohXnea4SQrbM+zGDDWrEaUnsoLASZQRiNLhK/MSP1rTsIazWUqWTom0%20ZmVxiU9+/Bf52Ic/ymM/+YjY1ek+vvOa/+3SsTvuevzO2459qt3tcPHSZa5eu0q706XTbTOZTHDe%20o3VIEDT/L5WUzZquNRRFSZzECNVYPCnhacUxy/0ecRAgnGU6GhKFAceOHSPLUuK4mba2koSw00Yv%2074YwanaK/E2AhUTMm6cSi8CAKcmzMel0QDEbUZcppq4IZICSqsmupAbm6GEdoYIArUK8byiazb1m%20M+3xdUWdzTDTEUkcIFXIC6fPMJvNELqZyg2mU5CKzkIfFYUcv/0Ojt51zxpKP/1jK9Oee+HMg3/8%20+S9y/cYmYdQGGdLpL2FRaK3ZXN9gOBqysv8AnaTDrMgZjSeoOGZ9c0C716UVtvFeMRqnzOrLbOcF%20V3YvcN/xo+TUzHzNuMwY6wlLcUI3CImEINHR3BmkSUOFaLhGQkKNoaAitTmj2ZhBPmHqClJtmYSW%20sbOcWb/Cpa01htm02VsqatSkxAwz2Jqhph6XmzlDW6IdaK8aH3ShMKZGOU+km5wsn5a0kohHHn6Y%20d/29d/Lxn37fTib0t1yHbrtTfHT3yq8evPXWX/7N3/x3PPnkk2wPx3QWFimyGbU12Mo3ppTeNtvx%20NEOLJEmo6oK8qoi1oNfrsbq6SizBZFNC4Tl35hSX77iT1dXdBFLirCXSzU1i02f4jkGMl3NXQFBS%20zJuiGuF0w/TGY7DzisGSVjU+hAjflG1aIiQorUEHc49BB8407w0OlEAEgBZUUmB1yMKeVe554H7+%20/EtfJlABVVFSZzOUBFOXtNodTJFz5omvfGZrNPrMyup+jv3Ea8VfazA6eXHD/9G//wLPPPc8C4vL%20DPOK7dGE02fP8fVvPoWwJVVVcPiWo8SthK3RuIGlI4iCgDTNkUFI2G4TtyJkqCiF58ZgyPp4wCQb%20s2/3Eod3r1ImHYq6YJJNaClNpCRJFM7N/PSc7tcwro1xGG8YZkNEIEnLjEE+wbc0dGPWpyNOXHiR%20a7Mhw2xKmudI5xGzCj2rkamjmlmiUuAzS5kXCAuhUGgh0Si0Bi0DbFkxGQwQ1vDKe+7mPY++i7f/%201Nt48Ja7dgLR3wGVZU5ncflX3vmex37l+O3H/ec+9zm++MUvsr6+jpbN4EI5iHWAVqrxnrMOj2dr%20a5tONyGMI6wpKfMcW1foJEErSbvfZTIac+K5Z9n7yCO4uqLV7eCsRSndjH99493kvcD6JrP5Ltum%20+TdhpRRhpIEArRxBGFGKhnAZCTUnVChePnEAW1dYa0DMz6fwoCVSewigEI7cQSUVr3n4YU6cPMXm%20xgaTyYS41WJtbY12WWOShBNnzjCrDCIIufPue3no3AX/k+9+9/+RdLsf+JGXaWubM/8nf/Zlfvv3%20/oALl69QC8nmaIIRElTIjfUbTF88xy3Hj3HH7XcymUxY39wEKVFhc0SaJG2ch7KqqZ3H6wARBVil%20qLzl2uY10irDmDm21TkclsoZ0ipnmE8ZFSmDYsagmLGdzdjMJmzlMzbzCVv5mJHJqLRA9hLqRHF5%20vMm3zp/i+YunMaFgVmTNTdgkxQymRKkhSh1qVsOshtIhaoevPa5uPOBpfPwwZYkEuq0W9951Fx/+%20wPv5xIc/+umjSwce9t6/xM7Z0d9e6e9AqSzvWn38LW992+OdTutT586eBe+o6xprLFEUEQUaVxvs%20HAuSFTk61CRRDM5gihJvaoSf42qAONDMZlN271pmaXGZMAzBO8J+HzqLoAIQDXLYefBivsxo7dyQ%20woGrMbbC+cZnLwwUIoowQR8RdZBhjJbzA1or8c7irMU5R21qhLdI4ZDCNicOdUY+HVGMJ3jnqEtD%20v9fHGsfFFy+SFjlCaYRSRN0WvYUFTp05y/kLl1he2kWn1cV4x+LK6t0re/c+/iMNRuvbhT93+Sr/%209nd+jzMXLjUMFSdwKAIVM94eoaSmtWuR/tIiZW25sbmNxaOjGOMcrVYLpSRlkZOlM/I8w9rqJUdG%20qaDTTSiLgsHWNtPRCIGg3WoTxAFOCIyz1N5jvKWyhsrVGOcwzmC8Iem0mFUZUis6y322Z2O+/tw3%20OfXiOQzN7ZLJSswkw26O8ZtTdOZICvBpRTFJUU6ghUYLiTQOV9X4skJUNSYvWen3efRtf4//+p/+%20U37mDW8XLRl9EdgJRH+Hdc8r7nv83rvv/tRzzz5HVVSkaYYzzc1abSwqCGh3OiwuLZClGWWWEeuA%20QCpMVeGNQX3HqL8qC5xz3PuKeyjyGWGgCJIWLOwCHYEUTadgDld23mO9RQd63j+aH2y6JuvRMkDo%20FugmEIUqaG4nHThrMcZiTY1Uzc8FBi1BYpt1gDylHI4hL9G2uWkYjcYcO36cbz77LDqMGIzHFNYx%20HE1Y3LWC89Bqt7ntjttZWlxkeXWFIEk4ctvtP7xglFfDpwL13bsDF25MPvU7f/jHnLp4la1Zxqys%20mM4KukkXXzqWk0VsWZMJR+oNVocQhcyKksoZ+r0erSRmodvGVgVlNsHWObbKKPMJdTahzqco50lU%20xHJnAeHg2pUrXLx4CSkD9h84iBASZwy2qnFVRS9MKMdjdrU7hAhMWSGcYGlpkeFoxJ98+c84ceIE%201nhMUWBmOW0rMYOUemNKVIKa1thJTjdsM53MiOIIX9eUaYp2nkRIfJpTjafce/g4/+hjP88nf/bj%203LH3lp3o85+Q9u4/+PgD993/qU63x7mz59nY2qa3sIRUAWleNm4qUoI1UDviKKKdtDBVTV0Ykqg1%20396GpcUFJsMBEsMdtx3BVBkiipBLu6ilorZ1Y/8daIq6oqgrVBCAVLi5Ba+SCWHYIQr7hOEigeoS%20RSGhmi8AzyfBN+29hPDkZY6SDXhOe9/gR6yH0RQznEJaUM29AoUOcFJz+Lbb+PJXvkZpIAzbpGlB%20nuXs33+QheUlhqMBDkuQxGRlzYOve+jxH1rPKAm/265kbYZ/+vkXOHnxCle3NqmloLXQw+kMpKcu%20MyokSkIrSsimBTfqDVrtNkIGSK9wVuKMIB1lVGmBLxxCObwE13gX46qA3ArKUQr9iqV+j36ygMBx%209coaw80tDq6ucvjgPtphC0xNOU1ZaneJvCSdTpBRxEK3z2B9m298+5tcOneRKivxlaHGNMeQgUfP%20DDpzyNpBYfClo6IiCkLiMGJjYxtpHItLC2xcugplzdve9BY+8tj7+In7H2TvwvJOIPpPUMfvvlsc%20v/tulvpL/jd+4ze4fPESYRii44S0qLGVo9/uIltd8ixlNJoQa0WchA0gPwlIs4x+J0EHiu2tDdbX%20rrC0uIAtc0Q2I0g6BEFAVVf4ufGnDBRSafzNG8y5qaQgbEpA7xDCopQDaedX/GJ+wuCazGpu8fWy%205necxkFpsHlJiCRK2qRliXWWoja0u4u8+rWv5/d//w/Q0qBkAE4wHo6Ium267Q54y7XLl7j7/lf/%208BrY3plHhPzunYEzF67ypa9+lTMXL1Aq2EpHUGdE/T67D+ylTBNCEdDtLLA2GOFzi6uB3DZ4WRVQ%20Z57RNENrSV1LnEnwOKgkxoO0AlE56mpG1AoIugskKiBSCrzFFRXbgyHj6xu4NGN1cZGjtx5kWlVU%20RYmrDN1un0pKJlnFM8+d5Omnn2GYTxChoKiacjDPcggsVVbiaosp3HzL2uBthrCOfDylEyf4subG%202hrtOOZtP/UOPvK+D/CeNz6yE4R2xAc/9rNiYWHB/7Nf/TQnT55kdXUVrCFNU5JA0o4TgiDAWINx%20jqqqGE+GdKJljK0xdU27HTHc3uTyxUssdLtga7LxNt2FRdCSwFuMtaggxEtNA9/x83a2avrTQjTN%20aekbbreWzakH80a4EvOYY7DGgAb/nYvDzkNVk+clWV7iJxNCoSirCh1HWOcQgeChh9/A17/xFGde%20OEOYxBTGUjjH7iig0++gkwgfhtx1553/n8/t+yrThPhuNMCLG8Z//kt/wZ/8xVfZmk4ovGH3vhX2%203rKfxV094kDgbYGkItASqQPa7Q6tpEF+FsaBCnFeUaQFTgQ4r5smndR4LecjSI3UikAKkiBAC0Vd%20lLiyIlYh3bhFEoRgDaPNbS5fvIBw0G01kTkOIhySaVnx9W8+zRNPPslgPCEImwdaFyXSCco0Q1QW%20V1h8UeNLiyst3ty0hLaouV1SMU1ZiNu8953v4h/+/C/y9lc9tBOIdgSAVJLjd93x+L133v2ptbU1%20nnvuOXav7CLWqjGgnLuKCCExVYF3Fjk/9o4CTaAgDgOcbW7Ldi0tELQSaqmJ4xYiUI0FuZQ0xr+W%20l88ZX3amEELCHIXyElpEKLwT4BVC3SztBFY04/4wDAmDsJmklTV2PGU2GFJMp3SDuPFiEwKpQ2pj%20GU+m7NmzF2cdF85faK4bshyvBEGrNR/+Sdq9HufOX+D82dOfunD69KdaUfiphV27H/+hjfa/feo8%20X/36N1nbHOIDhfCSxe4COjBU+YTlhQ6vePD1tKOQ4aRgY1pzcX3A9iQlDFtEcURuwDkJHUkt9Etg%20Oi8MaN/EpViiFOxa7KGFY7i2xeXxkOXFBW49dADV6xGpxuu9FbdwQvD8M8+xfWOD/fv2cNvRY+TG%208I1nnuEvv/YEG9sb9JYWKbKCLE/xwlFUOXhPpZqRvbCaurYNRoCmuRgKSShha32D3f0lfuHjn+D9%20j76Xu/bfuhOIdvQf6YGHXyf+S/tf+doavvLnX+bIoQMU6QQvBS0RNw1oIVFKo6RiPB7Ta69SFSWp%208vTbMbPxhCuXLnKk20UmHcrRBrGvoNcD1UK4plxTUmLFzdyI+ee5rZWAxkFQ4pBYJxBCotDN1rVS%20cyqEIxBzqwoLNs1JxxPqvGjAhDQN7jAMyeuaJGnhhcILeO1Dr+OrX32Cjc1tCjPA1I48K3FasjWZ%20cO7yZc5fusKhI0eJkzanz7zAL/6jX/K7971sn/1XDkZXh/hvffsUL5y7TFkLWq0O9z1wN4PtNSIE%20P/mGN3P/XbfzyrtuJ9KaSVnxlyfPM/jTv+Ty9oCwt0g3SEgHEygqSFrNw5PgvWkafbJx0GgcYx2L%20/T77Vle5qi/x/OYWo60hVx1kCz32r65SVyWtMKbfX2RkLIPBkKtXr7K1OUDGEV994husrW/R6XQJ%20ZMTW9hZVXRHGIYwzCIIG5RbHYGQDxW/I7GBKTF0xms64df8BPvjY+/jwY+/jvj07gWhHL6vMC6Ik%20Bprs+TVvflj892Ho/4c85fSJ57Fl2TjSKg3a0up0aGlFOZ0QST9vYmvqukbJFlJ4hlvbTIcDFnoL%20lNNtlLcEWtAAljzKORRRgw6RNxchBW4eQOx8kitp/OKcUA26ucEcNUuTQja/hgNjcdMpxWBENRoj%2085rQQT6boQPVmEDW0/k+U8CzzzxHlhXkRUVZlljfrAiUdUU3WmIyGfHtF06y98B++t02w/GYZ775%20NNcuXWT3vkM/WGZUGj75zAvnePbUWQbTgiDu0+3topg5fC555ase4P1vfw/5aINn/+KbFLMxemGB%20/qFbSPp9SGJsoCFJCPpQq7x56YOwGSWaBgCCrFFzprW1FlsbDh08TCQjLl++QpVlDAdTijRjqdtn%20od9jOByzub7Oyq5ddHttag+nLrzIYDLlxsY2WsUIocnGGa50SCtw1kClm50hD9I3IHbKOZxKSryx%20KOs5tP8gH//Zn+NDH/ggt3R3GtU7+m7dDEQAcbexB7//odeIf/5rv+b/u//2v+Hs6ZPkdUXHGkKt%20iYIAhcPLxjRyNpux0FoC6yjSjE68QJZlrF+7StRfIBJgvENiUN5C0kGpAHxjAGF9Y6skviMz8nP2%20uxXMFxybG05rqoZ6IW2De/Yeiox6OqUeDLGDEWo6Q5eWwEO336eyhiLNSCdTzr14kdEk49nnnmdr%20OCItckbTWYNLCTTT6Yx2XtDpdFleXGLvyioK6LQS2kl003X1BwtGl4b1Z545dZrz1zcoZUSnu0B3%20eS9eahaW97FnzxGE7rI9vIYVCVFLM6kl1y5vUakWYW+VaW0QTtNd3kfWqSi2hqAVwluEtzhXIsVN%20zGzjXT9Lc2rnScuKvKgIowhTlWwNJly9sU5RV+xd3UWRp1R4Ll27TrvbIu506akAtTFobGG2p83a%20epBQ1TnlNGvcH8oa4R1yvteEaR6W1B4qT7/d5qPv+yDve/S9HOnu2glEO/qeddt994r/7L/4J/7X%20/8W/4Otf/RqjIKWfJEjnCOKAbr+HcpatrRusLvYRGLYGKb1OB6xh7dp1dh04RJTEWClI65q2EKjd%20GmLdVBKqKcYUsmF5vWTz3tAfLRYvPEo4oMEiK2+QqnFaxjuYTXHb29jBADnNCIqKuG6+OVsBa+s3%20uHxtjayqOXHmLDUgg5D9+w4S6C02t4bNKUoUcm1zk9Jbbjl+nKNHj6FDzdb2JrtX9nDn7Xewurr7%20r97ABhhWPPXMucv7fvcLX+Lp0y8SLS4TLa6g2l2idodJURG12hihSY2ltbRCd+9BNivBty5usZEK%20UqvxuodMliDoYHyIkyFShASqwboGAmKlibRCeY+xjhLFidNnuH5jHZSmrGpKUyGVYjqbcGN9nTCK%20EErT6fVxwDidsXtlD0Vdc2Njm7oy2MrgKoMpKnxlkE4ga7BZwWK3Rz6eEqDoRC3SaUqoFLt6Pf7B%20Bz7Exz/wIY6t7BfWOXbYQzv6fnTkttsfF8586tTp00xGI7SSeO+JgoDpaDiH8IXYskIJ6HRaKAmB%20UhjnGAy3ufXwLYDA1BapAoosJUTMlx3lS3WXcBasa/hF3iOEBQzeVyhXE/ib/C8DVQnZDHfjOvna%20GsX6OnIyo2MdQWXwwwnjjU1Onj3Hi1eusLaxySzLEFojtKbd6TZb4E4wnaYIqciKEickKo5wXrBv%20/36KMqfVboGQ3P/ggzz09kfFD5QZjTIePH3hMmvDCbrXJ5OavKpQShOFCQMmnNocUVy8M2TIngAA%20IABJREFUQhxp2rMcKeHF9W3OrKfMfEAR7kZ0I1SUYCWIokCqNtJWKF8i6xjqGCUqlKrBZKgyoxIS%20LwVYh8NhlYQwRktPKCWtJGJaliTdDuMsYzweY23N5Rs3yLIMbx1i/iEteOMQFsS8PdVNukw2hvR7%20Hco0R8WeXhiCg/c9+ig/89Pv5vBKg/3YwcDu6K+i9/3sx8VsNvP/8z//NWpraIURl65c5b47b2e6%20udFM040lqwxRXhIoiRCCwDoME06fOMnxu1+BiARVlpLOpjgEzFLai7uQQdRA0eZnIzepkwiBEhXS%20VojKgLVQG8gyGI0pZxPqNEUUJVFVo8qKcpaRbQ0ZXr3B+nDIMFDkQqKlwkhJWWaMi5KgbKy4lpd3%20I9R5JuOMylmcgLKskWnOaDIlimKSbgsvJYePHvuPns33HYyurg35+lPPs7Y1Iu7vIrfgwwi9tMS2%20KZmGzeLW2rVrqEgjQk3tHYOZofA9RNhDJREqinFaUjuLETmooLF0chXCpFCnWFFSC0PtCmyZoqVH%202gpX1Q1Y3DuEUwjZlFWLu1fAGtr9BabjISdOnqI2JUtLSywvLjVQrKq5AxJ1M7LHOoRzCOcpi4JA%20KvLJjHYrwRYFnVbEo48+ykcfez/3Hzq8kwrt6AfWJ37pn4jB1rb/rX/zrxlNxkTtNpMsb8xDbUNs%20xHlCqQgCh9LN8q9OJGvX11nZe4ADR44xKUu8F6SjCTqu5y2FkCCI0DpsLv1v+nAp37iClDk2LRBF%20RVgZRFHiswyZpeiyQeakwyH5aEI1SfFZCZWhnURMnW9u04xhWpakWUllDbUTBFHC4T2rJO0udmuE%20UBotoDA14+mMaGObvbfsIWn3WN23n2O33fWDBaPS8cmTpy9y9sU1rIzwQYQxNQjFxmjQ7Ch0u6Bg%20KjzOQVUbiCLUnl109QqoFgQCJ8XcfsiiXYLyPUwxQzmDcCHetWi8OyusLaDuQDZFmgbZ4V1zGOiN%20wQuBFwLrPMsLSxw5coxQS8qy5NSpF5iMZ0zHM3Tt8LVr/KnsfGpgHcI3EHNhHXEUNlwaPBLPw696%20Nb/08U9w3+49O4FoRz80/YNPfpLLly7x+d//fVb37WNza8hCHOGdobIN76ioPZUFKxSoACEDrJec%20OnOB3ftvoa5sAyrM0sYOazIGIamlaugViDlgBBAeK2psXSGLGlXUUFaoooKigLJmtH4DW9VURUmZ%20N5BAPE0JqDSuKEgnM7ZnM6Z1hU46xHGL0XTGNC3Y3B42CBU8SqrmZMU2PnTDyYR+vozx8JrXPsTK%204aPiBwpGL1yxn/nWiQtMC0fUWWJqIUpaRN0+6XRGe/cC7SjGSUElHD6J0IHGRSFxbxHrFIYaJ3wD%20kgsUoZ4vbyHxdQyuxluFFwmGmsKUeJegTQs9FoRliA4rdBhAGCGqCm0t2nmKoqKMKy5duMSRw7ew%20Z2Uva9euU5Ylg4sXaXcXkLVFGtvYyniH8G5OhRT0+gtMRluNle9kxkOvfRWf/MTPc2Bp8dM7r8+O%20fpjqrewRP/exj/mN69c4/fwJOkGAVxopPEoHIDy1kJQWSguBU2wPUhbQXF47T3d5N3e+4hVM0xwZ%20aMrplCBOkL4ZTCNuOn/Il17yPJ8RCIgsyKzAjzOK0RgzSzFFhXSOqiopypKyrrBeNG0naymNYTrL%20qKqKMAzpRgm91RWs1GyNZ8zSlCef+gabG9tUVY0Wgto3vPogCKlKw3g6ozPLufeBV/0/PpPvKxid%20OX+VU+evUfmAqha4QHH/fQ9w7PhxsnyGq2sCKcirnAoQ7RZ1EDBxhkpIlA4wwuKkRIYCGUiEAusM%20zhuEl1grcU43sHwrkJUntwLlFLGtUVo2gP7aUFFiK0OR54i6ohACm+e8ePoMl86/SJmnbFxbp9fr%20oeI2lCV+nmqql9jYAikF0nuqqiAKQrY3NrnnjuN84ud+jrfc+8qdjGhHPxI9+PCbxIcvX/Gf/h//%20J6ajEd1W0mBrhUd5R+UM07xESoV1UFcZtffU3vLcsye4/e5XYKqahU6HoiiQqm6AbjS+jHr+WTU8%20WaK8wFUl5TTHjKa4cQppjjQOLQQqCjEOMJbKOGohqJynmAejws7pqlFCnefUdU3lDZPJBGNhY2OL%202s5dlAFjDJW3JFHY8O6HU4LWEI/8wYLR9ZHx3/r2GdZHGUHcZ5TO6PSWeO0Dr+L4kT7aQTUFbT3O%201hg8JoywEcyASWlodQRCW9AKAppDWgzGVhhnyPOcsq4xXlAC06piWGRkxoCzGC2hiCjClEJItHNU%20zjUXyAi08wSysW7Z3txE4pFCkE2mhErjqxzpHc2O6ZxkJxs3EYUinU3pJCH79+3hox/5EO944xt3%20AtGOfqT6yUfeysVz5/k3/+pfURtHFGpEoPCmpsoL6sJi6rkJaCtgNJ2xsLzExtY2zz7zPLffeQfO%20WEIdzNlITdtB+Cbzr42hrEpcbaiLmmqSUm9PcLOUsHIkHgIkQijWblylDjQ+jgmTFqXzDCYjrm1s%20MhyOacVtEBIRl2yMx8R1hZWawWBAECb0FhbI85KqNmgdIi3Y0iClJgwFk1lGOJ7w3ImTvHHvyl8t%20GG3NysHVYc1T568yJmJp1x5EfZ1+d4mldp/pusVXKYm3xKGk047QWlNhCNsa1QaDbmiIoUKHcytw%20oOnOxA2n2jf3aqX3pAjGRclmmjGpKrwQuL17qMuKPJtRz2aYWQ5ZSlAYZF1RTadsb24wnQxZX7tO%20d2mBbrfLYH2TbhRhbXNE2ADxfDMCvem5JiWL3Q6b16/zC//5P+YD732MWKidt2VHP1J1VveK93/4%20w/7555/n5DPPoLUmkCFgKIzDVRXWS7yQdDodsnRKqwd5afjTP/tz7nrFvWxvj9i9vISvLdJ7pDV4%20Y6jrgjLLyKfNSYcra0RZI0pDS2o6rRBhHOkkY5alFM6R5SXTWcqoqhkUGZuzlO3JlDTP6HVqlA5p%2064AgjlhZWUFGCVfWNrBCIFVEVpTkZYEIQmSgkbbZ2I4DRTEcYozhhRde4I2PvPn7D0YlfFJ1ogt/%20+EfPPviXL26Q7D7KeukxQZdudzf9GKqsptXWtCNBK3K0k5pYG5RoLKe1D9Ba0mkphHSNTcq8TyPn%20xvd+vh+RB5LUQeo9aSdhGoWMi5xJXVF1WlitqJ2hLnNU7egK6BpJUFuSMGBczvjat57kd//wD6jr%20usmKAoUtDYKQ/sIC19au01noY8q82cfw4IqK6WjII695HT//vg9wy+LCTla0o78W7bntNvG2R9/l%20L1+/xngwwMnGOdl4RRB1qDxkpaPIHaaWTMYFYdIlzTP+5E+/wnvf/SjtIKBOU0Y31sjzlHw8JpuO%20qPMZzhlWl5fJpym9VpvxaIqLIrLKs729jZYBuSlROkS3O4TWMTh3gSsbW2RlSVqURO0WVkje9dh7%20OHj4CE8+/U2eevZZZmVJ0o5Jy4qiytlzaB/DPGOUzti77wAHFm/lwx/6KP/bv/vfuXj5ElErYjoa%20fv9lmoMjU/jVs5ssXtyaUsY9SidpS4kM2nS7fZyBSEE7kfQ6gjioSEJLrDyR9CQqoBso4lABBkVj%2066OQaJqSiQYDjgVymkCUC8jwZFLQV5KJCBkax7gssN4QSY8SFpMVFKVBoKhlRF5mbGdTdC/G5RJR%20FgRGoqxBhAFpXrOwvMpoMiQKNUVR0mm1KaYpdx49zkceez93Htu5N9vRX69e84bXc+LECf7wd38P%20ZQwmK+jFMdksI1TNUes4zZF4lPFgPFlluHjpKk88+TQtHRA6x3h9DVXXhM7QCjVaxeTljK2tbSIh%20maYzwk5n3g6xRMuL1LUhSGK2R1OGV68wTQvWNwZkeYVUIcJZJpOMvbt3cX1jk3Fecv7iiwxGIypr%20KS1M84Lde/dy5vw5uv0uOg65cv0Krz98K5/73OeYzMZ02y2Ud8ym479aMDKw+Oy3z3H+0lV02MJY%20j4w0oQhZXl4EAa12wEJHEeqMOBC0AkESNL73LR3SlpJg/sc1e6J+vrbubsIObg4giQCvBBoIgVgK%20Ytmi5Ry+qijTEmNMM01TjsLaOekuoipLtiYTrm5sEHW6eJfhopLQOJwpcMaTZymtTgLG4LRESyiz%20DOEt73z72/nYRx/bCUQ7+mvXwSPHxTvf+U7/zFNPc/XCBcJ5kzeII/Jpigg9ZpjT7iS4OkImCSII%202Rhs89zJE/TiGGUtsfCs9vo4B5k1KAd5XVJZQdzvsbW5RRRFXL58mdFoxP79B5FCo8OIqN9nvL7B%20JM8pBRghUVo3/OzCcvrsBdYnYzyS0WSCwSPDiNJ7CmM5e/Yss6Jm3/6DPHDsGP3FZXq9Hi+cOsMT%20T1xDSsl0OuXKlSucP33KH739ju99A7uCR1ILz58+z9X1bUSwD2RClMTEBhYWW0Qh9DuKdgy4mlg5%20OlFIOwpJCAhu/iG+6eoLPEo03SLvm0NU7zxeNAxqIZogJGh63AFN5hUp2ZyNhAmBaLzOayXxcYAU%20AicVeV2xNh6wMRqgWy1EVoMMQVvQFlOWOCyT0YgwaXY6kihmurnBa++5l0cffXTnrdjRj2+69tAb%20xDve8Q7/Lz/z60RhQFkZVpeXuDaaUDtJZWukj3FVQeBbhHFEURSMpzNCrYilJIgTRKgZj1Ly6YhQ%20CvCGdpwwnOXc2B6Rpinnz59nOp0SdRa56657aLVa1MbTXt9GRjUiTpld36CuDV4pgiQhqhXZNKeo%20DLWzoAOKrKC0DhGF7Nmzj9e/6c284t5X8oY3vpHWvgO40Yjt4YDPfvaz/Ps//mPyYcHGjXXWrl3n%206O13fO+Z0RR++doGXLy6ybTw2FZI2OoQhZpW6Gi3IloJdNugRUm/HZGEnk6gaBMQMr+Wcc2HlnzX%20NTE3WbzSNqwUZ5GiAUZJBF40wch6iAT4QBJ2O7QKGBYpmXWoKMTqoHk4UYvtqqCQgoV2GztKcUpR%20CwdC4rUkEE0kD4IArKfOc/bu3sVHPvgBHrxzpzzb0Y9PMgh4x0+/ky9/8U+5eOYMwjjK2hLGCbWt%20IdBUQFkUqCyn3W7jpEAoSRgnCGuZ5hl1WVClM1phwOKuZbQUxFrzja9/gyLL2NraIi0NQbtHZ2mZ%20e+57AK01Tzz5NGlZU9aGykBeWWrrGtChkCRxFycdAoNyttkjMo52u8OuPXu565X38uCDD3L8tjtI%200xn/5//yGywuL/Hkk0+ytrbG6u7dOOcwZcXW+sb3V6alBk6cu876OMPrFo4QHbYQytDrdGgnmk4C%20cQChM+xqtwmo0Dia4bxCOYVygjmSaB6H/Jyg9jJC4OaP1Lyh3XhEvfx3CWkgUbECHbdwVYH1Fbnw%20GOXJvSPodRnWJfHiAiJMQGuclFSuwZR72WRkC0t9pqMhiVaYquStb/8pHv3pn955G3b0Y9ctd90j%203vyWt/hff+E00sPG1ibdpEWZVnjvmFUFtnYEUTS3Q4ppt7rEcYvh5jrtMKDV69Pv9eZmjZKtwRZ1%20VnD5yhpRGJLOapSKCHTEYHvCmTMXyNKc82de5OrF6xS1oaotpjQIpalLg/ee2SRFBwHWO0prsUrQ%20SiL27T/E4Ttu400PvxmvJIPBgHMXzvO1J75Kludcv75Gv9tDeIiCgGwy5dLFi99fMBpn8NwL55kU%20oFp9hIwJdIT3NSsru+j3YzotiJWn3wqJMKibTWonkM6jvEQ58VIy1MzSG29efzPm+KZMa9CZc49M%20P+8nzZknsVTIueecFZI6blE5O1+w9NhYk1NzbTIgXOhhS4cPAtABtSgItUQRUGYVQgi0ElRFwT13%203M5jjz7KLb1oJyva0d8Ive0d7+ArX/5zzp48hXOe2nkckrquqKzBW48pDXVpSGSAqw3j7QGz8RQf%20xyx1+8RRSF2WrK+tceq559le36Tf6mGMIyRudphqw7UL1/n8tS+QZhlBEDEdzDDGUtYWJUOUb9A6%20SikW4oZnnZclviixStJJunSTLq0g4ZmnvskwmzJOZ5R1Rafb5dSpkxw9epzpdEo+neCMZZrOuHDu%20PIMbN/zSnj3//6THDH51WsCFa5tkVkHUIdRtpNbgYNfyIr1OQCuCyBuWwwBBSohFowlv+no72WQ4%201jfroGIemITgJoHDzxMm6y0Kgfce6V0TiJwFFNJ5YqkpLbSEZymOmfmazSrHCItot9gaD1mbDFlZ%20XqEs0maZSc/X7ANJGChMlVGkM3YvLrF55QpvfughHnnNq4WfJ2s72tGPW4fvu0+85rWv82dPn6W/%200GW0uY2UqjFsdB7hmvKomubklWPkt9koc7J0SpmlrF++yuFDB7ntllu49dBRzLSgI9tMt8fYzJKE%20CaYqiYOYftBltDUk0CH5dErLa1Ah0yKfs98rVGmI2xFVaZt+i/F4Y4mDgFYUo72gmKUUVQl4Rlvb%20LO7eRZHndFttyizFFhUSQSuMmGUp4+0B+Sz93jKjKfzysyeu883nzyCXD5IZEElIXVd0+m0WFzp0%20WuAqWFkIEBR00GgawJPAvWzHOzdinI/S8B688DT+l81naDahPQIhXFOTNUSol0s2C4n3oAROCNpB%20QBwFeO/JvGFtPGLl4P5mp0hpyjnzJe50kVmGry1aSJaWemxfu849d9zOBx97jLQ0vpvonVC0o78x%20etd73suffOGLrN+4TpgkOFNjS4GSgkgpTFYhCJAoBtfXKbIZQaBYXlqg3+7RChJM4VDKcMv+w5hh%20Rb2ZgXOYWUmbCJVahukG3jkKW6A8LC0tI1AElcQ5T6fXw1rPjcGAIABlPfuWVxhOx0zzjBhFrBUB%20UJuaqio5cvAgK/v3cubcWWbjEXWRU5Y1pqixDrx1XL10mfUbN9h/7OjLPbP/t4cxK+DK9U1KJ0kr%20qJ1qIN5aEEfN3lCkmn5RMzFz84+XMODzr+Re/qI320DzoNN0cJqGtgccct4mkt/1e5ptaQfCEQIJ%20zQpAs8YuMMJTCkcpPSbQOKlwonFxFXN/KC/n/uOhJp1NicOAt77xYQ7u2cOenUC0o79h2nNw/6d/%208q1vQcybxzqMcM7jjMcWBjMrqcYZxWhGPcmaABMkTDZHCCc4eusRDu47gCsd65fWKMY52igip4h9%20SOIDIq9JnKLlNW2h6Qct9rT7HNq1yu6kS1A5FlTEkd17ObZ3P3v6S/SThNCBKCsSFbDc7dOWAdlo%20grYQS006HHPu5CnWr14nlIpWGCGd5/9m782a7EyvK73nnb7hfGfIORNTFVAEauDcKlKiJKrl1mC3%205CnsCP8F/QX3T2j/hPalfdHh4cKhVtuWWx1WUw62mhLbDFIki2QVCjOQ45m/6Z188R6gWKRk+1Ko%20OCsiIxEJIIFMfGdj77X3WgvrMUKyN55AiCxm8/9/ndHpJXzw4ccEmdE5QcxypJQYJRkNS6pCMchh%20oBO5nGp03LQ+klfZTGJTkDYfCpti80khSkPaJ5dGqVMSxE86JOKGOwogFWaz/jdaoZQgOmiDY217%20bAzE4PF9UuYL7wl9jw4eay2ZUjT1gnffuMV/9Lu/y41iW4i2+PuHYn/vn/zjP/xP/us//uM/YX45%20ZW9njM7SLZF2DukDPnR465EIVIjYdcO14xM+f+892rrjT//8f+fjn/yMZrpibAp21SBttmOEjW+S%20jxv7fiGo3YI6HzA0AyqpWLlAgWJkMhYhcjAcooYF2mQ0yzlXqyWx66gyw+5wQEdgd3eXxvZMl3MG%20WtNmhtB30Pf0dUNeSiYHO1zV6d7o/7MYOfi956dTPn74BGEKoszRWY4QgkzCeJAzyCWFhtJstF0v%20C0okpWm87G4Em66GX+p65OYXRD7hjl72VYG0gYsiefnykgOPgSRrBSMUWmtCFHTBUbs+5T+FQLDJ%20bpMQCd4TYsS5Hu08ZV7w27/5Td67+/b2qd/i7y3e/fX3xb133onf/tZfIHWWMtOsRbkW6T3CgYgR%20owSZMLR1x9npKX/5l39JV3c8+/gh+9WYqhhSCkN0EYHEKJWU9dEk4bhSaKUQoSJah2ubZOwmILYd%207WrF4uqKO59/h2t3bnJ4csxoWPLtv/4OF0+eMigL3tjdYVTkCJMlcrzpUBF0gNUqcUahtzjVo6Ng%20MZvz8Ycfferr/VvHtPOWf/X4yTMurhYonaegRamIOJQMjKqCIkt8dLZpfmTYfLqoIOr0YyFfjVnx%20FTeUmCIFKNJiTb18C+m9jC8HvJTz5JApviymUe3VGQASpZLw1fqIDR5pNEYqBIFcSTItQYHJUkCd%207VpuHB/x+7/zj7iWse2Ktvh7jd/+R79DORhivUspNTGZFuJTd4NNXtciQnSexXzFj370AU+fPCP4%20SGZyooOwoXCDSsaGUUtQ6fbuZb5jURX0vsfajuFwwGhnhM41g0HBzRvXOH38gLPHj3HrNQfDIQfD%20IaFtWV5c0ExnHE52GGU5wVoWFxf4pmNvNGF3OGaQ5QyKEhEhOEezWvPo4UOa5fJ//H/tjOZzz8OH%20j2l7iy0iMVcEFxExoGWgLFLqpSLxRTFuouO82oxovAq2jK9YoxTSJF8mFkSPiEm6L34+sWTDW4vN%20SBc3urUoIgi/2Xil7INIRAhB8NA7S9d1hBDAe1xvN583QEj/kFoJrPO8+/Y7265oi9cCv/qNb/DG%20nds8vP8xZWYSrxrSWCU3HtciCFCQ5wX/5X/+n6KMoWtazh4+YyANdtGgbcA1K6QPxBDwtsf1LbZv%206a0HbymKnLIq2T86YHd3D5krFvMVbd+Q5wbXtnz8wY9ZTK9wIqK8Z1KWxL7j4sUpPgZ2rx9z/eiY%20xWLB87Mz9MYfybc9B5Nd5k2D6y0hBE5PTzl/9vy/euOd0d9djM5OL3jw4AExRnrrUTrDAUJElIyU%20ucJsIrw1QIhIoX650YopkNW/6nE2SrSwKUARRIip+rwsYPKTu8jEMaWiEwEpUzHzpC2cj57oPDZ4%20uq6jaRqCdUTr8NYivE0ZbJtI3q7r2JmM+O3f+k3eLNW2K9ri7z3evHtHvP/1r8WPPvoIaTKsapMN%20rNRoqdIJDClX8OTwGn/4h/8xfYhpumg9w/EurDr683NUdOAcrrd426VL7a7BtR3OWVbzBUoL9nf3%20yLKC8eEuz5+9oG1bYoy8c+8uL85f4JqGZdfg2vR3mV4uOZtdMZmeIx/c5+adt3Btx3I2o7M9vXXk%20WUaR56y7nrrrMFqzmi+4uLjgjXfe/ruL0flsxbPzOQFF8J6hUnQikOMwQKEEWVpSbaYwgfjEoIif%20H36Sq5tKpSjt9BFREmJyV0ybtU0tkp90Ri8/h/y5M2yNetU+OQI9gR6w3mF7T/ASgYHYQ5RIoUGm%20W4IMcHXDrVs3+Yff+MZ2PtvitYAZlXzhK1+m/Bf/IvE7m/FMxKQoCDHSeUcMgWo8RGrJ+bOnTIYj%20QmdZfHxGHgSTaogUhhAFJmRkYshASoiesLFhNoMcrE0zHfD2Wzd4J4o0w4lIu14TrKWoBizXK2bz%20OX30XM5nLNqG+48e8r/+n3/G9370A3YPj7EiovKcvaMD3rr7Nj/6wQf4YOlsi5SSrmlZLhZ/N4Hd%20wR9958ePeDHrkLJCO4Gsl5TaUGSGIRXvvlGhHASbRjWlBcH5lCMWYxrVgkg8NuDRQMQIgbObMUxB%204wJ1V6OUohwUhBhQIg1yEsBbBGHTEUnw6YCyFRGrJS9Wc067NVk5Yvb4Bbb2qFDQu5am7hlJQ9da%20jkcT5GJO13T8F7/ze7w3qYRP50pbbPH3Hl/++lc5OD5g9fAp14ZDpss6JYhoSSCSlRltW/PFL77L%209OqM3UnJ7Oo8manKVBCs6ahxhCg2dj2aKASoDJQEGSkHBeAQMtEfMUZc72mbFFutR2NicGRCMDi+%20xhvmTYQQ3LOe4D0Pnj7m/d/4NZ5dXLJylrntITP81fe/z5/+xbcYZQXrZo2NnlE14PT5C2bnl397%20MQrw1v0F/+zp2ZT5usVlA4QE2btUQduOcTnBd9AGS1toVr3AmGT7Qdys8GMSpr5c2KtXZNBmdNuQ%20aSnmJOAkyBCIeIxIMb2CmJJdo9rMaxJ8JCpBrwVLYEmgjp6mi7R1B1ZgG0vfe+ginbXIEJOBWtty%209/oN7t66lf4+20K0xWuCW3duiy984b341x8/xQhJoTWu7yF6IgEpDQeHe4xGI5SMxODJM0WR6URT%20xEhDS2sEXmukLlH5ADMYk1dD8sEAU2TpTic6wEP04MH3DtN05H3PajEn2J667an7nnnTol0giwIl%20JDu7u1y7eZOv7+zC4T7EyLRekf/Jn/DX3/ku73/+S1xdXfHt736XJxenyBCZXl397cVIwv0nT9L+%20f71eU5g9pIhEb0EKmlXHwe4ezoGNjj4KFp2kyiTZqzujl2pYT9jYZf48OZ2qcoRXmWUxFQwfUBtW%20SUqRrrjDy04r3RvVMtJpwYzAWeyY+45eRFZty7ppCM7T1jWh6ZKp+LpmYAMxBmzdcu/zX+LevXvb%20p3uL1wpKKb72q1/ne//qW+nWzxiiEOgokAGMh1vH19gfjsEHemsRSqKzAi8sznkaGWiKDL0zYWfv%20mNFkH1NNIC+SJ71i4/HjeLk6AoEKUNlA5Tyj2RzfNDTzBc10ip2t8PRENjQIsG46Zu1zxPQKbwz5%20aMjhZJc7t27yW7/xm1xeXvLTj+7z7PQFWkhOnz1ndXoZh8f74pfGtKdPn3JxcQEhokQ6QQy+w+iM%20vm/Z39shycYCvXcsG8fOYEi2oYy02CR8x0gMLgnzZZrLAjLxQiFlKUkBuVIoqciQSCnT9yNsmqjw%20Uqcm6YRgZQRzAmeh4el6zjL0BCNplj226xEhEpoe2ft0JNlZVAy4tkGGyOfuvMl7N7b5Z1u8fnjv%20vffY2duFRY3WKdUvkwoVAspaTiZ77FYVGkkfHShBh8eJQDEoyQpNee0QubPD7t4xYrwDwqS+IYCL%20PgWobnoHKTc8sFJEIxARdDVCNy35aMFgUNEO5rj1mrBusV1LZgbEKAhdi607graxUfaJAAAgAElE%20QVRkRUEeJQNpePCTn7FarVLopJAoAufPT1FKTv/WMe3FJgo6yzVGCVx0BN8jo2IyHHIwniSRnu9Z%20LD3CWYa5QI9zSiGJRJRInU0Mm7V6SHFACAkqYhDECJp066CUwqj0XXjZCH1CakuiBCegBc5xPO0W%20PK3nLLXCCs16vaZvWqQDaT3aR6JQxCAwURA7y854xL27n8NsS9EWryFu3LjBG2+8wfMf/ZRcG4TS%20FCiMiEjnGZmCSVmRmwyvBVZBHyMYQ3W4j5mMkW/dhiwHmUNQm4s/UAq0VkCZXnz4Vy/CJNFKW2wh%20SZ3URJKZjGw0IS4WzF+cU19Y2t6SS402OUYrXPDY5ZrLp095/NOP+ODffY+273jx9ClFmbGwHbOr%20K8q9na/9UjF6uuSj09NTuqbGyAHB9wS3IXiM5NbxLSYDnZwWQ2RVrzFCMqtrylIhsgxQ5BuuSMqN%20IYhIZwGwOVpUMcnNpEpE9csUjvjJOy9+PkEEemAKvHArLtqahW2xusJay2w6pV2sECFDdg7RWozf%20zKEBXIjcvvkG797b3hZt8Xpicu1E3Hv77Xj+4X1knpMVOXkfqGQGwTLJSjKp0DGZrQUJXsTECR0f%20wWgEeQlKp5f9SxPDDdUrHERrEcJ/8kIUMd31KY2QAtd3aCFSQdMaqiGiHFD4QN13GBdxXYfrejIv%20kC4gJVQoDqshH373+9TWkmVZKliiZTWd05/PPsqOdz89ps3mNaenp6xWK0KucM2a3mtMjDgtKIi4%20ZcNgnJFpg3cQomC6aMgzTawUXkvQijxNnEljFtO1UNgcLYpPyWM32rMY8QGCkHiR7icDYIE2wEJ6%20HtZXPF1NqV2fVpRCs2o71udzwrJJ3Na6o1+sUE2HicnqX0u4d+9zvHPr+rYv2uK1xVv37vLdPCcf%20SGLdoZsVw1yjtOKgGqIDBO/xMcDAoAcF46NjODpMV8TWp8M/k8YzIdO9X9dZbLOGtkPLgFZJgB6k%20JCpNNAF06qSkTjbPeJlaGakofGBPKKZPn9F3LRJBluUI4Qi9JXORKkrGWUmuMkRZsnSW0mQ0qzVX%20Z+ecHO9+ujOq65r5fE7drJAxIwZDICcIQVSCxeU5F8+fM1AH5CNFiBIXBJfzOnUhakAw4iVFRIgg%20Y8r8FiLxRC+V9CEGpEhX2ekbCEGm+yGnJB7ogDpaln3H3Fuenp0ybdbIMsdojRYK1UXiukd3Edf0%20iKbHrxpE26B8QMbkrX3z+nVGEi5X9T/dHw7+yfbR3uJ1w8HRISozFF4gshzvlxQoBplJI5rU9CJ1%20RqooyHd2GZwcw3AIvYUy34wdPc4rglR477Fdje9asuhQISbulYiNYIXE6YagM4ajCV4liiXEgAkx%20kd/jIYUQDLuedQQX6qS0cB67anCLJdQdxkekNLgAzWJJUQ2IvWM+nXHCL5xMP336nAcPHlBmOVoK%20VAzIYDHCg20YacP//e1/y+XzF4wGFQTFatkxHO1xftXw8OkVT8/XnC08qz7xPFFJnFB0QWEj9CF9%20kV5InJQ4IfFGEzJNKwW9lnSkFNqL2PNoMeVn58/42dNH1KsG1UPmJLLxqNrRnE+5+vgJpvPkNtJP%20l2gbsOsGW7dkWmEyxfvv/wMAtoVoi9e2M7p7l529Xby19G1DpQ2h7TnZO0AjcD7JLJyIkGl2blyH%20yRichSIHHM631HS4PEIuCQV46ehiQ6RHKs9qeYmSHmkiZ9MX1LYmCoeLIfkRSUBJ7Mu7QimhyKn2%209ygnE7Iip+97MqlZXFzRThcMhGZ/MGJSDJAuMC4GFNpwcXb2yg/7U53R5dUVTdNsNmkSqSLRerxt%20sL3gC+/e4/TpA/7iW9/iavqCb3zz6zT9kgePzzg5OWLZB4KIRBy9V4xyqAxkGoxSOJ9mUIVKhDYb%208V6izLBS0m66oYXtuWpWTNdLFl1D23cYDJnRSYzrHJUskGtLGTR10yGdRnYOeotyEWMUXdNy4+iA%20yXi4fZq3eK1RDgtOTk44O52mMAopGWhFrtUrG5CoJDI36EEFZZFGMpfokNC2WCwOhVACaTwSKHLN%20IJbotkbajklV4uoVDsn1w31CUSCyHLXhmCDRKYhAkCqNbUIgxyPyVY1f1MTGopEUUiOsxy7WiUMS%20Au0jMqZzHgj0XffLxejs7IKmaZNUIzhUCEQRyYQhzwxv3bnFmzcP+Mu/+rd88LOfcv3Nm5zcOiav%20DnBUzJYzlk3Poo6UK8u4UIyqjOFAkWcwKPQnEpLNn2k3bw64WqxpvGXlOpZdw9p2dN5hkZispIoZ%20A1OwbGtsGyi84vLJKdoGaDzCR2LT4/se5QMm1zSLBXe+/mUO9/a3T/MWrzXU8aG4efNmnP7oQ5xz%20qAhGZigp0UYlXkhL8uGAfGcHyhKUAe/BeuyqBhGQJiMCKgpyJRFKQpbRPHrIiwcPORiPU1EbVFS7%20e8SNcj1KkZZsHryzxOiJMpDJRM0wrCjGI+x0Tj9fJgN+pdEe2tUS6SNSAi6ksyGfFlrtuv50MeoC%20fzSbzQghIITGux4fFQLNYJhxcLDHl750wOUVvLh8wb/799/hX/+bf8Pv/uP/kFu3b/D8dM5o/wZE%206CP0vme+6pHrJUZ7tApMRuXmfiGt60MIWO/ovcMFS1QSGwM29HQ+ENBErSkyk9aYyw7tBL62yCiI%20refFw6dIGylNxqppCL0l9BblPSpoXG+5d/stJor/Zvs4b/G6Y7I7xnYt0QeEUFjbEWOgKAqiTPYg%20elCQjyowGQDOBXzf47oeRUSEtKo3yiOigLaDuqa9mPLg+z/kTClObtwk29tBCMXg+BhRjBAybb29%20d8TgcN4TZCpmuVCb+J6CLC+xUiL8Jqw1QujdJzZBpItt6SNCwXq5+nQxmjX8s/l8iRCC3GTUNhJd%20TwwOES1lbviX/9t3GO9P+PxXv0h1tMO//NP/g//hf/kTfuO3/gNObr5JtwqJPDMgVZaicaVD64AQ%20nqfTGqkEWhmUlgiRUg9CkAQ0fdMmglsmCUj0ASEjwQpkTJ2QDx4tNHlV4LxnsVigVMHAZCwuV6mY%20uuRiJ7xilGd87tYb7MGWK9ritUee53RdR5YbtJXYukEoSTkaEJTAETFFgShLEJJgPb0PhNaik5CC%20IDxKZaigEj8yW9OenWKvFuzqArteo9Y9i+acxbLjnZ3DtIULG9WEsxAsMQaiVCAVGA29A6PJi4JW%20KVzTYrs+6VaDQCMJQqRRTSlE9AghWK/Xny5GTeO4nE5xziGzJO3wMWBtz2q5YLGc8t/98/+e4e6I%20G2++we7BIfloxMNnL/jn//MfY6oR490jdFEyGFaUw5yi0phSYrKIUpCXg40PdUae56hMoTVomQz8%20c11itKQ0BiNAh9QT6pjOCnRoiL5lMBigR0MePX9BjBElJZ21tH1PdD4dXUYQPnDj5Dq3b97aPsVb%20fCYwGKTX0HA8xiw6hGgpqwozrGilwMpIphXkBmLAbRT4USiiMkQRCEonYzUhEDFQdz3L5YqP7n/M%20WycnDLOCQVXxdLGkUTLdJtU19CHJrILFEbBCIIJCKUX+ksg2GvIMrTXee5qmoW/bV69LKSVaSMxG%20j6oQNPUvjGnL5ZLVakXf9wh6rAVlCoSI9E3NYjFDZBJZZDw+e86D81OG411MNcZmAlWOWNoU4TEL%20NbFeg7QE7RDSgYxEoVHKoLTGZApjNNok9bwmUijBQGtGRlMiMER0CBgkpQycTDL6rkaVOSI3fP8n%20P8EGj9aKermm6zrwPsVkb0zb7t6+w63j4+1TvMVnAqPRiGo0ZOglYnmGygyjyTi1PEriY0zFQxsg%20SToyo3GFJOhI1IKgFU5LyDQqBvphQRiWiMmQ8uiA4f4hBM9oNCQbZNQykotkBISzRN8TCMkxMkp6%20pcikxqhNOREgtELKzdmOda8MFF++LqWURJ9kY03T/AJnVDfEjUNicA29iwy0wSi1EcsGxgcTrI+I%20TJPlJQ4FWqNVhgsRqWQi7nuP84Eo0+8TWiK1QJmCGAXOC/o2IPoOCIgYUHhUbykUDKQgCx7tPMpb%20MinIJdx3DX2/JK8GRAU//MlPEKZgbzdDhzW+68FGTJ5mYh0F14+PuD1S20i0LT4bnVE5ZFxWFGtP%206yBTmrIs03/CIvnG65cRYSEFZZDplJITIjJLGlBHROoULZaPKsLBhK/97j/ELldEJZnOV7gqJ9/d%20YeE6TibX06gmNJlVhOgJeByfKCtgw24Ht3Gi1MgoUEGio0RECchNkLR4VZystb8wpq1rbNORCUXr%20HIO8ol6u0FpTDIfkxnDj5A2+/9MP0EWJ8oq2dujCEqRhNN6lbWukyciLEpXleAK9V/TOEkRA6xbv%20HeWwQkrJcr2iKDJGwwGua3F9h9eQj4ZgW3rXMRhoXEgEXB4lg+oQhKfvao7G+wipKfpI1nrcdMmo%20GLK8vODa/g7Ejttv3qINYOT2Qd7i9UewnlBbHv/0PtdCRq5MigEqh2ADedAwb+BiBTt7G97IoTbK%20CIInE0lkm+qIp8wN+fEB3XoBQ83KOtSkxKgcXQwYFsPkt60KyDUqyxhoSYbHRosQEakB24KCEJIF%209E5R0ixqYucwQqMkOO9QOsM7h9E5mdK0bfvpYuR6i+t72qYhqopBUaKkofcpOXJvZ5f98S5G5Myn%20a3QXMeMhWmiWq5Z68Yzd3X1yrTDW0nc9jbVYwibLMaDHefLRti61jx6ME4guQB8YF0OibWmXNYQO%20IwTBRWTwaKVo24AUIEXA6JK9yV7yv+49i4srlBOEzmNkBiEyGlXs7+6xDSPa4rMCoRXDnV2edpZe%20qaTIKArwPWQl1jtM22J82CjyHa1NkdgFFuEdMQqiEEitkZkGDbLMUQzw2A1XK5Eyw+gBUhWgcnBJ%20BQIpZ14IiQwSpVK4JEKCa/HWpeIV0/2TQkHYdEqbWhA214UhBLz3ny5Gbdu++qBS6tXHbNfTZhne%20ez74mx/SLVaUeUEM0E4X9OsOkw3Yneywvpzjix6tso1HNUijUFqDieQqfRFlZtLRVMxQSm40NRET%20JNZG6tWSMhOUZU5Yd1jbozLNoBwjRcS2PYRIZkow0DYrms4RkLSdJTcG7z37e4e8cfMGxbYYbfEZ%20QVcozP6YtY4scQSjiDsDFlhUOWTtO7p+ReEahExmh63t6Js+CV+9IwQQSqODIFMKYRRIiZQaJQRC%20J65JYEDkrxTrNiaZyEt9afDJuE0INteQ6Uygb9vNz+lX5LkPG996Ij4EPAGHx+LSmNbZP/qEM9pc%20QQ6HQ2w0LJdLbNOSV2mkujw9Q+gSaQPWNQTjkMqAd7i+ZdlNIQiuzmdE65FFTl4MCFKAUchSYvsF%20WWWI1hEEtE1PcI7owNuOmRRoAvQ948M9xjs7RNVicsiLDJllWJ+MwxftGiWTJW1TW+LGh9vbDllm%20+L5nb2+Pa8dHW1PHLT4z6IF1sMhRyXLVMhxWhNJgjSRt6gXWtsyXU3baMYzGFF7SNR1B6hTvJSVS%20a4wxCKlT7NEmqTDlrwqESEH1yTYjySSCTMVEBJ9ew94iY0AoBU6C99jVGrdukzA1BAIxuboGTxc9%20fXDY4DeFyONj8t/2y/qffjKmBY9zDmMMXRuwNnD91i2++tWv0jQNP/7RB6wvavJqjFIK6yLWWoQR%207B/ss7u7z+H+ER988AHPnzxHRokSPV3fEUREVYamcQzjhEyYRKj1jmbdUK9q6B2K1DXFtmXqFXHV%20E51lPCiJIhILg8gkF5cLVospRPsqqqhpHUpm+Nglktw59nd2eHO45a63+Oxgvq55dnZGPh5Tz5ao%20qqKTkWgUNli0UfTRs7i6pBhVFIOSgdF0RiJCTO7yIrnMe5J/iEQQo0BlOVH4lwNhkl0JvTHkT4fc%20Dp/MEa1FBo+SyQ2SEGBV00wX2KbFRMBHOuvpg6ePm/fB4wj4TZGKm0AOodT9V8VIbKJ8XNfjrKAw%20Oe/eu8tvf/M3efbsGY/vP+TFwyccHJygi5Jl17JoWkzU3Dy8zt27b1NmOYuzKevzeXJ99MkSM0hB%20LjROKSpdUqocqTOGhSKTNbGR9LJDeo+KOW3Xc3664PzpJVVpyG/eZL6c8+jyObuHezSrKW2zJF3A%20i2R4GyRSS4TOCB6kEOzt7r7KE9lii88CltMZ08tLhlqzsBap1avXb/QBrQTRR/xyQX12RlEWMB4x%20MToFnbpAv8lOyxBolZNJjdAKH3tAEDbWPknvFjc8T1Lqx40eRJBkILnSqRB1Dns5o57OkdahhcQF%20T2072uDoYtq8eUFyAREyGf8jkVohcvNnr4qRUpu7gJA8rKWULJdLHjx4wPnpGfVqxc2b15kMhlzM%205vTOMhwMUSZnfnnF92bfZVhOOHt2Rl93uBDQnQMNxmiiDWifQafovCMvM6rJGLKMhehpXSB6RcwK%20hPZJZxMtN978HO9/7X0ePLrP4oPAZDLGdy3NusZvnKEUAiEzRBRkZgC+ocgH7O7ubp/eLT5bY9o8%20OVfIPqJjIobLrET5iIoiicRjkoVwOaOPguz4CLm3Q27AK4XyiccRWiefIpmcWK2NhM1BULL6ickU%20MYZkACljknCIZEmdC53W/XUHiyX11Zx2tmQQDUoZvOtpeksbAj0RKyMuRNyGe/KbtxACobO/96li%20lGUZxhgyKen6lr/5/g948ew5XVtzeTYlOEOeVfS2w9lAH9Y0dsFy1UHUePsILTSZKZExIJVCFwZl%20NA7QYoCwhr5LBSTfGyGKCmMawBFEAFmBkfTB0nuPLMbkO4c0Dx/xe7//B0jl+cH3/30i1/sG5yJ9%209FjryHWO1AZ8S55nVFX1izFuW2zxWkO6QFVU2OkKZTJijBSDAZBuimzfISMUWUZcN9S9I1Madseg%20DEW2kW9Ig1Q5UQi8SEGoPgqQm7BUIRApgD4JZWNM6dHpl2DiJu3HWViuWF9Mccsa13RIo5GZxMVA%206yxtDHRC0MeYtKeENLLhU7CHd3Rt+/6rYhQF1G2bDhSjJMsUR4fX2ZlM2B0N+Yn8iKZ2nJ0/o9rZ%20x2Sa6aomKkNTd4DD6BIbJRKVWi+tcAisF/gA9IaudXgpWa3WnF/cx4sUX63znZRAQsBUOda1ZOWQ%20lTR876OHdFLx4YNH9M2UR48e4WIgLwdo75HC4G3A9okMk0IxWywZlBXPW+L1YluPtvhs4Pz8ksfP%20nqPnc2LXMDk+wklJ0IrWOqTUZIBwAe8twnrq0zNwHYO3biF3d0FrYu+xrsWUBVqqlOwjAamIMeK9%20Q0mFlskNIASP8A4VYyK9tYB1B5dXLM8vaeZzmtmaSTVEB0Vd19iuZVqvN51RwCnoQ7rcbnuLMJp2%203aF0Osp8VYy0lmRZhpQdd+7c4ejwGpPJLtOLSy5enDK7umB354h2vub89CmDnUOOTg6ZLXvaeUM2%20OUQKg/UCFyLRS7TSSGFI3aSibSXIDKk0USpi1EShkEaBVng8ymyutb0mOsuTq0s+fvGU9uIZoxL2%20hiYdYpqMullje0eWRep1j5Qao3KMCUjboXXGYb4tRFt8Rviix5fx6fNniYOp11RKUsuAHo+Qw4re%20t0giIsqNOj/Se0vbrAnTwNVHHdXxEbv7x2kiURqsA2vp+haUR+jk8SMBpSQqUxA9aiOCxTtoe1gs%20sBczlpdT6tkM13ZU2SCFsAqB0Gka6r2jDo5ebbginQIjRVDpx0alrd7PF6OiKBiNRvz4w0f4oHj6%205AV4mE2nSB8ZjUZ43/PGmyc8v5gzvTrHSoOXBZiMrChpu0iUkigNUmtCnhONJuqUMCBCjjIGoQxB%20itQVbTxqBVCOx0TpaJsVLgSKKtukh3h2bhxTuRWr6Rmz+QV7+xO+9KUvcefOHda149vf/ktm0yXa%20GJTw+F5hHds0kC0+MwhKsGhr1LCkOQuY0rDOJN3ApKhrBHojg8pUhtoUj05Egrf42YzaO/S6pxrt%20IosKsgIyQ2EKCF06XJSvsnnAxiTxcAFmc+h7WDe00xmrqxn9qkY4T47Cdj12Y21SmIy161jZjiZY%20vFK0rqcnpHsllTyShFYU1QA1yP+nV8WoqirKssQYg1KKs9NzXGcZVUPuvPUmX/nKVxiUQ27evs3D%20Fxf84IP7TBvHrA7MlGO1WCHMEJkNyPMBMsuJxiTPXCmIKDJdIVSGkDIFNWoJWqQoIhxBCbI8B2FB%20CMpC0TYr6n7JxEBTL3jz1jV+//d/iy9/+YucnBxicvjBDx/zV3/9PbKsw2iDjBaHYN202yd4i89O%20MQqBputAJcF6zAyjw0N6nV7YypjNsWHqTrRMfkYekD6gwmbjddnQZxeYvCIvS/LhGMYDMCoVIhk3%20mWEiuR66AC6yvrxAWItrOlzdEruezEeUMkitUDqj6zo8ApOXrLuWWdswrxusdzTBYUWkFwEXA05I%20pFIMhhW6LP7bV8VoOBwym802Xik9zjkOj474+j/4Fb76hS/xztv3eOedd3h2dkbrPKvbt/CPzlm1%20a46PD1nWnvnKY7IKU4wJWuOEwAmFLDLyLMd6hVZZcpZTkBU5WaEIItD7GqMjZSGxSgOBQSEY5BnH%20uwdc35vw/t3f4WhcsrM7RmjB1fQSbUr29vb4xq//Kv/6z76Fs5bCZJi8oOn6LYG9xWcGDz+8z+nT%20Z1ycnSOjQEjN4fEJi7phICJ7OyN0Z5O960aYmkVNFCCCI4sqJehEB84R6xVu2uD0HJ1veCAZk43G%20RljrncD7SIwpcNVbi+gtmY/Jr0wnL1pHZNmsaHtHFBJtcmb1isZbepHsRoJMZz7WB6IShJCOlquq%20Qmj1yWq/qNIqvCxLrLXs7Ozw1a9+lW9+85u8+7m7VHnGIJMc7e1w69oJ69bz6PmUQVFydPMWi1XE%20PTlHmiFS5biYZkaUxhRD8tEIu+qJmUFoBYRkxG8UkZ4YI3lhyLJINRhQmpK9ScHR/pibN45563qB%20aiF2Dav1ghhjOh8wOUWRc+PGDUajEVcXl4yKgmI8oe+SAkZuC9IWnwE8+fBj5i/Oscs1WYiYokT6%20yM9+/FOKIuNgZ4zuLZWLjKWmkBqlJcEoMg0HMiBCADKIa4TMMEKBTmk8ysjNnePGlyipylAY0Arb%20riEEpA8IITAqUTDWpUPGsiyRWcBGMIOCzgeikgSlCcEijUFLoEuJt5GI1Kkzgp/TppVlSQiBvk/Z%202e+8fY/33n4HieD5s2csri45Otzl177xa/za197l+NYdzPCA7/7gPqvecnExoyyGoAYElZOrIh1k%205RmqKEAVhDwp8osyIwSHEFAUAqNzYsgYVYK9Uc7NazscTgoK7agKRVUIfB1ZzS4otEREh9IKoqTt%20akY7Q977/Ft8//t3aeuGoshBdEznS8488Zra1qItXn+cP3yCv1qyZwbEpuHW3hG5E1w+eoExgmdt%20g7GeiReMlaZUBq3TSFdlkk56SgHWS/oeoiooyiHCaHwMlOMKj0druSGVk6ZMSoXKC7KD/Y2Bfbri%20RgiElOQ6w2hBzA0KsCGijaGxHTZ4uuBYtzXlsCRE8Bu72iBi0pxuThNeFaPMMN3d3d3N85ymEYx3%209snLEWcXC5qhw3Wev/nz/4tVF/Ayw4wPyYuK2aLm6VmNo0IVJUENUPmQrBhQlAVBJ1/r3jsClryQ%207E6Kja7MMRkaxpUm15Y7NycMMjjah2EOfa3JFGQSVrMZx3sVksB81ZJlkohmumzo1jWmHPDW3Xf5%20+PEzAp7Wznm+nDFr4aTadkZbvN6I1vPsowcsLi45OLpB7yK337jD3s4+O5dnKC1wKIz2DGzcyDHA%20uySMdb1g0dWQZeAVfWuJoSGaGus86/UKZMTFkK6upQQP1iazQooCtTfCaQEkEzdLIGhJLHLIM9Y4%20dDlAlhV7+wc8fviIdVMjtEDnGW1nCSq+GuWcTr7ZRVF8uhgdlOwZY6JCMygHHB+/yc8evAAhmUwC%20N2+c8NaXR3z84gonMvyLmoVVqHyME55ycoIZHjNdOlwwlGYIQrBuanSmGU8qcu8Y5S05jlI69icZ%20d25VvHGtYGcIpQZDJFObhO8qQIhE7xnuGPpmgdCRg4nCRYezgZ1BjnOBtg2895W3+MHjxzw6fUQr%20hvx0dsmzdeRuJTDb53mL1xiPvvM38fTBYwo0WZ4jteBiNWdWr1jWNdE5dkdD5rNzJodHzKczKqWQ%20IWJiRMiMxucom1PpDNtMORiN8E3HSCiGoiDPDG3bIhDELlIoQ9u3tE2DGuVM+xlLX9PbpDVb9T3T%20Zk0vBZQ5a++pg6fxgXI4pByOqLKCKyHwIeCCpwsBU5Q0sce6wLioKPJf6IwAbt++g+3/HI/j2bMz%20pBnQeWiiIeg5vquTXaQKSB15/OICGyW/8rVvsGgFP/7ojKgHKCPwrsUoxWSgicLjVqeMK8uN0Yg3%20r4852su5tldy7VCxW0GhYFiAEREtJC8nq5jEv2mTYDW966htR91b+hAQGvpYEIVEjuHtL36eq9iw%20cgsW3nK6XPBsMolvbu+NtniNcfbslOn5FUpp1m1L2zaovEBog+0judHMp0u6zvLo2SkZgbX1VFmO%20DC39umMnq1heLZnkBYOsQEqN8zVFPmA8GbCaL5jkQ7RSrBYrQt1TyZxMwXy+Ro4NmZBABAGlzgiV%20oiXijcaThPPYnrDxv37p4hgFyCzHEOmCQ6kMomM4HLO/v//LxejGjetkuSYrJiwWC/KBQJiC5WLF%20xeWMa8cnrNYrXISTG7fpek+eV7zzzj1+9uAFhzsrTi/ndPUVO/sTRHB0y5pr1w/50hfe4O4bBYe7%20mv0dw6iAUQajAkoDKvTsDTIUAr2xz4SNGV0Ai8TKgpUrWLYdq7ajawNNI6glROfovebunUMenh+y%20XDyn7654cXpBd32yfZq3eG3Rny7jD3/0Y5brGpMNaFrHet3i+sDlxZzz55eMRyXtYsW4ypkvVhzt%20Tqi7Hik8oe+ofcvMztG9Y3jrTQaTHawNLJxl2VyxWszRWm8OnyWuc3R1w92AAi0AACAASURBVGQ4%20YTyqyEXJ89UlrU6p0I13dDGkVGg8ddfTxYgTm7ixzhNdZN332BBBSYIAhKDvLSI39NZSjYYcnhz/%20cjHSWnN0dMT+4R1syDm9mDHZOyTiWLeWDx+cMtrZxWQFl9MVKh/wuXtvU5WCZw8/4sXDJ1TjCXlp%20kO6K45MdvvLlX+He2zvs78DxBCZloCogl1DIyKgQDDUoMoJv0LxU4iezprDRxfQYnBRIDcUwZ1Ll%209B0s1p7LWY+rPU2jKTJ449Yxs8s91i8W/OzjJ7j3P7d9ord4bTGbzXj8+ClKF1jR44NAqZzzsznR%20/oRHD56wM6wYZBk3jq+zW+1xuLuDmzRJq4agr9f8+Lv/nnFeokzG2ek5drVmr6rY39mlaQ0Q8F2N%20tZ6qqjhdzLFnZ4wHI8qdETPXYo2mdZZlW9PGiM8UXYwsbItVkjp42hDQRY4qBHVvaW2fVvrWITKN%20jxEpBb21jPd2OTg6/OViNCgKhoMKKTXjasJPPnoGpkJpx2jnkNYblq1knOcolSMF3L9/nw9+/CHC%209Xzh7Ws0qzUnx0N+/Ru/wt27GVJAZuBwF8p4xY52TLIhg8yQK8gEiJg8UggxtUIbph5S4BshUkpB%20Gw2FAAMMBPgCCqVQsUDpQLTQtJbbt444fbHP49kpP/7wAYv2t3kcibe2GrUtXscR7fSci/MrkIZ1%205yiynGo44eJ8yvTskq7pUF7wfPoc4QTRO/5quUApRbNecnx8jPA954s1XRGQ+gLlI6vzC26dHOOy%20jF5EBqMRmTE0ywViZ0I7nzLr1yz7NcNWM1vXSQPnLYu2posQc42VsPY9vZJM10u6GNk9PKCUitZ5%206t6iMoNlwwVnybJEGs3J9WtU1/fFLxWja9eusVrV/Oz+D/jq+9/k2slNdDHk7GqOEzVkOzR9T93P%20MHqBEJF2XXOwv89/9gd/wGI649aNQ04OBVJC5mE8hjwDVpfcfmtAZVpyHTE4QIK36eTcB8jyT8K8%204ZMVmAKQmLA5Ck3BB8n/14CcCIqBgjVM+569YcXJ8QHz5xPOnr/g8Vnk+lvbOrTF64fmtI4/+N4P%20+fijB9jGYr0kixKjB7SrNdE6dkc7DIuc/Rv73Ll9l93JhOl0ynhnxOPHj7m4POPpkzN2yhFt9Mya%20nnFR0ErF2bomXF4yHA5AK4ajip9+9FPcsyecPj9DS0WZlZQCZosVQmosgTY4eiB4R8gUTorEL7vE%20CeW9hd7TuY37RhA474h9wEmSF36Rc+3mjU8ms5//wo8PDyjLkqvTBzx9+pz949vockI+3McGw/1H%20Z9y8/Tn6bk3XLLhx/YQv/uav88X33uTmCVyeHmEklALKAny/xM5XnNw64HNv7yOwSDQhpvqTxHiD%20dLcAqcL8fBF6Gba0+aCKkEdQkf+HvTeNsuy67vt+55w7v7HmoecRUwONeSAJDhI4iYytKLJkL8WS%20YmktxYmdr8pHKF5ay/mQD1nJWl6SHVtyIjKWqViSKQkUQQgkAZIYG41udAPd6Km6a6569ab77njO%20yYf7qgGIpCwxCkMptXu9Hmp41XXrnv/b+7/3/v8phabaxlEoV+K5EAOzucuGKdi/MEV3dY7La5u8%209ubbPHjirr07ey/+xsXm6gYXz11ka6ODm7m0J6Yo84JRWuKMd0BDr0E9jHjkwYeQAlbX11hZWWe/%208tl/6CSjUtKczJE6w+Y5azsDYjdDolicmWNqcYHF/fs4fOIoBsu3LrxFdzRi5Dl4jktmSqwjGRqL%20wGIdhVaKXBeMsgyjFTZwKYRF+B6msOzEQxJjScsSIxXa2kr6KE2QvgslhPWI+e8HRp7ncfToUa4t%209bi1vEqiQ2bmAh545AnqrWnujw3b2ztsbS7ziZ/8PHecdNjegoYP22vgKYNDSZmmWAHTEw4z0wvU%2065AkBc1QIfBBVBopWkORWcCihMB1q0oNuyu7K7BjnW/Hgiwr00pPgKISaJLkGBzAoe3DvhmP3mbC%20/PQky5MtLJKXz5zjv/jkXRxusqf8uBd/o6IclRTDhGatSZzEzO1bZHNtnbjbZ7LeRAnQpcAal5WV%20Daw2rG2so9yImZkDnLj7Tm4sbzJMDW5hmJ+cRuGhBESBz9z+I6jAY2uUMAt0h0Oub2zghQHh1CRx%20HNPr9RFhDbfVBATCdcCRZElM1i/JjUZZh1SXOIGPNZreMMbJcxzfq4YqjUb5PkWe4MlKGSBs1pmZ%20m/3eYLR/ll9pt9u/kWUZhoB+b0R/tMTbV5cZjTSN5gxpmjI/N8H0xEfJh9AMQKcGSY60BkyO5xpa%20jYipiYBGA4IQAumO85tqeU/I6qHe9z8obSVvCRUYjXGpSprEuIKzVOqOwiIwKAy6GmZnSgliC/um%20Qq5tZZw4dpTtlQ4rb9/g5Te2OPrR6X8+Bf/93i2+F38jooDnnnmWbz77TXxcPveZz3H63vvZXtvi%20mT/8MhvLK8y2p7BWcPPmMrduLNNoNLDWMhyNWLq5QfObL1MUBUlsqdUaZAkY6zOIY6xxuHx1GSNK%20OoMdiGqkOqM+PY3re6ysrBAPhjSbbTaHAyK/hhWKkyeOEdRrvPn2BVxtaDTr7IwGTDQnGWQJusjA%20cUmKErRGKIV0BIUu8AKf0hocx6PVbnPk6NHvDUa+4jcPHDjwG81mm0K06A0LRFGlWWHQxBEeSpRs%20r21x8c0lHn/sIGUOukjwlcVRFulofE8SeALPA1WtvlCxPlUFJu0YXOx7ldn3iwp/xh8lxmQRlXul%202H1YiwU84RMKqLkQOoIo8JmZmWHr+iYX3r3GrdPTvzrV2gOjvfjRDzMwlJuZfe2Fl1jZusl/93P/%20hM/9xN/F8zzSAwnT7Ravf/tV3jpzlv5gyPzsAsJKhr0+WVbieQ0Qgu2NAUopZib2IYuUMq/ceJSC%20vIC1jR1SnRAXQ37/j59h4cACq9s7FKZgNBoRhAGr/U3mWnMUQlDonHOX30EFHoXRFI4lHvaqjfwk%20JilzClstwiLU7cqmMBorDKXWSN/FCphbXKDRbn1vMCoNT0202ijporyIJLdYFZJpAcIlyzRhUEcY%20xfVrSzxw30FCD3IEge+gyPBcSRg4hJFLUEkd3QYhB26nO4r3/bkb4/IM7JgPqmbaDQaFBLz3dmPG%207wMQxuAIjSugrqANNFxJ7ksO7d/P6uUVzp5/i3ceOMLJB6YJ9+71vfgRD9mQfOv//CZnvvMan7z3%2043zs8SfxXUV3ZxthJadO3c0dR49z+f4H+NbXX+DMmTdxcZhqTVGL2gyHI4pc0Kq1sAYGnR6T9YAi%20H2GNInSbCFmSpkMyC1JFaBRL6+tY10GXBuG7PPzYo3Q2t7h8+TKRH2EUbO6sUGKZnpmjkJpuPMSr%20R2zHXYy1lQSSkghHYrFoXYn5CwmlNYSuixWCEydOMLkwKb4nGDmSZ72xYWOv08XxZymEg+v55KXA%20dTwsDmHN58rVG5x5Y44f/8QJtHYpyxzHFbhKEvkeUSDx/MpWunLYrlwqb9dd9s+lPxjAIqypzObs%20bs5kUIJqFBtTkUa3P338fNaOZVgyfOXToMqMXDRzs5MsLMzx8jsXeO2td7j/nmm74CDICxrB3pLI%20XvyIxrK1v/2b/5q7Dh/nn/7yP6YW1tjeWMMKCLyAUTLEky4PPvoIhw8f4dSpc1x8823WljfY6Q6o%20BXWaUUhRaHRhaEdTSAzGaoRRGKFQwgVH40oXEcCoHNGPB2QmpTnR5Kd/6h/w93/mp+lsbfPF/+N3%202NzcJNcldlWyvr3FZq9TuX/YksiDJE+xUlXWRlJWvIoFKyzGWNzx2RVCoHyPEydOfBCArTVHP1Cq%20OS7T0zPE3R5ZUTLqD5HCxUgH6TcY5BInbLHeifnqcy9SWnBclzTPsNZWwv6+Q+hXKx7Vl9cINIiy%20AhRRvu9RVMXx7kMUYM17hJF1QDtjD6cKuPT4Ge0Y5ioflUqs3McSAr4AW6REPuxfnKU10eblM2d5%2050YMkj0g2osfybAaWMf++9/+AsvXlvj5n/k59k3NI3PNdLtFGDj4rkQIw05/h053m7mFBT7/k3+X%20f/Bf/kM+/OTHmJtdxJaSPNXIQhDJgJbfAuujnBqoiLJ0GaWapLDEuaafZLSm5zhxzz3gebi1kJ/4%20O5+nP4o5e+FNlrfXqE3VaU03eejxh/nYUx/n0PHDzO+fp9lqsDxYrkQURcXhGjTWvpdxWCkobWV1%20XxQFExMTHDly5APfuyOEvLr7j9fPb9mVlRUOHz7MjdUE4Yako4xCC6z1iOOSsD3NsbvvZd/B/Vx8%2080WuLhUcXnSpN1qgY5QEz1F4Lii5C0bluORyQJo/lxq9lwEhxgy2kON2mngPbMZkk6mWicdAZJHI%20sSqdRVmNM06eAgXonCLLmZxoc+Lkcb7+3J/w4stnuOvwR2zD3RuA3IsfvRAKzp85y7PPfJWf+txP%20cueRkwy3+/ieQhsNZU6uSzwvoNmsozVsbm+iC0Gz2eYTP/5j3Hnsbs6++iZXL14h6Y+wGuJBWgn3%2046IcB2Mz8lKRA8oLiFo+0vNIy5Lp+TkeePg0TuDztWef4fqVq2Q6I9MZaZrQnGmzOL9A1K4zMTuL%20VZJvv/wKr505SynAWoNFIMZgZMaNp6KoTFeLouDQoUMcPHjwg2C0+5edfvLqV77yFd58awXPm2Vm%20eo71Hqhag7I0WClBK1Q4AW6Nk/ecYnPrFt9++TVmP/s4Mw1FORJVZlTZMeGMPbkrMBJjEHFuE9AV%20IMkxKlT1pRSVPQpGIHZ5pNuD2aLyWULCuLF/G8wsKOmNDeYcIk/hSUk/HuIHEUeOHePM61N849sv%208eipYxw/vbB35+/Fj1yUq7k9++obHD1wiM9/5rMUvZSaFwIlo7jD1FQDK1zieITG4Loe0guIrE+R%20lLjS4+Sdd3Di4EneOfs2r774Cp31yl325vYGIy2w0uLIyr/QERGLh+Y5ee8JRqbP5aVLHN13guN3%20nuTbr36HKzeuo63GCz3cwKMf91i6tYSRglqjwYNPPMzh4yeYWpjjlTdex1pRMSrVbxgBxlTeaNZa%20gjAgKwpOnjzJ7LFF8V1gtLK6bs9fvMHNW2vcXF4nbAakacpgs084fZAkyZBRHac9wWg04pvfeo2P%20feRhvGiW1869y4eeeBy0pR06SGWRaiynSwVG1kqEGJdUH3wdGJPVjD9SopEVda2qJMrudtxEBW5m%20l2JCjuFNVhmVsOC6WFP13iIHIinpJSOCIGBhqs2pO+7hxef/lLcuXOLRuxfs/r3saC9+xOI7f/w8%20Mi759CeeqrYMogBJtVQqlUcGlHmGDDwaUYssLRnFBSrwcRwfoSVxMgJtOHr3UQ4e3M/1qze4fOUq%20OyYhH5iq3e5Urq4Gh/m5Azz88GN865UXiIIG/e6QM6++ST/uEPgunc4WSkK8vIzruvihQ2402lo2%20O9vsnI359kuvUGg97p45WFENJBssdmzaKJXCj3zKFPYdWPyu7109/fTTvH118+n//Qu/z2c/9zNc%20vrbKi996jdnZA2RaUqQFrVaLPMspjCEIQrK0JC8dHH+KODUI6XLqVANdFEy2BbUwZXrCR2BIkiGu%20WyfPx2S21Uh7m+2p1tDGBZdAkFMiUBQYtpMembIIxyW1OUooFKIyiLQGaUy1RoJAS0UmBVoKcqDb%20Mwy6I8pRjqMtTb9GIEOuvX2ZSxfO8dijD3NoMvy1vdt/L/6/isRa3PEOJgUMv3LNrl+8wb7JGRbn%20F1CBSypKesWQYKaFbAW49Yj6xATNqWnCZoOo1aI+1cZr1BCBwvEVVhpKkWNVgdt0mDk8y4nTJ8FR%201KIa290OaZbgKIdavcbUxBSj4QirDfUwYmtri9XVVYbDIYPREC+K6A8GKKFwpFOdXKk4cvIEWVly%20c2WNs+fexA0CDh07ihWSm+s3cVWAH4YMBgOieo1CFFjHMjU3w3/9T/4xs/sWPnD+nEGsf/fa9WX8%20oMnE1ByPPv4hri71SNKMRhQiBKTDAUHUAl9VE5Rek36/pNAWKydZ3ynY6ML+yYhR3kW6LlmZ40lL%20EIZowPOc8Xi1eR9l9F6JJgWUWAQKDZWKnAsZGQZwpXObXaoyrvFmv5BoIdGiAqGSangyzwwm04iy%20BJuTm5i59jTHDh7n5Zf+lD955mvs/8WftEdrrkjKjNDx907HXvzQQleE7RiVgPN9u3zxCjN+k2Z7%20miQekbqWcLJBa6pO2AqJJmqVp6DywHEqZ9gx42GNQewSqonBDFPyQUoyGtHr98gGmkc/9iid1R0m%20Zie5duVdbi3dIBkN6fb6+KHHwWP7KG3K1k6HLMsYmRFlUdAfpAzjlNbUDHEcI9OSxmQbz40o0Wxs%20bHD1xnWU57Nw6BBPPfUUd63dw8WL79DZ7hJEEcqV5KOcIit5+MRRZseyIR/IjB77yFO/+zu/8+8Y%20DDPuue8hdrojtrYHoEIK7dLtxySjDCdoIN0aaQZB2CYtKmNG11XkeZ9mvcHRQy5Wp8xMBkhR4joS%20RzrkaYHjKIQdE9Lve1ghsQiMEJS2ApcSKIzBaIiTjDQvCXwPD4kzLuqUqOAIIbBCUErIx2XcsICt%207ohOb0hWaLSufMQ9L8R3FefPvsaVyxd55MH7Ob4w+WuudPZOx178cLtm7ydslzJ75cwFepsdZuZm%20qM9OkAqNagbM7ptjYmaCYG4CNaWQLQkNCXUgBGoGE1lMZLCRQNYFtASi6eI0FESW0tdVM9p4tJpT%20TExOMDM/Q7PZRAtDHMfcuLVEWZYM04TN7S0Gw0q3LM0z8rxECMnmyipZnuOHERrL1s4OF995h6s3%20lxiOEpTyCKKQu+++h+mZGba2O5U5pBD0Br2qdFOCn/3Zn+UTn/vMd1EkTpIktFotfuLv/CwbGxt8%209dmv8dbFZVqT+ykKB0d5NNohWVlSjjKk9NDaVvWVddDGMow1596+xkOn72EyjBgkEHoS8Cui2dqq%20FBPcZnws4+bZ+6js3ayn1JqyMBgjSIYZhS5peCEikNVzicqHTQiBGU9z735+QeW6G49SsrysfMIF%20lGUJwwFHjhzigQce4pk/+hJ/+qcvcPzQEXtsUgptLEruUUh78cOJ3WFfM7DsLK+yubnO3MIs/mQD%207Sua0zO056eg5lU3d636JKOo2ufWYqVBY7GiIqXRFk+4uFZVCjyuIqy38CYC7JzD9VfWUCrCa4cc%20mjjK3P555g4ucPGt85w7e4bl9S38gcNgmIB1cZRLPoyJ05RmK6Q1MUsS9+n2YsQwxnY6DNIRvWSI%2074e4nsfW1hbnL17AC/wqi5LVmS3LEhVKpqameOTRR7/nNZFJnrC1vc3y8jJf+MIXeOedd2i1WrQn%20pvCDiKwsSLMM1/EpshLfDUhHKdIqrJGkmUW6DW6t9bixbCjw6I4khfVBQVZqAt9Fa13NTIvqYdhd%20hv3gy4UAhJVIK1EoHKtwrIuwVQvfom934+y4bViO014DJBqGcU6c5ZTWgHSQwkEpgVQGpQQPPfQI%20M9P7+Y9/8Bx//OWvVzfHHhDtxQ+7VNvW/3zzwpLtrm1SC0PqU028iRq0PeoLbVjwIAIcPT4YDhIf%20YX2k8BF4SHwc4eLLAM/xUcrFSEWpxl2kSKHaEc6Ux/FHDzJ1tE7haXrFABFKDp04whMff5JPfv7z%20tCYm2OkNWFvvsNUZkAxzdCEwhcRolyBsYaVPqSEtDHFSoJwArMJzfYwQOMplY2ODK1eu0O126Q8H%20DEcDGu0GhdYcP1H5L36vcKSUXL16le/8+q8TNuY5eecjTM0dZ2Utptls4vt9BmtdvHASKauyy8YF%202tGUIscoy8Rkk2zU4+131ziwsEjdV8RZpW+itCRwJLrMMUK9Z6r4fiAapzVq/DYXgVASqQXtegOD%20JHJ9hM2rnpuw74ERCjPOiFILvUHJzmBAVmqkdMBKql8C33Xp9raZn1vkoQef4Mt/8H/x5S8/z6MP%20PmIfO1XfQ6O9+KFGttr91f7yFjIvmZmZQfgutYUpaAdQk+/tUHmqusF3t6BkNUQIDlJUQzEKQWns%20eAO9yqJ2x/NuH7QZUD7UhhHFZkaS5jieYnZxjma7gVBgXnuVwSim0+uQl0Ok7+EoTVnA8vImaRYT%20NWq4vkfgKyamWpRYcAVaQH2igVKKYlQQRCF5WdDtdvFqPq7r8uDDD9HeN/c9z5r6n//Fv3zaDSJW%201re559SDWDwuX7nFa6+/Sb01TbM1zTDTpLnBVTW0drCuj8XDGIkb1HA8hZCW4aDD/Pws05MSaS2B%20I4h8ibRVRmLHhJ34ABF9W9QRKQRWG5QUSCmwVuN7Hs2ahyMEwuYozFgIspIhKYWgsIIM6MaGtU6X%20TndIqUEpF2skaDsmCzV5ljHRnMBxAt595yrrq5sIBMfvvOfpyTp73bW9+KFEcSm2nau30IMRzbBG%201KwRTbdxFtrQEhBBqg1WGZSq7uFdPkKPH2a8nqmMQGiDzssxDyuqERgx3p7aJbkTEC54QcXtGKtJ%20khiLxhjD0WPHmJmZ4fCxIyBhfWsTay3WCkbpCM8P6I+GJHmOlZLZuXnuPnUPvXhItz9AuRLH83Bd%20h6IsMBi0NQxHQ5Ii48ChA/ziL/8jjhw/9j3PmTw4XROPPPIIzWaT6zeu8uK3XmBl5RYIS7fbIY4H%20+IGLzRKwmnQ4oBGGKFl9h5HnMoozLC631nrcWhuSadjY0Wx1DUgYjopqtBTeuzKY3d4XUKIoK6Cx%20Ba60OGiELgiVrGyGyuL2RCdIrAUtJMYKClM9yyDJGAxThmlRya5JHznuMFhtyNKE9kSTsF5nYXE/%20Bw+dZGtnxO/9/p/wzFe/tXdC9uKHE6vYnVsb9Fe3CYxDo1ZDOAJ//wx4EJclmYBCaVKTgzKUZJXe%20sku1L+6CdCoJnl03as9zcV2BdQylMuSqUkXFq+hb0QJa4E5DfcbDbSi0m1PIHOsYtnqbzCzO8tGP%20P8mp0/fh+h5WUGkSSYftXg/pBIRRk2Gc8c7ld7lydYntnS7WWnZ2evT7/TH9YtnY2qLb74EUGCwH%20jh7mnntPfd/LIgEO7d/H4vwsGxtrHDiwDz9QhKGP5yo8X+I44EYeUhg8XxAPOwid4WGJe91KSrIQ%201OozvPr6JW6uwlZP0x9JLl9PcHz/fdyQRViLHM9RV9mRxpoCrRMcqUFnKEpqvoMwKUWWYk2OEAKk%20g0FQWEmJpAB6I8PKWszyWofMKoKwjjEuWVqihEfk1/HdyigujmP+7Pnn+fZLr4LymZ0/wDAx/Mt/%20/QVefGvHart3Vvbi/02iCJbfucbqlevUlEczqiGUoj43XZHUAah6ZQ3vOA6e72HQqEBQ2BjtFPRM%20n5yCkoK1zi20iUGnUIwwJBgKtMgYMqDLDrHsYYOs6r7J6mvIFrTnazRn62iZk5mEsOYxGPXY7Gxy%20+oFTfOozT1FQsLxzC6/mU2u1GJYJjuvjBRGFNnz9xRfY6fQwCGZm5ystpeEQz/NwHIeyLPFCH20M%20n/r0p5ldXPi+dIh6+umnybT79NXrS1y7vszK+iZKRUT1FvXGJIEfoa2g2+mhnACBi5QKISUWibG2%20UvQY76RoU1DmOffdM03SH+FIA7ZESolS1ccbU3XBrNW3Sy4pBFJWk9pCSIQcTxJJgZJq7PFksap6%20WSiRjHLYGpQsre9wY61DP7f04pJRapEqxHdrlLlla63DrZu3uHTlEu++e4Xr11cxWuGoCKV8tjY3%20GcYD0jTm0Mk7nl5oe7+mrUGKPRppL/56Y+nlZdtbWqPthDRcH9dzCGcnYHECAijdKpupqKFdza5K%20SNBxLCU53WRAZnMiJ2QqaiCNB6kG4SIQDHQCTjVEbNE4lONlKzDCVg6xEigNRZpTJDlFURD6PqXR%20JFmCkXD8zuM89pHHcVyHl994hUa9hbWSQpcMRwOmZmZAWgbxACsMxhrcoJIHQQq2OtsURjNKE/Yf%203s8v/vIvceDgge9LhTgA8y3EQw/eb8+++S43br5Go6nIdMFwsM3kdMT0VIvNjS6YrGL0rapkCIwB%20fLQoEdLH90KSeMjZ89f41MeO4OMiOj2M1pRlyeJcE9dR+ON5LaxDYQySEiUUxpa3V0Oq5To5Hgeo%20PJeM5yCAFNgZwOr2gJ1hSlwKjD9JWQKOwsGtCLf1LstXllhfusVwsINROUmSIEWIkBpHBkzMLODc%20WMIUDl9+5kX2HzzA1M9/1h5s7rXX9uKvN9bPbtqli+8SjTTR5Ay2LKr7vFmrumYK9HhjqgKgDy5Q%206axAOYrZ2hzDNCXvFUQ2grU+xAVal6jDcwTCULQVrlvN8IUYLBpLWY0ASAHCwal71FoRaTchS3JW%20N1apRQ0c32EQ9ymkz9E7jvILh36B+x9/kC9+4UsUawatC4qRpTfoYzH4vk+e52RFRkPWSbIUL/Qq%20iyJrybKM06dP86GPPPEXnqnbc1d3330n+xZmaDVCJJqd7XWQCZ5fo16XKKkpdIYc8zXSGhwTYNDV%20tKGSeKJJkgsy4fKdV7f56GNTdGOBtBqth5RaUa/5tBsOYVRt9Vcb+lVtaqxTjS+NuwC32SU9lqQF%20uiX0+9Dp5+zEgl7uMsxhZCS1ySbdrYSV5TU2ltfZvrXOcGuHQDq06xMoz6K8jMBvMYoLkszSbk/h%20eA12hgmR2+C3/+0fMz2xwC/9/fsJ9wSz9+KvpTSzDK5t2ze//Ro14zFdbyK0odCaIPAgcEFC+T4w%20UmNl9/dWwWUl/5Hl5NJQF/XKdWcHRpdHXH3jAq7jc8dn5winQ9So4ogKC0pYdD7CemAwlXChqLik%20ej1iFCWMeglhFFGaAtd1qbWbxPmIm2u3mJye4LEPP0YQNfhn/+zX2d7ZZmp6GqMzBnFMc7JBXib0%20+z16vR7DUYzwJLVmg2EyotVu86EPP/mfvEy3wejonCvuP32fvXjpBkvLXSbaDZrtBVCC4WiHZjuk%20s51VQ4RGI7RGYXCxWOshypx0GOPg4zguL37nHHcc/zgLk5P0kjUMz8fwIgAAIABJREFUhn6/SzMK%20aU/UaTQ9wgACDwIfXLcq9eSuBjbjtY4C8hwyA4MCljcSVtY75Ebg1SfBrdOzJdtxzqW33mZ1fZvt%20jS1sqomEQxjN4AiHQgi2NjcwpiSKckZxThjUmV04zPziOr1+Vdtev/QWX/jiczSjKfv3Pn9AhHuy%20R3vx/zA2L920b770Blkn5diBEzQcj3w0ImrViCYbt0npQlXzcu74YDq7/KWg2l6ICxAhNtb4dShX%20YPPMFu6NjORiynbcZb6xTHjfPrzjQAi2dECBMv7tsRpjLGqXxPUcfD9ESYeg5hL3B2TG4PsejvTJ%20ypSVrQ3YgjcvnGNyZpJ6I2R1Y5XRqEsYBQgh2NraIopCsiIlCAJGRYLn+5SDPg88/BBPfvxjf3kw%20Anjyo09w9vw7XLv+DRbmD9GemGFpeYvRKGdu7gj9bkJZZBidY62p9K0FWOOjS7cS755oY3TKVjfm%20zfPX2ffUYYypo4UhS3KywtJNRgRbGb4HYeTRqPn4Pjhu1RUwotp/LQpI8owsL0m14N3lLbQbEIST%20eEHIIINr1za5cOUWtzY7rO8MMFbhCY+6F6DcoHpVilN63SGOCFFKkOcOg+GAnZ2UyakObtCiPXmA%20fmeH1tw9vHVuhX/zb/6A2an/yn7mo7W9cm0vfuDYubxiL198h+3VdU5OH6OmFOlggNYFYX0aAo8C%20jaMcyrFmjkRUQLQrSjG+A/N8hNeMcKUki+GNl9/h6nPnuUsuYHrQWenw4le+zWHu5459x1HjsSOb%20lYiaR9W1Hpce+a4QPTiOhxCKfq+P5/kYLNu9PtIXNGcm6PR3uHDhAl/6vd/jk089xcREi9dff5Uj%20Rw/RatU5d/4sw1GPtMhQStFo19F9Q5ZlKM/lySef5K57Toq/Ehid3OeKY8eP2EbjNaanJ1jbWGPp%205k2kE9JsTOMFAq0NuqicQFwkQjpok2CMC65DkecIZfCDBmffusxddyxwx7EG2ShBqYjCWrKkJB6V%20CFngOhmeG6Mcixc41cwDFm0tWlu0NRTakFuH2UMHWduxXFle4+rNi1y5ucFqb0ApA1StSdDeD1JS%20JgWdfkysY1peSNNp4tci5tp1rC7pdjsYO+L60lV6/RxrXJJ+jikiWu0avURz4a1lvvjFP8SWn7Cf%20+vi8UHLvYO3FXy0G1zbs2dfOsLO5xb65eVpujXKUQlagfEVa5oRobKDIxytNAqqsZVfp1FQ6XkaU%20eNMh1sZ00pI8E/htjztP38Hcls/yxoCwHtJLhjg1n8KBDJABaJESKLdy5RA+Uryv/BBUO57Wwfej%20atfTFvheSNAMKI3l7LnzfOlLv4vyXFbX1lhdX6HerPGZz3yKzs4mL736LRxHQWGqDpoxOL5HkiQc%20P3mcT3ziE3+p6/VdG6Kn7jrKY4/dS3vyIH/0lW9iTUoUNBgMt3FVQKoKjE3RxmJwKs0So7Da4LiC%20uJsQtUK8wGH55k3Onr/GqXvuZHNDEboKZTWCqhunhENmStIkx5gCNzMYYdCIyghXuQjpIh2XQnr8%20yQvXWFrbYnVtg7S0CC8gas6TGUWhBYMkR1qBzjSu8ZhoTbLQakOS091cZ2l1h0F/h+3tTWq1Go7f%20Js89hHFJkpJ2vcXGRoeGN4EXBPyHP/gapelz/M5fsfunEaG3d8D24i8Xyc2OvXj+HKs3l2iEEbNT%200+RbORSSdquBdARxHBPqSbzIIUsNTiDHHa9d3XduTwhbIclNxigvaDSnkA3JtNMkfBC4CXOHp3j5%20lddoNBQnnzgAk7ARZzR9H+EqsjLF4iIcWWVauy+u40ntYteFMDV4QY1G3WV7Z4u3r7zN+TMXKZJK%20qqfRaFIUOefPneUP//DLTE9P4jk+Qjh4XoBQEMcJbuSRlQWnT5/m8Y89Jn4wMLr7AG+8OctbFy9j%20dZ9mzaFe94nThKjmE48ShFMghCQpB0hR4jigRA5FjikM1mvjh00aUZtXXr1KkQc8/NBhDiwAOgNj%20EbIaWLRaIVWIFzbJihTtOAjHpRAuw0yzvLHDjaWrLG/1ubbRxQkipNuoOnlpZbmCNegS/FziKZ90%20EFOmBcNhnytLHco0pRZ6tGYaPHDqFFcuX+bcGxeYah/AEyFrtzo4ok1/x7B/4QSdraskZcFjT36S%20reE2/8P/9K/4ub/3SfuZxw/tlWx78Z+MYrVvz7z0Eq9+59scP3KUowf2Mxr28f0W1lHEtsQ3Es91%20yHcGhCsh/kIdNCQYUqEppMRzJMJWUjkKhZUuflCR2RJw22CGULQSitOS06cfxW+GMFkRT5OeT5nm%20SKGQToRUVce6KEpcO56GdEC7GbnNsMrHIrA6xKfO22de57k/exHpGqb9eZxA8Av/8B/xW7/1W3Q2%20erz0wusYqYlHPVzfx1GCYTokbDTZ7G4wvTDDRz76kb/0dfsuMGpH8lcmJ6PfePvtN9hY3USLOvFg%20B+k2aDYChqMhurCVmL4VGJGjzRBdjpBejdDzceyIbKgxQpKXhrPnrnHz1nUOH7Ac2Nfg+NETzE23%20cCSkKaSpYTgsaU83GWSwtjni8o3rvHtjnfXOkMIohBfhRIsYKciKhDwbgckJPJ/A9QiFxyhLKj2k%20uCQbpAxdgy8dAj+kXmsySlKuXFuh0D4L+0+SDUp2uilK1PADj6jl0elsEEV1PvyRR3nwoYOsrL3N%209Rtn+Xdf+ioq/zH7+ANHRaOxd+D24nuUZct9W5+tizdePcPrr57h0L5DHD90DJ2lKKGQUpKkJWlR%20UA88phoRYRhVaUpanUbHUZSiMpwoqbrwqjSgFEJIFJXfoNzNamoWK0DXASHQvkWG1fscLMo642Fh%20QV5meI5CeQ7kJZRVJzzP83GF46BwmJ2Y44UXXub5Z15E4KDznFEv5d4Td/ONr7/A+TfOV3N/pWEw%20GpIXOb4xOL5D4EfE8RClXB544AE+9OSHfnAwcpV89u477kAIS1nmWFHQHXYIapUZo8BgTTUPZLWp%20dsRkibGKMk1wQ0mWjPCEIKjX0WnCoLuFI0O+dukc9bqk3TrLvvl9nDhxJ8ePH2ZiShIoj2e/cY21%20zS2W1rYYxAXCqeEEUyB9stzS7XfwQpcglNSiCISHKasVlf6oxOYCLUqKtECnBXGiMZ6P7wYoWc1A%20ra+v0qxNUfOmGaU72MJSjxrobMSwv40QKfc/cC8/9uP3sbgAs3OPsX/fPkaDLf79f3iJq1d69vEn%20HuD0nXuStXvxwWgsNsVbXz9nn/+zb9EKajx0+nFGw5jtzQ5zk3OYkSV0PTzfx5GSOM3Q/T7Nlg8q%20Aqo1CoEYzxgZlNHjRTRQbgVGxtw2ykFJgQpDfNdDOGN7oN0h5LHWl5C7GvL2tnQP1q2G/XJL3jfI%203CEfGQ7MLXDj2ibPPfM8g86Qiek6nf4Ok602nufx/PPPs7y+TKvVIisLtClRSpHrEl1ojKMprabW%20iPj0pz/NoSMHxQ8MRlKIq/feefx/fPLDT/zqzZt/zNrGAKHqhK4EY/CEwHclujTkxlAaMa6VXASW%20IgEjUvzQw1OGoU5pN1o8/NBp0vQAg2GX9fUN3rq0wrtLXabeuILjucRpwnavi3J8HDfEyiZGR+jU%20Q4kanmtpBRprU+wooxg72FqjEYWGsqDoZ5RSo4yHUj5ogdUORQLdnYSsUIz6UAxTPCnIE4fAm8CX%20mu1kk1pgePCBe/n4x0/TqMGtW+AoweLcAbLmIpE3zbs3l7m6+nXO33vMPvLIfk7OV6C0Phjaucbe%205v/f/ngfkfO+6N+K7Te+9g2e+8rXuHbpXe44coIzkxeYnZhi3+JR4s4AVUpc18FTDtoUjEYpmdQ4%20aYvIgC4MRgiEsyvLbFH2fUaDY2JbakCYcautyoKEVJVI0u6AHu/xQpXml0UqB4ulTAtcG4KBvFuQ%207OSQurTdNqOO5Wt/9Dw7az1mp+boDTuVk7QUXLr0LkurSzQaDVxXkaZDgrAaIB5lQ0pjSEcjombE%20qfvu5sknn/wrXVn19NNP893ZEc8Kv/n0N77xHVavL7O47xBz8/NYDEVZVKmjdMizHJ0VYxQXSMdB%20KYkuCxAWKQxpGhMFPov75/nIR+/g8LHDzMwcw0iPwShnZ5TRT3IGaYkb1pF+A+XWQIbo0idPBelI%20kCcZjcCBMkGakkAqAk/hYCmSjHyUYXKglEjr4eAjjYewLhiX0UhTFApd+mQDSxqDJ0N0XpLEO3he%20weOPnuTDH7mXQwdhMIBkFOMpjyKrpEkWD0wSNOaIRwWXrlzlxq0NMlF/2m8GTy82vD0g+v8DMR2v%20W11koeNFz+6+bfnimv3OCy/x/Fe/zlf/5GukwwJf+uxsdtnZ7jM7vYAtLC2/gS0NRVZidInjOXhR%20gFMLQQlUzQdHIKQcA5FBjuWZq2ngMTAJMTahGN9yuzY68n2st7QIWQkLVg4dBimgyDJEOTZw7MD2%20tT6jLU3NtglMnWf+49c49/oF2u0J+v0BO90OtXo1V7TWWUHbknq9RhwP0VbjBy6FySlNgeNKRnlM%20e6rFL/zSz/Njn/3EX+lMfF+91R9/7A7x8IOn7dLSGjNTDVwHlpaXyXKNowKUcFC2pLAGiYtSLnkx%20Iqo5GGPJhl0cqQk8lzTu8PrL3+GeUweJM02n12WUZ2glEMJBuC6+qsYEkiQjH6a4MqIWTOD5AUmh%20GfRjNocDpJNQqwfUgojQdymKHO2UoCyF75CNLJQOWBedC6T0sdYlzw0aF6F80Dm+4+JLRWdrBccd%20cd+pgzzyyN3sW6iGLHXZZ6JZx3UgS6Hd9ri5OmRqts6Ju+5gba3G8q1LPPvcq2xuHuO+ew7bew/u%20LbP9bY+wNn/7Z6yTgitvXbdnXzvPudffYvXmBp4IOXnkDiYnpsAqzp29QNxLuPvYCRrH7iBULkEQ%20IRSV2WEGRT/Degq/VcMb+5UaVKVSIXcNTQ0I588JFI3rtbFv4O2JYWF5/yJJJdMjsMaAVnh+AAXE%20mwXxdo5f1vF1jbMvXeT8SxdxTUAxLMmGGaFfY3u7i1AS13UphSVNU5IspdmskeuMvCxQrkQLje97%20LC7O89RTT/2Vr+1fKP78n33+M3S2BwyGhlsrGwy6m2gjCaIGgd/E80Bri5IWYUuEKTCFU+2ZCYMp%20YgK/ji0Ltla3+Rf/6/9CLspqoc8P8aMGOC5JFpNmBQhJ4EfUojo6L+lvrZKPQOITKIlJDYaSUdJH%20xyP8qHKvrfkRk/NzLN/skGuN0B7YgDLXSOXjihBTWLQN8L0ajpOiZIHWA6K64OTxfXz0yXs5sL8a%20nc/zPjAiTVNS6yBFiOd5TM95jNJtTOmwuDjH9GSDleUbvPH6DS6+eZXOj3/ETk/43HmED8wlGVsg%20xd4o99+muHXhpr108QoXzr3D2+cvs3Zrg3NvnGff7CIPnH6Ia+9eoRCayclJdnZ2eP311xGjgsXJ%20GQ7u20+jVq8UE7MMQ4YVChsViMJFNEG5Y6NSIbCy4o2Eszt89L1Kx/eD1PitdtcEXo7NK5zbGkjs%20QHd1hMwjZBZw88oaL3/jDI72saZgc2sLx3eQDqRxTr1Wo7ApRpcUZYlSAtdTDPsJqrL9IUlHtCab%20/MTnP8vBEwfEXysYPfLgaS6cv8yZNy5y7eqIRuiSaUHkuwShAm0oy5IyTyiyjDBqkGdDHDfA9x10%20kZAOCsJaRLPmkRbDKjX1fWSgKExKkiQgHcKokpZN0wFppwelwrURgfCgAJ2UFHmC60NY83CNohym%20JN0RIz8nCgTkDhQCJWsIAoTWWAIwIVaDI1r4IgAlSJMOmg2OHq7xoSeOc+8phyItydIunmPwaoIi%20SwmCCNcrGYy6OBhqocEWEA+H+G7IkUNHGU3OstPZ4o++/A2OHVtgODpm7z4Zioa/y8PtAdHfpjj7%20Z2/ZV156nVs3V7l1Y4VLFy6zubrN4vQByrykVW8x2Z4giQdIYTCiko199dVXWZycY9Dpc/LwUWYn%20p6gpnzwuyLIEIweovAbWhxoIV2JdKgFBkeMhkGNNeT0GHiHE7RxIjv8mEBitQRusFShhK/EjATqG%20MoP+ckF/I6PFDGlf8+bLF0m7BS4eg2FMPYxYH/UZpgNmJ+e50blM6cQYN8f1HYT0SPOcJEuZbLQZ%20JDG5LmhNNPnPf/qnfqDr+heC0WjYw1OGfmeDwNX0ekm1mT/coRHVaDUjut0+UrhEYYS1OZ7jUOQx%20ZSHwvACjC7JRQdSICF0oKdFJTJ7n4Ea4roPVlnyUgxaYrIRRCun4B6DqCO1gCk2AoBE2yLO4Ghhr%201nBx6G2N6JoSKetI0aRIK/mRejgBVlEWltCr46g6eVYgZYzvJuxbDPjsZ+/lgdN14kEfV6TUvAKl%20JK4DXjPA9TSOlzI75yIcUS3tlpYiU+SZpSwKVD2gES5ycP8Cb79znnevX+Whh+6yjzx2gsVJRK/A%201qQVDWevivubHKsXe/bbX3+F5557nmatwZXL11m9tY7NXZrBJKNhysL8LBMTE6ws36Db26Ze88nz%20hNbULK47werKGr2NHTo3Nzm57xAnjhyjNjNNLS8ZvrtNXTvg+lCCrQEeGCFJrBpnOBVXZG8boAoM%20mlLn+Cqo1j2gkgmxTpUFlVXSZHMIcVlfirlxfoV6OY2xgkvnb3Dp/HUc4VXbFVIyTJJK9VYotnrb%20eJ6HtoIwDNnorFfSJ45HVA/R0lAKg+s7/Lf/9L/hwPED4q8djOqRRzzssrF2E1f4+K4lSWMG/RFR%20FNFuz9NqBsSxZjjsoJwI14vAWoy2aKGrGQdcbLFL+1ussWg0pbSg3LFio4FhAmGd0I+q2YnYUKYx%20LgG+UDiew/ryMq12jVoYsbG0DEISTc6TlxKMh1A+nqphTEBZCKSoZEe01mSjmPnZGkWpCUPNE48f%205I4TdTADAq9LKwwI/Yh6vU694RJG1X2BkwMWad3x6DzoEpIM4iEM44Is1ayubXD6wfvo9XZ449xF%203njrEg89fNo++Mh+5uuCwljcPWWSv3Fx5cIV+9KLr/PuuTXIXUzmcenGLZauryMMjHoxYRAgUTh4%20/Kvf/N+YnKqzOD+FJcdFsL65ylS4QFhv0HQi8jjlnTcvsfXuKncdu4N9Rw5TP3IUs7ROf6NH/egs%20zhEfOwLtQOi5aF11zYSo1qTA4oiqheYrp8qbtEWUIG8LYLPrkkqyXdJZHrJ2tUNDzRDZNq98/QJn%20vnmWwK+RJTnalpTklKJAixItSqwwY70ii9aGdrONEZqyzNDSYPOUNE/41Gc+yb333/cDX+e/EIwW%20ZkIxM9GyZRqz3dvEyAhtwHEFjlMtttbqAUWZQi9DI3EcpxJ1siXGaKSUaF1S5hJpfIytxgIMAiN0%20lW7K6oIKERCJgFAEFKYkLwoowHMkruPS7XepBy55MiKOB3hhHYRLOqq4IWMqAX7leAgryIoS33cr%20VC9KQk9T5gPa7YQHH/6/2XvTIEuzu8zvd85597vmzaWy9qqu6n2RWmqptSAJCSQhIQRSIMQygAeI%20YQB7bDwMjB1hWxrGYRgHjvAHxo4Jez74w0RggvAYEyyDENpbS69S79W1b5lZudz1Xc/iD+fNqmqG%20mEGDWhAzeisysqoiK+vmve/9n+f//J/n+R/n0UfX6fUnKLPDgfU+K70BSRSSZZBl0IZDYvbnpVoS%20ylePTIsS8iqkqEMOHT3GlY1tqkZw4uQpLl/d4lN/9hQvnRnz6Bvvdu99YyiMc9TakIbf2dX2t54X%20evGa+9znPse5sxfAxIRiyMtnLzPZm7K9NaeYGlaWlzEBBCLANBWLWcnG5gZ3nHqErNfFugLhFNPd%20GVVTEsqu35JjHJFWTDcmvDx5kcW1GasXd1i68xjDzoDycs50UtI5OSBdhaqCJMOv1HGCSEgsPtUC%20IQiUwPghtl+DJFtuqAY7dhTTinzsOPfMZYbJAVYHQ57+/GWe/uqzFAtLpAJqqylNSeNKanIaUaFl%20jRENWvhAn6IoyLoptbNo3aAx6Kqk28340A9+iIfe9JB4TYoRwKNvepgvv/4+/r8//DOm+Zgo7TMY%20rRInIfliSllqAiXoDvvM54UPcMJHySopfRXXDVUOYSzQRmGdREhJKBxSKJwVCCHIshRpHVQVorZE%20SqKERBhDXS5QouGO08epqopzly4jnEEGCboC25p2rb1F3AnhCAKIE0FDRb9vkezw0OvWeMfb1xn2%20czppwbH1ZZaHHYadALk/MW0nqU4YBLlHRoQI43MenPTDizSFOIUBUDSgomUG3S6TuSHtjIgubHHt%208i6/c/aP2Lx2h3v9Q8d44Hj/O/Dob/F15vGL7mtfe4LrV64zGAx45KG3MuwdwJZdnvjSb/PKSxcY%20dAckUY9qYQlVRlOUdLIOuzsT3vnO97C80uWpZ77EYJixstpn9cAa5Y4hCVJcYTFOMBguEYaC2eaY%20FzfPcOPamPWtGUcfPEVydA1bl+yMt4nWuiwdTXxsbOBbNzJfb2ID2vowQrV/Trq2NcthuqPZ29ph%20Pq7Qe7AUHGAlWeP8sxMe++yTTCcVg+6I8d4elc4pbEHhCipKGlFghEdJTmhUpMjzBlkKtKgJgoCi%20WqASyXe98x08+tZH/1rP+7+3GL3xkbvEj3zsI66sDf/m01/BBQFpGlPXFXu7O9RGkqUDBoM+Zd3g%20aGgagxCKQAistdimwViHVLFHOyjCMESFggDhtxgEAcVkj1AFPn7WKSSBV1k7TWUqTp4+yqHDS5w8%20eYqTl6/w6T//AsVkl97yCWoTUTc+NMpaSxAqgkgQRAZtZlixR2egefCBEe/8rnXW1yEKS+46tcbh%20kURXhjTwAMiaVl9mQajW2ItABcprzxxo22CtBimQQiIIEU5z5EDIaJBw/kJNMY+48+RRVgarbG1d%204yuPvczZs1d56f673RsePsHJlVvqOWPbsLnvXN/2S89gsdu4reubPP/8i+xtT1lfP8TpN9/PfD6n%20qTQmkIQq4f77XsfVS1voxtHrDpnsToiDiEAJdGPodoe88x3vYXfvGi+fHVJWORubOzSFYxSNyLIE%20oxv2tmcEZcCS6EOQQONY7DWc2TvLxqVtDt59jAOnjzBaTtF5zXyrRgwEdWAIo4hkmBH12newbM2u%20FnQDVQH5rGI+XlDOKnSlCZqYcjvn4dNrPP/1OX/0//wZkxsF0sVcuX4dGUClCwoxp2RBJebUoqCS%20NbWosWgUEMcxYHDOYaWlbEpOnzrFT/zUT3DyrhPiNS1GAB/68HeLtbWjrrf0O5y5cJUir7mxN6Us%20c0SY4tpMxiSJKcsKdIULYqzTaKMROJIkJkwl2laUdY2UHlqK1uMmdI2r59ggwDiH1gYlIrqdIcOl%20FdJ0idGBlNFKypHjXU7edQ/9wZAvfeXrTKeW0WCJG9sFSimMbRBWkqYxjZ5jbMVgWHHidMSb3jzi%200BHoZoZTx0as9v3PmMUSUxsCoVCyLQwSHAG39t5qEBIpLKH0aMy12cKGhl4UUTYQCjh9PCKLIs6e%203UGnmpW7TrGztsITTz3Jc899mgsXHuK73/WIO3IEDmR8J6Lkb+DKr+HGO3tsb+8yG+dcvnyV0WCZ%200bGDVKVmd3NBEMQoE3JjY0qvF/PBD36Qzetb/Omf/huOHTxJr9MH63BSoZuCo0dOsLmxzXQx5cEH%203sC1rYtMJjtMJwuCOEAsHPWsodot0RGoXkovTKCyzPZKelmHYivnzPbzbJ/b5NSDd7J84hB0YD4z%20EBlKsWB6ZYZIFCJTmFB6/Y/2B6cxgipvKBc1urIEIiRwGSfXDnDtjOOZx55lb3NGHAyoakNhaoR1%201KKkpKB0CypZUYsKTUWDaUFGRRj6EDNXl+SLnDRNectb3sz7P/y+vzba/0sV2H/ZdfjI6JPG9T6x%20O5mzmOdM5wvKoiZKMpSMQAjCKKauNabWBIFCCUFT12RxzPrhdbqDjMqUNFUBTvs5gK0xpsLakiA0%20bTxJgUDT7aesrS+xtr7McLVLrefESYCxgm6/x+p6l72pYWNrj6XhGmnWp9PpU5Y1ja6IshDtCrr9%20mIcfPsSjb+5x7LhleSXkyKGAtYGvMdVsQhYHCGsRwr0qblI4gbV+QZ5zDVY0OLE/y5AtagqRKOoG%204gCiwO/di0PIohRdjdnc2kKFaxw6ch9xPOD551/mma+/gG5ist7oE8Men/wOt/3aX2YG0+u1u3Fh%207xPXr26xeW2bnRsTFpOSleEauganQ9K4RyQymgoilXJg7TB5UTBaXmIxz3nu68+jG4MSCpygLit6%203R5pmvLyK2e4ePECRZGjjSaKErqdLhSa3c1tdnfG6FogXYiSMU4HFIuaiJBmXhM0kn6YUe1O2Xrl%20EuGsob98EFvUhColsAH1rGI+ySnzhnzeMN6ZM5tUlIVFlz4NAxODSxA2QjUh4TzgM3/4eV558RJZ%20tERVC8qqIQwDZs0MTUEpZlRyRiVyGlnSSI12Dcb5UH/fDTi0ayibkje/7c387M//LMdPHf1r7xz8%20pljUNAvRpiSvF+im8psHxL62QZHGGWVQ0QQNSvkAaWs1SRqxtjqCKKCocorZnKausSbAOd8WOSlB%20+OB+pQSj0YijR9dZWT2As5LpfAerHGfOvswsd+RlzOb2gmvX9+gOB+R6wak770c3iqIuGI8XRFFF%20khiOnUh597uWOLqeMxpMuePIEqMMysIRS8NSf4DRZfuYHTjTTiG86ExJ5SMcPKjHYtEWv25bhAQt%20x5SGvt0y2q+J63X9M1PVCY0V7M5i8jJgbfUwaRxy5sxT/N7v/gEvPXuSd77rDe597zjynXL0Gl67%20ZwpXLGomuxPG4zH5okSIgF7SJ+qllHlFJ4qpK8NsL0cJH8kqrODGxg5hFnH+7Dkeft2DfOD73s8X%20PvNFqqJg1FsmRFLMSy5XGyyvDOh1V7h04QqrB4cIabBJwuHhOoudCuOgFpJrkx3ms4aDvXUGIkMb%20QyLAlA1lvqATxww6GTuvXOf6pesceesDDE6s0x0tYY1CUIOEJG9QAAAgAElEQVQIaQKJEjml1Ghn%200Y3GWosgIhARUsZESvLpT32Vsy9fZnNjTNqxhFFGZQtyPUfFloUu0EKjMdj2l3OmXeRofHjbdAdl%20PEGVdGPe/o638s73vfVbct8K5/7qi8K+8coN92v/3a/z1JPP42zAbGZwLsbYiE62RK87QgjFpUuX%20UEqgq4KkmyEl9Ho9hJJUjaWpBVXpd61laR+lQhaLBaFyxHHIgw/cz4mjR9jd3SWfF3Q6XaxU7DUF%20Ml0mz/uMJzDPJZXVhB3BcNTj2LFjlIXh/EtXCaSikzh6A8073nWae08H3Hl4wfGDIWvLXe9+NhBg%20CSQ4owmC4NUC11c9xRbrGm9QdK1mn+CmC9q1+d0GqJoG4wRxFGCBjc0pFy8tuHK9S7GIsFRYU5JG%20lsn4Bs99/Ql2blzh3e9+G9/znrdz712xACiqhjQOW5DmWi/3d65vig+6gptPG4pFyeVL13DO7+1z%20zuGsaIcd3uburEA4P5G1VmCNxJo2iUx6B7x1mlAqrl6+RqJi4jDln/+v/xvT3RmhigjDmMl0h7X1%20FXYmm6TdkNFyjybPObyyxmRrj/k8956zxiIax4H+GifXDpPpELFoMHsFKjeM4h7rgxViETCvC8ZB%20xcF7TnH8rns5dN8R9gwUEYxZEK3EzOyY6zeu0F8akiY9djdm9LM1IjJeePwcf/57n0ZpPzAyztK4%20itpW1ORoUZLrMSULauY0osBKjUGjXUVjK2TQYKkRgWVztsmP/diP8uu/8UnWji1/S27MbwoZPXh6%20VbzrHW9xT37tSRodMFpaYmtrTrfbIwoVYSTpZB2Wl5eoqoJCGD8OLBcgLFHcYTpZgAsJgw7O+lS4%20TiLoZR2UtBw8eIDXPfAgp0+d5OL5C5x58QyuakgHXQoZMS0Vk4llsYjRTezFXp2ATjbg+PE+X3ns%20DPfdf4oXnvs6aaL4+MceQesx3axidRgwSBTRzcmnJRASJcCpkHYvUuuIhr8or/eaKV+EENIT3G0x%20ArzGQxqU1D5AHYVE0OmGrK4NuXotb/P0DEoKwjBkeXmVu+68F338BJ//7Fc5+8pl3v62N7p3vOsB%20DiyH3gLpXPt/f+f6K10O8svG5eOS2SSnmFbUdU0gAgggDkNUGBIFAUiJEj5ZVFeaxlhM7agah6ks%20tbGgveK5amqSJKEpKzqdlLtP3cXVC1c5dGCdLOgyn5bEUUqTWOZTg9AJ5dywbRbECq5d26Va5Gjd%20HnzCgjTs1BPkGJaiLqkM6A1jkn4XV0luzCdERuCUpCgrzr9wjrPnNzh84R7W7z7FiYdHSNnhxnSO%207MDa6jLGGUyVc+jgOjEJzz19ja995Qlq61DWoG1DYytqk1PjR/lallhVIYSnT3C+JTM0WGcR0qJt%20TdJRzPIFD9x3Hx/68Ae/ZYXomy5GAD/1kz/GxvXr/Mt/+a+4srmJCHtYHTPJ5wip6WYB/V7IxOY0%20BpRyuNJijMFq4zsg4ZASVCCwxlGbisbW9Dox2jTMi5xOt89Dr3sDYdDl4oXL1C6kXNSMx4adnQXG%20CoSMaXRIMw8xeYdzL2gCm/HSN75BQM473/Z2Dh6APE84tJawvARp5jfZem9hu4DSq5xuuqIdt9Yy%20OHELGfk0GXxBcrc8ivtfYo0mkBKp/MJJ2iLSTVPkMnQzR1WBMwZtDFXpiELF8soh4jAgTrtcunye%20P/qTz/P4U8/w8Z/4qHv93akQQjCrLL34Oyz3v+sqNnFVmTOfzJlN5lTzClODEAoZKoajHioMyZKE%20OE2JQ+89lW06h7BQaWgKKGpDtaiZFyX5LKcsGrIkoMwXdLMORjdcuHCOc2cuMVpZ4/nnztLvjChK%20TRz1mBcT0rRHXs2YjGdkaUThapzR7cHi2olvCEqysA2JaMiLgtpWBNkycZxQzWsW0wJjoJAaU2jy%20xYKtZ2vi65c4Mb6bg3cdYnh8yLRcECSKne1thFWMjh1itlvx7Ne/wdmzr9APehhnqG1NbUpqk9PY%20goYKLStUZDDUOGkRzrQLJBu/TFI5pBTsTvbo9BI++sMf5QMfef/Pfytfv2+6GB3sCfHL/+UvuDvv%20OMX5i9e4cukGf/Inn6WYzzG2JAx8L4poCKVDKIkKpJ9yaUsURUgRIoRAKUmSRDgrvGYpgs2dbZ59%207jkG/RF3n76XTm+EY4sbN+Zsj2FRBDSFAKEIo4jACsqJZevKgosvXabXd2ycfZYf+Ni7eeThiCsX%20tjl+rMvBFegmELYIw5jGq1Sdz4Vx1t6GPiRuPy8Gi21dP64V4d+sPrcVIuFAtQIlgUBJ104ZJSGe%20zF4aZsxmOaW2aG1pmgZjIiAgkimr6yc5dvIennr6cf7oj3+fF89d4ft/4APuPe9+iFMHvkNv/6Ug%20yMDsGq6uKuaTMUW+YDod05QVQRDR6/UZDkYknYy0n6JCvxZLhtwytu8H4CsILWBgaBV1lTKfp+zt%20BcynC6pZw2TqC0vWjdndHBPGEadOnSKLhuxsL3j2medJkghB7IlDURGozPvCMKggxDlH5RxCBqSd%20lCiKkU5SSQuRYVZVyHpCKWqkdThZY4xBxClaWoIowyjHmQtnefbKS5x+3V088u43sHp0SCfrMjjW%20RTeC3Ru7fOlzT/P1p7+Bw1CTY0WDpqZyhUdEosKKGisqtNU+uVXUIDUysARIjPWBaUGkmM/GvPPN%2038+PfPyHCWL1L/5GixHAsZVM/OLf/SEArm47d8eJ/5Pf/b3f59z5K2xuVayuHgahCUJ1s73RWiMM%20aBMQRR6V1E2JMYYki+kt9fwTrmB7b4+vPvkUly5tU1eOjas77OxpimYJoQbEwlFpBVIREVE3htlW%20gZSOjb3LfO8H3sN733OCxdTQCXOWu33S0DdYzmmEkyjh/GLNNifm326FZBur67dymtYXtI+qhLup%20sn9VQcL41hThU/j2b3ZhoJPSKtM9THcuQLRrYqxKWCwWZP0uy2unOHL8IR77ypd48ez/xZNPv4MP%20/8B73cP3Z6wP/wKT5RqkCOA/MT6pmcFiF1dMKuazGVWe0+gK3RRYbUiShP6oz9JoRL8/JEgFKuZW%20ANltLZ0Vt1I4HL6GBLEXswZdiAc9yjxj59oecXKAva09JDHHTh4lTQa88NRZ3v+BH+DMCxc4e+aq%20v49lxmK+wCDodIfUtqDWOVJarPOBgEZaRCNxwlE6aETAyrBPR6Ysduds3NhC1IZUJsRhQigl87Im%20wpAliv5yj829G7z80gtsTa5w7M7D3HXvSR54+CEqAc888TW+/KWvMJ/U9Hp9FvMJ1pVo19CIGiMq%20GlHhhMbKhoYK4yqsbhChRUqHxVA3FbVZAJaH7nmAn/ypH+fYfd/6Yct/sCfBWneHlOLc4RUh/sf/%20/ue449QR98lf/5+5/NI5dpVABSlKdZAi8VlHlSGLMpq68T1zqEA3GGpUP2I46jMej9HWsDedMJ5W%20nD+/RRqPcDpksQhpTEAcJ9imoc5rTLUgih04i3AFKih525tex/e//xj9GHZ2Nzh2tMfKMCIElM+c%20QgiHEuomXAaJbMf5TtCaD/1Ne/P3CExbjPbBkaRVa7v9r3VYXYNwCBXcCr9q/0ESA1QgNFGY0hiJ%20VCkWRW0Ux08P+drXrvLkk09DtMRo9TSbm9f5V7/zKZ588mV+8IPfzevuP+EefniVQ61g8j+1RICm%20gJ3rlcvHleeCFjV1WWJ0jTMVQSLo9/ssrfQZrg7JeimEbSRQCLZd0eqEXyGNEOyfGQrQFqy2VEKg%20hEAkkEaQdBVZtIKr4XIkuXJxi+29TTr9Faqm4bGvfJkkGCFUTFNXJGmfZq5xzqGtYDavkAqk8sJc%20h8A0NXqhmeUWaRz9JEGFEhs5CnJyVSKVo8Ag6gUBBVlnQNjPmOsCKyVhorDCsL1xnYuXXualF5/l%20lZfPUjeOp55+mbqoGQ5HTKdTcj3FUGKdQTuPiAwaS4N1xv/Z1Wiq9lB1rQm3ojE1vX7CT//MT/Oh%20H/v+U6/Fa/sfXIykFOcA9maLx5d6nUd+9ie+T5x5+WX327/9f1CWM4QyRFFAFMUkiVedCiFa9y80%20umJ5ZcTBowcJ45Cd3V2iNGL7xhh04F8EGWF7jjRM0M675J3TNLXFaguuoqEmCC1px3HocIcf/sgx%200gD2tuYM+xFS13RjP3b3TZT1jZSQrz4ihfBmXedvlJtrq8TNAxTdoqf9QiS5FTm8H//pSaj91L2b%2035oggDACR+nNwtIrdrW2CBmAFLx8zvHFrzzNuXMXGC6vECTLRJmlKCrOnB3zv/+L/5fXP3Sad77z%20Yd705nvcA/fGv7nc4R/v/z9lAXu7xgmrSCLojfy3/o+B+97dqX5jtlf9WjVrmE8K8kmNzS1oP9OU%20gAhD+p2EldUlRgd6qH7o17PuByW2WdBSuvYI2j9o7M3XWygIlX+tcRbtHEoJhFCkA6CGE3cdxDnH%205XPbZN2YN7zpDfzR738OXWyzsrrO5uYNf+AFGc5JqqpEG0kSKRACIS1CWIyxFGXpRbRKMG8seuca%20uyomFoqwo7Ax5GVBU2qCRqOSIfFyynxvSlVVFPWC3qBDqFLSLGAxnvP4Y19jVlTM54ZubxVtanZm%20N1BRjZYlThq0MFhbe4KaBofGonFK4wS+ZWsakI4wUgRhlw9+6H384Ec+hGjf+39ritH+tdTrPLL/%20+7//c/8ZX/zCYzz/0iUWC9sqNg1hlKCUZTGf0+n2sbWmaRqOHjvEez/4fUxmY37/D/6AOI2RgUKF%20KWm8xGLmmM4KTNqh0RLnDKaucE6RRDFSObSbo8KK/iDkwx9+lOVlyOeQhK21XnsNdRS2U3nh2lG8%20vw2d8zyQuA0Z4W593i9E3u7jsAiPsG7zAu3XIYlCKdFyRcLnqBuLExKh2vhP19zkpBrnRZNRoJAR%20PPbY0zz70lmSJAMZY6VgPN0gSfrUTcWkMHz1qWucuzzma0+c4+1ve+DXHnzg1K8loWY23uKpJ56k%20KnKw0ElSsqTj4jim1+vRH/boL/WQoSOOY5IkJOskdDL1m8ujWwXtb+N19eLYzaYV2xsTTOFoCout%20HMoGRCJASYmSgqWlDoPljNFyH9n1kavGaCwCGYj9iLGbU1K3X4ac53OaRiMCRSQDf8jsx7laA8Ii%20ohACUA0cPH6Afm+Fsy9s0hmOuPf+e3j8yy9x9333UuQNm9s3KCuNDAOsCxn219B2grG2lRM4jDEY%20rYliRZRGlEWBFRqRSWQgKMqSfDZDOEma9WiM4fLuNerQ0Uk6rK6uILYMdVMyn42J0xBjNLX1gyKl%20FLP5BOdKsiymIPehh62bwFjfMhpn/Ge8z1RKgTACqx1COuJORtaL+NGf/Djrpw+9ZkfbN6Uz+qtc%20f/a559w/+ae/xZceexoZDBEypdNZBhlRzkq0cYRhTINlaWmJ1YPr1LqiqBrysmI2LZGqQ7lVEPSO%20cWj9NJvXp6ThkMXMkiYjqkLSWEPWURT1dY7eEfDjP/E+Th5PqcqaSCpockw95fjRHg++rs/qildG%20C/StLOG26bqpN2nvQIHA7OtU8MsZGmeppWN3MkZYyBKfpRQGkjSULVKyVKYgUApFgEVirfTZwwZe%20uWA5e+4G1zanODLCdBlLQtaDT3/mBT77uS/QHfQpy5K15TUOrBzk85/5ImVZUxcaayVZEiNcA6Zk%20ZZRy/Mgyu9vnefRN9/KmNz1IIGoCKZAywNSOxbykyLXn5pIYbTxPhzDEsSLNYtI0IooD1tZWCAJJ%20FEWoQPp9W0oQBv7PaShb4zEMR75+C/naIK9P/+GTrixLTp44xcbGBmncZbZXYhqHLQXKSpQLiFVA%20loSkieTYyTW6owD6QOBwoUXEoj1ILKqdhsoW+d7O+fljBmrd4KwmCEOUkDRG46xBSkWgImgErhII%20DfNduPDShJ2rFZFc4YkvvshTT77IdC9nkZeMJ7s4oXFohCzRbgKuBOHtFbQ2C0GDcA1hoDyXiT8w%20lZMI67DW4qwkSZepaksWJfQ6XbIwJYlDMIZFPqMsc4I4AqEotaXUDq0ltZYUzYI6XGCkRzu+ATMY%20W6FtjbUaK/xjSrqRR3O6pqjnPPDAA/zqf/vLfOBHv+c1xdjf8hyL73nn/aL6lX/ofuVX/wdefPkK%20S8tDdjeuMFo/wmh5wHgyQ+sKiyMMPZLIpznbu+P2dghJ0w52lLG+eojDB49S5te869g0VPWUJF2B%202lJWE44cX+Ltbz/CsRMp2nqCzugMYfDCRBe17vt2xYuwrfDNk9e3f7jb7s7bgNFNHVHZ1DTOYhpN%20UTW42pKlMaNhnzhUKAz7QZ8OSWMs+9qBxkBRVlzZ2KTbO0BRKlAJ1sIXHrvAF7/6JL3lFc6fP0+/%202yXr9njL217Pl7/4OLNpiZ03RINDOBdjraWuFlzf0MxnUyQRYXycg4fuQddTrC78Y05D0kzitI+c%20DJUvQqJdYWxdg3X+RtR1w4Vzmy1iMLclHwiCICAQIVJKJJYwDEjSwAUhSOVQyhGEguFSl8Vi5h9f%20XSGEIEkjlpaWuPOulX/vjfyVz110ly9f5dL5i1w4dx5jHA/df4MTJ+6g2Juj2tSESChvTnYe28Rx%20yGApozsMoIt3tzvRol91c1gm3Ku6cnC3cX7twRSqCKRq23gIVeAjbtrsaSvdzR1mUQd6o4TFRFPP%20C1bXlxhPd7h69YbfcAPEaQfrNOPpjCRW7YSN1oXtEK6VsrYV3Tkfq+NbSO+FFNJhhEAqTX99xFK3%20T1kUbOxcJ5KKTpphhSY3FWFjkUGIthZtLTU+R6smp3a+LRPtc+Ncg3bG80KiIc0SqiZnc3eT1dVV%20pjsTsm6Hn/6Zn+Z9H/6e33ytEfBrEqrzwffdLy5e+nvun/3WP+fCKxfprhxiMd/zc1jhVdZWayaT%20PYy0rT8mJAgT762pamwj0HXNYjqjLkqMbVha7lCUnnzTpmawlPE93/tW3v1ev8DRuhyhGrCZv6FU%20QuMEixJ6NcioPRXd/md3k/9BiJtje/dq6OjbLuEl8VEU4WRAWRQ+nyYSNwG/wSGVQiDxMzVBIP33%20bzRMFiVB1MG4iMZKAgUvvLjJ5x57gt1JQVg2HDh4mMVswjxf8Id/8Bmvz6otMhtibETdREgUYdAB%20XTHZm7I0HLG6eidNA0UpqSsvXIukbH1zEUI6rG1QSvtd68IRSIEKYqIoJYwUaZqgTU3TNNR1TVMb%20/7lpMFoiyChLTZ4b8gLC0Ad9WWdwznDp4g2m0wlBKCnLnLouieIAIS7wmc9GbrA8RIUBgVRcv36d%203e09sJbFbIG0kkBI9rb3OHvmFdI4Bit4JbjGPace9lGrZQNWEKqAQEmM1igFWT9i+WAPem0hkoDV%20GIwPw0P4BAhcK0a9NUm7Oe0UYBuHDIV/W1gH1uIzyjxFgPSrp1EgpSTqwsqBmGpu2ShzDh1f5sTp%20w2RZl0ZLrl/fpGk0UgrSpIuh8Vo14dX0ri32+7/2I2Wd82vesQ6c9IeHFNjIcejkYU6dvIPp7g4v%20PPsc070xum4wjaY2NYHSSN3QGEtjoLbOZ4O5hsZU/vti2x1qFuu0t3xgKesCJy39fp+NG9dZX1/h%20Z37m7/L+D7wflb32rfxrlvD1Cz/3PrE9nrjf+q3fprFztHXkhUOplDBNqBaa2XxKaRrCIGYwXEGF%20Cbop0Y1Fa8fOjW3G2xX5RNPpjRjPdgmCLoiGTi/hxB2HufvuiOEILj07oZs6sKGX8DuBUgGVsSxq%20qAykApwUSKf8HWh9YfqLo17RktLOgXUWhWjVRpAlEYEMSYKQQgZkSUoYKg/zne/HG2GwxoHzIaDG%20wnQOe3sFMuhQ6ZDuoMsr5ws+9edfpjIhYdrDOU1R1qweOECoAkaDEbqsSeOYphQ02qvzrJQESUqa%20dFnMNL1uSidbosxBawkuQMp9XkRjqJDOINycIHL0OilJJ6OTRqTdgH4X4o43+WqXIayPozA1zBaw%20mC2YLwx1ETGfNSwWC4wxONv69ZxECkGahCThGp1ORl7MsVaTZhHPP/88f/Knn2dz+wYyCun3euSz%20OVVR0u/1CAkIhGS8s0soFbO9CcePHiMKIjYu7nH5lS3uPHUHjao8MayE/5B+BJ/2Y5IRN+M0EA4r%20TIuMHA51Mx36Vf3Z7RojB9Y6pGthsfURw7LtQ52z7V879i2MCOiMYGmSsreToyLBo299iL0dzZVL%20N9Bac21jk7ys6PY6zPIxVvrxiBfZ7gdn+dVD5jarirWm5TAdQigchvl4h+3JDQ6UI0ygcbEjd3Oa%20XKOrmjhOkKbB2RBjDNo4GmuxwnnSmqblvzw579GRwQgNwtA4TZam1HVOFCs+/mMf47/4lV98IluS%20j3w7uMHXNG7w5372Y2hX80/+6f8ERHTiDsY2OGcIAkkc++THsqwR0xkq1Ax6I+Koz+52Tj7R1HqB%20kBGINjkyUFRlRRhFzBcFX/zSLi4YcejgOpOxRgV+GqZNg3GGvNHkVYRGYQTtydTiIeFVc3+53cIf%20l6olOFUbJgKOEIkIQ4I0JY0TIhRVU6MkNE3dapQCwiBEAtMZ7GwumC8c0zkMR12mc3jsqy9w6cqE%20E6fvZHdymeFSH63nzCdzmkXB0ZWDvP2tb+Xaues889jXkUsjZJDgrKZaTBCJoConxGGGbL1WgQgR%20YYKSDc5pcDVhbEhiGHQE/WHM6vIS/SXhpQa3xaXUFUTCSyA6ob9n+w1URYeihL1dSMcBwV7NbNpQ%20FhqtHYFKCMOY+dQjqrpUbbRvQhwOEC4hn4EKV5jlJXXtmE8Mi0nBbmQRRmPrBltrssgH1GdBzvHD%20Q+aTKV/74jMcWT1OP84g0O1kzKBCRdoLSHohJK0o1fk3lgva0VjLE7nbVari1oj05opEBzK4ldZg%20ARGom8JIKRUNGicEUgmcsWAkIoTuELrDgO2ruxw4tIQ2U8ylkuW1EVWjuXDxAmUj0Pt7YJ1v5D1S%2080E00gmE84S6w2FvWpM8hjLCYXC8cu5lxrNtkihkMtmjokCmAWEWUVY1zgmcaTyithbtrM8HUwKa%205mZ7iLA42rZdel4rCB3a5MyLMX/np/8OP/9LP8e3qxDBNxEh8s1es8L+38s98cCx03d/oixnPPPs%20N9CNoGkgShJUEPp+3oKuNEJFCKc4dvwk/c6A8c6MxaIkCTskcYpuLFHWR4QJ2ghOHDtJkiY888w3%20GE9qVpZXiUJJGktCJYEAJyoauyBMLP1+ShYD0nn9yM3JmWhvCm4VJGHbvXju5s3gFeMKnEVaUFYg%20LUSBIpQS5zSxCrDa20biIEUpgdWwe6PmyrU9pkVG1FllPoff+9dfYHMzJ0yX2d6dkmUZZV1y+OAB%208tmY6c4uG5ev8dA99xOphLx0VFVIHKUIq7HNnE4Gwi2484513vLm04QKnNWgK4wpcDYnigxLQ8XK%20csSJkyOWlxMGS5Ik8QsjHBZjK4wtCUKLVBqEvsljBIEgjqHTgdEIun1JmmVEscSh0brBWq80D4KI%20uta+LZKKKIoxWrOzs4M2irOXtrlydY/FTJPnDcXCoAhxWqErSMIeihjbQBZl3HfnA8RBxtbGLuvL%20q6wsDQgDr9zHNcjQ0h3G9FYSop5EhMaT1sp5zkcov0OeW2oLIbxi1bVaeXd78QEWRUORl1jnfISy%20V8pi2xD8xulWowa6MiipCIBy4dja2iHL+pR5w/VrN2hqQ1k37I0nqFBS2jlGNlj2NTwaMAhnfaJo%20SwW0uoObKVqubfnTXofJfMpktkvZFDS2xkrru0oJpW6oraG2GiMsvlFtQBlUKDC29vNDsS/MtVip%20vRBXaYpqgXEV3//hD/IPfvmXOHXf0W+rKOQ1Q0a9VP5Ipe3fO3UgFr/6j/+BG89nfOpPnmQ2c1RV%20gQpAqYRIhmgtCVSEUiH5LGdczJnPpjgjsbImkDHOKfJZTtBN6Q/7nL77DgDOnL3AVx67wLkzW7z7%203Y9y5GjCgQOQpJ58LKuCnb2KrR1FP+uQWYuM5b/1g++j81t/cUvuKNsiFeP1JkJKlArQ7B8ylkQo%20lJBoBEEQEoWSuoHZ2LG3vcd4d4aSy8xy+OpXz/L44y9y+Pj9SBmxmO7QGx6gXhRcvbLJ6eNHWaQp%20g6jDE48/zmpvnVPHTjAeX8HWNYEsWT/S5/77jzMbX+XOUwcY9vxjMSZE2BAVRqRdxWApYG0tY2W5%20w6ANknP7dITRKGUJgn1xgruJEqxpMLb2vi4RIJREBILekm/pOv2UtOMIQsPeTklV1kjVI0l9C2VM%20A6JmvsjZ2dmiqEqiuE9VTbBakER9pIxwzgvAQpVQlT7K1DYBupRIl7A0SNjdHPPsMy9w4uAK8SBD%20BdBYg0QTJoowaRFM6HD7ueqtjNFymw4M207NvAMflN8j1r7+dWPYm+xSFSW9QY8wDP1r74wfrkiB%200c5rl4TASQ0qRMSQpJI4kSAaVlYHHDmyznhyHms1nU4HTYVVnvvxgxWDavOscZ4uMK3RUe4/vpZd%20t87zm2WZ++BA59dJG6fbcH5BVTUkcQdj/MHpRby27US814y2bcWZNmDf+HZQeN5otNzlzW95hH/0%20q/8V9z9857ddnfYtR0bW2juEEHsAgRRPAHTi8PqDr3/9Dzzz9eeZTmeMd7exxjEarbA0WPZpc3mD%200Y7dnQm7G9vIIGHQG6G1wTYGFUS4ICXrDVr7Bmxu7rC3NyFNBuxsjTlz5jJNI0myId2+IE4iyqZG%20W0OaxiwPMpQApeRt+WnejCTwRkCPldvPuFdtEPb7qCyxDH2kmlCYuvFEpzVYq6kbDTJGBpJ5Dhtb%20JZevjrmypTHxOn/858/x9DNn6A3XqSvB9WubHDx8mI3Ll4mUIMRSzhfEMma6O6Of9dna3OTK9U2s%20UxRVThgI7rv3Tr73PQ8z6PVY6qeMhv02CmWGlCVpBstLEWtrCWsHUvp96QtQCwWEsKhAtMM+60lT%20a7zGRCikVKh2qiSFQkhDpcdYKpIgIO0EZEns4YbxYr+O82QAACAASURBVM/FYkGWdZBCMZ/PiZOU%20IIy5cvU6V6/tUFQBGxs7OOe3kzZVjdPmponaNpYojKgWFcLBqL9EFmYII8inM06fuINumhBGIbUu%20IDD0RzHd5RSZgJWaBt2StAJBgESi9lFRm0jKbWt+bopcncM6y+7uLot8QZqmdHsZQeDbeSl99LDW%20tQ8OxBdzqSIA8mnDdFywszMlDDpoI7l2fYvFoqQ2NbuTHQg14AuIwCH3EYq0OKGBxvuGlPVWAelR%20nMVghKW2fnNrlARo63etiUARxwlOOBptvMMe59GjdDjjRY1+AEOLCm072Nc4qTHC4GTN277rLfyj%20/+Yf8tCbH/gbkcl+y4vRfiF6FfyS4om1QeeTj7zpkU985Uuf5eLFcyyNlpjszShKzcponTzXWC1R%20IsJYCU6RBClWG8q8RKgAGUZY4UhCibM1ZTFnMZtRFAWjlYOooMOZF87y3IvnsfQYLnWJ0y6Vi1nM%205wTOrwrqpAFhsK+gNkhpcU7jrNuX6LYwf9/s6qG1QBLKEIXE1A7TGEIh/KI+Z1BhgFPe2FQ5uHAd%20vvrMFa7sOIaH7uRff+oSr1wtmMxqGuNw1mJ1yWxni0wKOmHMcneIrAX1vC3Oe2Mm+YxpOaMSNUkn%20QRBy150PkC8kTsOB1R6rKyEqyHF2lyw1HD7S59ixAcvLEUkqkcrDciGdz/Vub/SbpVYopAx9e8st%20wzBCtSyGIVB+4uWcwBhHqBSdLEaJkLpqMI0lLyviKCPNBixygwq6nLuwgZI98kIznc6pihzdNISB%20xOLfVJ1uitUNi9mU1z34EO949G1ILaC29OIei70FipDjR497DsVWJJmk0w/or2VYalywj3j8xFEh%20UVbcHJ8LTFsI2umVcO0Ke1+kmqah3+uyurJMp+NzuAT4xRLcCrsXzqBkyzE5B5WXkVy5dIOyhNoo%20jh5fY3s3ZzKfUpua6XwXJRxREPjH35TgGsJYgGiobU5/kLI33eLgoVUGSxmT2Q5ITRiAdjVhonDS%20F01rLc5BFPiftakasJ6CUFK0MSDaIyLnMNZQG0fa7bOoFrhQMFrtsz2+gREl3/2et/PP/pff4Ngd%20R383jKPf/Y+iGP27rtWlzidP33X3JyaTCc8/+yIqSHFGcmN7zGhpFeEEcdIBF2CMxWrQjUPJgG5v%20SG0DrPGWkiNHjnPP3fezsrJOWQnGeyX5XkV3eNC/Ac5e4fKVPbLOKqOVGEUPXRYoGRDGvhL5gWaD%20lI5AejQgWmRwa9Rya/RSV40XAkqFkoJASWQb0l9pP0jWIsRKyctnC578xjWS3lGidJk//9JVnnx+%20i+0949cDSwWmoZrP0PMFTZGz2B0TSsWgMyBJEvIiZ2d3h8ViD1uWEEVoDYcOnWLQX2W2O+Xg+hrr%20qxFRbBBul7RrWD/QYf3gkKVlb/Z0osLa+hbyu90w9yrcp25Nd269/W7yaAjTphfQTisVoQIhAgIV%20sVhU1LUBEaCdpK4lZQkvvHSeybRgeWkZXXvvXlOXIDSdbgdd59wYbzDsDnjTG9/I+9/zvawvrzG+%20sYOsHcPOErFKGN+Y0O0ucfTIMkJApWf0ljLSToSK5W3FaH9UrlqAuz9Fs7dWv7zqOXCtUdYiZatA%20Fn58f1OHxs0hFFL5wGE/mVLYGhZzzXyqmU4qsmzIzk5BEIZs3dhkPN8lySIW8xm6rjC6RgUQKEdj%20cqyrCSKY52Puvvs0r5x9ia2dDV730H2srS0jhCGIAyrTZsoL/xit3Q+IE2htiILwJurytqd9SYq3%20u3QHQ3Yne8hIEESSK1sXSeKAj//4x/jF//zvc/8b7hd/U4Xo216MAI4fWfvk4WN3fuLq5Q1eeeUC%20WkOSdCjLCm0MgQxxSJyTBDJGiQQhIxwJYTikaQLqypLFQ1ZW1kjjhMU0ZLpX0+0fYrZTUc01abpM%20WRrOnb3KfBKxspwhRELjHNoqnIIoFSRRAIQ0NDeDQqzxLYtv4VueCOm3g0iBNg7TeHjvLW4KR4SI%20Qma55Op1zfMvbbC1ZQjjZa5cMfzhH3+JyQwaI8AYTF1TLvzNKRHEYUivk4F1NLpCKbjz7jv43ve+%20h4cefpj+8gE2Nyc0Y83qgTuQLuDKhYscOrjEoYMJgwEIMWF1LeXokWVW1gRR3GouRUWjSwIV3iw8%20r3pDOq/FuT1C5S9LAXDO3gyYc86T1FJ6q00cKaZTwyKvqGsLbdxpntecv3CVuvF78O65724++tEf%204tSpk1y5eonr168ShwEHVlbJ4pgH776P9eU1rl+8wtXzlwhFQC/rIS1M90qwklMnDhFGMVWzYHV9%20RNoLIJGguK1F8+uefe1tCUGpbitGtwqua0WPQsj2Z7r14YvRbUdT27Za46UhQka4SjIe12xcnzBf%20aCKVUdcNR4+uE0aKRTHl8JED7Gxv0ZgKrSukcuBqGl0SR4qlpQHdbsq1jWvce+89/Mqv/Nd85KM/%20RBiF3LixwSLPESqiqGuMc6gg8DKPfcJ7H79a6zfXOL8yzLefDu0slfGrqcMwYDLZJo4DfvhjH+EX%20funneePbHv4bdzB+24sRwLHDo08eOHT6E+fPnmdj4wZxklCVFXGcImWAcBLrAgKRoFSCsyFFCSoc%204AhpSsNsVrKYGSYTx3yisSbC1CFWpEjVQRCha0lVChZTw+UrY1QYMVmU1FphpfL3ZuS5WyHCm29A%20vzVWgVXgFNLKVjkrcMj/n703DbYrO8s0n7XWns4+59xz7qBZSkk5Z1rpzLTTJo1tbMBUMXjEAy5j%20zDw0FLSL7ooiOqIj4F/96Kr+0REd0a5ucBEBNKaZyg24jAEDxvOQs1JKSVfDnYcz73kN/WOdK2Wm%20aegOfjjTZitu5L0ZUsSRztnf/tb3ve/zepsHEjWPiDEWSg3jKVy+OuZrT1wjK1p0Oqd55pkBf/6p%20rzAYGIxMCcIYhaMqcpp8BtoSRZIkCojDgP39XZqmRir/4YqigCOHD3Hugds4d//DDCcRg90MUxvQ%20DXfcfpSTJ2LSdkWn03D8xAJHj4aEkR9SI2ukMB6ONU9rFy/+JeSLpA1/3+fSz9C87sZTLj3t4KCL%20gEaHzGYlWVZjCIiiDsNRzo21bXDK58lbw4kTx0nbMevr6+zu7tDoBoljIemwkHaYjSasrV6nmpZ0%204jZJEBOKBGVSyklNp71At9tChYLeUot4eX6iDMRcx/P8v4n/dav+vLgYiXkhEjcHv7c6oltqbTe3%20Bfk5tsAYfI69lOgSRvsVezsTwiBlNsnodheo64qynHH+4hPcWLvKeDygKDOMrpDSIIRBSkcriWl3%20UvJ8im4afv7nf5YgkHz0o7/O+sYNEI7FpSVEGJEXFU3jGfNKKKz13ZwKJHXdYOYRWmI+G/XKBot1%20lkpX9Bd75MWYMFG8//3v5Rc//Au84tX3vCSs1N+QYgRw++mlXzt28p5f3djc4sJzF4miiFar5f+R%20VYRwAXUF1iikaCFIKCtLFLcIgwijLXlWMh5lFLMGZwOyaU0r6SFdRDHK0bWg3V5G2hab2yPWdvbZ%20HeXktaRsJHnhKEu/Bg4iT55USKSQN8/e8nnbttr5bYgUAqn8OrUoYXvPsbZV8Oxzu6xeHbI3kMSt%2025hMJX/xV+d56skN+ounmBYVB58PXVfosoSmxjQ1dZGR5zP6/TaLSz3W12+wubrKYDpmdfUqTz25%20zvGjd9BUC2TThuXFZdI4oL8ouO22Nr1+w+FDisNHWyz2/bCjbjKk0n4uNrfavODo9f9afF788/PS%20UubePYed83/8MQEgjCR57hiPC+pGEAZdNjaHrK/tYpwgSkKefOpJLl66yLXr19nb30MK0NowHA7Q%20eeNJrI0jcJLQBZSTnHyaE8s2okrIJxW6rDh27DDtdowTlu6K9HvhcF445kdRMe/2bqquv/509oKC%208/wj2vO/Di7tbrp7cE4inO+lqxns72WM9kuisMVkmtNfXGB7b5390RaNmfDEk19hOhn77ZU0CGWQ%20CoJQEQbBTRX77Xee5a677uRLX/kC166tsnJ4iaLMkKFkcekok2lGnmf+dSoflYXw4lxjrX9mKq+F%20kgF+OO4MVhhEIMjLKUsrPd7znnfxc//NT3PPw7e/ZJgO39CM5X/5XXeKIPh5p5Tiz//y76iqCqW6%20dLunSNMOVgvq0hIEiiAIMI0hkL4tNcogrKZpcmiMN3K2OmSzIVLEdBdXwBmmgxl1pFg4fIrBYJtx%20WTAa7zIYlEwnHYoiZZY5ep2GYystWrFgIfYMm0jecuZb4T+MxnlxYDazTCcVw1HJ7t6Ywbhkmguc%20WODQoWPsj+Ezn7nCtdUJrfQ4ZSGIwwRnGqqyQBcVaOMNc9YLFJ3TxHGffr+LkCdYWlpieXmZp54+%20z+aNDXrde1Ficd5lVBTjfcaThiA8RNIS9JcS0raab38sYSRvKrH/6decdWn90dR3hQdKXn9cS9rQ%207beJ0gll7fVAjXaoMCWSIXk5pNXqIAgYDqYMh2OsdSRxm7AfYIqKvd0hUR1wtH+IhIDJdMq0mkEW%200zIrJEHCeLditlvTX0yYDWv0qEWQHgyXb+3K3MGKX6oXenzgBVS8f8zo65zz0g9p0DgiQpTyb11d%20wyyH2az2frCiIE0jGp2DqGn0jDe9+VHyYszu5ojppGAwGDCbTeZJOCEqColjRd0YrIG/+dvP0O+n%203HfuPgbDHZYPL3PXXfdw6fIWcRx7fvbcSqKUQmt/BPYiRuEjhYTFaIPBgPEq7KIuOHRomfe+7138%209M/9FCfvPPKSgst8wwPfv/s7bhNK/ZyTyvKVr1xgd3fCbLrNwkJMHC0Q4GXCZV2RpAnOTWkai7Wg%20ZBspFVZUqEBQlxlpe4kwiDEmw2pHEgdIBKP9nGT5KHk2Zqua4uqKphRMRoadI4rFvmZrqaLTcvQ6%20Ie1EEipFKC1KeKSDlYKqqZlOC/YGY6aTiqoSVFpR1yEq7NNqLzOcwhe/eJ3Hn7xK3SQkcY+iLGn3%20IrI8Q5cFOEcUxbhA4rTDWX8A3Ny4TrsVcO6+e1lcOcT5Zy5Q5iXvevf7uP3OY/ztX48YjUY0pYBm%20zOEjp+kvBiBm9Pp9gsjM7y6DUmp+v704W0T+AwXnHyhHQt2cQ4gDM7Ewc22MAg1p2ycOT6cWGYDR%20gjBIkSqkHO8TRim9fo8wVIRxzM7WFsPxDgGSQyvHcXlFkWvysCGJE3oLy5i8psg1tqjoLi9iS8PV%205zbpLZ9lIU4YrBsO9xWkzLsVfVNrZOd0KiGCF/rRnsc2/8cK0cHvk2gaGiyOQPiVfpHDeFQwnRaE%20QYtKax/9XszY3LrO3v4W99x3G4+85kE21vZZXb1O0UzJa9CVpTE+lThpp4gKRpMJs2LI4tL9nD5z%20lrPyFMZUXLx0gb1hRV5m8yQaebP7w4LGeNbEXE+lrZ53YY4wCoiigDPHT/DWd7yVD33ogy+5QvQN%20L0Z5qf99mgS/8ubXnxKLi/+D+w//4X/lrz/zNa5f3mFYK9qpIE68V6qqaj80nK9p4yAiDDSmrIFq%20rl2J0XqPuhxjTUCgWqgo9qtoLRivj5HdFkk3ZbQ35bG9fdZX4aEHj/GKc4cps4xWq6YVVwSqQtgC%20awvEgV1EeAe30Y6qsTgboYKUIO4QxCllHaItfPFL1/mrT3+ZQC0SxSlZVtBqJ2TTfYpyCtax0OnS%20CiVVOWE8mKHzjHghoX9kGYThC1/8HEGUMhlnZLMK3cCzz1Y89tiXuf3MXZy77zSbN56ku+Djv9vd%20gLQNQhi0uelT9zMQEc7vvX8C0N/d4sZZa28Cwhxe2+IQSCUJEwjjAOcqGgOzvCLLNEJYZpOK6bRi%20cTHh5KlTdLuL7O+NKUrDkaUVBvtTWihaSUBVWjLT0IvaiCgiG5XEfgVKVTQ8d/4Kt92+xMqJHntb%20Y7rHlmgtzud/iJuCVV9swrnYUX5d/NQtjTN///FVuPmA3wANwtU44QPvnYWqhDyryLMG5QKUCnEW%20oihkd3cXIQSz2YQHH3yAy5c+znQ2oCwz4jgilNJ3uEVBmiZkRY6gZjHtcOHKJfaGGyz0WwyHu1RV%20w9ZOxnQ6w5j5g2ZuoBXOet2cFP6YJiXSeKqBCiXtNCFJE37oA+/lJ37yx+gf6b0kcXvfsJkRQBjI%20Tx18f/RQ/GuveOWjv7q/u8fq1eto7XBOohtDoAKSVnKTuyKFz7c3WuOsJVQBYaiwtsa6BiUhigRK%20zRMwnUZKBTLB1gJbGZQLkSYmHzdsrI+4cH6N48fP0O62aKUpWRmQNQYVdXBBTFaCUktYu4C2KVZ0%20MLQxoo1QXWSgiBP4y7+8xue/8BSQoMKU2bTAGE0cScpiSBIrokB6rKdtqKuSRheEkSRQlgcfOsf9%20997LuXMPsNhbYrg/IVQJRWW5ePkqRluc1WxvXWehI7jnnkOcPBGSpiVHj7YII0s43xoJYqQM5tsv%209fV0yxd0ROKm+vqgGbDW61mk8CJRqw/m2HauSm7mHZNf79e1n6Wtr+VokzKZSa5c3uHG9V2urK6R%20FwVhGFHkNZvbe1y8cIntrV3SqE02zVjqLaMrg6kMQguWFpZJ4jaT4ZTQhbREiq4qOu3E0xKkptXt%20ELUFYUsRJxLZ8TOTWuc4iU98nR/cxE2ZhpsXl4Ni5L/39gx7s/redNA7L0oUosEJTUCEdBH5FDZv%20jNjeHGObAFxAU1u0cQyGA66srnLi1DHOnL0DGSgOHznCE08+gbWWLJ+xPxggA0lV16wcXsIJSxBA%20XswYDPdZ27jOtRtXmcwmnveV1WgraEyDDCTtThsnHNPZFG1qojjw0D5dEkYSJwz7k33uvecufunf%20/CI/+9/+lEg6ya/xEr2+ocXoxdfyovy1u+99+FdxkqefepoiK2klqQeCVxVRMmcTaU2jNUZbr7Uw%20zm8YpCerS+dh4gI8HN35fI+AGGEFyimUCLB1QFNKjA6wNuTixTWGI02ULLC4EhK3uhSNojKSIF6k%20mMUYk+JkmyBsEbZaREmEmkfe/N3nhjx3aY3hoETJGElAmec0dYlzNaaZEoUQSuUpgs5Qlzl1OcVR%20I0TD5tYNtrc2WFpc5pFHHuT13/4ARw7fz7Vr6+wPxhTZjLIq0M2UxX7A2duXuOOODnfe1SJtQRB4%20j7pzPlBAzLkotwqR+wcH2HYO87LWx0t5w+Vcc/OCPzKnH3pT39xGLDEG1tcqskyS5yHXb+yxtTlm%20Z3vfFzknUVFMUZTs7+7TaE0UxkghGY8nxEFMLGOKsqDbWuDkiVMkUQvbOLLhmCMrh1k+tOhvtOEe%20cRpy+uxRalMhE0mUSI8BUQ55wKlyzy9KvMDx5e2nXnEm5+qkgwgqECgZIGXg+UlYAgKqXDAZGnY3%20Sva3C6pMIEyMMyELC8uMRkMuX7pCGAbcdc+9LC4uU9eazY0NVlevMBoNmc2mBEFAp9MmLzL29nZo%20tSIvrlUOpJ0TjRzGaKrGMMsqwiAmTVNa7ZQojtC6pqrKm/aO8WxCGCtULLFO8/o3vI5f+uVf5D0/%20/IMvefhw8FJ7QXefDcRP/Pi7XTtN+Z3f/lMuXbpCkqwQx4eoS0CkhEFCSIQUMZYI10DVzMnVrnle%20WqhXxjobIVyNFBmBUQgXQRVjHTQ6wGiJs5rZ2g57gzHbuxMefNVp7r6/zeJyC0cLXUOnN28K5h/n%20rPRokP1Bw2Ra8tnPP850UqKNIFKCui6o6xm2qimdIElAOYWuNGVZelZQOQFXEQWCqsjodltEUcDV%20a1dYu7HPkUOn6SSHEYTk4wF33H+Os6dvR7qSU0cTDh/pUxQZ+/uCQ8vt502G5vqZFyMN/5HjmnMO%20o93NYmStRSmvr4nDW3EE7uY8xX+5uZpZG7DOa7GyovC8chRFZYjjGAhIWws0TUNZaz+MbzRoQ5Km%20dDoLREYyqjJ2hvt0NjfIhmOm+2M6xFQuQ0TLLC2ucOXagEsXb3DPQ7cjnKNen9IEET0RE/cSUA5j%20vTI8iIP5ylu8KCdBzP8+7uaU6UD86ayksb4Y+I4ckjAlESHT3DDayRhsFpS5f7gpqQi6Ic5E4CLO%20nr2PqhD81V98nmvrq+zvrlHVBVEU0e12GQwG7A12abUSev1FtPXkByVAqhBEPMfhaHCSJAlppy2Q%20grquKIqMrMgp68IPrI3myLHDDIY7VHnBD73n3fzrD/8Cr3zoFS8LCvpLrhhpbd9yz52h+Hf/9u0/%20k6bp//bR3/g9rl/bJc8rHCuoEJAOa+aOcRfdjCEWah47hPHrZmexJkA6OxcVa4QLES71cwUXeRSp%20U9gGOgsnyIsdnvnaVW6sbfDqzXt58OGThCHs7RbYWjCbzRhNB+RlTmUKsrxkOJoynhYEqk1AjJQh%20daUp8hm2LgCN044qq1Au9TOsWqOcI2jFtNI2i0sJD5x7E8aWbG/vsnZjm+2NK8ThNdrJIXbXt2kd%20W+YNb3gNd90Bly9CGhekqSIMQ38TCeY30j9hNHQQ/fy8r4PNzfNnLQex0Ae8b+cEbr5dsha0tkwn%20JWWtaaUd2t2F+fsDUZTQaS+wuLhMVWfoupi7BB37kwFtGaKkojQFq+uXcYVmKe1x++HbyGYzdoe7%203Ll4B/3eIba31nnqsau88g1nGO1l6EhTy4Yl2SHtK6SLEdbitB9Bi3nRFHNo2k1dGQdyADXvJANQ%20fmvoa3mEspAPYHt9xvr1GaM9A3qRfqtLoBSVhiuX9jh/8SLXrl9jOiu4tnada9dWmWUj2m1Hux1j%20dMOhQ4fodDpcvbqKNjXj8T6dburNssYz2oUICaNgjhGWc1KpIMsyptOpF5Y7g4oUcRST5zPG2ZDe%20Up93/eDb+O/++w9z8rZjL5s4hpdcMQrmc6Q44iM/+9NvecvKcue9/+kjv8kXv3SRdr81Nz9qcBHG%20hjRaoWSLOE6A0j/jHH4OYGMvPnEGISzI0Fs95iZYJa3PRZPzp7quiYOERnSZ7mV89bOXWbs8JA4j%208nJG0WTMihGzYgKuIUgD4rSFVDFRvAA2RKkEoSVlU6GrGoFBSYNwNcbU6AZwIUZrpAMnGnSlqUvH%20hYvP8MAr7+P+++/l2NHbuHJhl4vPbjKpClZO3k7pcsrSsbMj2NnZQy4HGN1CiJA0lXPdz0ELNPer%20v9j98I8MsV8s/HPOEQQhYXgLTOase5F6W2HnDvmiBG0Fxgkms4yyLGm3O6ysrHDl0gWi0FE0OVJZ%20GlNT1yVVXdAKJc5ZiiJHBBFpEFCLCqsret0Od9xzmgfO3s8TX3ic3dEu7d0e7c4SbjDkiSeucteD%20Z5DdHvk4oyansY6jrk+cQjA/eqk5RQjAWTsneN6yxEgRYIzD6DkNVIBSvlMRAobbsHOj5Ma1KdlE%200gqPE4WC8Qj29ibs7G3y1LNPsr27xmS6z/UbG2xsb6KCgDBOWFruc9upQ0wmI8oqZzKbEESK7kIH%20Y2sfA68gVOJm7LaPXpZIJ8lmE6zVFEWBcZZWy9MsbON7urLKuePu2/nRH/sRPvDBH+LwkcWXVS5M%208FJ+cd0O7/uxDz1KO5XuY//Xn/Gnn/oqeb6PpEu3fYROb4mmCvyNHTQ0TXNTVevmyYmCEKFihHSo%200PguaM4ANs77qBz+SKJdAbohTlK67Q5Nqbn6zAApI5J2QB3WtHpdTh89RpRKGluRFQVlYTAOFIGn%20H1rr0xmE9CJBq7G2pp0EgCXPp5iyQcYxaRqz0GuxtJQymmyysbFGr7fIHWfP8Yq7X8NnF8/zxc9d%20YG9tg1Pn7uLSpStcX20RB5alO0+iFIyGM4YDxfEjbU8hlHO0qGS+AtPz5b76/1SMlJI3vVnOuZs/%20HxxRb3VRvsUQBHPDKWQzg25AqZCqbCiqmnYS0ul0aHda9Lopmzvr1E1B3AooiqmfP8kIpTxKJkZS%20ZjOclXSSlLQX0urFDKY7iNDhGsF4OqO/eJTF5eNs7d3gwjP73P2aZUxpyE1G2YxxVtFb6tJJPfZE%20RLdEizfDpm6lmqObeazUnKZiDMwmMJ1qqolgeK1EZzGhPkYCjHdgfW3I5UurbG6tMxjvMprukPZC%204qTLLJsRRR2iVkJVTNjdHdDUM7a2NohiycMPP8Q73vkDbG2t8bsf+22fOKvmzPEgQgjhZWjW+tz7%20JkcKXyXj2OfljaYj8jKn1Yp583d/Fx/6sQ/ynvd938synOolV4yyybZrL7xQA/He97xWnDpzwmX6%20f+HxJ6+xcfkqE5fR6zYYl9IYhTARSoY4aXFWIUQDrkGIyLfmymGdz4gwTmNNjRPlvBj5RjwMLVVd%20UueCiC6pWCAMuggSIgVHThzizLmj3HVvgopg9XrBhQsX2N4aeBSGUx4Z01hvl5ivpnxx0jS116iY%202iCCiJWlRQ4fWWb5cJfllQ6v+bZ3sL5xjcuXVzl//jyj3We4fHGfTmuR48dv58zdZ1jbWOP67hbH%20Di3OvXM+kamuNcb4gb0F78rHzL8OQpbif7gYHXjxpH8g+5vhed4sd+uI5hA3iZkCLyoschgOp+RF%20hQo686OFvdlpnTt3P3ffeZZPf+YvWVtfpd1JqJ0iTRIENXk2IcB5QmZoUEIRpwqrNFk9Ze/6DbrB%20Au1uDyskg2FGXQrCYIHzT1+nf7xD+4iATkQ+mbG1PiSb1XTbHZKFiFZPIENvvwkCPBXU+mOle37U%203TydKJ/B/l7N1tYOs12LnK5QjgSDvRmb62OuXNrm+rVN8rxEhpbGKVpJH6tLrLNks5q41cJZBTLk%20wup5Xv2Ku3n41a9hcanLA6+8l0df9whXr17myfOP8fjjX8NaaIxGNn5O5NzcEGsMaStEybnKWghm%20RY4xhrNnz/LQw+f45X/7yzz8mru/rhAVdf7vW1H6K/9cjP5/XgeFyDl7uxDyZljco4+cEP/xf/41%2099GPfozf+s0/Ym1tn6JUBHKRIExJoh5VVSOd8DqQg+5A+COaUJpK+62PNQLrApAJSgQ+6RBLlTc+%20pgdFNhmjqEnjPpGMqIqctevb9I+0KE8kGGDrKm6xogAAIABJREFUxhYbN7Yoy5JWq+s9YNrQ2Apn%20ZxibI3WJEDVS4RW3oU8BjeOAMDZMsh32n7uKXG147Mm/5ezZMzz6bW/k0FKfT/zJk3xleJEkVKio%20xXhUMhzkZJOSeqHCOJ8bjwyYTqY0pkdoFE6JOUzL3CxIzpm5Ec++oCAdpGY8Py9OMv95TsgwN29U%20jXDN8yMPfTT3fAycFzAcZ2SFI00VMvSJIlZ4ek4UR5w6dYQkiSnLnDBxmCLDKkmZj1nptzFVQRpD%20q5sQuIB8NmO8NUQAK1GPlcUOtggoK8Pm1ctUpeHEySPsDWZcuzbitlaffnsRZwXZOKcqZ0ySingU%20kvZSokTR7iS02hBHcxC/nSstDJQ5TEaGfFqTTzWzaUU+gXqWMFwt2VzdY219h9m0Jitq6kLibOA3%20o5VBRYJpNiNp+yQVoxsmoz3iBO44dZogjphlE9a3rrK1vU5ZZ+impNGWKEpoTE3TGIwpfJcqw7lK%20W6EigRIWK6DWFRbNsRNHeOe73sqHfvxD3HXf359p9nIoRC/pY9rzC9HBde+pWPz0j73fHV1a4nd+%20++M8/sQqzhjCaJFsmmFsQhR3kGFIWXt3tApiZOi7IBkkNBpQklAGIAtP7tNeMGkxmEZhiRAixFlL%20UWlqNUUoS0sozn/paS488QytToxTDbKyRM4hmgypBChDnGgIGmzjMJWjKX1YXxCFlMUMlGWxm9Bb%20FpQ6Y3vjKtXOOmJxka3tdS5fus5bv/d9YB1JpHA6ZzIesvrcJnv7U1YOtRmP90Fo6iag242YTBuu%20X8u5+84UKaAqHfG8EdKmAsAID9nyiBR5Uxoo5l2Pel7TZA42/sp3Qto1BKHBNTXOaKKkDUQ0WlJr%20/2c2N2fMZtoHL4QwGo9ZWOqRxC22d7fY3R/xhx//OLu728RxRJVN6HdjVnoSnQQcWVacOn6Gxc4C%20RW7Y3pmxYYaUWrE2GBIfSqGTkHZ7bK6NKUKHNoK1wZDuYsrjj19i6dhrOX1nyM50gVa3zawaUJuG%20aelgECGkIAgLglh6rlWkPJS+sYwGU2KVQpWQjSLKYcBkCNsbOfvrI248W9LUAWU9D+gMFCoIsLKh%20NCW1q3F1DlIwyybeBVBVRKLG6Zq6gSvXNmmahjiNqaqSj//Jf6XIxuwN96gbhwgigsjgdIW1BhFq%20VKg8jyryeYF1XdPoivvuv4+f+qmf4Id/9AfvkJIrvMyv4OX0Yqva/swdp0Lx4V/4ARZ7ffef//Pv%2089jXnqOpLElrkbqqsda3roGMiDvehqDriqLMCOMF/4h30vuV5iMV4RTMuUZC+IG3R3N6kZsTjZ8t%201F7w55BYpbGBjwA2tsY5h4ykJygqA6LxnjPVIJXBOpCBor2wQFXPGI62aXU0J08dYXHxLm4sJMym%20BfnOEBbP0lSOa1c3KHPDYr/DLHdkM02SLCCs9mGRgcQJyPOKVhIxHWvGQ0gjiMIA6xzSOpSczx+4%20hdL1y+zg5h7pIA3llgpgHpcjuCkKnE0GdBZ6RGFIXXtuuQwk1LC2abh+Y5+qVgRhTF40NNaRpm2i%20OAZhWN+4ihSN19goPeeRl/R7fQ6fPsZrHr6HbqxoqorpTHP8+FFOnzGcv7jJtcub7GVjNoZ7RKJi%20mGVUjcShiKwlbAKoHRcvXKN/+E76h2OKugYbowKYZiVGG1pJG+ECmkoz2i1oqtoL7kTIQrLE/giG%202yWT7YLBVsH+5pTBzpR8IgjcMlqDNpaahsaWaFlRU6JdiUZj52RGi/HjAFsgqTA0VFkNCtx8I3a1%20yImigCD0UUjdXp/xZEBZzYjjiE43RalbJl9tS8aTIb1ej+/6nu/h3e9+N299+3d/zzdDIXrZFaM4%20kh85+P5HP/h6cccdd7n/43//XT75yc+xt7dPr3ec3b0hmJBu7wjCacaDMVIE9JcOkZX6lgZ3nkd1%20ELDuACnsLTSpMHPhoJ89OSvRjaRx/ihYqxDb1NS6QrsKYQxogQqcT4+wGtNU1HWJMQ3OQj7zLUQQ%20QiddIAlS0rDLPXfcw3e//l9wdfUG/d4RFnsnWb26y/mnr9NOD9PpHGd/sEssob/SJwoyhOzQSeeu%208dzSCiPGo5LtrYBOO6W3AMZ6mV4YKsAgb6qN50hdDLfyVf1NcnOVj0O5W+t+AaStnt9OElBVJUpJ%20ohaMxnD9+h57+zOC8DCddJnByLC/N2Yy2ae7sIy1mqXlNnm+j8tylNQEgeHIoQXe+B2P8IbX3out%20R/TbERiLFAmd3jH2hw2f+OTnGA8HjIcjNnY26SS1R8mgqQpNgYKggTDkwnPnOXJbyvEzx5lNBUIm%20RCogCSVJr0NZ1GTTGUZDQEQkFhFWIAxcOF+yuzVhuFVQZVBMLJOBoZj5MFBtCrTTNDajZkatZ2iR%20Y0SBURWNrRDUOGGw85wPjR9KWbxXLEwCpFTUdU1WZQhhSVoRcayo6pIwVARhm6apKMucOAkJAoW1%20mr3BDufO3cf3fd/38c53vZ2HHr5P8E10BS/HF22tu11KceUNrzsszp79RXfXXXfxG7/xMS5duky7%20fYQwiCnKCcYUdNIFAhVTl9nNaBo5vxWF9QmLEuWFZdI/oYTQOHswC/EfRGkDrAjn2iWfDGFljXU1%20zjXgNPpgK2M90F6XBbqucHOx3eJSz0dfB4a6zHju/FNcfOoxTp8+xd133sPp2+6knFZ8/qkvc/36%20gCTuEoQp165tIaMOQQiShoVOzOGjp+kvHMALfcZXkdds7YxY6LWIU19ohfLpFdbMuchfZwy95c3y%20jvdbwkac75+kU961HiaYxlLVlijq4oDdbbhyZcD25ow47FPWEisd+awin+ZcuXSDpLVL0grotAPq%20xsfh4AzdhRanz5zgNd/2EN/5nbexszGl3w4RxpJnNeOpZXfnOpeee5Lz649xODjDzniACtr0el0s%20DePJCIlkKUwRgWM6HbN67Sr3j45T1gYRSHIBUdwln+ZYA7GICZIWtoLBDmzeyBjtljx3fp3Z1FBn%20AiUTAplgTYqVCRbHKB+gRY0RBbXLaVxGIzKcrHDU6HkxErK5GfxphUfNCATIAK3tPPstJE1TLzkR%20HnkbRQFVnQGGOPFHwKYpKUuNkIY3vOF1fOCH38/7/9W7fzaOw4/wTXa9LIuRlOKKNuYtgVKfOnEU%208aEf/V533/138B//p//E1au77OxskyQrpEmXsmrmsLIYnJmD2Q/EfV5bIoTA2YOEDIkjwM39Wt7m%20EOBEgnQtv862DmsczjUItO84nCVUCuks1mhMU2J1Ba5BKb8uHg5WOXXmJEeWl2gqyfKCRdcl08EW%20n/qzC3TSZcJwkawIkMESUva8q5uStLuMrqeMh3scWjnCnXeeJoq84jlJIh/r7WA0nrCxE5J0DtHp%20QhpD43eFKPuiIiSeZxJ17hZ4zHmA2kHM2IEcp26gqh0yiJABDEdweXXCtWtDplNHt9unMD49dzLO%20iKIYKSWz6Zi6Ftx28hRxbCjLjHw2Is9zrl69yp/+ySd4+qttTh9dII0cNA11bclLxZWre8ymA452%20VtANjMoxad2nrfqULmOqRywkHeKuz1CrrGR1dZUnnz7JbWePE7cSppOCoB8RCj/cb3LJ5nbJ1Qu7%20rF4cMNrVuKZNmUc4G9M0gtI4ZKgIIkVlK/JyysxlvhNyFY3L0czQrsA5/z4bWyOFRokGMQfrOyHm%20BV7hrMM0Duc0QahQKkBIi6Oa68N8eGPaDugupAwGewxHu9xzzz286c1v4Md/8kd41atfKfgmvYKX%207QtX6lMHXdLJY0KcfPtdnDj+P7rf+q0/5vc+9mds76xRVxmmCVAyodVdpKkq5Dzr3BmDEJ6Wh5NY%20IRDWb+Kkk14MOV9dWxGg8KtWSeC5MRZwNVJapPDOddtorNA4U2N0iWtqhHQ+XUNpTp7tEwQD6ibn%206JFDnH7VA7SjhN3tfa5f2+Kppy4RypSFdoyKIzZ3B7S6LZLlPlk1IJEWR04U9VlZjn00kW2IYklT%20H8gIHPuDCXFLcdj1IFAkydwaaufgP8EtQeT8CX7QDPljq3xB0uo8fBcktNqKxsDaOly5ss/Gxoii%20UERRh/FE0+32iBO4fMUfT+JQoOsGLDz91FMEgWAyybDa0kr8APza1Q1uXBoxvfck0hTUxczbIESb%203UHBbDjFOUeYRkxzwyDfx+xYZvs5BTkJgkm+Q2/pKK1OyP5wh2efvcjJ207R7UBZttAFjGeCzY0d%20rj63zdrqHntrFdUsoh0dZbF7mErXSBnRCEOpJxibEaoAK2uKIKOwMxpRoJ0/mmkKHCVO1OAarKiR%20OIzTKIxPh5UQCI9fsdqihPJRUNbSNBUI//4lrZBZNqSVhjga1tavIiW8/g2P8oEPfIDv//5/wfFT%20h79pC9HLrhhZq98iZfCpF3dJB9+/9pGuOHXig+6uO0/z67/+u5x/+rqPzRaO7b1Vknbfb8nc3CRp%20JcjAb5fMfK/tvMtd3ORCK6Ro/H1qAxzxXOWtcdL4OZMwCKdpitIf2exc4yQdUjgfjyRLpJpQmxEq%20WuS208d58P6jHF0+QhK1CYOUP/rDT/H0M9f47BeepX9Y0u13mNU7ONtGKDh24hCHFhc5eiwlbRuC%20KEDYuclTgTaGMIrJK82NzV0KXTIrF2j3EhbSABH4N1wcDO7FgZvdzjHRzs/P5joif9PcEjs2wmuJ%20tjYtVy5vsLk1xpiYJOoShD2qqqGufHDp/v4u1un58L5CyoiF7jKBhKq0VEWG1Zp85hhSY8qM9faI%20bgvk/GwTxxGtMKQVlx6NgsMow6SckmUZoQ05fGiFxXaXaT5klAUsdFI6vS7rG5ucv3CF4eQUWV4x%20nlY89tgFNjaHDLczlGnRDg4RqRRdJwz2Mz90Z0ZFQUVGRYa0BiKLVZpKTX1HZAsMBU7VIBocFdY1%20COllJNZqEM2tdFs5z0OTEmf9/tKHIwisc1jXYKym002om5wsH9Hvd3nr276fn/iJD/HItz30TV2E%20XpbF6MWF6O+7jh1D/OtfeCOvevU595sf/T3+4Pf/jO29S7RbR3BuhiKZ32h6zn5OEHOqtUMghME5%209Twlt0IQ+nmSnltJLHN8hvMnHdEgnQFdAT4bSypHGEiCQBJIEIEhiEre+fbv5l+9+7288r4ugYXt%20NXju6XWurj7L0cMpr/+OH2HpyF/xlccvM52McFoRdCOOHzvG2RNHuO/uUyjVEEaOOAGtIxpdIUWE%20NppWGFPWOZP9CZUuyaqAxULijgQEC/M4ejlHqvrwpZtDe4dDonx5mqNEDv5rLFy+btjY2Gd9bYeq%20hDBaIE46ONuiKA1Lyy3OP7PD+sYWV69cIu12WFxMmU730Lrh2JEzGO2oK80EKIsZs+mMwAlkY5jM%20KnppjziCoqhoav96AhUhpWRUTNEy8uB5BysrPV75ynvpJAkXzz/DcLLNwuJpDh1a5sLFy3zm775A%20K30WScza5gTjOkynIdr0CIMOTqTUWiGNxkpB2JY0TYmkIFANjSuZNiOM0USxwrgC0xTU5DhKlLAI%202WBdibU1IcLHIaFxtgFbIWQNc9SbwlHVJdYZWq2QNI3RxlDVM6bTAhl47tO5c/fx3ve9i3e+8+2c%20vfPUt0Qhelkf0/6x69sfXRQnjv6Mu/eeU3zsd/+IL37paVYO3cne/h4gabc7GK1pqpowjImCGBBo%20azHa4SweHxEIrC4py5JYKZSUHp3hDODjrVUQop1DqYTZbDTPt/fg/abKidotVg4v8UM//P18+MPf%20C8bPX+oajp+A3Y0O6U7Ml778OWTc5zWvfZDPfuUJ6sYQdVYQYc3hIwusHFrk0qVL3HXPbfR7Pok1%20UJKqbiFki1AtUJVgRYcwWGQ2Dx/IKsFgUnHsUEirBWnbx1urYM4ikp77bawlmQ/VCgN5BrNpw2B3%20xP5+xtrmjDjuESQrWAFNLTFWESiFVBHPnN/ij/74v5AkCWmaMB3vcfzoIkW+z4Unn+QpU/t/WwdF%20kdNpt1joLVFMtwgwPtigbkh7KRQVVV0QJj0WeinLTY/xYERRVVgraccJ7X5C3FU3j0iGmr3RLrFK%20COKI3b19tJ0CCbVuoR1UOiQIAlwQUZmaRtc4Yz15UgpyZuRmSkNFI0uqoMCIxhdGpxFSEwofB+5s%20jaNBOp/MK7HoqkIKQxIplIRGNzjbICPJLMvodFKck9RN4Zcnyvj3IZAIKXnnu97GB3/k/XzHdz76%20LVOEvumL0XBYfPn0mZb48L/5Pl5x7oz73f/z/+YTn/wSoSowxs9WlAyQPqDeM2GswliBECFCBRin%20aUoIw5hup0VVlNz0vTmLcAJnA6wB0BT5GGhQ0a1o4TBULK8scupUnwdf+SoG+7D63BaTwZDzjz2N%20tHDy6Bne+PpHeO7KPjfWN9gbXSdutViUitpJVBKwsrKMCkJWDh9noXeYnR2YrU5J0xbddkCrBcYI%20VAhKRRgitGtT1ZDXEE5gOCpJEksrDb0CPHRIaYkCUIGkaRrqqiGb5oxHBUXhjb22cdSNANsH0cYa%20gTGCTrtHGMDa9QHnz1/kM3/9NwCcPfsAQaiYTsc0ZoaQNaduP0GWTRlPxgQqQQaKsqrRxiJ1QdIW%20GKHJqhl2MCUKQtJeHyRELbCipN2JcKGBxqGEm+u1dggF1DpjMhmTFTOUTNAmoNH+UGpdQOMMKEfj%20GmpToV2J0HreCVkiJIkMqYMZtchoZEMtNNqWaGFQOAI00tVAjRAl4Lse6Rqwmlk1pp8sEAaKfDbE%20UbLQSQhVQFFOWVxqk2UzrNX0+m2E1Ozt7xJGjrO3n+Tf/covc/8r7ubcg3d/yxWib7pipE31M4GK%20PwKwuNh65OD/f8/33CfOnbvXPfjgX/DH/+VTfPbvvkhVFiRxZ85GjoijGIFEW4UUkiiOsVZSliVG%2052hnQSTYA2QGFuE8B8k7v7zJMQpilHIgLEYqolZMGMc4K/njP/grPv2pkLVrV2nKimefOo8Sigfu%20f4jaLGHpYlxNbXLipMfW/oCk3cHUsLa2Sft0n52NHVZXt8kzPzdZWFigFbVxVhK3usRJizTtELci%20wiQibkHSgSQFIxRhJIhiQRhaAuUTPZJIEoZgTUxdS2wTglsCq+aRRAIpfSBkEPhjntFQl3D16pCv%20fOnLPP7414jDiIcePsepE8d57rnzZLMhKhD0e22+/dGHCELBpz/9aTY2dxAoDxKTDusKSlMzmjac%20ue0O+t2YtJWQxF2MFYStgMs7N6imJboRSCMwaKazIZtbN2hHMYiGxlQUVQ4uIgi7hGHfY9OsQVPh%205IRaNGhXUWuH1Q2WEik8ZF+LiFpWNK5C49DO+Dz6uVlN2QKofMSQqIAS5zSSBmcNx/pLVEVOmZXE%20oSOJEgQVdV0haJhN9olaESAYjrawruLU6SO8851v4z3vfQeveu2935JF6JuyGAUq/siLh9zW2tul%20lFeOHRPiF3/pLbzywVe4j//xx/mTP/0kVy7fIGn1iSLJaDwhDjto4/lGjfaxM1EUoKVFNxVIMacC%20+sGLEwJr/FDSCksceeync/Of45hWK6aqKm6s51RlinA1wsGxo6c5ekwym8y4vjHjk3/5JawLuO/c%20qzl8W8y4+CqXVveIU0jimIV2j3a3y+7gIuOhTxA32jGeTKnzKdYE5MUWUoQgI4SSqEiRpCHdhZRW%20J6S30kEFliCUSOlQEsJI0IoiojggTWKstSRRTLfrE1K09jMjFXichlT4LqyGCxev8dhXv8p4ss/h%20oyd4+MFzPPLqB8lnY9Y3VonjZfb2ttjcWOPQoS53nD2ObsYUxQCpvCcwbEWEgcBZw+7+Bg8+8i5e%2099qH6aQJk3HO7v6I1dVNPv/EE5T5CG0jQkIskiJ37OxYFtIWgVTEiaLJDdYYwkgiQoGu515BCY31%20AlUtav9wkRqrGpTAG6ZdiBUWK7Q3p847YGV9BLV1OULWCNcgZOO3qWicq5HOkE9LrGlIopAkCSjL%20EaN6lxaK5ZUlyrqgsTlFmdHvd3njm97EW9/2L3nzm9/IidOL39KF6JvymPb127YXetze9KZj4u47%20f9J9++tfxe997I/49F9/nv3dNYRsocKIqNXBGkFe5hjT+GBJoXAYpPR4kIOU2bnkyJvzpaCqirmj%201GKlh6Y3RmHLAmsaAhuwv7tLv9+n14nJy5iNnV0CZeguaR5+6GHitMdT569QlJp77rmHWsP1Gxvc%20SFKKomFnuE8chEgRMp3NqCuLMxFx2KHfW8FYRa0FjbbUlcEKBSKhakI2dzRCeQOnn3s5VCBoRYIo%20dswm+5RVjtNzw7D0K2glJFHiWD6sELIkTWIaXXDj+mWG+5vcdddpXvfoqzlz+giHDgkujzStVot2%202mcy3me0P+DalcvsbF1kd2+DJAkRMmKWZUBNrCySmiAOGY5HPPHUk4yHI9bWNylrQxB2MBgCJQkD%20BVagrANbM5tqbJWz0O5ghfM+M+kwrqFpMqaFoa4VMopwssG4yne30nd8tzpdCTb0JEhpkc4QWoty%20c0qB0zhXeDyw1ECDFI23CjlvRtZaE0cBQjYU1YwgsBxrL1PVOdt7N7BY+ksLPPrww7z9HT/AO9/1%20/dx2+/K3fBE6uMStKJZvvevZZwbu9//gE/z5f/0bnrt0g42tAWlrmSRewFjlIVtS4qyg0RBE7Tme%20RKKU8h41a33uhJRoawkihZCOStcY613crVaLOEwITEgxK+h228RpzHQ68YiNQLBy5CinTt5GkrY5%20/8xzaCO58+77qcqap556lrS9gBUpRiuWl1Yosprd7Qlh0EGaNmUVUGchjgQhYy/WVHhKQCSRQUgz%2011Ep3zHirJ3HUyuCQII1VFVGU5d+VW0N1mnPEA8aaj0gjDUqsFhT4GxOO1WcOrnE8eNLLC2ltFuS%20G1cvMxxs0e912NraYGdrg9NnjpPnO2xsr2FdSFU7srz0KFpbIGxBGjU88IqzdCKFsQ3DwZTReIYK%20UjZ3xmgTEoQprra42hLKEGEgDAJ6nS4qCsnykqpxyKBNY0NmhaU2AUGkgByHnmusJLgA526FPEZR%20hFIewWaaGmsav2U1BoMfkKMaBA1CaqSYz4ys54EvdDrk2ZSyzIlCRxgKrKuoqimlybj77rt557ve%20xjve8TYeed1d/1yE/rkYff31d5/ZcL/zO3/In33ib9jdnTKdloRhh1bSQQgfP+RjihK08WhSj3qV%20GGOx7v9p79ye5Dqv6/7b3+Wc091zA2YwAHEjAEKUQIEWQQikpchUJaZUcmyV3/xgv8d/Qv6X/AEu%20J6mUU6nETiwltkWZoEiKginFlEyBDEESAxDAXPtyzvluefi+bpDxiyu2UpbT+wWFATA16OmzZu+1%20114rh+kpa4pmMPMNvXeE0CJaU9uGtWoTqwymttx/cI+kEseOrbN/tE87HvO5Z57h2ee+RGUH3Lnz%20EXu7h9y+/T4hBE6eOk9SAw4PWwaDEe3EMz4MrIxOELqG2QEMR6eBYRk3TPaxTlmImVOcq6KrKnqX%20EmmktcboBMEjKubtVHIo8qo5Bofzs2zLIrkzMMZjrUOrFoljYhwznT5kdcVQ6Vi8dxKHe7uQEusb%20A5S03L1/l9ks4IOg6xErK0MIjmETGdYR1+7RjffxvicEIUTBNCMqOyAkoTY1s8MZXdszsitoUWiE%200WjE5vYJDo/GHE47Wqdw0dJ7TRCLUkKM4+ISaghJgdSQdO5yU8qjnhW0SkQ3hTBDyJoxHz3OCFHF%20DEb0KLK2KI8Xkb6bkVKgGdRYE9k/eIRnyrWrz/DPvv4Vfvu3f4uXfv3aU/9UDluXYPQLrD/5k9vp%20j/7DH/Of//g77O9NGDTr+ADOBZRqUHYFFzRKGaxpECy9z29uVZJBu25GJNCMGmyj6VzLdHZE7CNr%20gy26Ykx/ODmkaixNU9H2HRsb6/gUGY1GrK0eYzab4VrHh3c+4szps2yfPMPDw5YPP9zB6gatGtpx%20xKgVtKxRmeP0rSWmASlU5YxFindqjkKOISHGLhwcCdlDWSmDFkjBoZQQ/JTejUECg4FGqYTzHcZa%20pmVjOFzRCFMmk/sY3bK+bplOd6lsYHWloqk0u48e0E4nbGxsoJUnhCNm3RRRA5zPWqEQHATHmdOb%20TA8e0Lb76ORw3QyUoWmGOJ8wxnDixAm0KPYeHnCwd8CoWkGJwXtP0wy5cuUKjw4OePjogMNpi0+W%20KBVJTAmenJVzHYWPAilvTfNtokJSoK7UAoxSmKFSQJLDRUesNJnOdgsgUhIxJUNOAO9z9JQ2cO7s%20SV76+lf5rW9/ixdeuM7mKbPshpZg9Heve3djeu3mW/zHP/ov/Pn/+Et27u9R2QHD0XH2jsDYVYQK%207wRjRzSDDFhH45Z6OEBrIalAFI+yEV0lnJvRzmYoBlg7QETw3hfzrPyg+BK9NBgOqfQA51w27dea%20qmoQXaNU1qjEoAgegtfEoImhJoUKSUOUDBAahCqPIZiSGZcN3VHz+J4cWpAv8nO6hUgm6GPsSRQP%20KDpEOURlZXFMnpiymE9rh+g2n0SkGb07om6ErePrrKw2HB4e8OjBQ5qm4eyZLcbjTzg8eJj1RG2L%209x5rcurIia0NXDdhfLTPbHpISpHKGIwxVFVFXdeokF+nvu3pOgfJUNlBkWFIzogTRUiCjwnvIj7m%20+G1UKgZxsXRCFCfFhEQpDwM56bfk8ClJhN4RvCOR+aG6EUL0ODfDWEFUIIYerROH411EIhcunOWb%203/rnfPvbv8GXnrvK9hPVEoSWYPT34JN+8iDdfPWHvPK917j56hv87P0PsOYUzXAzW2kky3gSaTsw%20dsRwtMbB0RhlTLYzFY8UMIqpp+97ghOQEtKeSSia4QpNVaNE89RTT5GSMBvPePjwIQd7hwvQImkq%20u1pGC8m7h6RJ0eYzlVCRokXJoABSBclCMsWjWudxU6VF0sc8/UPEIuhM0JfzhEQGGVQLklfTSCRG%20B7EnaY/Rjqg6hBbPjEEtTLpDNIlqUJHFwyMtAAAN3ElEQVSCZ9bPWButsH3yONPxffZ275UYJI8Q%20sVqw2rB98jjtZMJ0NqabTUkEtAjaCI2taCqLFmF8eJRtXrXF6JqQdKGgNRFTHCs1IWVf85QSqaRr%20hCJUnf//JQkSU3a6TAmrs++TFiHGSN86XHJUGJpG49wBiY4QPLbS1LWldzN6N6auDU9//gIvvHid%20b/3Gy3z5xjW2n1h2Qksw+ofslD5K6b9/98/43iuv8/1X3+a9D+7RzqaIbLC2eoKYanzQiG4IUdAm%20ny646HJCqV74uFE3w7ySD4EUIsYYhsMVhnWD1prxOEcXd7OeyWRCcB1aF35K1fRtTonVOgcLZsCp%20SMGQoiF4jVYNWg1RUhegmhvPW3yUT6V+hIVzgWARUShl8sfJ3U9iRpIZSL7B0sWhh+RIqssJq6qD%201BJlhjGRtp/m5JRKk2IOgVxfX+fE9jopTLl7938VQ7OIlnwjKMCJE8chepzrCN4Ro19YrzS2oqkt%20VmkePHjAZDJh0KzSNEM6F3E+opTJo5fK94WxJMJGeZx44r1fgJGI5HSWlBZ3wsF5rNY0VY21Fom5%20E0spoU0AmZDo6bqOrpuARNbXV3ju2lW+8tUX+Je/+TIXL51n66RagtASjH5xdbDHm3/wh//t+vdf%20fYPXbr7F7t4YLUN8MLSdEILFB40ydc5bRxFL0kxVNWirUMYUo/wiO0h8pkuZHI2zB06MSIkDUsVe%20KCVFCg1JbAYjKWNYnIdQGlK02YdHD1DSkKIiJb0ApBhNzmYvJmqLzgibU1PLyJiSy2Ak09IhZZ8e%20o4SER1JHkB4lpTNKLUE6gpui6yyi9MnTz6aYuuLyxUt87ulLPHr0MX/z7k842NsnxoBRCu97fDdj%20dX2dlUEDkkjB40NPcNlBs7aWqrI0Vc3h3j7j8RgxhsoOiQihZKKlEv2RSo5b1mvmUMZPj8ZzQNJS%20Ip1Kd7S2skLbzvC9QxvBSAawvu/xzLCqI6YObYRz587wwgtf5le/coMXXnye6y+eXwLQEoz+39ad%20j7r0yvd+wH/90z/j5qtv8vHHu2g1YjTapO0BMrmcxOIDOYerGKCZupi5qbnLZMA5h/c9MUZWR6Pc%20EaR87T/nkpxzOaXWjhDySCeicwcQ5rxRHscyGA1RymaDuDB/MA0xmfxgFkCMMWbiVrJcQUlVOqOQ%20OSNaYpqRpCfRYSUgKkDyROkhdUTpETqSKt5ONiIp0vYzUvRsnzrJizdu8Ny1X+EHr7/CO3/9Yx59%208oAQHNZaYvJMj45oBgNWhk22WU0J5zpc15OIWJWlB8ePrRNCYDKZcXg0IcZEZRvA0DmPsXXuhpDy%20awajhMr3zRE0gpRRVUraydyKt51OEElURjMYDKiMKhHfnkSHMT1XvniZa9e+xI0b13nhxRtc/vzx%20JQj9A5VZvgSfrZTipfyT828HAngfXj5/tpbf+92X+PVvfDX9+O2f8pevvsVf/Plr3Lr1M2I09C7H%20aWs9yh1K1MSYxXWCIfqeKHrR8SgitQGlDLPpwYLn0DofWibAGqGqLH3X54dLMgckOdiHhAYVijda%20V8SYhoTOVrJI8WEyIBqRlL8e4bGbpTKkmP+tEEg4hBZkhtAD2ZFAUgTxqOSIdFlRrnKXJCoSfY8L%20juR7bGWoDRwdPeS92+/wyf27TMf7+NDivUPplGOMTCbOQ3D5PCdlAaEPLv/EjCnfEwrUg4aEYjor%20t3MmolQkElE6EWM+3RABKfNXThhOpRMqcUyLrimW5JTE6prJhnMx0Ic9+j4wGo04++QpTj2xyTde%20/hov/urzfOVrX1wC0LIz+sdZN2++n/7q7Z/yb//df2Jn54B7O3tMpwklDcoMFoehk/YIH3tAMidR%20iFIteWuktV1wFEopJAou5HFG24q2m3tW6/LQzklsUwhtgxKbRzg0KeauSESB5O4JnU1CAik/5Jm6%20JolGYgYvRT6JEHqCtBC7PKqlHqMCIolEGeXo84pbB5yfIRLLwx+wVtMM6rwJU9B2YyZHRwXYPUop%20jFW4tsMYw2iYubMUPG3b4px7PMYSOXZsFWOydetkMqFrfekyczCntZaQYu74IPsIfYqo1/NOaJ7P%20NLeOSTlwwPUzkEhTaTY3j3Hp0gVu3LjB11/6GlefvcK5C6MlCC3B6JejProb0utv/Jjv/On3efPN%20n/DRhw84OuzyWQYJU+cASa0tVVVBEpwLxEiOVnY5b96qBltXSFI4H7KnT2UJqSR8JEVMCqImJoXE%20KvsuRQNiiieRIZVuQqERZT6z2ofHD23etllioIxsCcSXUa0npnyhLmGGVhGjEoEAKadeGJXAeFw3%20Rdnc7fUhX7KL1ph5dlrRMa2srCxW+9oIru2w1rIyHKE0RB+YzSYLwAII0WfZRMoOnUoZYkiEEEBp%20jDEgkkMsYz530VqTFEVT5QsPF0swQQEsfP6cBJ44fZJTp7Z4/rlf4dde+irXr1/nqcvLMWwJRr/k%209aNbe+kHN2/x2uu3+KtbP+HOnTtMZhN8DBhjaeohSlX0naPrAiEprNSIrql0ndfUPhKSzmcPRtP7%20DpTCKktSGny2gI19DgEY1qso0yAROhcggLIGIwoX0yI5V0SK/3UJdEzZ+1tJlbsocucDgURXwiBb%20JM6ygjmG7HJJAp0fZIreJqny55IdJDMYZlCc82GZmM8nNUgi+jyiLYh9kUWibUqZ0E/lgl5rQess%203CTlztLHsOgmQ8gjmqkyad33PT5kO9hBpZlOx4TQoZWiqiqOb67zzDNf4JkvXOab3/wG5588zdVn%20zy0BaAlG//Rqb583f/jGu9ff/vH/5C++/wo7Ozt8+OHHPHq4j+siomtGozWGg3XGRy1KapQ0+fwk%20aNJckKjBJZcdA2IOESQYRFVYVaN0TTv1WVqAxsfSUVmLVtk4rfOeJKmAScwxjlqhkgUx+D6BlOgi%20lRamZcRy/pBaBFc4lpLYq7LtLpL1VHyKg5l3H3Puxtam5MbHom+Ssj3Lgsr19XV86PG9w3uft4pS%20yGaVP08IjhDKxlH0IjobEYzWuNATvUN05oRCjGglVJVhevCI0cqAc6ef4PLnL/PFK1e4evUKX77x%20PJ97emsJQEsw+v+n7u649O7Pb/PGGz/krbdu8bOfvseHd3bYfXREiAlrNxAqFHUOSEyWmBTRJ3wM%201AOT5QJJ4YKQnCIkjRGL6JrGjDL3kxIu5NuzpLKwz8VAMxwQUoLoCBLQCEkJhnwyEfoEymAkjzcK%20j6eD2BNTh5E+W6qmQErl8l9S6ZwyV/S3wSh+iveZa5viojPSWlBlbNzb20PrzP0YqxdnKzF6Ysmh%20m+uujMkkfggB5zo67xjWDZ3viN7lMZJ8uLy6MmI0GvCtf/FrXHrqSZ5/7hrPXL3CmbMrSwBagtGy%20YuTSz9755Patt9/hzTdu8fPbd3j95lt0Pbg+EpLBmAqtsulbSolpN8VYi7UVWg1IUWVSOpWQQZ9P%20O0A9FvYVziXGDEyRVM49wmJkmhPhJINS9nG3QSCmPluspg6r81p/EWjwadApndL/CUT544/N/+fg%20klI2oEspZAU0kY2NDUJwOb7ZdYToMsltFForJKVFl+WcK3ybL19vFpPWjWVtbZXTZ7Z5+unLPP/8%20czx//RpPXbzAk+eX4LMEo2X9ncDpB69+cPvn733AG6//iLd+9Dbvv/8B+/uHdK0jJBitjYgBYhSC%20z4eeSmq0GqDEYs0guwjExyrjOecSU0LZpoCCL0BQwCGoolkSlCo2GkoBviRXZLHfZ8GI0gnxKeBJ%20i83UZzLZSnckxLL9ejx6PQ6VjEymB2g9H7viQiU+vyurjSUGR9e67CFNZDRa4+zZs2xvb/Hss1/k%20yQvnuHr1Ck9//jKXl15BSzBa1t+/7t8n3b//kHdv/5yfvvM3fPzxDj+89SMODifsPjrk6HCKdwqt%20GqxZQasKEYvrAyGkxwQxLDZQCZvvuNS8c0lQ1Mokky1dlUGJKYDg8wo/BiR1KOVzFBM87qpKpyKS%20O578m+x2mTmlx4CUYvjM340xj3YZnHLst9a5m0vErM72fcltiagUObm9zcWLF7l48SLnz5/n0qWL%20XLp0iZMnT/Dkk5u/X1f8m+W7ZwlGy/oF1/sfH6X7n+zy/nt3eO/2R3x45x4ff/QJ93b22N8bM512%20TCctfV8MxIhl1e0RsQyHG8SYbTtCLET0QrdkiSELKefnEznt1BU+KBvRz8HoM28iyarmEPwC/B5v%206x5v7yqT+awQXB7DQgAJiBG0lsW2rG40KytDNk9scv78WS5cuMD2iU2+cPlzbG9uce7cOS49tex6%20lmC0rH90492777nbu7uHfHL/EQ8f7rKzs8Mn9x9y7/5ddnZ22N19SNcGxkeO3gX6rqPtZwTXg6gc%208a0s0eecOIXOSu0USRLz6l48IU4fp89+GohEyqYrFAtWgPm4lrkiJYm6tlRW0zQ1o9GIjWNrbG0d%20Z2t7k9XVEWfOnmZz8xhnz57m9JlTHD+xyYnj6/9+daB+Z/mdXoLRsn6Jy/v08v17R9+ZTCZ0neP+%20vV32D6fsP9pl7/CA2XjCwXjC0f4RR5OW6dGU3kd855i2PaEPuBiyWFAcs24fkbDglIwxi3FQRGia%20Bmstg8GA1bURq6urrKysMBwOsVaxubXK2vqIra0tNjY2GI2y0+Pp01vfMEZ9d/kdW4LR8lVY1qLL%206lv+1eSIf+19Th/JKu3MH7XdAYhfbOnmB7/zjd32ybXfN1Z9d2mruqz/m/rflDjuA+MNcecAAAAA%20SUVORK5CYII=%22%20preserveAspectRatio=%22none%22%20height=%2236.641%22%20width=%2244.866%22/%3E%3Cg%20transform=%22matrix(.7114%200%200%20.58021%20136.117%2081.658)%22%3E%3Ccircle%20r=%2218.548%22%20cy=%221.609%22%20cx=%22-42.334%22%20fill=%22#fff%22/%3E%3Cpath%20d=%22M-42.334-18.765c-11.253%200-20.374%209.12-20.374%2020.374%200%2011.253%209.121%2020.373%2020.374%2020.373%2011.253%200%2020.374-9.12%2020.374-20.373%200-11.253-9.12-20.374-20.374-20.374zm0%2038.411c-9.967%200-18.037-8.08-18.037-18.037%200-9.958%208.08-18.038%2018.037-18.038%209.957%200%2018.038%208.08%2018.038%2018.038%200%209.957-8.08%2018.037-18.038%2018.037z%22%20fill=%22#333%22/%3E%3Cpath%20d=%22M-42.946-14.266h1.224v4.816h-1.224zM-58.198%202.213V.989h4.815v1.224zm16.473%2015.257h-1.224v-4.815h1.224zM-26.473.992v1.224h-4.815V.992zM-53.986-9.18l.865-.866%203.405%203.405-.865.866zm.868%2022.434l-.866-.866%203.405-3.405.866.866zm22.43-.864l-.867.866-3.405-3.405.866-.866zm-.86-22.434l.865.866-3.405%203.405-.865-.866z%22%20fill=%22#333%22/%3E%3Ccircle%20r=%221.265%22%20cy=%221.609%22%20cx=%22-42.334%22%20fill=%22#333%22/%3E%3Cpath%20d=%22M-42.146-3.69l.72.076-.558%205.265-.72-.076z%22%20fill=%22#333%22/%3E%3Cpath%20d=%22M-33.82-3.3l.337.641-8.694%204.576-.338-.64z%22%20fill=%22#333%22/%3E%3Cpath%20d=%22M-41.558-1.115a.512.512%200%200%200-.296.928l-3.887%2010.967.265.092L-41.59-.095h.03c.286%200%20.51-.235.51-.51a.512.512%200%200%200-.51-.51z%22%20fill=%22#cf000f%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(.79321%200%200%20.79321%2059.777%2029.354)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "aef376f6-27ce-494c-a34d-8704014e88dd",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 112,
                "y": 248
              }
            },
            {
              "id": "d86564bf-ade9-4b7b-ad70-2bbb0c84bf70",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 464,
                "y": 280
              }
            },
            {
              "id": "3018054e-b8d4-44c4-bf4a-6cea708d3781",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 112,
                "y": 312
              }
            },
            {
              "id": "e48b7a02-8a0c-4179-82b7-9f901c26b0f8",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "15",
                "local": true
              },
              "position": {
                "x": 296,
                "y": 168
              }
            },
            {
              "id": "9163b78b-ce90-4c0b-b938-fe7d2a689d68",
              "type": "e74cd1645bed81077ebe3c8266bbb396a3a61e34",
              "position": {
                "x": 296,
                "y": 264
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
                "block": "e48b7a02-8a0c-4179-82b7-9f901c26b0f8",
                "port": "constant-out"
              },
              "target": {
                "block": "9163b78b-ce90-4c0b-b938-fe7d2a689d68",
                "port": "a0ae7ae6-94bd-4958-8871-4a00574de708"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "aef376f6-27ce-494c-a34d-8704014e88dd",
                "port": "out"
              },
              "target": {
                "block": "9163b78b-ce90-4c0b-b938-fe7d2a689d68",
                "port": "7697c4d1-f5f8-4a1d-88af-e367fe54e4b6"
              }
            },
            {
              "source": {
                "block": "3018054e-b8d4-44c4-bf4a-6cea708d3781",
                "port": "out"
              },
              "target": {
                "block": "9163b78b-ce90-4c0b-b938-fe7d2a689d68",
                "port": "4cd7cf1f-7f82-4404-bcd9-bac9500569e0"
              }
            },
            {
              "source": {
                "block": "9163b78b-ce90-4c0b-b938-fe7d2a689d68",
                "port": "8c6fda76-1ba0-4ef8-a53d-7bc8a9db4454"
              },
              "target": {
                "block": "d86564bf-ade9-4b7b-ad70-2bbb0c84bf70",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "3b630a3c35b04c9bdcc4afaf4a01b0b1b8d06887": {
      "package": {
        "name": "timer-usec",
        "version": "0.1",
        "description": "Temporizador en microsegundos. La señal p está activa durante el tiempo indicado. Por tic se emite un tic al finalizar",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20293.13756%20181.35395%22%20width=%22293.137%22%20height=%22181.354%22%3E%3Ccircle%20cx=%22149.086%22%20cy=%2290.681%22%20r=%2270.101%22%20fill=%22#fff%22/%3E%3Cpath%20d=%22M149.086%2013.679c-42.531%200-77.003%2034.472-77.003%2077.002%200%2042.531%2034.472%2077.003%2077.003%2077.003%2042.53%200%2077.003-34.472%2077.003-77.003%200-42.53-34.472-77.002-77.003-77.002zm0%20145.175c-37.673%200-68.173-30.539-68.173-68.173%200-37.633%2030.539-68.172%2068.173-68.172%2037.633%200%2068.172%2030.539%2068.172%2068.172%200%2037.634-30.538%2068.173-68.172%2068.173z%22%20fill=%22#333%22/%3E%3Cpath%20d=%22M146.772%2030.683h4.627v18.2h-4.627zM89.125%2092.965v-4.627h18.2v4.627zm62.261%2057.665h-4.627v-18.2h4.627zm57.647-62.28v4.628h-18.2V88.35zM105.044%2049.905l3.272-3.272%2012.87%2012.87-3.273%203.271zm3.28%2084.79l-3.27-3.272%2012.868-12.87%203.272%203.272zm84.774-3.265l-3.272%203.273-12.87-12.87%203.273-3.272zM189.85%2046.64l3.272%203.272-12.87%2012.87-3.271-3.272z%22%20fill=%22#333%22/%3E%3Ccircle%20cx=%22149.086%22%20cy=%2290.681%22%20r=%224.781%22%20fill=%22#333%22/%3E%3Cpath%20d=%22M149.795%2070.653l2.722.288-2.109%2019.9-2.722-.288z%22%20fill=%22#333%22/%3E%3Cpath%20d=%22M181.26%2072.13l1.276%202.422-32.859%2017.296-1.275-2.422z%22%20fill=%22#333%22/%3E%3Cpath%20d=%22M152.016%2080.386c-1.08%200-1.928.887-1.928%201.928%200%20.656.309%201.234.81%201.581l-14.691%2041.451%201.002.347%2014.691-41.45h.116c1.08%200%201.928-.888%201.928-1.929a1.934%201.934%200%200%200-1.928-1.928z%22%20fill=%22#cf000f%22/%3E%3Ctext%20y=%2242.56%22%20x=%2219.84%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%2269.516%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%221.289%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2242.56%22%20x=%2219.84%22%20font-weight=%22700%22%20font-size=%2239.724%22%3Eus%3C/tspan%3E%3C/text%3E%3Cg%20transform=%22matrix(2.99796%200%200%202.99796%20-53.023%20-84.502)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(2.99796%200%200%202.99796%20-257.041%20-84.502)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Ccircle%20cx=%22248.578%22%20cy=%2244.56%22%20r=%2243.648%22%20fill=%22#ececec%22%20stroke=%22green%22%20stroke-width=%221.824%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M279.216%2057.21h-5.01V30.018h-51.31v26.98h-5.456%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%224.56%22%20stroke-linecap=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c45dab76-9d0f-4742-9e4d-3048637d245d",
              "type": "basic.output",
              "data": {
                "name": "p"
              },
              "position": {
                "x": 1224,
                "y": 96
              }
            },
            {
              "id": "7697c4d1-f5f8-4a1d-88af-e367fe54e4b6",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 472,
                "y": 96
              }
            },
            {
              "id": "61d11f03-6fbc-4467-a947-d546fa6f6429",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 456,
                "y": 304
              }
            },
            {
              "id": "8c6fda76-1ba0-4ef8-a53d-7bc8a9db4454",
              "type": "basic.output",
              "data": {
                "name": "tic"
              },
              "position": {
                "x": 1216,
                "y": 304
              }
            },
            {
              "id": "7ca578e5-8e36-4c04-bbea-144418c8e9af",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "100",
                "local": false
              },
              "position": {
                "x": 848,
                "y": -96
              }
            },
            {
              "id": "e6b9690b-1da7-4600-9015-0bbed31633e2",
              "type": "basic.info",
              "data": {
                "info": "**Arranque del**  \n**temporizador**",
                "readonly": true
              },
              "position": {
                "x": 448,
                "y": 264
              },
              "size": {
                "width": 144,
                "height": 56
              }
            },
            {
              "id": "f3af4211-e3df-4710-a0a8-96a035a833a9",
              "type": "basic.info",
              "data": {
                "info": "**Salida de pulso**",
                "readonly": true
              },
              "position": {
                "x": 1224,
                "y": 72
              },
              "size": {
                "width": 176,
                "height": 40
              }
            },
            {
              "id": "a15228f1-41aa-494c-82fb-5491bf5fcc13",
              "type": "basic.info",
              "data": {
                "info": "**Salida de tic**",
                "readonly": true
              },
              "position": {
                "x": 1216,
                "y": 280
              },
              "size": {
                "width": 152,
                "height": 40
              }
            },
            {
              "id": "204eb46d-dd4f-47cf-b0f3-c9095263d325",
              "type": "basic.info",
              "data": {
                "info": "**Parametro del timer**  \nmicroseundos a esperar",
                "readonly": true
              },
              "position": {
                "x": 824,
                "y": -128
              },
              "size": {
                "width": 216,
                "height": 56
              }
            },
            {
              "id": "a66b0b7f-4692-489e-9140-fb81fef2a1c5",
              "type": "basic.code",
              "data": {
                "code": "//localparam US;\n\n//-- Constante para dividir y obtener una señal de \n//-- periodo 1 micro-segundo\nlocalparam M = 12;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Cable de reset para el corazon\nwire rst_heart;\n\n//-- Overflow del temporizador del corazon\nwire ov_heart;\n\n//-- Habilitacion del corazon\nwire ena;\n\n//-- Tics del corazon\nwire tic_heart;\n\n//-- Contador del corazon\nreg [N-1:0] heart=0;\n\nalways @(posedge clk)\n  if (rst_heart)\n    heart <= 0;\n  else\n    heart <= heart + 1;\n\n//-- Overflow del contador\nassign ov_heart = (heart == M-1);\n\n//-- La salida del corazon es la señal de overflow\nassign tic_heart = ov_heart;\n\n//-- Reset del corazon\nassign rst_heart =~ena | ov_heart;\n\n\n\n//--------------------------------------------\n//-- Contador de tics\n//--------------------------------------------\n\n//-- Calcular el numero de bits para almacenar US tics\nlocalparam CB = $clog2(US);\n\nreg [CB:0] counter = 0;\n\n//-- Overflow del contador\nwire ov;\n\n//-- Señal de reset del contador\nwire rst;\n\nalways @(posedge clk)\nif (rst)\n  counter <= 0;\nelse\n  if (tic_heart)\n    counter <= counter + 1;\n\n//-- Evento: cuenta máxima de tics alcanzada\nassign ov = (counter == US);\n\n//---------------------------------------\n//-- Biestable de estado del timer\n//-- 0: Apagado  \n//-- 1: Funcionando\nreg q = 0;\n\nalways @(posedge clk)\n  if (start)\n    q <= 1'b1;\n  else if (rst)\n    q<=1'b0;\n    \n//-- Lógica de reset\n//En función de la entrada, el estado y  \n// el overflow se inicializa el contador y \n// se habilita el corazón de tics\nassign rst = ~q | ov | start;\nassign ena = ~rst;\n\n//-- Salida de pulso\nassign p = q;\n\n//-- Salida de tic\n//-- Saca un tic cuando ha finalizado la cuenta\nassign tic = ov;\n",
                "params": [
                  {
                    "name": "US"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "start"
                    }
                  ],
                  "out": [
                    {
                      "name": "p"
                    },
                    {
                      "name": "tic"
                    }
                  ]
                }
              },
              "position": {
                "x": 632,
                "y": 24
              },
              "size": {
                "width": 520,
                "height": 416
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "61d11f03-6fbc-4467-a947-d546fa6f6429",
                "port": "out"
              },
              "target": {
                "block": "a66b0b7f-4692-489e-9140-fb81fef2a1c5",
                "port": "start"
              }
            },
            {
              "source": {
                "block": "a66b0b7f-4692-489e-9140-fb81fef2a1c5",
                "port": "p"
              },
              "target": {
                "block": "c45dab76-9d0f-4742-9e4d-3048637d245d",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "a66b0b7f-4692-489e-9140-fb81fef2a1c5",
                "port": "tic"
              },
              "target": {
                "block": "8c6fda76-1ba0-4ef8-a53d-7bc8a9db4454",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "7697c4d1-f5f8-4a1d-88af-e367fe54e4b6",
                "port": "out"
              },
              "target": {
                "block": "a66b0b7f-4692-489e-9140-fb81fef2a1c5",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "7ca578e5-8e36-4c04-bbea-144418c8e9af",
                "port": "constant-out"
              },
              "target": {
                "block": "a66b0b7f-4692-489e-9140-fb81fef2a1c5",
                "port": "US"
              }
            }
          ]
        }
      }
    },
    "71b7bbd252f33ecfb4d092351ff9a2b524221077": {
      "package": {
        "name": "Init-tic",
        "version": "0.1",
        "description": "Emitir un tic inicial al arrancar, y nunca más",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20223.26234%20181.35395%22%20width=%22223.262%22%20height=%22181.354%22%3E%3Ctext%20y=%22177.149%22%20x=%22170.346%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%22143.805%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%222.667%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22177.149%22%20x=%22170.346%22%20font-weight=%22700%22%20font-size=%2282.175%22%3E0%3C/tspan%3E%3C/text%3E%3Cg%20transform=%22matrix(6.1007%200%200%206.1007%20-523.066%20-359.649)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "dde18e55-7d08-438f-a248-5f1d0c050689",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 640,
                "y": 248
              }
            },
            {
              "id": "6c1206ed-2bec-4a5e-94d0-1d6aaa6011ab",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 144,
                "y": 248
              }
            },
            {
              "id": "5ddc623b-7d1b-46d9-b9b8-2c153836c95f",
              "type": "basic.code",
              "data": {
                "code": "reg q0 = 0;\nreg q1 = 1;\n\nalways @(posedge clk)\n  q0 <= q1;\n  \n  \nalways @(posedge clk)\n  q1 <= 0;\n  \nassign q = q0;  ",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
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
                "x": 312,
                "y": 184
              },
              "size": {
                "width": 248,
                "height": 192
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "5ddc623b-7d1b-46d9-b9b8-2c153836c95f",
                "port": "q"
              },
              "target": {
                "block": "dde18e55-7d08-438f-a248-5f1d0c050689",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "6c1206ed-2bec-4a5e-94d0-1d6aaa6011ab",
                "port": "out"
              },
              "target": {
                "block": "5ddc623b-7d1b-46d9-b9b8-2c153836c95f",
                "port": "clk"
              }
            }
          ]
        }
      }
    },
    "4b42bc095e94414966651de69488c1f12781b6c8": {
      "package": {
        "name": "DataMemory-512",
        "version": "1.0",
        "description": "Memoria de datos de 512 palabras",
        "author": "Juan Gonzalez-Gomez",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "509a34b0-76d2-4908-8852-72651c1e4456",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 152,
                "y": 160
              }
            },
            {
              "id": "8c2b72d6-036f-4a7e-a831-b9f2ae69749f",
              "type": "basic.input",
              "data": {
                "name": "a2",
                "range": "[8:0]",
                "clock": false,
                "size": 9
              },
              "position": {
                "x": 120,
                "y": 328
              }
            },
            {
              "id": "1cfc5bd6-7964-47e7-a6d3-d86aa20d3bf2",
              "type": "basic.input",
              "data": {
                "name": "d",
                "range": "[23:0]",
                "clock": false,
                "size": 24
              },
              "position": {
                "x": 120,
                "y": 400
              }
            },
            {
              "id": "68ca0420-62a8-4593-a08e-122b2cfd6c13",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[23:0]",
                "size": 24
              },
              "position": {
                "x": 864,
                "y": 400
              }
            },
            {
              "id": "7ed195a5-d991-4330-9e23-19554926484d",
              "type": "basic.input",
              "data": {
                "name": "w",
                "clock": false
              },
              "position": {
                "x": 120,
                "y": 472
              }
            },
            {
              "id": "e40e4149-95e2-480b-9202-2c61f664c5ca",
              "type": "basic.input",
              "data": {
                "name": "a",
                "range": "[8:0]",
                "clock": false,
                "size": 9
              },
              "position": {
                "x": 120,
                "y": 544
              }
            },
            {
              "id": "d6caf020-a688-47f5-acf3-eef01b5ed850",
              "type": "basic.memory",
              "data": {
                "name": "",
                "list": "0\n0\n0\n0\n0\n0\n0\n0",
                "local": false,
                "format": 10
              },
              "position": {
                "x": 464,
                "y": 40
              },
              "size": {
                "width": 192,
                "height": 144
              }
            },
            {
              "id": "04f4f693-448f-46ed-883b-826dd1e017d5",
              "type": "basic.code",
              "data": {
                "code": "//-- Bits del bus de entrada\nlocalparam N = 9;\n\n//-- Calcular tamaño de la tabla\n//-- (filas) segun los bits de entrada\nlocalparam TAM = 2 ** N;\n\n//-- Definición de la tabla\n//-- Tabla de TAM elementos de M bits\nreg [23:0] tabla[0:TAM-1];\n\n//-- Read the table\nassign data = tabla[addr1];\n\n//-- Puerto escritura\nalways @(posedge clk)\n  if (write)\n    tabla[addr2] <= data_in;\n\n//-- Init table from DATA parameters\ninitial begin\n  if (DATA) $readmemh(DATA, tabla);\nend",
                "params": [
                  {
                    "name": "DATA"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "addr2",
                      "range": "[8:0]",
                      "size": 9
                    },
                    {
                      "name": "data_in",
                      "range": "[23:0]",
                      "size": 24
                    },
                    {
                      "name": "write"
                    },
                    {
                      "name": "addr1",
                      "range": "[8:0]",
                      "size": 9
                    }
                  ],
                  "out": [
                    {
                      "name": "data",
                      "range": "[23:0]",
                      "size": 24
                    }
                  ]
                }
              },
              "position": {
                "x": 384,
                "y": 248
              },
              "size": {
                "width": 352,
                "height": 368
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "d6caf020-a688-47f5-acf3-eef01b5ed850",
                "port": "memory-out"
              },
              "target": {
                "block": "04f4f693-448f-46ed-883b-826dd1e017d5",
                "port": "DATA"
              }
            },
            {
              "source": {
                "block": "509a34b0-76d2-4908-8852-72651c1e4456",
                "port": "out"
              },
              "target": {
                "block": "04f4f693-448f-46ed-883b-826dd1e017d5",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "7ed195a5-d991-4330-9e23-19554926484d",
                "port": "out"
              },
              "target": {
                "block": "04f4f693-448f-46ed-883b-826dd1e017d5",
                "port": "write"
              }
            },
            {
              "source": {
                "block": "1cfc5bd6-7964-47e7-a6d3-d86aa20d3bf2",
                "port": "out"
              },
              "target": {
                "block": "04f4f693-448f-46ed-883b-826dd1e017d5",
                "port": "data_in"
              },
              "size": 24
            },
            {
              "source": {
                "block": "04f4f693-448f-46ed-883b-826dd1e017d5",
                "port": "data"
              },
              "target": {
                "block": "68ca0420-62a8-4593-a08e-122b2cfd6c13",
                "port": "in"
              },
              "size": 24
            },
            {
              "source": {
                "block": "8c2b72d6-036f-4a7e-a831-b9f2ae69749f",
                "port": "out"
              },
              "target": {
                "block": "04f4f693-448f-46ed-883b-826dd1e017d5",
                "port": "addr2"
              },
              "size": 9
            },
            {
              "source": {
                "block": "e40e4149-95e2-480b-9202-2c61f664c5ca",
                "port": "out"
              },
              "target": {
                "block": "04f4f693-448f-46ed-883b-826dd1e017d5",
                "port": "addr1"
              },
              "size": 9
            }
          ]
        }
      }
    },
    "60578c6aa29be13c7fad436432cb69f30df9b382": {
      "package": {
        "name": "Contador-9bits-up-rst",
        "version": "0.1",
        "description": "Contador módulo M, ascendente, de 9 bits, con reset ",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22327.118%22%20height=%22304.435%22%20viewBox=%220%200%2086.549973%2080.548402%22%3E%3Cdefs%3E%3Cmarker%20id=%22a%22%20orient=%22auto%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M2.308%200l-3.46%202v-4z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22%20stroke=%22#00f%22%20stroke-width=%22.5332%22/%3E%3C/marker%3E%3C/defs%3E%3Cg%20transform=%22translate(-59.162%20-4.54)%22%3E%3Cpath%20d=%22M138.803%2048.49V16.91%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%222.806%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20marker-end=%22url(#a)%22/%3E%3Crect%20rx=%222.807%22%20ry=%222.807%22%20y=%225.289%22%20x=%2299.747%22%20height=%2247.849%22%20width=%2229.538%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%221.497%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20transform=%22scale(.94516%201.05802)%22%20y=%2240.921%22%20x=%22108.575%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%228.982%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%221.497%22%3E%3Ctspan%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2240.921%22%20x=%22108.575%22%20font-weight=%22700%22%20font-size=%2235.656%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M100.868%2030.283h27.764%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222.245%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20rx=%222.807%22%20ry=%222.807%22%20y=%225.289%22%20x=%2266.333%22%20height=%2247.849%22%20width=%2229.538%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%221.497%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20transform=%22scale(.94516%201.05802)%22%20y=%2240.921%22%20x=%2273.223%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%228.982%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%221.497%22%3E%3Ctspan%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2240.921%22%20x=%2273.223%22%20font-weight=%22700%22%20font-size=%2235.656%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M67.454%2030.283h27.764%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222.245%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Cg%20transform=%22matrix(1.00937%200%200%201.00937%20-27.38%20-4.42)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cg%20transform=%22matrix(1.00937%200%200%201.00937%2028.939%20-4.42)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c90da543-4b9c-4f4c-a5fa-7e1166ee1dd3",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 264,
                "y": 176
              }
            },
            {
              "id": "805e1630-b09f-4b54-8275-367c64a4dd3f",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[8:0]",
                "size": 9
              },
              "position": {
                "x": 800,
                "y": 200
              }
            },
            {
              "id": "743b5299-2d89-4783-b7c9-12a5b36df406",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 264,
                "y": 280
              }
            },
            {
              "id": "cc17ff4d-1c27-4dc3-a14c-da730d54750e",
              "type": "basic.output",
              "data": {
                "name": "ov"
              },
              "position": {
                "x": 800,
                "y": 352
              }
            },
            {
              "id": "26aba23f-8567-4e9b-bd45-c26724030f33",
              "type": "basic.input",
              "data": {
                "name": "cnt",
                "clock": false
              },
              "position": {
                "x": 264,
                "y": 376
              }
            },
            {
              "id": "eb9f9c33-e717-43f0-98eb-dbd9c278fa8c",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "512",
                "local": false
              },
              "position": {
                "x": 528,
                "y": 48
              }
            },
            {
              "id": "b35ae5de-a490-4f7b-9200-ac52cd3f333e",
              "type": "basic.info",
              "data": {
                "info": "**Parámetro**: Módulo del contador",
                "readonly": true
              },
              "position": {
                "x": 472,
                "y": 32
              },
              "size": {
                "width": 280,
                "height": 56
              }
            },
            {
              "id": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
              "type": "basic.code",
              "data": {
                "code": "//-- Numero de bits del contador\nlocalparam N = 9; \n\n//-- En contadores de N bits:\n//-- M = 2 ** N\n\n//-- Internamente usamos un bit mas\n//-- (N+1) bits\nreg [N:0] qi = 0;\n\nalways @(posedge clk)\n  if (rst | ov)\n    qi <= 0;\n  else\n    if (cnt)\n      qi <= qi + 1;\n      \nassign q = qi;\n\n//-- Comprobar overflow\nassign ov = (qi == M);\n    ",
                "params": [
                  {
                    "name": "M"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "rst"
                    },
                    {
                      "name": "cnt"
                    }
                  ],
                  "out": [
                    {
                      "name": "q",
                      "range": "[8:0]",
                      "size": 9
                    },
                    {
                      "name": "ov"
                    }
                  ]
                }
              },
              "position": {
                "x": 408,
                "y": 160
              },
              "size": {
                "width": 336,
                "height": 296
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "743b5299-2d89-4783-b7c9-12a5b36df406",
                "port": "out"
              },
              "target": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "eb9f9c33-e717-43f0-98eb-dbd9c278fa8c",
                "port": "constant-out"
              },
              "target": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "M"
              }
            },
            {
              "source": {
                "block": "26aba23f-8567-4e9b-bd45-c26724030f33",
                "port": "out"
              },
              "target": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "cnt"
              }
            },
            {
              "source": {
                "block": "c90da543-4b9c-4f4c-a5fa-7e1166ee1dd3",
                "port": "out"
              },
              "target": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "ov"
              },
              "target": {
                "block": "cc17ff4d-1c27-4dc3-a14c-da730d54750e",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
                "port": "q"
              },
              "target": {
                "block": "805e1630-b09f-4b54-8275-367c64a4dd3f",
                "port": "in"
              },
              "size": 9
            }
          ]
        }
      }
    }
  }
}