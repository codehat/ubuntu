#!/usr/bin/python
# use this program to convert Binary file to C format
import sys

DEBUG = False

def printline():
    print '-'*80

def ShowCmdArgs():
    i = 0
    for arg in sys.argv:
        print 'arg', i, ':', arg
        i = i + 1

def usage():
    progname = sys.argv[0]
    printline()
    print 'Usage:'
    print 'bin2C.py -i binfilename -o cfilename'
    printline()


def readbin(filename=''):
    if filename == '':
        return ''
    else:
        lines = ''
        try:
            fd = open(filename, 'rb')
        except:
            print 'Open ' + filename + ' Fail!'
            return ''
        else:
            buff = fd.read()
            fd.close()
            return buff

def main():
    iname = ''
    oname = ''
    if DEBUG:
        ShowCmdArgs()
    if len(sys.argv) == 3:
        if sys.argv[1] == '-i':
            iname = sys.argv[2]
        else:
            usage()
            return
    elif len(sys.argv) == 5:
        if sys.argv[1] == '-i':
            iname = sys.argv[2]
            if sys.argv[3] == '-o':
                oname = sys.argv[4]
            else:
                usage()
                return
        elif sys.argv[1] == '-o':
            oname = sys.argv[2]
            if sys.argv[3] == '-i':
                iname = sys.argv[4]
            else:
                usage()
                return
        else:
            usage()
            return
    else:
        usage()
        return

    if iname != '':
        print 'In: ' + iname

    if oname != '':
        print 'Out: ' + oname

    ibuff = readbin(iname)
    #print ibuff

    keystring = ''
    keyidx = 0
    for key in ibuff:
        if ((keyidx + 1) % 8) == 0:
            keystring = keystring + '0x%02x' % ord(key)
            keystring = keystring + '\n'
        else:
            keystring = keystring + '0x%02x ' % ord(key)
        keyidx = keyidx + 1

    if oname == '':
        print keystring
    else:
        try:
            fd = open(oname, 'w')
        except:
            print 'Open ' + oname + ' Fail'
        else:
            fd.write(keystring)
            fd.close()

    print 'Tatol len: ' + str(keyidx)

main()
