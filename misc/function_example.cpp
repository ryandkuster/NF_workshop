#include <iostream>
#include <vector>

std::vector<int> get_squares(const std::vector<int>& input_vec) {
    std::vector<int> squares_vec;
    for (int i : input_vec) {
        squares_vec.push_back(i * i);
    }
    return squares_vec;
}

int main() {
    std::vector<int> test_vec;
    for (int i = 1; i <= 10; ++i) {
        test_vec.push_back(i);
    }

    std::vector<int> test_squares = get_squares(test_vec);

    for (int square : test_squares) {
        std::cout << square << " ";
    }

    return 0;
}
