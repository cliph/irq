from slistener import SListener
import time, tweepy, sys

## authentication
username = '' ## put a valid Twitter username here
password = '' ## put a valid Twitter password here
auth     = tweepy.auth.BasicAuthHandler(username, password)
api      = tweepy.API(auth)

def main():
    # track = ['obama', 'romney']
    # track = ['express yourself',]
    # track = ['#halloween',]
    track = ['#OrangeOctober',]
    # track = ['iraq', ]
 
    listen = SListener(api, 'myprefix')
    stream = tweepy.Stream(auth, listen)

    # print "Streaming started..."

    try: 
        stream.filter(track = track)
    except:
        # print "end of stream"
        stream.disconnect()

if __name__ == '__main__':
    main()
