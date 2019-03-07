#!/usr/bin/python
import socket
import sys

if len(sys.argv) != 3:
  print "Usage: ./SMTPEnum.py <IP> <dictionary>"
  sys.exit(0)

s=socket.socket(socket.AF_INET, socket.SOCK_STREAM)

connect=s.connect((sys.argv[1],25))

banner=s.recv(1024)
print banner

dic=open(sys.argv[2])

for i in dic:
  s.send('VRFY ' + i + '\r\n')
  result=s.recv(1024)
  print result
  
dic.close()

s.close()
