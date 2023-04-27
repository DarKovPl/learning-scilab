// Dariusz Kowalczyk, Grupa WZ_ININ4_PR1, Nr albumu: 55560




W = [0.69, 1.24, 0.32, -2.8, -5.84, -2.81, 10.88, 27, 18.55];
S = [0.4, 0.8, 1.6, 2.1, 2.8, 3.3, 3.5, 3.8, 4.5];


// --------------------------Zadanie 1------------------------//


figure(1);

// Punkty (W, S) na wykresie
plot(W, S, 'o');
xlabel('W');
ylabel('S');
title('Wykres punktów (W, S)');


// --------------------------Zadanie 2------------------------//

// Indeksy dla wektora W
indices = 1:length(W);

// a. Wykres elementów wektora W względem indeksów wektora
figure(2);
plot(indices, W, 'o-');
xlabel('Indeksy');
ylabel('Wartości wektora W');
title('Wykres elementów wektora W względem indeksów');

// b. Wykres elementów wektora W względem elementów wektora S:
// i. Wykres narysowany linią ciągłą
figure(3);
plot(S, W, '-');
xlabel('Wartości wektora S');
ylabel('Wartości wektora W');
title('Wykres elementów wektora W względem elementów wektora S (linia ciągła)');

// ii. Punkty na wykresie zaznaczone kółkami
figure(4);
plot(S, W, 'o');
xlabel('Wartości wektora S');
ylabel('Wartości wektora W');
title('Wykres elementów wektora W względem elementów wektora S (kółka)');



// --------------------------Zadanie 3------------------------//



// Zakres i krok dla zmiennej t
t_start = 0;
t_end = 10;
t_step = 0.1;

// Obliczanie wartości t i y
t_values = t_start:t_step:t_end;
y_values = cos(t_values) .* exp(sin(t_values));

figure(5);
plot(t_values, y_values);
xlabel('t');
ylabel('y = cos(t)e^(sin(t))');
title('Wykres funkcji y = cos(t)e^(sin(t))');



// --------------------------Zadanie 4------------------------//


// Zakres i krok dla zmiennej x
x_start = 0;
x_end = 2 * %pi;
x_step = 0.1;

// Obliczanie wartości x
x_values = x_start:x_step:x_end;

// Obliczanie wartości funkcji
y1_values = sin(x_values);          // sin(x)
y2_values = sin(x_values).^2;       // sin^2(x)
y3_values = sin(x_values).^3;       // sin^3(x)


