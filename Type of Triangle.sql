SELECT 
    IF(A+B>C AND B+C>A AND A+C>B, (
        IF(A=B OR B=C OR A=C, 
            IF(A=B AND B=C AND A=C, "Equilateral", "Isosceles"), 
            "Scalene")
    ), "Not A Triangle")
FROM TRIANGLES;