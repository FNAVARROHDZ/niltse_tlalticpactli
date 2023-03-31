import requests

url = "https://dog.ceo/api/breeds/image/random"

payload = {}
headers = {}

response = requests.request("GET", url, headers=headers, data=payload)

assert response.status_code == 200

print(response.text)
