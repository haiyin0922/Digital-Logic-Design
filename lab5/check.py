import sys
import filecmp
import os.path
arg = int(sys.argv[1])

src = ['pno.dat', 'gtr.dat', 'vio.dat', 'test.dat']
ans = ['pno_ans.dat', 'gtr_ans.dat', 'vio_ans.dat', 'test_ans.dat']

srcFile = src[arg]
ansFile = ans[arg]

if (os.path.exists(srcFile) == False):
    print(srcFile + ' does not exiest')
    sys.exit()

if (os.path.exists(ansFile) == False):
    print(ansFile + ' deos not exiest')
    sys.exit()

if (filecmp.cmp(srcFile, ansFile)):
    print('Congratulations')
else:
    print('something wrong in your code QQ')
