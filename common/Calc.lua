-- COPYRIGHT 2013 N00byEdge! DO NOT DISTRIBUTE! MODS AND ADDONS ALLOWED IF ORIGINAL CODE IS NOT DISTRIBUTED WITH IT!

--Changelog:
-- 2.0a - Initial verison
-- 2.0b - Bugtested - first beta
-- 2.1a - Added calculations, Added changelog lol
-- 2.1b - Bugtested - first release
-- 2.2a - Even more calculations, added pyramid and cone.
-- 2.2b - Fully bugtested
-- 2.3a - All calculations for advanced functions, added initial help command.
-- 2.3b - Finished help command
-- 2.4a - circle() runs menu() when done
-- 2.4b - Added ball volume for circle command, rewrote circle menu, added calculation for ball
-- 2.4.1 - Help now shows Ball (Derp lol)
-- 2.4.2 - Added Cube root (cbrt command)
-- 2.4.3 - Fixed derp, added Triangle, and area option. Calculates area of a Prism.

local debug = false

print ("Calculator 2.4.3")

function debug()
   print ("Debug coming soon")
end

function add()
   print ("Write the first number:")
   local x = io.read("*n")
   print ("Write the second number")
   local y = io.read("*n")
   local z = x+y
   if debug == true then
      print ("x = " .. x)
      print ("y = " .. y)
      print ("z = " .. z)
   end
   print ("Result: " ..x+y)
   menu()
end



function cbrt()
   print ("Write the number:")
   local x = io.read("*n")
   local y = math.pow(x, 1/3)
   --   debug()
   print ("Result: " ..y)
   menu()
end

function sqrt()
   print ("Write the number:")
   local x = io.read("*n")
   local y = math.sqrt(x)
   --   debug()
   print ("Result: " ..y)
   menu()
end

function tri()
   print ("Area of triangle(area) or Volume of Prism (vol)")
   local mode = io.read()
   if mode == "vol" or mode == "Vol" or mode == "volume" or mode == "Volume" then
      print ("Enter width of base: ")
      local b = io.read()
      print ("Enter height of base: ")
      local h = io.read()
      print ("Enter height: ")
      local hh = io.read()
      local ba = b * h
      local ba2 = ba / 2
      local result = ba2 * hh
      print ("Result: " .. result)
      print ("Do you want to see calculation? :* y/n")
      local calcTrue = io.read()
      if calcTrue == "y"  or calcTrue == "Y" then
         print (b .. " * " .. h .. " = " .. ba)
         print (ba .. " / 2 = " .. ba2)
         print (ba2 .. " * " .. hh .. " = " .. result)
      else
         print ("No calculation shown.")
      end
   else
      print ("Enter width: ")
      local b = io.read()
      print ("Enter height: ")
      local h = io.read()
      local ba = h * b
      local ba2 = ba / 2
      print ("Result: " .. ba2)
      print ("Do you want to see calculation? :* y/n")
      local calcTrue = io.read()
      if calcTrue == "y"  or calcTrue == "Y" then
         print (b .. " * " .. h .. " = " .. ba)
         print (ba .. " / 2 = " .. ba2)
      else
         print ("No calculation shown.")
      end
   end
   menu()
end

function sub()
   print ("Write the first number:")
   local x = io.read("*n")
   print ("Write the second number")
   local y = io.read("*n")
   local z = x-y
   if debug == true then
      print ("x = " .. x)
      print ("y = " .. y)
      print ("z = " .. z)
   end
   --   debug()
   print ("Result: " ..x-y)
   menu()
end

function mul()
   print ("Write the first number:")
   local x = io.read("*n")
   print ("Write the second number")
   local y = io.read("*n")
   local z = x*y
   if debug == true then
      print ("x = " .. x)
      print ("y = " .. y)
      print ("z = " .. z)
   end
   --   debug()
   print ("Result: " ..z)
   menu()
end

function div()
   print ("Write the first number:")
   local x = io.read("*n")
   print ("Write the second number")
   local y = io.read("*n")
   local z = x/y
   if debug == true then
      print ("x = " .. x)
      print ("y = " .. y)
      print ("z = " .. z)
   end
   --   debug()
   print ("Result: " ..z)
   menu()
