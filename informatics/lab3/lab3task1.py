
#Eyes : 0 ":"
#Nose : 1 "<"
#Mouth: 6 "P"
#Smiley face: :<P
import re

regex = r":<P"

tests = ["blbalbal  balb :<P fs:(D@ XC:<DK :<P >SMAIJR: SO:<P) ):<><", #3
         "Lorem ipsum sit, :-) consectetur :<P adipiscing elit. :)", #1
         "i really don't quite understand why we need 5 test :<", #0
         "how are you anyways?", #0
         "i'm doing good:<P"] #1

#expected results:
#3
#1
#0
#0
#1

for test in tests:
    print(len(re.findall(regex, test)))
