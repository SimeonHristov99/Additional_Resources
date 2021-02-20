#include "pch.h"
#include "Minutes.hpp"
#include <iostream>

Minutes Minutes::operator+(const Minutes& other) const
{
	return Minutes((m_minutes + other.m_minutes) % 60);
}

Minutes& Minutes::operator+=(const Minutes& other)
{
	return *this = *this + other;
}

Minutes Minutes::operator-(const Minutes& other) const
{
	return Minutes((m_minutes - other.m_minutes) % 60);
}

Minutes& Minutes::operator-=(const Minutes& other)
{
	return *this = *this - other;
}

bool Minutes::addHour() const
{
	return m_minutes >= 60;
}

bool Minutes::isZero() const
{
	return m_minutes == 0;
}

std::istream& operator>>(std::istream& in, Minutes& data)
{
	return in >> data.m_minutes;
}

std::ostream& operator<<(std::ostream& out, const Minutes& data)
{
	return out << data.m_minutes;
}