end

function cone()
   print ("Enter the radius:")
   local r = io.read()
   print ("Enter the height:")
   local h = io.read()
   local b = r * r * math.pi
   local result = b * h
   local result2 = result / 3
   print ("Result: " .. result2)
   print ("Do you want to see calculation? :* y/n")
   local calcTrue = io.read()
   if calcTrue == "y"  or calcTrue == "Y" then
      print (r .. " * " .. r .. " * pi = " .. result)
      print (result .. " / 3 = " .. result2)
   else
      print ("No calculation shown.")
   end
end

function power()
   print ("Write the first number:")
   local x = io.read("*n")
   print ("Write the second number")
   local y = io.read("*n")
   local z = x^y
   if debug == true then
      print ("x = " .. x)
      print ("y = " .. y)
      print ("z = " .. z)
   end
   --  debug()
   print ("Result: " ..x^y)
   menu()
end

function power2self()
   print ("Write the number:")
   local x = io.read("*n")
   local y = x^x
   if debug == true then
      print ("x = " .. x)
      print ("y = " .. y)
   end
   --  debug()
   print ("Result: " ..y)
   menu()
end

function screen()
   print ("The first side (cm):")
   local side1 = io.read()
   print ("The second side (cm):")
   local side2 = io.read()
   local side11 = side1 * side1
   local side22 = side2 * side2
   local result = side11 + side22
   local result2 = math.sqrt(result)
   local result3 = result2 / 2.54
   print ("Result (in): " ..result3)
   menu()
end

local debug = false
if debug == true then
   print ("<STARTING>")
end

function pyth()
   print ("What mode, Normal or Alternative?")
   local mode = io.read()
   if mode == "Alternative" or mode == "alternative" or mode == "a" or mode == "alt" then
      print ("Diagonal: ")
      local side1 = io.read()
      print ("Other side: ")
      local side2 = io.read()
      local side11 = side1 * side1
      local side22 = side2 * side2
      local result = side11 - side22
      local result2 = math.sqrt(result)
      print ("Result: " .. result2)
      print ("Do you want to see calculation? :* (y/n)")
      local calcTrue = io.read()
      if calcTrue == "y"  or calcTrue == "Y" then
         print (side1 .. "^2 - " .. side2 .. "^2 = " .. result)
         print ("Square root of " .. result .. " = " .. result2)
      else
         print ("No calculation shown.")
      end
   else
      print ("Side 1: ")
      local side1 = io.read()
      print ("Side 2: ")
      local side2 = io.read()
      local side11 = side1 * side1
      local side22 = side2 * side2
      local result = side22 + side11
      local result2 = math.sqrt(result)
      print ("Result: " .. result2)
      print ("Do you want to see calculation? :* y/n")
      local calcTrue = io.read()
      if calcTrue == "y"  or calcTrue == "Y" then
         print (side1 .. "^2 + " .. side2 .. "^2 = " .. result)
         print ("Square root of " .. result .. " = " .. result2)
      else
         print ("No calculation shown.")
      end
   end
   menu()
end

function pyramid()
   print ("Side 1:")
   local side1 = io.read()
   print ("Side 2:")
   local side2 = io.read()
   print ("Height:")
   local h = io.read()
   local b = side1 * side2
   local result = b * h
   local result2 = result / 3
   print ("Result: " .. result2)
   print ("Do you want to see calculation? :* y/n")
   local calcTrue = io.read()
   if calcTrue == "y"  or calcTrue == "Y" then
      print (side1 .. " * " .. side2 .. " * " .. h .." = " .. result)
      print (result .. " / 3 = " .. result2)
   else
      print ("No calculation shown.")
   end
   menu()
end

