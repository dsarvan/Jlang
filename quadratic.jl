#!/usr/bin/env julia
# File: quadratic.jl
# Name: D.Saravanan
# Date: 15/08/2021
# Program to solve for the roots of a quadratic equation of the form a*x^2 + b*x + c = 0

function roots(a::Int64, b::Int64, c::Int64)

    #a :: Float64                # coefficient of x^2 term of equation
    #b :: Float64                # coefficient of x term of equation
    #c :: Float64                # constant term of equation
    #discriminant :: Float64     # discriminant of the equation
    #imag_part :: Float64        # imaginary part of equation (for complex roots)
    #real_part :: Float64        # real part of equation (for complex roots)
    #x1 :: Float64               # first solution of equation (for real roots)
    #x2 :: Float64               # first solution of equation (for real roots)

    # calculate discriminant
    discriminant::Float64 = b^2 - 4*a*c

    # solve for the roots, depending upon the value of the discriminant
    if (discriminant > 0)
        x1 = (-b + sqrt(discriminant))/(2*a)
        x2 = (-b - sqrt(discriminant))/(2*a)
        println("This equation has two real roots: x1 = ", x1, " and x2 = ", x2)

    elseif (discriminant == 0)
        x1 = (-b)/(2*a)
        println("This equation has two identical real roots: x1 = x2 = ", x1)

    else
        real_part = (-b)/(2*a)
        imag_part = sqrt(abs(discriminant))/(2*a)
        println("This equation has complex roots: x1 = ", real_part, " +i ", imag_part,
                " and x2 = ", real_part, " -i ", imag_part)

    end

end

# prompt the user for the coefficients of the equation
println("""This program solves for the roots of a quadratic
        equation of the form (a*x^2 + b*x + c = 0)""")

#a, b, c = read("Enter the coefficients a, b, and c: ")
#println(a, b, c)

a, b, c = 2, 3, 4

# print the coefficients
println("The coefficients a, b, and c are: ", a, b, c)

roots(a, b, c)
