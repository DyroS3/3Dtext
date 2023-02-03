# 3D Text / 悬浮文字

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