figure(6);
plot(x_values, [y1_values', y2_values', y3_values']);
xlabel('x');
ylabel('Wartość funkcji');
title('Przebiegi funkcji: sin(x), sin^2(x) i sin^3(x)');
legend('sin(x)', 'sin^2(x)', 'sin^3(x)');


// --------------------------Zadanie 5------------------------//



// Zakres i krok dla zmiennej t
t_start = 0;
t_end = 20;
t_step = 0.1;

// Obliczanie wartości t
t_values = t_start:t_step:t_end;

// Obliczanie wartości funkcji y = Ae^(B * sin(t)) dla A = 2, B = 3
A1 = 2;
B1 = 3;
y1_values = A1 * exp(B1 * sin(t_values));

// Obliczanie wartości funkcji y = Ae^(B * sin(t)) dla A = 1, B = -3
A2 = 1;
B2 = -3;
y2_values = A2 * exp(B2 * sin(t_values));


figure(7);
// A = 2, B = 3 - czarna linia ciągła
plot(t_values', y1_values', "b-.", "LineWidth", 2);

// A = 1, B = -3 - niebieska linia kropkowana
plot(t_values', y2_values', "r-.", "LineWidth", 2);

xlabel('t');
ylabel('y(t)');
title('Wykres funkcji y = Ae^(B * sin(t)) dla różnych wartości A i B');
legend(["A = 2, B = 3", "A = 1, B = -3"]);
xgrid(1);



// --------------------------Zadanie 6------------------------//


// Definiowanie zakresu wartości x
x = linspace(0, 4*%pi, 1000);

// Obliczanie wartości funkcji
y1 = cos(x) - 1;
y2 = sin(1 ./ (x.^2 + 1));

// Rysowanie wykresów w oddzielnych oknach:
figure(8)
plot(x, y1);
title("Wykres funkcji cos(x) - 1");
xlabel("x");
ylabel("cos(x) - 1");

figure(9)
plot(x, y2);
title("Wykres funkcji sin(1 / (x^2 + 1))");
xlabel("x");
ylabel("sin(1 / (x^2 + 1))");

// Rysowanie obu funkcji na jednym rysunku:
figure(10)
plot(x, y1, "b-");
plot(x, y2, "r--");
title("Wykresy funkcji cos(x) - 1 oraz sin(1 / (x^2 + 1))");
xlabel("x");
ylabel("Wartości funkcji");
legend(["cos(x) - 1", "sin(1 / (x^2 + 1))"]);


// --------------------------Zadanie 7------------------------//


// Definiowanie zakresu wartości x
x = linspace(-10, 10, 1000);

// Obliczanie wartości funkcji
y = sin(x);
z = cos(x) .* sin(x);

// Rysowanie wykresu funkcji z = cos(x)sin(x)
figure(11)
plot3d(x, y, z);
title("Wykres funkcji z = cos(x)sin(x)");
xlabel("x");
ylabel("y = sin(x)");
zlabel("z = cos(x)sin(x)");



// --------------------------Zadanie 8------------------------//


// Definiowanie zakresu wartości x i y
x = linspace(-5, 5, 100);
y = linspace(-5, 5, 100);

// Tworzenie siatki współrzędnych
[X, Y] = meshgrid(x, y);

// Obliczanie wartości funkcji
Z = (X - Y) .* (X + Y) + exp(sqrt(X.^2 + Y.^2));

figure(12)
surf(X, Y, Z);
title("Wykres powierzchni f(x, y) = (x - y)(x + y) + e^(sqrt(x^2 + y^2))");
xlabel("x");
ylabel("y");
zlabel("f(x, y)");



// --------------------------Zadanie 9------------------------//



// Definiowanie zakresu wartości x i y
x = linspace(-%pi, 2*%pi, 100);
y = linspace(-%pi, 2*%pi, 100);

// Tworzenie siatki współrzędnych
[X, Y] = meshgrid(x, y);

// Obliczanie wartości funkcji
Z = sin(X) .* cos(Y);

// Rysowanie wykresu siatki (mesh)
figure(13)
mesh(X, Y, Z);
title("Wykres siatki f(x, y) = sin(x)cos(y)");
xlabel("x");
ylabel("y");
zlabel("f(x, y)");

// Rysowanie wykresu 3D (plot3d)
figure(14)
plot3d(x, y, Z);
title("Wykres 3D f(x, y) = sin(x)cos(y)");
xlabel("x");
ylabel("y");
zlabel("f(x, y)");

// Rysowanie wykresu konturowego (contour)
figure(15)
contour(x, y, Z, 10);
title("Wykres konturowy f(x, y) = sin(x)cos(y)");
xlabel("x");
ylabel("y");



// --------------------------Zadanie 10------------------------//


scf(16);

// Definiowanie zakresu wartości x i y
x = linspace(-3, 3, 100);
y = linspace(-3, 3, 100);

// Tworzenie siatki współrzędnych
[X, Y] = meshgrid(x, y);

// Obliczanie wartości funkcji
Z = exp(-(X - 1).^2 - Y.^2) + exp(-(X + 1).^2 - Y.^2);

// Rysowanie wykresu siatki (mesh) w pierwszym subpolu
subplot(3, 1, 1);
mesh(X, Y, Z);
title("Wykres 16.1: Siatka f(x, y)");
xlabel("x");
ylabel("y");

// Rysowanie wykresu powierzchni (surf) w drugim subpolu
subplot(3, 1, 2);
surf(X, Y, Z);
title("Wykres 16.2: Powierzchnia f(x, y)");
xlabel("x");
ylabel("y");

// Rysowanie wykresu 3D (plot3d) w trzecim subpolu
subplot(3, 1, 3);
plot3d(x, y, Z);
title("Wykres 16.3: 3D f(x, y)");
xlabel("x");
ylabel("y");


// --------------------------Zadanie 11------------------------//


// Definicja funkcji f(x, y)
function z = f(x, y)
    z = exp(cos(x)) * exp(cos(y));
endfunction

// Zakres wartości x i y
x = linspace(-%pi, %pi, 100);
y = linspace(-%pi, %pi, 100);

// Tworzenie siatki
[X, Y] = meshgrid(x, y);

// Obliczenie wartości funkcji f(x, y) na siatce
Z = feval(x, y, f);


scf(17);
// Rysowanie wykresu plot3d
subplot(2, 1, 1);
plot3d(x, y, Z);
xtitle("Wykres plot3d", "x", "y", "z");

// Rysowanie wykresu contour
subplot(2, 2, 3);
contour2d(x, y, Z, 10);
xtitle("Wykres konturowy", "x", "y");

// Rysowanie wykresu mesh
subplot(2, 2, 4);
mesh(x, y, Z);
xtitle("Wykres mesh", "x", "y", "z");

// --------------------------Zadanie 12------------------------//


x = [0 1 2 3 4 5 6];
y = [0 0.95 3.9 9.4 15.2 22.3 37.1];

// Obliczenie wartości y2(x) = x^2
y2 = x.^2;


scf(18);
// Narysowanie wykresu y(x) oznaczając punkty kółkami oraz y2(x) oznaczając punkty kwadracikami, łącząc je linią ciągłą
plot(x, y, 'ro', x, y2, style=-4); // 'r' oznacza kolor czerwony, 'o' oznacza kółka, '-4' oznacza linię ciągłą i kwadraty
xgrid();
xlabel('oś x');
ylabel('oś y');
title('Porównanie');

// Ustawienie zakresu na osi x i y
a = gca(); // Pobranie aktualnych osi
a.data_bounds = [0 0; 6 40]; // Ustawienie zakresu osi X i Y
legend(['pomiary', 'obliczenia']);



// --------------------------Zadanie 13------------------------//




// Definicja funkcji z(x, y)
function z = z_function(x, y)
    z = (x - 5)^2 - (y - 5)^2;
endfunction

// Tworzenie macierzy wartości x i y
x_values = 1:10;
y_values = 1:10;

// Obliczanie wartości macierzy z dla funkcji z(x, y)
z_matrix = zeros(10, 10);

for i = 1:10
    for j = 1:10
        z_matrix(i, j) = z_function(x_values(i), y_values(j));
    end
end

// Generowanie siatki współrzędnych
[X, Y] = meshgrid(x_values, y_values);


scf(19);

// a. Wykres poziomicowy (contour)
subplot(2, 2, 1);
contour(x_values, y_values, z_matrix, 10); // Dodanie 10 poziomic
title('Wykres poziomicowy (contour)');
xlabel('oś x');
ylabel('oś y');

// b. Wykres powierzchniowy (surf)
subplot(2, 2, 2);
surf(X, Y, z_matrix);
title('Wykres powierzchniowy (surf)');
xlabel('oś x');
ylabel('oś y');
zlabel('oś z');

// c. Wykres siatkowy (mesh)
subplot(2, 2, 3);
mesh(X, Y, z_matrix);
title('Wykres siatkowy (mesh)');
xlabel('oś x');
ylabel('oś y');
zlabel('oś z');

// d. Wykres 3D (plot3d)
subplot(2, 2, 4);
plot3d(X, Y, z_matrix);
title('Wykres 3D (plot3d)');
xlabel('oś x');
ylabel('oś y');
zlabel('oś z');



// --------------------------Zadanie 14------------------------//



// Pozwolenie na przedefiniowanie funkcji
funcprot(0);

// Definicja funkcji z(x, y)
function z = z_function(x, y)
    z = (x - y) * (x + y) + exp(sqrt(x^2 + y^2));
endfunction

// Tworzenie wektorów wartości x i y
x_values = linspace(-5, 5, 100);
y_values = linspace(-5, 5, 100);

// Generowanie siatki współrzędnych
[X, Y] = meshgrid(x_values, y_values);

// Obliczanie wartości macierzy z dla funkcji z(x, y)
Z = z_function(X, Y);

scf(20);
surf(X, Y, Z);
title('Wykres funkcji z(x, y)');
xlabel('oś x');
ylabel('oś y');
zlabel('oś z');
xgrid(3);

// Ustawianie zakresu osi x i y
ax = gca();
ax.data_bounds = [-5, -5, 0; 5, 5, 0];

