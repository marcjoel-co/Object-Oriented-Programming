#include <iostream>
#include <algorithm>
#include <cctype>

// Function to manipulate a string using pointers
void manipulate_string(std::string& str) {
    std::transform(str.begin(), str.end(), str.begin(), ::toupper);
}

int main() {
    std::string str = "hello world";
    manipulate_string(str);

    std::cout << "String after manipulation: " << str << std::endl;
    return 0;
}
