// Dariusz Kowalczyk, Grupa WZ_ININ4_PR1, Nr albumu: 55560


// --------------------------Zadanie 1.1------------------------//
// Definiowanie macierzy A, B oraz wektora f
A = [2, -7; 5, 4];
B = [6, 1; 4, -3];
f = [4; 1];

disp("Macierz A:");
disp(A);
disp("Macierz B:");
disp(B);
disp("Wektor f:");
disp(f);


// --------------------------Zadanie 1.2------------------------//


// a) Wyświetlenie rozmiaru macierzy A oraz wektora f
disp("Rozmiar macierzy A:");
disp(size(A));
disp("Rozmiar wektora f:");
disp(size(f));

// b) Obliczanie transpozycji macierzy B
B_transposed = B';
disp("Transpozycja macierzy B:");
disp(B_transposed);

// c) Obliczanie wyrażenia: (A + B)^2 + 2(A - B)
expr_result = (A + B).^2 + 2.*(A - B);
disp("Wynik wyrażenia: (A + B)^2 + 2(A - B):");
disp(expr_result);

// d) Utworzenie macierzy C i wektora h
C = [A, B];
h = [f; f];
disp("Macierz C:");
disp(C);
disp("Wektor h:");
disp(h);

// e) Obliczanie iloczynu C*h
product_result = C * h;
disp("Wynik iloczynu C*h:");
disp(product_result);


// --------------------------Zadanie 1.3------------------------//


// a) Wyświetlanie wszystkich zmiennych lokalnych
disp("Wszystkie zmienne lokalne:");
whos;

// b) Zapisywanie zmiennych w pliku o nazwie "dane"
//Trzeba podać ścieżkę bezwzględną, aby móc zapisać zmienne inaczej u mnie na komputerze jest wywoływany wyjątek. Dlatego kod jest zakomentowany.
//save('dane.sod');

// c) Usuwanie wszystkich zmiennych
clear;

// d) Wyświetlanie zawartości katalogu roboczego
disp("Zawartość katalogu roboczego:");
disp(dir("."));


// --------------------------Zadanie 1.4------------------------//


// a) Utworzenie 24-elementowego wektora x
x = [1:24];

// b) Utworzenie macierzy Y o wymiarach 6x4 za pomocą funkcji reshape (matrix w sciLab)
Y = matrix(x, 6, 4);

disp("Wektor x:");
disp(x);
disp("Macierz Y:");
disp(Y);

// --------------------------Zadanie 1.5------------------------//


// a) e^(2sin(2 * PI))
a = exp(2 * sin(2 * %pi));

// b) cos(PI/3)^4
b = cos(%pi / 3)^4;

// c) ln(sqrt(5))
c = log(sqrt(5));

disp("a) e^2sin(2 * PI) = " + string(a));
disp("b) cos(PI/3)^4 = " + string(b));
disp("c) ln(sqrt(5)) = " + string(c));



// --------------------------Zadanie 1.7------------------------//


// Utwórz macierze 3x4:
// a) o wszystkich elementach równych 1
matrix_a = ones(3, 4);

// b) o wszystkich elementach równych 0
matrix_b = zeros(3, 4);

// c) wypełnioną liczbami pseudolosowymi
matrix_c = rand(3, 4);

disp("a) Macierz 3x4 z elementami równymi 1:");
disp(matrix_a);
disp("b) Macierz 3x4 z elementami równymi 0:");
disp(matrix_b);
disp("c) Macierz 3x4 z liczbami pseudolosowymi:");
disp(matrix_c);
