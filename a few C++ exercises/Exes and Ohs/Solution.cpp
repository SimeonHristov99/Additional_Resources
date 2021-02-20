#include <iostream>

bool XO(const std::string& str)
{
	size_t x = 0;
	size_t o = 0;

	for (const char& c : str)
	{
		if (c == 'x' || c == 'X')
		{
			++x;
		}
		else if (c == 'o' || c == 'O')
		{
			++o;
		}
	}

	return x == o;
}

int main()
{
	

	return 0;
}