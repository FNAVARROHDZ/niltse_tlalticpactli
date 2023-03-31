# content of tests

def request_this():
    import requests

    url = "https://dog.ceo/api/breeds/image/random"

    payload = {}
    headers = {}

    response = requests.request("GET", url, headers=headers, data=payload)

    return response.status_code


def test_request():
    assert request_this() == 200
