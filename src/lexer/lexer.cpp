#include "../include.hpp"
#include "../helpers/stringHelper.hpp"
using namespace std;
vector<string> lexer(const string filename) {
	ifstream fin;
	vector<string> result{""};
	try {
		setlocale(LC_ALL, "zh_CN.UTF-8");
		fin.open(filename);
		if (!fin.is_open()) {
			cerr << "Can't open \"" << filename << "\"" << endl;
			exit(1);
		}
		char tmp;
		while ((tmp = fin.get()) != EOF) {
				string& result_end_ref = result.back();
			isdigit_s_t result_isdigit = isdigit_s(result_end_ref);
			if ((result_isdigit == isdigit_s_t::yes && (isdigit(tmp) || tmp == '.')) || (result_isdigit == isdigit_s_t::hasdot && isdigit(tmp))) {
				//cout << "is number" << endl;
				cout << int(result_isdigit) << " "<<result_end_ref<<" "<< tmp << " " <<endl;
				result_end_ref += tmp;
			}else if(isdigit(tmp)){
					cout << "h " <<int(result_isdigit) << " "<<result_end_ref<<" "<< tmp << " " <<endl;
				result.push_back(string{ tmp });
				
					
			} else {
				result.push_back(string{ tmp });
			}
		}
		return result;
	} catch (const exception& e) {
		fin.close();
		cerr << "cxeser Error :" << e.what() << '\n';
		return {};
	}
}