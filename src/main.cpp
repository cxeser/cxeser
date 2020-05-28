#include "include.hpp"
#include "helpers/stringHelper.hpp"
using namespace std;
int main(int argc, char const* argv[]) {
	if (argc == 1) {
		cerr << "Usage : " << argv[0] << "file";
		exit(1);
	}
	ifstream fin;
	string str;
	try {
		setlocale(LC_ALL, "zh_CN.UTF-8");
		fin.open(argv[1]);
		if (!fin.is_open()) {
			cerr << "Can't open \"" << argv[1] << "\"" << endl;
			exit(1);
		}
		str = string(istreambuf_iterator<char>(fin), istreambuf_iterator<char>());
		
		vector<string> tokens = split(str, " .");
		cout << str << endl;
		for (int i = 0; i < tokens.size(); i++)
			cout << tokens[i];

	} catch (const exception& e) {
		cerr << "Error :" << e.what() << '\n';
	}

	return 0;
}
