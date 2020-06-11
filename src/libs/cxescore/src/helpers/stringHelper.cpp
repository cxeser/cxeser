#include "../include.hpp"
#include "stringHelper.hpp"
using namespace std;
vector<string> split(const string& str, const string& pattern) {
	vector<string> ret;
	if (pattern.empty())
		return ret;
	size_t start = 0, index = str.find_first_of(pattern, 0);
	while (index != str.npos) {
		if (start != index) {
			if (start != 0) {
				ret.push_back(str.substr(start - 1, 1));
			}
			ret.push_back(str.substr(start, index - start));
		}
		start = index + 1;
		index = str.find_first_of(pattern, start);
	}
	if (!str.substr(start).empty())
		ret.push_back(str.substr(start));
	return ret;
}
isdigit_s_t isdigit_s(const string str) {
	bool hasdot = false;
	for (unsigned long long i = 0; i < str.length(); i++) {
		char thisChar = str.c_str()[i];
		if (!isdigit(char(thisChar))) {
			return isdigit_s_t::no;
		} else if (thisChar = '.' && (i != 0)) {
			hasdot = true;
		}
	}
	return hasdot ? isdigit_s_t::hasdot : isdigit_s_t::yes;
}