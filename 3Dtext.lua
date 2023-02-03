--[[

	3D Text / 悬浮文字,作者:Dyrose
	
	只需输入当前坐标位置，悬浮文字就轻松显示
	默认情况下，只有在距离它 10 米以内时即显示悬浮文字，如需更改，请编辑 "then" 前面的 "5.0" 数字大小

	基本格式:
			Draw3DText( x, y, z  vertical offset, "text", font, text size, text size)
			
			
	如要添加新的悬浮文字，请将此示例复制粘贴到现有的悬浮文字下方，然后将坐标和文本放入其中。
	
		if GetDistanceBetweenCoords( X, Y, Z, GetEntityCoords(GetPlayerPed(-1))) < 5.0 then
			Draw3DText( X, Y, Z,  -1.400, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.600, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.800, "TEXT", 4, 0.1, 0.1)		
		end

    如要添加新的悬浮文字只适用于特殊职业时，请将此示例复制粘贴到现有的悬浮文字下方，然后将坐标和文本放入其中。
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'ambulance' and GetDistanceBetweenCoords( X, Y, Z, GetEntityCoords(GetPlayerPed(-1))) < 5.0 then
			Draw3DText( X, Y, Z,  -1.400, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.600, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.800, "TEXT", 4, 0.1, 0.1)		
		end

]]--

Citizen.CreateThread(function()
    ShowText()
end)

function ShowText()
		while true do
			Citizen.Wait(0)			
				-- 一号字体显示
		if GetDistanceBetweenCoords( -555.48, -624.16, 34.68, GetEntityCoords(GetPlayerPed(-1))) < 5.0 then
			Draw3DText(-555.48, -624.16, 34.68  -1.000, "Addon Test", 0, 0.1, 0.1)
			Draw3DText(-555.48, -624.16, 34.68  -1.200, "TEST TEXT", 0, 0.1, 0.1)
			Draw3DText(-555.48, -624.16, 34.68  -1.400, "More TEXT", 0, 0.1, 0.1)
			Draw3DText(-555.48, -624.16, 34.68  -1.600, "~p~Dyrose", 0, 0.1, 0.1)
		end

        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'ambulance' and GetDistanceBetweenCoords( -552.48, -624.16, 34.68, GetEntityCoords(GetPlayerPed(-1))) < 5.0 then
			Draw3DText(-552.48, -624.16, 34.68  -1.000, "~r~EMS only", 0, 0.1, 0.1)
			Draw3DText(-552.48, -624.16, 34.68  -1.200, "~b~EMS text", 0, 0.1, 0.1)
		end
	end
end



-------------------------------------------------------------------------------------------------------------------------
function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local scale = (1/dist)*20
         local fov = (1/GetGameplayCamFov())*100
         local scale = scale*fov   
         SetTextScale(scaleX*scale, scaleY*scale)
         SetTextFont(12)
         SetTextProportional(1)
         SetTextColour(255, 255, 0, 255)		-- 此处可配置文字颜色
         SetTextDropshadow(1, 1, 1, 1, 255)
         SetTextEdge(2, 0, 0, 0, 150)
         SetTextDropShadow()
         SetTextOutline()
         SetTextEntry("STRING")
         SetTextCentre(1)
         AddTextComponentString(textInput)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
        end
		
