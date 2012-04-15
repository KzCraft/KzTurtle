-- Variables
cslot1=turtle.getItemCount (1)
cslot2=turtle.getItemCount (2)
cslot3=turtle.getItemCount (3)
cslot4=turtle.getItemCount (4)
cslot5=turtle.getItemCount (5)
cslot6=turtle.getItemCount (6)
cslot7=turtle.getItemCount (7)
cslot8=turtle.getItemCount (8)
cslot9=turtle.getItemCount (9)
selector=1
slot1=false
slot2=false
slot3=false
slot4=false
slot5=false
slot6=false
slot7=false
slot8=false
slot9=false

print ("Iniciando proceso de minado...")
sleep (2)

-- Minado
while cslot9<=63 do
	if turtle.detect () then
		turtle.dig ()
	end
	cslot9=turtle.getItemCount (9)
	if slot1==false then
		cslot1=turtle.getItemCount (1) 
		if cslot1==64 then
			slot1=true
			print ("  Compartimento 1 lleno al 100%")
		end
	elseif slot2==false then
		cslot2=turtle.getItemCount (2) 
		if cslot2==64 then
			slot2=true
			print ("  Compartimento 2 lleno al 100%")
		end
	elseif slot3==false then
		cslot3=turtle.getItemCount (3) 
		if cslot3==64 then
			slot3=true
			print ("  Compartimento 3 lleno al 100%")
		end
	elseif slot4==false then
		cslot4=turtle.getItemCount (4) 
		if cslot4==64 then
			slot4=true
			print ("  Compartimento 4 lleno al 100%")
		end
	elseif slot5==false then
		cslot5=turtle.getItemCount (5) 
		if cslot5==64 then
			slot5=true
			print ("  Compartimento 5 lleno al 100%")
		end
	elseif slot6==false then
		cslot6=turtle.getItemCount (6) 
		if cslot6==64 then
			slot6=true
			print ("  Compartimento 6 lleno al 100%")
		end
	elseif slot7==false then
		cslot7=turtle.getItemCount (7) 
		if cslot7==64 then
			slot7=true
			print ("  Compartimento 7 lleno al 100%")
		end
	elseif slot8==false then
		cslot8=turtle.getItemCount (8) 
		if cslot8==64 then
			slot8=true
			print ("  Compartimento 8 lleno al 100%")
		end
	elseif slot9==false then
		cslot9=turtle.getItemCount (9) 
		if cslot9==64 then
			slot9=true
			print ("  Compartimento 9 lleno al 100%")
		end
	end
end

-- Descarga de inventario
turtle.select (selector)
for selector=1, 9, 1 do
	turtle.select (selector)
	turtle.drop ()
end

-- Reinicio del sistema
selector=1
turtle.select (selector)
cslot9=0
slot1=false
slot2=false
slot3=false
slot4=false
slot5=false
slot6=false
slot7=false
slot8=false
slot9=false

print ("Cerrando programa.")
sleep (2)
