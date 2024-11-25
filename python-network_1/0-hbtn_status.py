#!/usr/bin/python3
""" This script fetches the status from a specified URL and
displays the response details """

import urllib.request

if __name__ == "__main__":
    url = 'https://alu-intranet.hbtn.io/status'

    with urllib.request.urlopen(url) as response:
        body = response.read()

        output = (
            "Body response:\n"
            f"\t- type: {type(body)}\n"
            f"\t- content: {body}\n"
            f"\t- utf8 content: {body.decode('utf-8')}\n"
        )

        print(output)
