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
          "id": "8460320d-622f-4a7d-8ece-f9e90c96853b",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "range": "[1:0]",
            "pins": [
              {
                "index": "1",
                "name": "LED7",
                "value": "104"
              },
              {
                "index": "0",
                "name": "LED6",
                "value": "102"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 496,
            "y": -64
          }
        },
        {
          "id": "638af29f-6d2a-48f7-9187-25dba147f095",
          "type": "basic.input",
          "data": {
            "name": "int",
            "range": "[1:0]",
            "pins": [
              {
                "index": "1",
                "name": "SW1",
                "value": "10"
              },
              {
                "index": "0",
                "name": "SW2",
                "value": "11"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 240,
            "y": -64
          }
        },
        {
          "id": "4e9943c4-25c3-4ed6-8f97-94547787c81b",
          "type": "basic.info",
          "data": {
            "info": "**Ejemplo**: Sacando los dos pulsadores por los LEDs, usando\nun bus de 2-Bits",
            "readonly": true
          },
          "position": {
            "x": 208,
            "y": -160
          },
          "size": {
            "width": 456,
            "height": 56
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "638af29f-6d2a-48f7-9187-25dba147f095",
            "port": "out"
          },
          "target": {
            "block": "8460320d-622f-4a7d-8ece-f9e90c96853b",
            "port": "in"
          },
          "size": 2
        }
      ]
    }
  },
  "dependencies": {}
}