function circle()
   print ("What do you want to know? Area, Perimeter, Ball area (ball) or Cylinder area (cyl)?")
   local mode = io.read()
   if mode == "area" or mode == "Area" then
      print ("Radius: ")
      local radius = io.read()
      local result = radius * radius * math.pi
      print ("Area: " .. result)
      print ("Do you want to see calculation? :* y/n")
      local calcTrue = io.read()
      if calcTrue == "y"  or calcTrue == "Y" then
         print (radius .. " * " .. radius .. " * pi = " .. result)
      else
         print ("No calculation shown.")
      end
   elseif mode == "cyl" or mode == "Cyl" or mode == "cylinder" or mode == "cylinder" then
      print ("Radius: ")
      local radius = io.read()
      print ("Height: ")
      local height = io.read()
      local base = radius * radius * math.pi
      local vol = base * height
      print ("Area: " .. vol)
      print ("Do you want to see calculation? :* y/n")
      local calcTrue = io.read()
      if calcTrue == "y"  or calcTrue == "Y" then
         print (radius .. " * " .. radius .. "* pi * " .. height .." = " .. vol)
      else
         print ("No calculation shown.")
      end
   elseif mode == "perimeter" or mode == "Perimeter" then
      print ("Diagonal: ")
      local diagonal = io.read()
      local result = diagonal * math.pi
      print ("Perimeter: " .. result)
      print ("Do you want to see calculation? :* y/n")
      local calcTrue = io.read()
      if calcTrue == "y"  or calcTrue == "Y" then
         print (diagonal .. " * pi  = " .. result)
      else
         print ("No calculation shown.")
      end
   elseif mode == "Ball" or mode == "ball" then
      print ("Radius:")
      local r = io.read()
      local result = r * 4 * math.pi
      local result2 = result / 3
      print ("Volume: " .. result2)
      print ("Do you want to see calculation? :* (y/n)")
      local calcTrue = io.read()
      if calcTrue == "y"  or calcTrue == "Y" then
         print (r .. " * 4 * pi = " .. result)
         print (result .. " / 3 = " .. result2)
      else
         print ("No calculation shown.")
      end
   else
      print ("I didn't really get that! Try again.")
   end
   menu()
end

function help()
   print ("This is an advanced calculator by N00byEdge. All commands are listed here.")
   print ("Pythagoras (Normal or Alternative) / pyth")
   print ("Add")
   print ("Subtract / sub")
   print ("Multiply / mult")
   print ("Divide / div")
   print ("Circle (Volume (Cylinder / Ball) / Area / Perimeter)")
   print ("Pyramid / pyr")
   print ("Cone")
   print ("Power")
   print ("Power2self")
   print ("Square Root / sqrt")
   print ("Cube Root / cbrt")
   print ("Triangle / tri")
   print ("Screen (will take sides in cm and convert to diagonal in inches) / scrn")
   print ("Help (Shows this lol)")
   menu()
end

function menu()
   print ("Enter Command! Run Help for help!")
   i = io.read()
   if i == "add" or i == "Add" then
      add()
   elseif i == "power" or i == "Power" then
      power()
   elseif i == "circle" or i == "Circle" then
      circle()
   elseif i == "cone" or i == "Cone" then
      cone()
   elseif i == "power2self" or i == "Power2Self" then
      power2self()
   elseif i == "div" or i == "Div" or i == "Divide" or i == "divide" then
      div()
   elseif i == "mul" or i == "mult" or i == "multiply" or i == "Mul" or i == "Mult" or i == "Multiply" then
      mul()
   elseif i == "sub" or i == "Sub" or i == "Substract" or i == "substract" then
      sub()
   elseif i == "sqrt" or i == "Sqrt" then
      sqrt()
   elseif i == "pyramid" or i == "Pyramid" or i == "pyr" or i == "Pyr" then
      pyramid()
   elseif i == "screen" or i == "Screen" or i == "Scrn" or i == "scrn" then
      screen()
   elseif i == "pyth" or i == "Pyth" then
      pyth()
   elseif i == "cbrt" or i == "Cbrt" then
      cbrt()
   elseif i == "tri" or i == "Tri" or i == "triangle" or i == "Triangle" then
      tri()
   elseif i == "help" or i == "Help" then
      help()
   else
      print ("Unknown Command")
      menu()
   end
end

menu()