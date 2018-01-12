# bgpstream-alpine

quickly thrown together alpine version of bgpstream. replaced [pthread_yield](http://man7.org/linux/man-pages/man3/pthread_yield.3.html) with [sched_yield](http://man7.org/linux/man-pages/man2/sched_yield.2.html) in the source so it will compile on alpine.

i don't know if there are consequences to this. use at your own risk.

```
$ docker build -t bgpstream .
-stuff-
$ docker run -ti --rm bgpstream -w 1469159625,1469182166 -k 1.3.3.0/24 -c rrc00
U|A|1469159625|ris|rrc00|1836|146.228.1.3|1.3.3.0/24|146.228.1.3|1836 13030 3223 203959 27176|27176|1836:110 1836:6000 1836:6041||
U|A|1469159641|ris|rrc00|8758|212.25.27.44|1.3.3.0/24|212.25.27.44|8758 8220 3223 203959 27176|27176|8220:65030 8220:65401 8758:110 8758:300||
U|A|1469159642|ris|rrc00|50300|176.12.110.8|1.3.3.0/24|176.12.110.8|50300 5580 3223 203959 27176|27176|||

```
