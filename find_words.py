import re
#f1 = open('Inputs/2.txt', 'r')
c=0
a=0
s=0
o=0
import os
indir = '/home/tazeen/Desktop/speech_python/Inputs'
for root, dirs, filenames in os.walk(indir):
    for f in filenames:
	flag=0
        f1 = open(os.path.join(root, f), 'r')
	line_number = 1
	for line in f1:
	    for m in re.finditer('call', line):
		print "Found", m.group(0), "line", line_number, "at", m.start(), "-", m.end(),f1
                c+=1
		flag=1
		break
	    for m in re.finditer('ATM', line):
		print "Found", m.group(0), "line", line_number, "at", m.start(), "-", m.end(), f1
		a+=1
		flag=1
		break
	    for m in re.finditer('services', line):
		print "Found", m.group(0), "line", line_number, "at", m.start(), "-", m.end(), f1
		s+=1
		flag=1
		break
	    line_number += 1
	if flag==0 : o+=1
	f1.close()
print c
print a
print s
print o
	
