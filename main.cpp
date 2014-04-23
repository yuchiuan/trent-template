#include <iostream>
#include <fstream>

using namespace std;

int main(int argc, char *argv[]){

	ifstream fp;
	fp.open(argv[1]);
	if( !fp.is_open() ){
	    cerr<<"[Error] file: "<<argv[1]<<" open error!"<<endl;
        return -1;
	}


	return 0;
}
