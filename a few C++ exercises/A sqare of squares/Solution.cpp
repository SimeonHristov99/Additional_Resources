#include <iostream>
#include <vector>

bool is_square(int number)
{
	for (size_t i = 0; i <= (number / 2); i++)
	{
		if (i * i == number)
		{
			return true;
		}
	}

	return false;
}

int main()
{
	

	return 0;
}