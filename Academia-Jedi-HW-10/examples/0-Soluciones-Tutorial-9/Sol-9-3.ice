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
          "id": "023a5f18-520b-42fe-b730-9db2996bb590",
          "type": "basic.output",
          "data": {
            "name": "LED",
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
            "x": 344,
            "y": 80
          }
        },
        {
          "id": "80141c3c-e0d1-4456-b19b-3fd058de843e",
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
            "x": 80,
            "y": 80
          }
        },
        {
          "id": "4ffcba6e-1cb0-43b9-93a0-002bef1c749e",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "GP1",
                "value": "38"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 344,
            "y": 168
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "80141c3c-e0d1-4456-b19b-3fd058de843e",
            "port": "out"
          },
          "target": {
            "block": "023a5f18-520b-42fe-b730-9db2996bb590",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "80141c3c-e0d1-4456-b19b-3fd058de843e",
            "port": "out"
          },
          "target": {
            "block": "4ffcba6e-1cb0-43b9-93a0-002bef1c749e",
            "port": "in"
          },
          "vertices": [
            {
              "x": 264,
              "y": 144
            }
          ]
        }
      ]
    },
    "state": {
      "pan": {
        "x": 118.7411,
        "y": 79.9107
      },
      "zoom": 0.9978
    }
  },
  "dependencies": {}
}