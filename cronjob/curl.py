import requests


def main():
    url = 'http://localhost:8080/'
    response = requests.get(url)
    print(response.text)


if __name__ == '__main__':
    main()
