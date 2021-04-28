import zipfile

test_zip=zipfile.ZipFile('C:\\Temp\\Test.zip', 'w')
test_zip.write('C:\\Temp\\1.txt', compress_type=zipfile.ZIP_DEFLATED)
test_zip.write('C:\\Temp\\2.txt', compress_type=zipfile.ZIP_DEFLATED)

test_zip.close()


import shutil
import os

entries = os.listdir('C:\\Temp')
for entry in entries:
	print(entry)
	
shutil.make_archive('C:\\Temp\\zipper_test', 'zip', 'C:\\Temp')
