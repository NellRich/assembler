FROM ubuntu
COPY lb_2.s .
RUN apt-get update
RUN apt-get install binutils -y
RUN apt-get install nasm
RUN apt-get install gcc-multilib -y
RUN nasm -f elf lb_2.s
RUN gcc -m32 lb_2.o
CMD ./a.out
