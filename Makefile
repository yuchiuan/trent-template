CXX=g++
FLAG=-Wall
FILE=main
Prog=bot_trust

main:
	$(CXX) $(FLAG) $(FILE).cpp -o $(Prog).o
clean:
	rm -f $(Prog).o
