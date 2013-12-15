/*
 * ThreadPool.cpp
 *
 *  Created on: Dec 14, 2013
 *      Author: asad
 */

#include <iostream>
#include <iterator>
#include <algorithm>
#include <boost/lambda/lambda.hpp>
#include "ThreadPool.h"
#include "ThreadPoolManager.h"

using namespace std;

struct whatever
{
	void operator() (int i) { std::cout << ' ' << i; }
};

int main()
{
	std::vector<int> testVector;
	whatever funcObject;
	testVector.push_back(10);
	testVector.push_back(15);
	testVector.push_back(20);

	std::for_each(testVector.begin(), testVector.end(), funcObject);

	return 0;
}
