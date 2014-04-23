#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main(int argc, char *argv[]){

	ifstream fp;
    string tmp;
    
	fp.open(argv[1]);

	if( !fp.is_open() ){
	    cerr<<"[Error] file: "<<argv[1]<<" open error!"<<endl;
        return -1;
	}
    
    // Extract formatted input, split by \n or blanks, etc.
    while ( fp>>tmp ){

        cout<<tmp<<endl;
    }
    
    fp.close();
	return 0;
}
