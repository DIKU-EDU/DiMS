.globl _start
_start:

  ori $v0, $0, 10

.include "_shutdown.S"
