from bs4 import BeautifulSoup
import requests
import wget
import gzip
import shutil


url = 'http://api.bitcoincharts.com/v1/csv'
path = '/Users/Bugday/VSWorkspace/historical-crypto-data/csvs/'
ext = 'gz'
currency = 'EUR' # Currency can be changed to USD / USD


def listFD(url, ext=''):
    page = requests.get(url).text
    #print(page)
    soup = BeautifulSoup(page, 'html.parser')
    #print('-----SOUP AUSGABE: ' + soup + ' ------')
    return([url + '/' + node.get('href') for node in soup.find_all('a') if node.get('href').endswith(ext) and currency in node.get('href')])
   # return [url + '/' + node.get('href') for node in soup.find_all('a') if node.get('href').endswith(ext) and node.get('href')]

for file in listFD(url, ext):
    url = file
    print (path + file[36:])
    print ('------DATEI: ' + file[36:] + ' ------')
    print ('-------2: ' + file[36:-2] + ' ------') # on WIN systems -2 to get save decompressed file as .csv and not as .csv.gz file 
    print ('-------3: ' + file[36:-3] + ' ------') # on MACOS systems -3 to avoid .csv'.'
    wget.download(url, path + file[36:])
    with gzip.open(path + file[36:], 'rb') as f_in:
        with open(path + file[36:-3], 'wb') as f_out:
            shutil.copyfileobj(f_in, f_out)