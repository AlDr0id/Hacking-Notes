import xml.etree.ElementTree as ET
import sys

doc = ET.parse(sys.argv[1])
ini = doc.getroot()
num = 0
for i in ini:
    url = i[0].text
    num = num + 1
    print(url)

print("Total: ", num, " resultados")
