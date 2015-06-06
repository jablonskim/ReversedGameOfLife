#!/usr/bin/env python3

import threading
import os
import sys

class GolTest(threading.Thread):
    def __init__(self, path, eid, tid):
        threading.Thread.__init__(self)
        self.test_id = tid
        self.path = path
        self.eid = eid

    def run(self):
        os.system('Rscript main.R > ' + self.path + '/' + str(self.eid) + '_' + str(self.test_id) + '.txt')
        print('Done: ' + str(self.test_id + 1))


if len(sys.argv) != 3:
    print('error')
    sys.exit(1)

tasks = []

for i in range(10):
    t = GolTest(sys.argv[1], sys.argv[2], i)
    t.start()
    tasks.append(t)



