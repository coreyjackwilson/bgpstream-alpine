# bgpstream-alpine

quickly thrown together alpine version of bgpstream. replaced pthread_yield with sched_yield in the source so it will compile on alpine.

i don't know if there are consequences to this. use at your own risk.

ref:
http://man7.org/linux/man-pages/man2/sched_yield.2.html
http://man7.org/linux/man-pages/man3/pthread_yield.3.html
