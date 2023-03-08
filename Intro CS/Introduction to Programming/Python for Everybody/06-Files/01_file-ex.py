###################################
# File
# ###################################
# fhandle=open('file.txt')
# print(fhandle) # <_io.TextIOWrapper name='file.txt' mode='r' encoding='cp1252'>

# for line in handle:
#     print(line) # all text in file with \n between evry line

###################################
# Read file
###################################
# file=fhandle.read()
# print(file) # all text in file without \n between evry line (just how you write)
# print(len(file)) #372

###################################
# calc count of lines in file
###################################
# count = 0 
# for line in fhandle:
#     count = count + 1
# print(count)

###################################
# Search Throw the file
###################################
# [1]
# for line in fhandle:
#     line=line.rstrip()
#     if line.startswith('email'):
#         print(line)

# [2] skipping with continue
# for line in fhandle:
#     line=line.rstrip()
#     if not line.startswith('email'):
#         continue
#     print(line)

# ###################################
# # [3] get file form input
file_input=input('Enter a file-name: ')
try:
    file_handle=open(file_input)
except:
    print('Error...')
email_count=0
for line in file_handle:
    line=line.rstrip() # to remove spaces around line
    if 'email' in line:
        email_count=email_count+1
print('email',email_count)
