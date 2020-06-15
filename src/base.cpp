#include "base.hpp"
#include "include.hpp"
#include "libs/cxescore/src/base.hpp"
#include "libs/cxescore/src/lexer/lexer.hpp"
int cxeser::start(int argc, char const* argv[]){
    using namespace std;
	if (argc == 1) {
		cerr << "Usage : " << argv[0] << " file";
		exit(1);
	}
	ifstream fin(argv[1]);
	if (!fin.is_open())
	{
		cerr << "Cannot open file " << argv[1];
		fin.close();
		exit(EXIT_FAILURE);
	}
	
	vector<string> tokens = cxesCore::lexer(fin);
	for (unsigned long long i = 0; i < tokens.size(); i++)
	{
		cout << tokens[i] << ",";
	}
	
	
	fin.close();
	return 0;
}