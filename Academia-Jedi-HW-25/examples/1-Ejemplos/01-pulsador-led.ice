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
          "id": "3c593066-c1c9-4332-a029-374a2935475c",
          "type": "basic.input",
          "data": {
            "name": "Pulsador",
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
            "x": -104,
            "y": -88
          }
        },
        {
          "id": "b63243b4-e05b-4fe9-b73d-c7c26ad4ea75",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "D12",
                "value": "143"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 168,
            "y": -88
          }
        },
        {
          "id": "c330acf7-e9ab-408a-a36f-7d80002a374c",
          "type": "basic.info",
          "data": {
            "info": "## Ejemplo 1: Encender un LED con pulsador, sin biestable",
            "readonly": true
          },
          "position": {
            "x": -168,
            "y": -248
          },
          "size": {
            "width": 568,
            "height": 88
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "3c593066-c1c9-4332-a029-374a2935475c",
            "port": "out"
          },
          "target": {
            "block": "b63243b4-e05b-4fe9-b73d-c7c26ad4ea75",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}