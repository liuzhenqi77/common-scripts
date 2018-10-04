import time
from urllib.request import urlopen
from urllib.error import URLError
import subprocess

def internet_on():
    try:
        urlopen('http://google.com', timeout=1)
        return True
    except Exception as e: 
        return False

def sendmessage(message):
    subprocess.Popen(['notify-send', message])
    return


if __name__ == '__main__':
    online_status = True
    while 1:
        online = internet_on()
        if not online:
            if online_status==True: 
                online_status = False
            sendmessage('Internet is DEEEEEAD!!!!')
            time.sleep(1)
        else:
            if online_status==False:
                online_status = True
                sendmessage('Internet is BAAAAACK!!!!')
            time.sleep(5)
