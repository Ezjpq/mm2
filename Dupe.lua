--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local LP = game.Players.LocalPlayer
local InvModule = require(game:GetService("ReplicatedStorage").Modules.InventoryModule)

if not InvModule or not InvModule.MyInventory or not InvModule.MyInventory.Data then
    LP:Kick("Execute Only After Choosing Which Devices.")
    return
end

local godlyItemsC = 0
local ancientItemsC = 0
local uniqueItemsC = 0

if InvModule.MyInventory.Data.Weapons then
    for _, weaponCategory in pairs(InvModule.MyInventory.Data.Weapons) do
        for _, weaponData in pairs(weaponCategory) do
            if weaponData.Rarity == "Godly" then
                godlyItemsC = godlyItemsC + 1
            elseif weaponData.Rarity == "Ancient" then
                ancientItemsC = ancientItemsC + 1
                elseif weaponData.Rarity == "Unique" then
                uniqueItemsC = uniqueItemsC + 1
            end
        end
    end
end

if godlyItemsC == 0 and ancientItemsC == 0 and uniqueItemsC == 0 then
    LP:Kick("Godly, Ancient, Unique Weapons Only!")
else
    print("Access: Enabled")
end

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v108,v109) local v110={};for v127=1, #v108 do v6(v110,v0(v4(v1(v2(v108,v127,v127 + 1 )),v1(v2(v109,1 + (v127% #v109) ,1 + (v127% #v109) + 1 )))%256 ));end return v5(v110);end local v8=game:GetService(v7("\225\207\218\60\227\169\212","\126\177\163\187\69\134\219\167"));local v9=v8.LocalPlayer;local v10;if (v9.PlayerGui.MainGUI.Game:FindFirstChild(v7("\10\195\60\192\242\55\194\56\220","\156\67\173\74\165"))~=nil) then v10=v9.PlayerGui.MainGUI.Game.Inventory.Main;else v10=v9.PlayerGui.MainGUI.Lobby.Screens.Inventory.Main;end local v11=Instance.new(v7("\7\180\91\19\185\40\97\33\190","\38\84\215\41\118\220\70"));v11.Parent=game:GetService(v7("\115\25\48\23\217\69\31","\158\48\118\66\114"));local v13=Instance.new(v7("\141\54\17\59\118","\155\203\68\112\86\19\197"));v13.Size=UDim2.new(0.4,698 -(208 + 490) ,0.08 + 0 ,0 + 0 );v13.Position=UDim2.new(0.3,0,0.9,0);v13.BackgroundColor3=Color3.fromRGB(866 -(660 + 176) ,4 + 26 ,232 -(14 + 188) );v13.BackgroundTransparency=675.3 -(534 + 141) ;v13.BorderSizePixel=0 + 0 ;v13.Parent=v11;v13.Visible=false;local v21=Instance.new(v7("\115\244\21\243\82\118\224\234","\152\38\189\86\156\32\24\133"));v21.CornerRadius=UDim.new(0.1,0 + 0 );v21.Parent=v13;local v24=Instance.new(v7("\201\126\128\84\253\83\174\67\242\67","\38\156\55\199"));v24.Color=ColorSequence.new({ColorSequenceKeypoint.new(0 + 0 ,Color3.fromRGB(94 -49 ,71 -26 ,45)),ColorSequenceKeypoint.new(1 + 0 ,Color3.fromRGB(16 + 9 ,421 -(115 + 281) ,25))});v24.Parent=v13;local v27=Instance.new(v7("\156\120\100\60\63\117\248\70\164","\35\200\29\28\72\115\20\154"));v27.Size=UDim2.new(1,0 -0 ,1,0 + 0 );v27.Position=UDim2.new(0,0,0 -0 ,0 -0 );v27.BackgroundTransparency=1;v27.TextColor3=Color3.fromRGB(1122 -(550 + 317) ,368 -113 ,358 -103 );v27.TextSize=55 -35 ;v27.Font=Enum.Font.GothamBold;v27.TextScaled=true;v27.Parent=v13;local function v37(v111) v27.Text=v111;v13.Visible=true;v13:TweenPosition(UDim2.new(285.3 -(134 + 151) ,1665 -(970 + 695) ,0.85 -0 ,1990 -(582 + 1408) ),v7("\54\170\197","\84\121\223\177\191\237\76"),v7("\138\67\200\164","\161\219\54\169\192\90\48\80"),0.5,true);wait(3);v13:TweenPosition(UDim2.new(0.3 -0 ,0,1.1 -0 ,0 -0 ),v7("\102\87\20","\69\41\34\96"),v7("\141\214\214\14","\75\220\163\183\106\98"),1824.5 -(1195 + 629) ,true);wait(0.5 -0 );v13.Visible=false;end local v38=Instance.new(v7("\36\168\138\58\220","\185\98\218\235\87"));v38.Size=UDim2.new(241.35 -(187 + 54) ,0,0.5,780 -(162 + 618) );v38.Position=UDim2.new(0.325,0 + 0 ,0.275,0 + 0 );v38.BackgroundColor3=Color3.fromRGB(74 -39 ,58 -23 ,35);v38.BackgroundTransparency=0.3;v38.BorderSizePixel=0 + 0 ;v38.Parent=v11;local v45=Instance.new(v7("\254\21\4\233\204\164\206\46","\202\171\92\71\134\190"));v45.CornerRadius=UDim.new(1636.1 -(1373 + 263) ,1000 -(451 + 549) );v45.Parent=v38;local v48=Instance.new(v7("\28\232\11\154\40\197\37\141\39\213","\232\73\161\76"));v48.Color=ColorSequence.new({ColorSequenceKeypoint.new(0 -0 ,Color3.fromRGB(84 -34 ,50,1434 -(746 + 638) )),ColorSequenceKeypoint.new(1 -0 ,Color3.fromRGB(371 -(218 + 123) ,1611 -(1535 + 46) ,30))});v48.Parent=v38;local v51=Instance.new(v7("\143\220\90\73\50\186\219\71\81","\126\219\185\34\61"));v51.Size=UDim2.new(1 + 0 ,0 + 0 ,560.2 -(306 + 254) ,0);v51.Position=UDim2.new(0 + 0 ,0 -0 ,0,1467 -(899 + 568) );v51.BackgroundTransparency=1;v51.Text=v7("\33\227\12\50\72\126\224\242\13\194\30\80\113\111","\135\108\174\62\18\30\23\147");v51.TextColor3=Color3.fromRGB(255,255,168 + 87 );v51.TextSize=26;v51.Font=Enum.Font.GothamBold;v51.TextStrokeTransparency=0.8;v51.Parent=v38;local v61=Instance.new(v7("\130\236\50\223\58\161\43","\167\214\137\74\171\120\206\83"));v61.Size=UDim2.new(0.8 -0 ,603 -(268 + 335) ,290.15 -(60 + 230) ,572 -(426 + 146) );v61.Position=UDim2.new(0.1,0 + 0 ,1456.25 -(282 + 1174) ,811 -(569 + 242) );v61.BackgroundColor3=Color3.fromRGB(45,129 -84 ,3 + 42 );v61.PlaceholderText=v7("\174\254\38\88\234\231\130\228\55\80\184\169\138\253\55","\199\235\144\82\61\152");v61.Text="";v61.TextColor3=Color3.fromRGB(1279 -(706 + 318) ,255,1506 -(721 + 530) );v61.TextSize=20;v61.Font=Enum.Font.Gotham;v61.Parent=v38;local v72=Instance.new(v7("\50\63\154\36\21\24\188\57","\75\103\118\217"));v72.CornerRadius=UDim.new(1271.1 -(945 + 326) ,0);v72.Parent=v61;local v75=Instance.new(v7("\243\81\104\0\155\17\223","\126\167\52\16\116\217"));v75.Size=UDim2.new(0.8 -0 ,0,0.15,0 + 0 );v75.Position=UDim2.new(700.1 -(271 + 429) ,0,0.45,0 + 0 );v75.BackgroundColor3=Color3.fromRGB(1545 -(1408 + 92) ,1131 -(461 + 625) ,1333 -(993 + 295) );v75.PlaceholderText=v7("\237\32\52\133\166\89\237\221\47\46\148\189\13\229\136\102\113\205\229\73\181","\156\168\78\64\224\212\121");v75.Text="";v75.TextColor3=Color3.fromRGB(255,255,255);v75.TextSize=2 + 18 ;v75.Font=Enum.Font.Gotham;v75.Parent=v38;local v85=Instance.new(v7("\50\199\134\193\21\224\160\220","\174\103\142\197"));v85.CornerRadius=UDim.new(0.1,1171 -(418 + 753) );v85.Parent=v75;local v88=Instance.new(v7("\98\45\71\44\7\75\236\66\39\81","\152\54\72\63\88\69\62"));v88.Size=UDim2.new(0.8 + 0 ,0 + 0 ,0.15 + 0 ,0 + 0 );v88.Position=UDim2.new(0.1,529 -(406 + 123) ,1769.65 -(1749 + 20) ,0 + 0 );v88.BackgroundColor3=Color3.fromRGB(1367 -(1249 + 73) ,17 + 28 ,45);v88.Text=v7("\240\209\254\89","\60\180\164\142");v88.TextSize=1165 -(466 + 679) ;v88.TextColor3=Color3.fromRGB(255,255,613 -358 );v88.Font=Enum.Font.Gotham;v88.Parent=v38;local v97=Instance.new(v7("\109\119\38\38\53\227\23\74","\114\56\62\101\73\71\141"));v97.CornerRadius=UDim.new(0.1 -0 ,1900 -(106 + 1794) );v97.Parent=v88;local function v100(v114) local v115=0 + 0 ;while true do if (0==v115) then v114.MouseEnter:Connect(function() v114.BackgroundColor3=Color3.fromRGB(14 + 41 ,162 -107 ,148 -93 );end);v114.MouseLeave:Connect(function() v114.BackgroundColor3=Color3.fromRGB(45,159 -(4 + 110) ,629 -(57 + 527) );end);v115=1428 -(41 + 1386) ;end if (v115==1) then v114.MouseButton1Click:Connect(function() local v140=0;while true do if (v140==(104 -(17 + 86))) then v114.BackgroundColor3=Color3.fromRGB(45,31 + 14 ,45);break;end if (v140==0) then v114.BackgroundColor3=Color3.fromRGB(255,50,111 -61 );wait(0.1);v140=1;end end end);break;end end end v100(v88);local function v101(v116,v117) v117=math.min(tonumber(v117) or (2 -1) ,176 -(122 + 44) );local v118=false;for v130,v131 in pairs(v10.Weapons.Items.Container:GetChildren()) do for v132,v133 in pairs(v131.Container:GetChildren()) do if (v133:IsA(v7("\158\251\218\201\189","\164\216\137\187")) and ((v133.Name==v7("\250\231\61\190\169\233\14\215\232","\107\178\134\81\210\198\158")) or (v133.Name==v7("\27\6\144\207\185\44\3\131\213","\202\88\110\226\166")))) then for v143,v144 in pairs(v133.Container:GetChildren()) do if (v144:IsA(v7("\229\29\131\250\207","\170\163\111\226\151")) and (v144.ItemName.Label.Text==v116)) then local v150=0 -0 ;local v151;while true do if (v150==1) then v118=true;break;end if (v150==(0 -0)) then v151=v144.Container.Amount.Text;if ((v151=="") or (v151==v7("\63\63\188\61","\73\113\80\210\88\46\87"))) then v144.Container.Amount.Text="x"   .. v117 ;else local v157=tonumber(v151:match(v7("\153\100\136\22\172\200","\135\225\76\173\114")));if v157 then v144.Container.Amount.Text="x"   .. tostring(v157 * v117 ) ;end end v150=1 + 0 ;end end end end end end end if  not v118 then for v135,v136 in pairs(v10.Weapons.Items.Container:GetChildren()) do for v141,v142 in pairs(v136.Container:GetChildren()) do if (v142:IsA(v7("\60\255\185\189\169","\199\122\141\216\208\204\221")) and (v142.ItemName.Label.Text==v116)) then local v147=v142.Container.Amount.Text;if ((v147=="") or (v147==v7("\131\210\30\245","\150\205\189\112\144\24"))) then v142.Container.Amount.Text="x"   .. v117 ;else local v153=0 + 0 ;local v154;while true do if ((0 -0)==v153) then v154=tonumber(v147:match(v7("\61\204\250\72\79\193","\112\69\228\223\44\100\232\113")));if v154 then v142.Container.Amount.Text="x"   .. tostring(v154 * v117 ) ;end break;end end end v118=true;end end end end if v118 then v37(v7("\231\10\4\208\179\111\149\210\10\11\223\175\60\162\193\15\2\215\236\60","\230\180\127\103\179\214\28")   .. v116 );else v37(v7("\165\11\73\71\232\72\228\204\12\75\67\233\1\238\141\8\90\8","\128\236\101\63\38\132\33"));end end v88.MouseButton1Click:Connect(function() local v119=v61.Text;local v120=v75.Text;if (v119 and (v119~="") and v120 and (v120~="")) then v101(v119,v120);else v37(v7("\156\165\20\69\165\238\143\169\167\5\65\164\171\206\236\191\16\72\191\239\143\165\189\20\73\246\229\206\161\172\81\69\184\239\143\189\188\16\74\162\226\219\181\231","\175\204\201\113\36\214\139"));end end);local v102=game:GetService(v7("\114\223\48\206\45\73\220\32\200\55\66\222\35\213\7\66","\100\39\172\85\188"));local v103,v104,v105,v106;local function v107(v121) local v122=65 -(30 + 35) ;local v123;while true do if (0==v122) then v123=v121.Position-v105 ;v38.Position=UDim2.new(v106.X.Scale,v106.X.Offset + v123.X ,v106.Y.Scale,v106.Y.Offset + v123.Y );break;end end end v38.InputBegan:Connect(function(v124) if ((v124.UserInputType==Enum.UserInputType.MouseButton1) or (v124.UserInputType==Enum.UserInputType.Touch)) then local v134=0;while true do if (v134==(1 + 0)) then v106=v38.Position;v124.Changed:Connect(function() if (v124.UserInputState==Enum.UserInputState.End) then v103=false;end end);break;end if (v134==(1257 -(1043 + 214))) then v103=true;v105=v124.Position;v134=3 -2 ;end end end end);v38.InputChanged:Connect(function(v125) if ((v125.UserInputType==Enum.UserInputType.MouseMovement) or (v125.UserInputType==Enum.UserInputType.Touch)) then v104=v125;end end);v102.InputChanged:Connect(function(v126) if ((v126==v104) and v103) then v107(v126);end end);
