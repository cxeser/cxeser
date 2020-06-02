#include "../include.hpp"
using namespace std;
vector<string> lexer(const string filename) {
	ifstream fin;
	vector<string> result;
	try {
		setlocale(LC_ALL, "zh_CN.UTF-8");
		fin.open(filename);
		if (!fin.is_open()) {
			cerr << "Can't open \"" << filename << "\"" << endl;
			exit(1);
		}
		char tmp;
		while ((tmp = fin.get()) != EOF) {
			result.push_back(string{ tmp });
		}
		return result;
	} catch (const exception& e) {
		fin.close();
		cerr << "cxjser Error :" << e.what() << '\n';
		return {};
	}
}