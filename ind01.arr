include color
include image

#Dansk flagg
danmark-flagg =  
  overlay-xy(rectangle(100, 700, "solid", "white"), -300, 0,
    overlay-xy(rectangle(900, 100, "solid", "white"), 0, -300,
      (rectangle(900, 700, "solid", color(200, 16, 46, 1)))))

#Finnsk flagg
finland-flagg =
  overlay-xy(rectangle(200, 1000, "solid", "blue"), -500, 0,
    overlay-xy(rectangle(1600, 200, "solid", "blue"), 0, -400,
      (rectangle(1600, 1000, "solid", color(255, 255, 255, 1)))))

#Færøysk flagg
faeroyene-flagg =
  overlay-xy(rectangle(100, 800, "solid", color(237, 41, 57, 1)), -350, 0,
    overlay-xy(rectangle(1100, 100, "solid", color(237, 41, 57, 1)), 0, -350,
      overlay-xy(rectangle(200, 800, "solid", color(0, 101, 189,1)), -300, 0,
        overlay-xy(rectangle(1100, 200, "solid", color(0, 101, 189,1)), 0, -300,
          (rectangle(1100, 800, "solid",  "white"))))))

#Islandsk flagg
island-flagg =
  overlay-xy(rectangle(200, 1800, "solid", color(220, 30, 53, 1)), -800, 0,
    overlay-xy(rectangle(2500, 200, "solid", color(	220, 30, 53, 1)), 0, -800,
      overlay-xy(rectangle(400, 1800, "solid", "white"), -700, 0,
        overlay-xy(rectangle(2500, 400, "solid", "white"), 0, -700,
          (rectangle(2500, 1800, "solid",  color(2, 82, 156, 1)))))))

#Norsk flagg
norge-flagg =
  overlay-xy(rectangle(100, 800, "solid", color(0, 32, 91, 1)), -350, 0,
    overlay-xy(rectangle(1100, 100, "solid", color(0, 32, 91, 1)), 0, -350,
      overlay-xy(rectangle(200, 800, "solid", "white"), -300, 0,
        overlay-xy(rectangle(1100, 200, "solid", "white"), 0, -300,
          (rectangle(1100, 800, "solid",  color(186, 12, 47, 1)))))))

#Svensk flagg
sverige-flagg =
  overlay-xy(rectangle(200, 1000, "solid", color(255, 194, 0, 1)), -500, 0,
    overlay-xy(rectangle(1600, 200, "solid", color(255, 194, 0, 1)), 0, -400,
      (rectangle(1600, 1000, "solid", color(0, 85, 131, 1)))))






#If-statement for å printe flag med: flagg

fun flagg(x) :
  if  x == "danmark":
    danmark-flagg
  else if x == "finland":
    finland-flagg
  else if x == "faeroyene":
    faeroyene-flagg
  else if x == "island":
    island-flagg
  else if x == "norge":
    norge-flagg
  else if x == "sverige":
    sverige-flagg
    else:
    "Prøv igjen, småbokstaver + anførselstegn!"
  end
end
"Skriv det nordiske landet du ønsker å se flagget til!"
"For eksempel: flagg(norge), Husk anførselstegn foran og bak landet!"

