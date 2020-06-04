#include "base.hpp"
#include "include.hpp"
#include "helpers/stringHelper.hpp"
#include "lexer/lexer.hpp"
#include <asio.hpp>
int cxeser::start(int argc, char const* argv[]){
    using namespace std;
	if (argc == 1) {
		cerr << "Usage : " << argv[0] << "file";
		exit(1);
	}
	vector<string> tokens = lexer(argv[1]);
	for (unsigned long long i = 0; i < tokens.size(); i++)
	{
		cout << tokens[i]<<",";
	}
	
	return 0;
}