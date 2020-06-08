#include "../include.hpp"
#include "../helpers/stringHelper.hpp"
using namespace std;
vector<string> lexer(const string filename) {
	ifstream fin;
	vector<string> result{ "" };
	try {
		setlocale(LC_ALL, "zh_CN.UTF-8");
		fin.open(filename);
		if (!fin.is_open()) {
			cerr << "Can't open \"" << filename << "\"" << endl;
			exit(1);
		}
		string tmp;
		while ((tmp = fin.get()) != string{EOF}) {
			string& result_end_ref = result.back();
			if (tmp ==" ")
			{
			}
			else
			{
				/* code */
			}
			
			result.push_back(tmp);
		}
		return result;
	} catch (const exception& e) {
		fin.close();
		cerr << "cxeser Error :" << e.what() << '\n';
		return {};
	}
}