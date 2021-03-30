import turtle
#Dibuja una semi-circunferencia de 300 grados
turtle.color ('green')
turtle.circle(70,300)

#Dibuja un hexagono con triangulos
hexagono = 6
for steps in range(hexagono-1) :
    turtle.color ('purple')
    turtle.forward(80)
    turtle.right(360/hexagono)

    triangulo = 3
    for steptriangulo in range(triangulo):
        if steptriangulo == 1 or steptriangulo == 2  :
            turtle.color ('orange')
        else :
            turtle.color ('purple')
        turtle.forward(80)
        turtle.right(360/triangulo)


#Salto
turtle.color("green")
turtle.right(400)
turtle.forward(200)
turtle.color("blue")

#Dibuja un pentagono con 5 pentagonos
pentagono = 5
for steppentagono in range(pentagono) :
    turtle.forward(100)
    turtle.right(360/pentagono)
    for otro in range(pentagono) :
        turtle.forward(50)
        turtle.right(360/pentagono)

#Dibuja un cuadrado teniendo cada lado de un color
for colores in ['red','blue','green','yellow']:
    turtle.color(colores)
    turtle.forward(100)
    turtle.left(90)
