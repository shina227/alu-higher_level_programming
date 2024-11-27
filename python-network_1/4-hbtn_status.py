#!/usr/bin/python3
"""
This module fetches the status from the specified URL and displays
the response type and content in a formatted manner.
"""

import requests

if __name__ == "__main__":
    response = requests.get('https://alu-intranet.hbtn.io/status')
    print("Body response:")
    print(f"\t- type: {type(response.text)}")
    print(f"\t- content: {response.text}")
