#!/usr/bin/env python

import twitter

api=twitter.Api()

term="pic.twitter.com"

# results = api.FilterPublicTimeline(term)
results = api.GetPublicTimeline()
print type(results)
print dir(results)
#print results[0]

print [s.id for s in results]

for (index,status) in enumerate(reversed(results)):
        print status
        if index < len(results)-1: print
