#!/bin/bash
stdin  = 0
stdout = 1
stderr = 2
file descriptor = num_id of opened file
n> redirect output, <n> is fd
> ==> 1>
$ command > output_file		#same
$ command 1> output_file	#same

$ command 2> out_err_file

$ command 2> error 1> output

$ command 2> /dev/null

$ command > output_and_error 2>&1 ==> output > file, stderr > stdout

$ command &> output_file ==> &> <=> 2>&1 <=> stderr > stdout

#end
