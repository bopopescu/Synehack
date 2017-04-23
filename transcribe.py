#!/usr/bin/env python

# [START import_libraries]
#import argparse
import io
import os
import re

# [END import_libraries]

def transcribe_file(speech_file):
    """Transcribe the given audio file."""
    from google.cloud import speech
    speech_client = speech.Client()

    with open(speech_file, 'rb') as audio_file:
        content = audio_file.read()
        audio_sample = speech_client.sample(
            content=content,
            source_uri=None,
            encoding='LINEAR16',
            sample_rate_hertz=16000)

    alternatives = audio_sample.recognize('en-US')
    fo = open("Inputs/file_"+`speech_file`+".txt","w")
    for alternative in alternatives:
        print >> fo , format(alternative.transcript)
    fo.close()


#indir = '/home/tazeen/Desktop/speech_python/resources'
for fn in os.listdir('/home/tazeen/Desktop/speech_python/r'):
     if os.path.isfile(fn):
        transcribe_file(fn)


#f1 = open('Inputs/2.txt', 'r')
c=0
a=0
s=0
o=0
indir = '/home/tazeen/Desktop/speech_python/Inputs'
for root, dirs, filenames in os.walk(indir):
    for f in filenames:
	flag=0
        f1 = open(os.path.join(root, f), 'r')
	line_number = 1
	for line in f1:
	    for m in re.finditer('call', line):
		#print "Found", m.group(0), "line", line_number, "at", m.start(), "-", m.end(),f1
                c+=1
		flag=1
		break
	    for m in re.finditer('ATM', line):
		#print "Found", m.group(0), "line", line_number, "at", m.start(), "-", m.end(), f1
		a+=1
		flag=1
		break
	    for m in re.finditer('services', line):
		#print "Found", m.group(0), "line", line_number, "at", m.start(), "-", m.end(), f1
		s+=1
		flag=1
		break
	    line_number += 1
	if flag==0 : o+=1
	f1.close()
print "Problem domain\tNumber of customers"
print "Customer care\t",c
print "ATM\t\t", a
print "Services offered at Bank",s
print "Others\t\t",o
	
'''
if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument(
        'path', help='File or GCS path for audio file to be recognized')
    args = parser.parse_args()
    if args.path.startswith('gs://'):
        transcribe_gcs(args.path)
    else:
	transcribe_file(args.path)
'''


