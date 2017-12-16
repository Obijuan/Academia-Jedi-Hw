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
                "name": "LED0",
                "value": "95"
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
          "id": "89fdd598-22bf-4c36-8e0f-2aa3f4fe962e",
          "type": "basic.info",
          "data": {
            "info": "<B>Circuito para encender el LED0 con el pulsador SW1</B>",
            "readonly": true
          },
          "position": {
            "x": 168,
            "y": 48
          },
          "size": {
            "width": 448,
            "height": 32
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
            "info": "Salida",
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
        }
      ],
      "wires": [
        {
          "source": {
            "block": "2e7bd2cf-d736-441f-9836-f1678aa710c6",
            "port": "out"
          },
          "target": {
            "block": "a07a781a-4330-4f23-8ad5-647a98ddd851",
            "port": "in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 73,
        "y": 49
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}