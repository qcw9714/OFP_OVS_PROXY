
OBJS = main.o error_check.o ofmsg.o schedule.o
HEAD = unp.h schedule.h ofmsg.h
main: $(OBJS) $(HEAD)
	g++ -o $@ $(OBJS) -lpthread

%.o: %.cpp
	g++ -c $< -o $@

clean: 
	rm main *.o


