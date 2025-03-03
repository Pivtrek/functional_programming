# Functional Programming

## Opis
To repozytorium zawiera zestaw zadań dotyczących kursu programowania funkcyjnego w Haskellu.

## Treść zadań

- **41.** Zdefiniuj za pomocą funkcji `foldr` funkcję, która dla listy liczb `[a₁, a₂, …, aₙ]` oblicza, ile liczb parzystych występuje w tej liście.
- **42.** Napisz funkcję `nondec`, która sprawdza, czy dany ciąg `[x₁, x₂, …, xₙ]` jest niemalejący (czyli, czy `x₁ ≤ x₂ ≤ … ≤ xₙ`). Zaproponuj dwie implementacje: rekurencyjną oraz opartą na analizie listy `zip xs (tail xs)`.
- **43.** Która z następujących równań jest prawdziwa?  
  1. `foldl (-) e xs = e - sum xs`  
  2. `foldr (-) e xs = e - sum xs`
- **44.** Dla danej listy `xs = [x₁, …, xₙ]` funkcja `ssm xs` wyznacza najdłuższą podlistę `[x_{j₁}, x_{j₂}, …, x_{jₖ}]` taką, że `j₁ = 1` oraz `x_{j_a} < x_{j_{a+1}}` dla wszystkich `a = 1, …, k−1`.  
  Na przykład, dla ciągu `xs = [3, 2, 1, 5, 3, 2, 6, 2, 3, 8]` mamy `ssm xs = [3, 5, 6, 8]`. Zdefiniuj funkcję `ssm` za pomocą funkcji `foldl`.
- **45.** Funkcja `remdupl` usuwa z listy przylegające duplikaty, np. `remdupl [1,1,2,1,1,3,3,4,4] = [1,2,1,3,4]`. Oprogramuj tę funkcję za pomocą foldr lub foldl.
- **47.** Korzystając z funkcji `foldl` i `foldr`, napisz funkcję `approx` zdefiniowaną następująco:

$$
approx(n) = \sum_{k=1}^{n} \frac{1}{k!}
$$
- **48.** Napisz, korzystając z funkcji `foldl`, funkcję, która dla ciągu liczb `[a₁, a₂, …, aₙ]` oblicza wartość:

$$
\sum_{k=1}^{n} (-1)^{k+1} a_k
$$


- **49.** Funkcję `filter` można zdefiniować za pomocą funkcji `map` i `concat`:
 `filter p = concat . map box where box x = ...` -- Podaj właściwą definicję funkcji `box`
- **51.** Napisz funkcję, która dla zadanej listy elementów typu `Fractional a` `[a₁, a₂, …, aₙ]` wyznaczy średnią arytmetyczną oraz wariancję ciągu `(a₁, a₂, …, aₙ)`. Skorzystaj tylko raz z funkcji `fold`.
- **63.** Na ile sposobów możesz zapisać liczbę naturalną `n` za pomocą dodawania liczb `1`, `2` i `5`?  
Kolejność dodawania nie odgrywa roli (np. przedstawienia `1 + 2 + 2 + 5` oraz `2 + 1 + 5 + 2` są równoważne). Postaraj się napisać możliwie uniwersalny kod.
- **66.** Zdefiniuj typ `RF2` mający reprezentować przestrzeń ℝ² za pomocą dwóch liczb typu `Float`. Następnie:
1. Zdefiniuj klasę `VectorSpace`, zawierającą funkcje:
   - `vnull` – reprezentującą wektor zerowy;
   - `vmult` – mnożenie przez skalar;
   - `vadd` – dodawanie wektorów.
2. Oprogramuj instancję typu `RF2` do klasy `VectorSpace`.
3. Dodaj do klasy `VectorSpace` funkcje:
   - `isBasis :: [a] -> Bool`, która rozstrzyga, czy dana lista wektorów stanowi bazę przestrzeni;
   - `<.>` – implementującą iloczyn skalarny wektorów.
4. Zdefiniuj typ `RF3` mający reprezentować przestrzeń ℝ³ za pomocą trzech liczb typu `Float` oraz oprogramuj jej instancję do klasy `VectorSpace`.
- **67.** Zdefiniuj samodzielnie typ `Complex`, mający reprezentować liczby zespolone. Oprogramuj instancję typu `Complex` do klasy `Num`.
