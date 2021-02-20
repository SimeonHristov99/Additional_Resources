#include "pch.h"
#include <iostream>
const size_t MAX_CAPACITY = 50;

template <typename T>
class Stack
{
private:
	size_t i;
	T arr[MAX_CAPACITY];

public:
	Stack() { i = 0; arr[0] = -1; }

	bool isEmpty() const { return  i == 0; }
	bool isFull() const { return  i == MAX_CAPACITY - 1; }

	void push(const T& x)
	{
		if (!isFull())
			arr[++i] = x;

		else std::cout << "\n\n\tERROR: Stack is full!\n";
	}

	void pop(T& x)
	{
		if (!isEmpty())
			x = arr[i--];

		else std::cout << "\n\n\tERROR: Stack is empty!\n";
	}

	void print()
	{
		T temp = -1;
		while (!isEmpty())
		{
			pop(temp);
			std::cout << temp << " ";
		}
		std::cout << std::endl;
	}
};

int main()
{
	Stack <int> st;

	st.push(10);
	st.push(20);
	st.push(25);
	st.push(30);

	st.print();

	return 0;
}