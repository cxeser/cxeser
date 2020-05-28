#include "../include.hpp"
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