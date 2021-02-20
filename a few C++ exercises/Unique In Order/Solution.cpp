#include <iostream>
#include <vector>

template <typename T>
std::vector<T> uniqueInOrder(const std::vector<T>& iterable)
{
	std::vector<T> answer;

	if (iterable.size() == 1)
	{
		return iterable;
	}

	for (size_t i = 1; i < iterable.size(); i++)
	{
		if (iterable[i] != iterable[i - 1])
		{
			answer.push_back(iterable[i - 1]);
		}
	}

	answer.push_back(iterable[iterable.size() - 1]);

	return answer;
}
std::vector<char> uniqueInOrder(const std::string& iterable)
{
	std::vector<char> answer;

	for (size_t i = 0; i < iterable.length(); i++)
	{
		if (iterable[i + 1] != iterable[i])
		{
			answer.push_back(iterable[i]);
		}
	}

	return answer;
}

int main()
{
	

	return 0;
}