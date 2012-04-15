-- █▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
-- █▒▒                                                                                             █▒▒
-- █▒▒       █▒▒▒  █▒▒▒    █▒▒▒▒▒▒▒▒▒             █▒▒▒▒▒▒▒▒▒    █▒▒▒▒         █▒▒▒▒▒▒▒▒▒  █▒▒▒▒▒▒▒▒▒▒▒▒   █▒▒
-- █▒▒      █▒▒▒ █▒▒▒         █▒▒▒              █▒▒▒         █▒▒▒▒▒▒        █▒▒▒           █▒▒▒       █▒▒
-- █▒▒     █▒▒▒▒▒▒          █▒▒▒      █▒▒▒     █▒▒▒         █▒▒▒ █▒▒▒      █▒▒▒▒▒▒▒        █▒▒▒        █▒▒
-- █▒▒    █▒▒▒ █▒▒▒       █▒▒▒               █▒▒▒         █▒▒▒▒▒▒▒▒▒▒▒    █▒▒▒           █▒▒▒          █▒▒
-- █▒▒   █▒▒▒   █▒▒▒    █▒▒▒▒▒▒▒▒▒          █▒▒▒▒▒▒▒▒▒    █▒▒▒     █▒▒▒▒  █▒▒▒           █▒▒▒           █▒▒
-- █▒▒                                                                                             █▒▒
-- █▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
--
-- El uso o distribución de este codigo es totalmente libre, en vosotros queda mantener el minimo
-- de respeto, a la hora de nombrarme o no. 
--
-- Granja de calabazas y sandias v.1.0 (beta)
--
-- Version 1.0 (beta), falta cerrar bien el proceso al llenar el inventario, actualmente sigue
-- farmeando hasta llegar a un giro, tambien falta introducir el retorno del robot al punto de
-- origen al finalizar el proceso.
-- 
-- Bugs y sugerencias a: kauzo.craft@gmail.com

-- Variables:
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

giro=true
cgiro=0


-- Bucle de farmeo
turtle.up ()
while cslot9<=63 do
	for ccamino=1,9,1 do
		turtle.forward ()
		if turtle.detect () then
			turtle.digDown ()
		end
	end
	if giro=true then
		turtle.turnright ()
		turtle.forward (2)
		giro=false
		cgiro=cgiro+1
	else
		turtle.turnleft ()
		turtle.forward (2)
		giro=true
		cgiro=cgiro+1
	end
	-- Rectificacion de los giros a la vuelta
	if cgiro=3 then
		giro=true
		cgiro=0
	end
end
	