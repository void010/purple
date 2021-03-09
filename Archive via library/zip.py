import zipfile

test_zip=zipfile.ZipFile('C:\\Temp\\Test.zip', 'w')
test_zip.write('C:\\Temp\\1.txt', compress_type=zipfile.ZIP_DEFLATED)
test_zip.write('C:\\Temp\\2.txt', compress_type=zipfile.ZIP_DEFLATED)

test_zip.close()
