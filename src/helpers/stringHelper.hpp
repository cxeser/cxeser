#pragma once
#include "../include.hpp"
using namespace std;
enum class isdigit_s_t { yes=0,
					   hasdot=1,
					   no=2, };
extern vector<string> split(const string& str, const string& pattern);
extern isdigit_s_t isdigit_s(const string str);
