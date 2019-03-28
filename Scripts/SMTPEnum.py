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
salida=open("SMTPUsers.txt", 'w')

for i in dic:
  s.send('VRFY ' + i + '\r')
  result=s.recv(1024)
  salida.write(result)
  print result
  
dic.close()
print "Salida guardada en SMTPUsers.txt"
salida.close()
s.close()
