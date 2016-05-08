ori v0, $0, 10
syscall
nop # nop the ID stage
nop # nop the IF stage (never reached, due to inverse pipeline order)
