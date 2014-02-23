#!bin/python
from subprocess import call
import datetime

print datetime.datetime.now()
call(["virsh", "save", "buildroot", "test_save"])
print datetime.datetime.now()
call(["virsh", "restore", "test_save"])
print datetime.datetime.now()
