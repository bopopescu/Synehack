import re
f1 = open('text.txt', 'r')
line_number = 1
for line in f1:
    for m in re.finditer('Call', line):
        print "Found", m.group(0), "line", line_number, "at", m.start(), "-", m.end()
    line_number += 1
f1.close()
