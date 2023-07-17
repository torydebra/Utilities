#!/usr/bin/env python2

import subprocess
import sys
import time

GET_THROTTLED_CMD = 'vcgencmd get_throttled'
GET_TEMP_CMD = 'vcgencmd measure_temp'

MESSAGES = {
    0: 'Under-voltage!',
    1: 'ARM frequency capped!',
    2: 'Currently throttled!',
    3: 'Soft temperature limit active',
    16: 'Under-voltage has occurred since last reboot.',
    17: 'ARM frequency capped has occurred since last reboot.',
    18: 'Throttling has occurred since last reboot',
    19: 'Soft temperature limit has occurred'
}

arg1 = 5 #default sec
if sys.argv[1:]: #if at least one arg
    arg1 = float(sys.argv[1])

try:
    while True:

        throttled_output = subprocess.check_output(GET_THROTTLED_CMD, shell=True)
        sys.stdout.write(throttled_output)
        throttled_binary = bin(int(throttled_output.split('=')[1], 0))

        for position, message in MESSAGES.iteritems():
            # Check for the binary digits to be "on" for each warning message
            if len(throttled_binary) > position and throttled_binary[0 - position - 1] == '1':
                if (position == 0 or position == 1 or position == 2 or position == 3) :
                    print('\033[93m' + message + '\033[0m')
                else :
                    print(message)

        temp_output = subprocess.check_output(GET_TEMP_CMD, shell=True)
        if (float(temp_output[5:-3]) > 50) :
            sys.stdout.write('\033[93m' + temp_output + '\033[0m')
        else:
            sys.stdout.write(temp_output)

        print('')
        time.sleep(arg1)

except KeyboardInterrupt:
    print('closing')
    pass
