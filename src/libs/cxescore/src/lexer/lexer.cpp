#include "../include.hpp"
#include "../helpers/stringHelper.hpp"
using namespace std;
namespace cxesCore {
	vector<string> lexer(istream& input) {
		vector<string> result{ "" };
		try {
			setlocale(LC_ALL, "zh_CN.UTF-8");
			string tmp;
			while ((tmp = input.get()) != string{ EOF }) {
				string& result_end_ref = result.back();
				result.push_back(tmp);
			}
			return result;
		} catch (const exception& e) {
			cerr << "cxesCore Error :" << e.what() << '\n';
			return {};
		}
	}
}