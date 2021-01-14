import time
import sys

argv = sys.argv
length = 10

if len(argv) == 2:
    length = int(argv[1])

print("Sleep " + str(length) + "sec...")
time.sleep(length)
print("Task done.")
