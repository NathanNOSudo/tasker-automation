#!/bin/bash

# Template shell script that provides logging functions
# As usual error messages are logged to STDERRR so they can be rediverted as convenient.
# Author: NathanNoSudo

# Keep the debug toggle flag at the top - alongside with the rest of your declarations
#
export DEBUG_FLAG=1	#0 = Off, 1=On 									# Turn me off if you dont want any INFO messages

## Function to Log INFO level messages - to STDOUT
##
Log_Info() {
	local timestamp=`date +"%Y%m%d%H%M%S"`
	log_message="$timestamp INFO: $1"
	test $DEBUG_FLAG -eq 1 && echo "$log_message"
}

## Function to Log ERROR level messages - to STDERR
##
Log_Error() {
	local timestamp=`date +"%Y%m%d%H%M%S"`
	log_message="$timestamp ERROR: $1"
	echo "$log_message" 1>&2; 		# Error messages need to go to STDERR
}

# Example of Logging an error message
Log_Error "This is an error message. Ideally I should be followed by a exit <non-zero-value>"

# Example of a DEBUG/INFO message
Log_Info "For your info, I am .. well .. a info message"

# the end
