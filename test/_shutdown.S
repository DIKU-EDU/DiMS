# Simulator shutdown sequence
syscall
nop # nop the ID stage
nop # nop the IF stage (never reached, due to inverse pipeline order)
