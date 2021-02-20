#include <iostream>
#include <vector>

size_t times_present(const int& a, const std::vector<int>& numbers)
{
	size_t answer = 0;

	for (const int& n : numbers)
	{
		if (n == a)
		{
			++answer;
		}
	}

	return answer;
}

int findOdd(const std::vector<int>& numbers)
{
	for (const int& a : numbers)
	{
		if (times_present(a, numbers) % 2 != 0)
		{
			return a;
		}
	}
}

int main()
{
	

	return 0;
}