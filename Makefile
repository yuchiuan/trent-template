
# for more detail about compile flags, this link below gives a quick reference
# http://blog.httrack.com/blog/2014/03/09/what-are-your-gcc-flags/
CXX=g++
CFLAG=-Wall -Werror -pipe \
	 -fno-exceptions -Winit-self \
	 -rdynamic -Wl,-O1
DBFLAG= -DDEBUG -g
FILE=main
Prog=Project_Name

all: main debug

main:
	$(CXX) $(CFLAG) $(FILE).cpp -o $(Prog).o
debug:
	$(CXX) $(CFLAG) $(DBFLAG) $(FILE).cpp -o $(Prog).d

test: test_simple

# to use test_simple, you must prepare two files, simple.input and golden.output 
test_simple: $(Prog).o simple.input
	./$(Prog).o simple.input > simple.output
	diff golden.output simple.output

clean:
	rm -f $(Prog).o $(Prog).d
