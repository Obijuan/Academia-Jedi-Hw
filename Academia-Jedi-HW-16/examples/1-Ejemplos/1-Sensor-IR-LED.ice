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
          "id": "7d23c4ba-da99-4e8d-8eb6-1ca0fba89677",
          "type": "basic.input",
          "data": {
            "name": "IR",
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
            "x": 280,
            "y": 208
          }
        },
        {
          "id": "0c260366-462a-4486-97bd-a283ace6c690",
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
            "x": 512,
            "y": 208
          }
        },
        {
          "id": "9c55bea9-3064-4935-a9ca-8793da06b3cd",
          "type": "basic.info",
          "data": {
            "info": "La señal del sensor IR se lleva  \ndirectamente a un LED, para\nver cómo cambia al detectar objetos",
            "readonly": true
          },
          "position": {
            "x": 288,
            "y": 80
          },
          "size": {
            "width": 304,
            "height": 80
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "7d23c4ba-da99-4e8d-8eb6-1ca0fba89677",
            "port": "out"
          },
          "target": {
            "block": "0c260366-462a-4486-97bd-a283ace6c690",
            "port": "in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 6,
        "y": 87.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}