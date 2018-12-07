#include <iostream>
using namespace std;

extern uint32_t eratosthenes(uint32_t* primeBits, uint32_t n);

int main() {
	uint32_t n;
	cout << "Pick a number: ";
	cin >> n;
	uint32_t* sieve = new uint32_t[(n+63)/64];
	uint32_t count = eratosthenes(sieve, n);
	cout << '\n' << "Number of primes up to " << n << " = " << count << '\n';
	delete [] sieve;
}
