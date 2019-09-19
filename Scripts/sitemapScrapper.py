import xml.etree.ElementTree as ET
import sys

doc = ET.parse(sys.argv[1])
ini = doc.getroot()
for i in ini:
    url = i[0].text
    print(url)
