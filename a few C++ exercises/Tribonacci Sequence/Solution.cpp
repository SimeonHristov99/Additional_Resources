#include <iostream>
#include <vector>

std::vector<int> tribonacci(std::vector<int> signature, int n)
{
	std::vector<int> result;

	int first = signature[0];
	int second = signature[1];
	int third = signature[2];

	switch (n)
	{
  case 0:
  {
    return result;
  }
	case 1:
	{
		result.push_back(first);
		return result;
	}
	case 2:
	{
		result.push_back(first);
		result.push_back(second);
		return result;
	}
	case 3:
	{
		result.push_back(first);
		result.push_back(second);
		result.push_back(third);
		return result;
	}
	default:
	{
		result.push_back(first);
		result.push_back(second);
		result.push_back(third);

		for (int i = 0; i < n - 3; i++)
		{
			int next = first + second + third;

			result.push_back(next);

			first = second;
			second = third;
			third = next;
		}

		return result;
	}
	}
}

int main()
{
	

	return 0;
}