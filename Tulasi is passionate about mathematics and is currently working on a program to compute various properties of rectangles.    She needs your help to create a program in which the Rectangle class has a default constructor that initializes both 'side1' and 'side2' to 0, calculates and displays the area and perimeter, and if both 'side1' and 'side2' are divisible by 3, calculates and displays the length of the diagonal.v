#include <iostream>
#include <cmath>
#include <iomanip>

using namespace std;

class Rectangle {
    int side1, side2;

public:
    Rectangle() {
        side1 = 0;
        side2 = 0;
    }

    void inputSides() {
        cin >> side1 >> side2;
    }

    int area() {
        return side1 * side2;
    }

    int perimeter() {
        return 2 * (side1 + side2);
    }

    void printDiagonals() {
        if (side1 % 3 == 0 && side2 % 3 == 0) {
            double diagonal = sqrt(side1 * side1 + side2 * side2);
            cout << fixed << setprecision(2)  << diagonal << endl;
        } else {
            cout << "There are no diagonals" << endl;
        }
    }
};

int main() {
    Rectangle rect;
    rect.inputSides();
    cout << rect.area() << endl;
    cout << rect.perimeter() << endl;
    rect.printDiagonals();

    return 0;
}
