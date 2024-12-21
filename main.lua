gg.setConfig("隐藏辅助", 23)
gg.setConfig("运行守护", 3)
gg.setConfig("冻结间隔", 0)
gg.setConfig("旁路模式", 1)
if gg.getWindowOrientation() == 0 then
--gg.alert("请使用横屏")
end
gg.setVisible(false)
luajava.setFloatingWindowHide(true)
changan = {} swits = {}
swits["第1页"] = {}
swits["第2页"] = {}
swits["第3页"] = {}
swits["第4页"] = {}
swits["第5页"] = {}

YoYoImpl = luajava.getYoYoImpl()
vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
function guid()
seed = {
	'e','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'
}
tb = {}
for i = 1,32 do
table.insert(tb,seed[math.random(1,16)])
end
sid = table.concat(tb)
return string.format('%s%s%s%s%s',
	string.sub(sid,1,8),
	string.sub(sid,10,12),
	string.sub(sid,21,22))
..string.format('%s%s%s%s%s',
	string.sub(sid,1,6),
	string.sub(sid,21,25)
)
end

function getTimeStamp(t)
local str = os.date("%Y年%m月%d日%H:%M:%S",t)
return str
end
function camusic(x)
	if audiokg==true then
		luajava.newThread(function()
		gg.playMusic(x)
		end):start()
	end
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function 获取图片(txt)
gg.toast("Setup Matrial..")
txt = string.url(txt,"de")
txt = file.checkUrl(txt)
return luajava.getBitmapDrawable(txt)
end
hanshu = function(v, event)
local Action = event:getAction()
if Action == MotionEvent.ACTION_DOWN then
isMove = false
RawX = event:getRawX()
RawY = event:getRawY()
x = mainLayoutParams.x
y = mainLayoutParams.y
elseif Action == MotionEvent.ACTION_MOVE then
isMove = true
mainLayoutParams.x = tonumber(x) + (event:getRawX() - RawX)
mainLayoutParams.y = tonumber(y) + (event:getRawY() - RawY)
window:updateViewLayout(floatWindow, mainLayoutParams)
end
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function pdcf(lujing) rec = "/sdcard/小宇全防/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
--if gg.isHTTPdump()==true and panduan("/sdcard/小宇全防/配置文件/vpn.txt") == false then gg.alert("\n404") os.exit() end
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
write("/sdcard/小宇全防/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
return read("/sdcard/小宇全防/配置文件/"..lujing)
end
开 = "开" 关 = "关"
function checkimg(tmp)
end
ckimg = {
	"小宇全防/boom.mp3","小宇全防/kgstart.mp3","小宇全防/kgend.mp3",
	"小宇全防/quarkringon",
	"小宇全防/quarkringoff",
	"小宇全防/quarksearchw",
	"dnsP","dnsR","pubgR","dnsP"
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i]) 
end


empty = luajava.loadlayout {
	GradientDrawable,
	color = "#00dddddd",
	cornerRadius = 30
}
empty2 = luajava.getBitmap("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/jot8z1zy")


window = context:getSystemService("window") -- 获取窗口管理器
function getLayoutParams()
LayoutParams = WindowManager.LayoutParams
layoutParams = luajava.new(LayoutParams)
if (Build.VERSION.SDK_INT >= 26) then -- 设置悬浮窗方式
layoutParams.type = LayoutParams.TYPE_APPLICATION_OVERLAY
else
	layoutParams.type = LayoutParams.TYPE_PHONE
end

layoutParams.format = PixelFormat.RGBA_8888 -- 设置背景
layoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL -- 焦点设置Finish
layoutParams.gravity = Gravity.TOP|Gravity.LEFT -- 重力设置
layoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
layoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度

return layoutParams
end
mainLayoutParams = getLayoutParams()
function changan.menu()
searchlist={}
for i=1,#stab-2 do
	searchlist[i]={}
	for j=1,4 do
		searchlist[i][j]={}
	end
end
cebian = {
	LinearLayout,
	layout_height = "wrap_content",
	layout_width = "120dp",
	gravity = "left",
	layout_marginBottom = "5dp",
	padding = "3dp",
	orientation = "vertical",
}
for i = 1,#stab do
_ENV["jm"..i.."bg"] = getSelector()
_ENV["jm"..i] = luajava.loadlayout({
	LinearLayout,
	gravity = "center",
	layout_height = "35dp",
	layout_width = "110dp",
	background = _ENV["jm"..i.."bg"],
	--onTouch = hanshu,
	onClick = function() 切换(i) end,
	{ImageView,
	src=获取图片(stab[i][2]),
	layout_height = "30dp",
	layout_width="30dp",
	},
	{
		TextView,
		id = "jmt"..i,
		layout_marginLeft = "0dp",
		textSize = "12sp",
		textColor = "#bbbbbb",
		text = stab[i][1].."          ",
	}
})
cebian[#cebian+1] = _ENV["jm"..i]
end

function getTextBackground()
    local jianbians = luajava.new(GradientDrawable)
    jianbians:setCornerRadius(8) -- Membuat sudut membulat
    jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT) -- Gradien linear
    jianbians:setColors({
        0xFF1E1E1E, -- Warna awal abu-abu gelap (smooth)
        0xFF2A2A2A  -- Warna akhir abu-abu sedikit lebih terang
    })
    jianbians:setStroke(2, 0xFF00FFFF) -- Garis tepi biru cerah
    return jianbians
end

leftbar = luajava.loadlayout({
    LinearLayout,
    layout_height = "fill_parent",
    layout_width = "120dp",
    orientation = "vertical",
    background = getShape01(),
    {
        TextView,
        onTouch = hanshu,
        id = "control1",
        onClick = 隐藏,
        gravity = "center", -- Memusatkan teks
        layout_height = "60dp", -- Sedikit lebih besar
        layout_width = "match_parent",
        padding = "8dp",
        textSize = "18sp", -- Ukuran teks sedikit besar
        textStyle = "bold", -- Font tebal
        background = getTextBackground(), -- Background smooth dengan garis tepi
    }, 
    {
        ScrollView,
        layout_height = "218dp",
        layout_marginTop = "8dp",
        layout_width = "120dp",
        cebian
    }
})

-- Fungsi untuk membuat teks dengan warna berbeda
local SpannableString = luajava.bindClass("android.text.SpannableString")
local ForegroundColorSpan = luajava.bindClass("android.text.style.ForegroundColorSpan")

local function createColoredText()
    local text = SpannableString("艾斯克")
    text:setSpan(ForegroundColorSpan(0xFFFF0000), 0, 2, 0) -- "艾斯" merah
    text:setSpan(ForegroundColorSpan(0xFFFFFFFF), 2, 3, 0) -- "克" putih
    return text
end

-- Set teks dengan warna berbeda dan font tebal
control1:setText(createColoredText())

for a = 1,#stab-2 do
	for b = 1,4 do
		_ENV["switchs"..a..b]={
						LinearLayout,
						layout_height = "wrap_content",
						layout_width = "match_parent",
						gravity = "center_vertical",
						orientation = "vertical",
					}
		for i = 1,#swits["第"..a.."页"]["第"..b.."板块"] do
			_ENV["switchs"..a..b][#_ENV["switchs"..a..b]+1]=swits["第"..a.."页"]["第"..b.."板块"][i][1]
			searchlist[a][b][#searchlist[a][b]+1]={swits["第"..a.."页"]["第"..b.."板块"][i][2],swits["第"..a.."页"]["第"..b.."板块"][i][3],swits["第"..a.."页"]["第"..b.."板块"][i][4]}
		end
		if b==1 then
			_ENV["switchs"..a..b][#_ENV["switchs"..a..b]+1]=changan.text("\n\n\n\n\n\n\n\n\n\n\n\n\n\n")[1]
		end
	end
end

for i = 1,#stab-2 do
_ENV["layout"..i] = luajava.loadlayout({
	LinearLayout,
	id = "layout"..i,
--fillViewport = true,
	visibility = "gone",
	layout_height = "fill_parent",
	layout_width = "match_parent",
	{
		LinearLayout,
		id = "layoutm"..i,
		layout_height = "wrap_content",
		layout_width = "match_parent",
		orientation = "vertical",
		{
			LinearLayout,
			layout_height = "match_parent",
			layout_width = "match_parent",
			layout_marginLeft = "-3dp",
			orientation = "horizontal",
			gravity = "center",
			padding = "5dp",
			{
				LinearLayout,
				gravity = "top",
				layout_height = "match_parent",
				layout_width = "match_parent",
				layout_weight = 1,
				layout_marginLeft = "8dp",
				orientation = "vertical",
				{
					ScrollView,
					layout_height = "match_parent",
					layout_weight = 1,
					layout_width = "match_parent",
					background = getShape0(),
					gravity = "center_vertical",
					orientation = "vertical",
					_ENV["switchs"..i.."1"]
				},
			}, {
				LinearLayout,
				gravity = "top",
				layout_height = "match_parent",
				layout_width = "match_parent",
				layout_weight = 1,
				layout_marginLeft = "8dp",
				orientation = "vertical",
				{
					ScrollView,
					layout_height = "match_parent",
					layout_weight = 1,
					layout_width = "match_parent",
					background = getShape0(),
					gravity = "center_vertical",
					orientation = "vertical",
					_ENV["switchs"..i.."2"]
				},{
					ScrollView,
					layout_height = "match_parent",
					layout_weight = 1,
					layout_marginTop = "5dp",
					layout_width = "match_parent",
					background = getShape0(),
					gravity = "center_vertical",
					orientation = "vertical",
					_ENV["switchs"..i.."3"]
				},
				{
					ScrollView,
					layout_height = "match_parent",
					layout_weight = 1,
					layout_marginTop = "5dp",
					layout_width = "match_parent",
					background = getShape0(),
					gravity = "center_vertical",
					orientation = "vertical",
					_ENV["switchs"..i.."4"]
				},
			}
		}

	}})


end

_ENV["layout"..#stab-1] = luajava.loadlayout({
	HorizontalScrollView,
	id = "layout6",
	padding = "10dp",
	visibility = "gone",
	layout_height = "fill_parent",
	layout_width = "match_parent",
	{
		LinearLayout,
		id = "layoutm5",
		layout_height = "match_parent",
		layout_width = "wrap_content",
		orientation = "horizontal",
		gravity = "center_vertical",
		{
			FrameLayout,
			layout_height = "210dp",
			layout_width = "170dp",
			gravity = "center",
			{
				FrameLayout,
				layout_height = "210dp",
				layout_width = "150dp",
--layout_weight = 1,
				gravity = "center",
				layout_gravity = "center_horizontal",
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#44dddddd",
					cornerRadius = 30
				},
				{
					ImageView,
					src = "/sdcard/小宇全防/图片/BPP",
					layout_marginTop = "20dp",
					layout_gravity = "center_horizontal",
					layout_height = "60dp",
					layout_width = "60dp",
				},
				{
					TextView,
					text = "DNS PRIVAT",
					textSize = "16dp",
					layout_marginTop = "90dp",
					layout_gravity = "center_horizontal",
					gravity = "center",
				},
				{
					LinearLayout,

					onClick = function()
					luajava.newThread(function() launch("com.android.settings") end):start() end,
					background = getShape99(90,0xff28FEB9,0xff28FEB9,0xff28FEB9),
					layout_height = "25dp",
					layout_width = "55dp",
					layout_gravity = "center_horizontal",
					layout_marginTop = "160dp",
					gravity = "center",
					{
						TextView,
						textColor = "#000000",
						text = "Show",
						textSize = "12sp",
						layout_height = "20dp",
						gravity = "center",
						layout_width = "30dp",
					}
				}
			},
		},
		{
			FrameLayout,
			layout_height = "210dp",
			layout_width = "170dp",
			gravity = "center",
			{
				FrameLayout,
				layout_height = "210dp",
				layout_width = "150dp",
--layout_weight = 1,
				gravity = "center",layout_gravity = "center_horizontal",
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#44dddddd",
					cornerRadius = 30
				},
				{
					ImageView,
					src = "/sdcard/小宇全防/图片/BPR",
					layout_marginTop = "20dp",
					layout_gravity = "center_horizontal",
					layout_height = "70dp",
					layout_width = "70dp",
				},
				{
					TextView,
					text = "DNS RETHINK",
					textSize = "16dp",
					layout_marginTop = "90dp",
					layout_gravity = "center_horizontal",
					gravity = "center",
				},
				{
					LinearLayout,

					onClick = function()
					luajava.newThread(function() 切换(1) launch("android.settings.SETTINGS") end):start() end,
					background = getShape99(90,0xff28FEB9,0xff28FEB9,0xff28FEB9),
					layout_height = "25dp",
					layout_width = "55dp",
					layout_gravity = "center_horizontal",
					layout_marginTop = "160dp",
					gravity = "center",
					{
						TextView,
						textColor = "#000000",
						text = "Show",
						textSize = "12sp",
						layout_height = "20dp",
						gravity = "center",
						layout_width = "30dp",
					}
				}
			},
		},
		{
			FrameLayout,
			layout_height = "210dp",
			layout_width = "170dp",
			gravity = "center",
			{
				FrameLayout,
				layout_height = "210dp",
				layout_width = "150dp",
--layout_weight = 1,
				gravity = "center",layout_gravity = "center_horizontal",
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#44dddddd",
					cornerRadius = 30
				},
				{
					ImageView,
					src = "/sdcard/小宇全防/图片/BPN",
					layout_marginTop = "20dp",
					layout_gravity = "center_horizontal",
					layout_height = "60dp",
					layout_width = "60dp",
				},
				{
					TextView,
					text = "NETGUARD",
					textSize = "16dp",
					layout_marginTop = "90dp",
					layout_gravity = "center_horizontal",
					gravity = "center",
				},
				{
					LinearLayout,
					onClick = function()
					luajava.newThread(function() 切换(1) launch("com.pubg.krmobile") end):start() end,
					background = getShape99(90,0xff28FEB9,0xff28FEB9,0xff28FEB9),
					layout_height = "25dp",
					layout_width = "55dp",
					layout_gravity = "center_horizontal",
					layout_marginTop = "160dp",
					gravity = "center",
					{
						TextView,
						textColor = "#000000",
						text = "Show",
						textSize = "12sp",
						layout_height = "20dp",
						gravity = "center",
						layout_width = "30dp",
					}
				}
			},
		},
		{
			FrameLayout,
			layout_height = "210dp",
			layout_width = "170dp",
			gravity = "center",
			{
				FrameLayout,
				layout_height = "210dp",
				layout_width = "150dp",
--layout_weight = 1,
				gravity = "center",layout_gravity = "center_horizontal",
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#44dddddd",
					cornerRadius = 30
				},
				{
					ImageView,
					src = "/sdcard/小宇全防/图片/BPC",
					layout_marginTop = "20dp",
					layout_gravity = "center_horizontal",
					layout_height = "60dp",
					layout_width = "60dp",
				},
				{
					TextView,
					text = "REWRITE CANARY",
					textSize = "16dp",
					layout_marginTop = "90dp",
					layout_gravity = "center_horizontal",
					gravity = "center",
				},
				{
					LinearLayout,

					onClick = function()
					luajava.newThread(function() 切换(1) launch("com.tencent.ig") end):start() end,
					background = getShape99(90,0xff28FEB9,0xff28FEB9,0xff28FEB9),
					layout_height = "25dp",
					layout_width = "55dp",
					layout_gravity = "center_horizontal",
					layout_marginTop = "160dp",
					gravity = "center",
					{
						TextView,
						textColor = "#000000",
						text = "Show",
						textSize = "12sp",
						layout_height = "20dp",
						gravity = "center",
						layout_width = "30dp",
					}
				}
			},
		}
	}})


_ENV["layout"..#stab]  = luajava.loadlayout({
	ScrollView,
	id = "layout7",
	visibility = "gone",
	layout_height = "fill_parent",
	layout_width = "match_parent",
	{
		LinearLayout,
		id = "layoutm7",
		layout_height = "wrap_content",
		layout_width = "match_parent",
		orientation = "vertical",
		{
			LinearLayout,
			orientation = "vertical",
			layout_width = "fill_parent",
			layout_height = "fill_parent",
			layout_weight = 1,
			gravity = "center_horizontal",
			{
				TextView,
				text = "TG:XYQFYYDS",
				textColor = "#ff0000",
				layout_marginTop = "60dp",
				layout_width = "fill_parent",
				gravity = "center",
				textSize = "14sp",
				onClick = function() 隐藏() luajava.newThread(function() gg.intent("https://t.me/JWQFY") end):start() end,
			},
			{
				TextView,
				text = "切换背景",
				textColor = "#000000",
				layout_marginTop = "20dp",
				layout_width = "wrap_content",
				background = getTextBG({
	0xffB395FE,0xff778CFF,0xff61C7FE
}),
				gravity = "center",
				padding = {
					"35dp","0dp","35dp","0dp",
				},
				textSize = "15sp",
				onClick = changebg,
			},
			{
				TextView,
				text = "退出",
				textColor = "#000000",
				layout_marginTop = "20dp",
				layout_width = "wrap_content",
				background = luajava.loadlayout {
					GradientDrawable,
					color = "#FF3F47",
					cornerRadius = 20
				},
				gravity = "center",
				padding = {
					"35dp","0dp","35dp","0dp",
				},
				textSize = "15sp",
				onClick = function() tuichu = 1 end,
			}
		}

	}})


local Build = luajava.bindClass("android.os.Build")
local deviceInfo = "Brand: " .. Build.BRAND ..
                  "\nArm: " .. Build.CPU_ABI ..
                  "\nVersion: " .. Build.VERSION.RELEASE

-- Fungsi untuk mendapatkan tanggal saat ini
local function getCurrentDate()
    local date = os.date("*t")
    local dateString = string.format("%02d.%02d.%04d", date.day, date.month, date.year)
    return dateString
end

-- Fungsi untuk mendapatkan waktu saat ini
local function getCurrentTime()
    local time = os.date("*t")
    local timeString = string.format("%02d:%02d", time.hour, time.min)
    return timeString
end

-- Layout
gggscro = luajava.loadlayout
{
    LinearLayout,
    orientation = "vertical",
    id = "gggscro",
    padding = {"10dp", "8dp", "10dp", "8dp"},
    layout_width = "match_parent",
    layout_height = "wrap_content",
    {
        LinearLayout,
        orientation = "horizontal",
        layout_width = "match_parent",
        layout_height = "wrap_content",
        {
            TextView,
            text = deviceInfo,
            textSize = "13sp",
            gravity = "left",
            layout_width = "0dp",
            layout_height = "wrap_content",
            layout_weight = 1,
        },
        {
            TextView,
            id = "dateText",
            text = "Time: " .. getCurrentTime() .. "                      \nDate: " .. getCurrentDate(),
            textSize = "13sp",
            textColor = "#FFFFFF",
            gravity = "center",
            layout_width = "wrap_content",
            layout_height = "wrap_content",
            marginStart = "10dp",
        }
    }
}

searchUI=luajava.loadlayout
							{EditText,
							visibility="gone",
							orientation="vertical",
							--padding={"10dp","0dp","10dp","20dp"},
							layout_width="match_parent",
							hint = "请输入需要搜索的功能关键词",
							textColor="#ffffff",
							gravity="center",
							textSize="15sp",
							background=slctb
							}
searchUI:setHintTextColor(0xffffffff)
ringon=获取图片("/sdcard/小宇全防/图片/quarkringon")
ringoff=获取图片("/sdcard/小宇全防/图片/quarkringoff")
floatWindow = luajava.loadlayout(
	{
		FrameLayout,
		layout_height = "wrap_content",
		layout_width = "wrap_content",
		{
			ImageView,
			onTouch = hanshu,
			id = "control2",
			visibility = "gone",
			onClick = 隐藏,
			gravity = "center",
			layout_height = "40dp",
			layout_width = "40dp",
			src = 获取图片(xfcpic)
		},
		{
			FrameLayout,
			id = "chuangk",
			background = bglist[1],
			{LinearLayout,
			layout_width="100dp",
			layout_gravity="left",
			layout_height="350dp",
			background=luajava.loadlayout {
						GradientDrawable,
						color = "#aaffffff",
						cornerRadius = 30
					},
			},
			{
				LinearLayout,
				orientation = "horizontal",
				id = "mainbg",
				padding = "8dp",
				onTouch = hanshu,
				layout_height = "350dp",
				layout_width = "wrap_content",
				leftbar,
				{
					LinearLayout,
					orientation = "vertical",
					{
						LinearLayout,
						layout_height = "50dp",
						layout_width = UI宽度,
						gravity = "center",
						orientation = "horizontal",
						layout_marginLeft = "8dp",
						--background = getShape0(),
							{
							ScrollView,
							layout_weight=1,
							fillViewport=true,
							gravity = "center_horizontal",
							layout_height = "65dp",
							layout_width="match_parent",
							id="ggscro",
							background=getShape0(),
							{LinearLayout,
							layout_height="50dp",
							layout_width="match_parent",
							gggscro,
							searchUI,
							},
						},
						{ImageView,
						id="audioconf",
						layout_height="40dp",
						layout_width="40dp",
						layout_marginLeft="10dp",
						src=ringon,
						padding="1dp",
						background = getShape0(),
						src = "/sdcard/小宇全防/图片/assets/Settings", 
						onTouch=hanshu,
						onClick = function()
                            gg.setProcessX()  -- Memanggil fungsi gg.setProcessX()
                        end,
						},
						{ImageView,
						layout_marginLeft="10dp",
						layout_marginRight="3dp",
						layout_height="40dp",
						layout_width="40dp",
						src=获取图片("/sdcard/小宇全防/图片/assets/Procces"),
						padding="2dp",
						background = getShape0(),
						onTouch=hanshu,
						onClick = function() end,
						}
					},
					layout1,
					layout2,
					layout3,
					layout4,
					layout5,
					layout6,
				}
			},

		}
	})

--删除此文字一辈子没母	
local function invoke()
mainLayoutParams.x = device.width/8
mainLayoutParams.y = device.height/4
window:addView(floatWindow,mainLayoutParams)
--web_:addView(webbg)
end
luajava.post(invoke)
--print(os.clock()-tlt)
切换(1)

setOnExitListener(function()
	tuichu = 1
	luajava.setFloatingWindowHide(false)
	end)
qhkai = 0
qiehuan = function()
if qhkai == 0 then
qhkai = 1
draw.remove()
gg.toast("已隐藏")
luajava.runUiThread(function()
	changan.controlSmall(floatWindow,400)
	end)
gg.sleep(400)
luajava.runUiThread(function()
	floatWindow:setVisibility(View.GONE)
	end)
else
	qhkai = 0
huiz()
--draw.text2('.', -9200,-9200)
luajava.runUiThread(function() floatWindow:setVisibility(View.VISIBLE) end)
luajava.runUiThread(function()
	changan.controlBig(floatWindow,400)
	end)

end
end
huiz()
--draw.text2('.', -9200,-9200)

显示 = 1         
            
            while true do
            
        
if tuichu == 1 then break end
jianting3(qiehuan)
if 显示 == 999 and qhkai == 0 then
	titlet:scrollBy(20,0)
	if titlet:getScrollX() >= 1200 then titlet:scrollBy(-titlet:getScrollX()-1200,0) end
end
gg.sleep(120)
end
local function invoke()
return window:removeView(floatWindow)
end
luajava.post(invoke)
luajava.setFloatingWindowHide(false)
gg.sleep(100)
luajava.setFloatingWindowHide(false)

end
function getTimeStamp(t)
local str = os.date("%H:%M:%S",t)
return str
end
audiokg=true
function setAudio()
	if audiokg==true then
		--[camusic("/sdcard/小宇全防/图片/小宇全防/kgend.mp3")]
		audiokg=false
		audioconf:setImageDrawable(ringoff)
	else
		audiokg=true
		--[camusic("/sdcard/小宇全防/图片/小宇全防/kgstart.mp3")]
		audioconf:setImageDrawable(ringon)
	end
end

issearch=false
function searching()
	if issearch==false then
		luajava.newThread(function()
			luajava.runUiThread(function()
				YoYoImpl:with("FadeOut"):duration(200):playOn(gggscro)
			end)
			gg.sleep(200)
			luajava.runUiThread(function()
				gggscro:setVisibility(View.GONE)
				searchUI:setVisibility(View.VISIBLE)
				YoYoImpl:with("FadeIn"):duration(200):playOn(searchUI)
			end)
		end):start()
		issearch=true
	else
		luajava.runUiThread(function()
			searchUI:setVisibility(View.GONE)
			gggscro:setVisibility(View.VISIBLE)
		end)
		luajava.newThread(function()
			luajava.runUiThread(function()
				YoYoImpl:with("FadeOut"):duration(200):playOn(searchUI)
			end)
			gg.sleep(200)
			luajava.runUiThread(function()
				searchUI:setVisibility(View.GONE)
				gggscro:setVisibility(View.VISIBLE)
				YoYoImpl:with("FadeIn"):duration(200):playOn(gggscro)
			end)
		end):start()
		issearch=false
		local besearch=tostring(searchUI:getText())
		if besearch~="" and besearch~=nil and besearch~=" " then
			tosearch(besearch)
		end
	end
end
function tosearch(besearch)
	tobesearch=string.gsub(besearch,"开启","")
	tobesearch=string.gsub(tobesearch,"打开","")
	tobesearch=string.gsub(tobesearch,"关闭","")
	tobesearch=string.gsub(tobesearch,"关掉","")
	
	local result={}
	for i=1,#searchlist do
		for j=1,4 do
			for k=1,#searchlist[i][j] do
				if string.find(searchlist[i][j][k][1],tobesearch)~=nil then
					result[#result+1]={searchlist[i][j][k][1],i,j,k,searchlist[i][j][k][2],searchlist[i][j][k][3]}
				end
			end
		end
	end
	if #result>=1990 then
		adtext("关于“"..besearch.."”的功能超过10个!请输入更详细的关键词.","#dddddd")
	elseif #result==0 then
		adtext("未搜索到包含“"..besearch.."”的功能","#dddddd")
	else
		adtext("你是否在找:","#ffffff")
		for i=1,#result do
			adtext("第"..result[i][2].."页第"..result[i][3].."板块的“"..result[i][1].."”","#ffffff")
		end
		切换(result[1][2])
		if string.find(besearch,"打开")~=nil or string.find(besearch,"开启")~=nil or string.find(besearch,"启动")~=nil or string.find(besearch,"执行")~=nil then
			if #result==1 then
				
				if _ENV[result[1][6]]=="关" then
					luajava.newThread(result[1][5]):start()
					adtext("已执行：开启 "..result[1][1].."","#00FFA3")
				elseif _ENV[result[1][6]]=="textview" then
				else
					adtext("执行失败： "..result[1][1].." 已是开启状态","#FF363F")
				end
			else
				adtext("搜索到"..#result.."个结果，请手动执行","#ffffff")
			end
		end
		if string.find(besearch,"关闭")~=nil or string.find(besearch,"关掉")~=nil then
			if #result==1 then
				if _ENV[result[1][6]]=="开" then
					luajava.newThread(result[1][5]):start()
					adtext("已执行：关闭 "..result[1][1].."","#00FFA3")
				elseif _ENV[result[1][6]]=="textview" then
				else
					adtext("执行失败： "..result[1][1].." 已是关闭状态","#FF363F")
				end
			else
				adtext("搜索到"..#result.."个结果，请手动执行","#ffffff")
			end
		end
	end
	luajava.newThread(function()
	gg.sleep(200)
	luajava.post(function()
		ggscro:fullScroll(View.FOCUS_DOWN)
	end)
	end):start()
end
function getSelector()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, slcta) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, slctb) -- 没点击的背景
return selector
end

function 切换(x)
    if 当前ui ~= x then
        luajava.runUiThread(function()
            当前ui = x
            for i = 1, #stab do
                if i ~= x then
                    _ENV["layout" .. i]:setVisibility(View.GONE)
                    _ENV["jm" .. i]:setBackground(slcta2)
                    _ENV["jmt" .. i]:setTextColor(0xff5C4A72) -- Warna abu-abu halus
                    _ENV["jmt" .. i]:setText(stab[i][1] .. "          ")
                end
            end
            _ENV["layout" .. 当前ui]:setVisibility(View.VISIBLE)
            YoYoImpl:with("FadeIn"):duration(300):playOn(_ENV["layout" .. 当前ui])
            _ENV["jm" .. 当前ui]:setBackground(slcta)
            _ENV["jmt" .. 当前ui]:setTextColor(0xffffffff) -- Warna putih untuk teks aktif
            _ENV["jmt" .. 当前ui]:setText(stab[当前ui][1] .. "          ")
        end)
    end
end

changan.controlBig = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		0, 0.4, 0.7, 1
	}):setDuration(time):start()
	end) end
changan.controlFlip = function(control,time)
luajava.runUiThread(function()
	import "android.view.animation.Animation"
	import "android.animation.ObjectAnimator"
	xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotationY", {
		0, 360
	})
	xuanzhuandonghua:setRepeatCount(0)
	xuanzhuandonghua:setRepeatMode(Animation.REVERSE)
	xuanzhuandonghua:setDuration(time)
	xuanzhuandonghua:start()
	end) end
changan.controlWater = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.8, 0.9, 1
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1,0.8,0.9,1
	}):setDuration(time):start()
	end) end
changan.controlSmall = function(control,time)
luajava.runUiThread(function()
	import "android.animation.ObjectAnimator"
	ObjectAnimator():ofFloat(control,"scaleX", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	ObjectAnimator():ofFloat(control,"scaleY", {
		1, 0.7, 0.4, 0
	}):setDuration(time):start()
	end) end
YoYoImpl = luajava.getYoYoImpl()
function 隐藏()
luajava.runUiThread (function ()
	if tonumber (tostring (chuangk: getVisibility ())) == 8.0 then
	显示 = 1
	luajava.newThread(function()
		camusic("/sdcard/小宇全防/图片/小宇全防/ui-open.mp3")
	end):start()
	chuangk : setVisibility (View.VISIBLE)
	control2 : setVisibility (View.GONE)
	YoYoImpl:with("FadeIn"):duration(200):playOn(floatWindow)
	mainLayoutParams.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
	window:updateViewLayout(floatWindow, mainLayoutParams)
	else
	显示 = 0
	luajava.newThread(function()
		camusic("/sdcard/小宇全防/图片/小宇全防/ui-hide.mp3")
		luajava.runUiThread(function()
			mainLayoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
		window:updateViewLayout(floatWindow, mainLayoutParams)
			YoYoImpl:with("FadeOut"):duration(100):playOn(floatWindow)
			end)
		gg.sleep(100)
		luajava.runUiThread(function()
			chuangk:setVisibility(View.GONE)
			control2:setVisibility(View.VISIBLE)
			YoYoImpl:with("FadeIn"):duration(300):playOn(floatWindow)
			end)
		end):start()
	end
	end
)
end



--删除此文字一辈子没母
function adView(tmp,x)
local function invoke()
_ENV[tmp]:addView(x)
end
luajava.post(invoke)
end
import("android.media.AudioManager")
audi = context:getSystemService("audio")
audiotype = {
	AudioManager.STREAM_ALARM, --手机闹铃的声音
	AudioManager.STREAM_MUSIC, --手机音乐的声音
	AudioManager.STREAM_NOTIFICATION, --系统提示的通知
	AudioManager.STREAM_RING, --电话铃声的声音
	AudioManager.STREAM_SYSTEM, --手机系统的声音
	AudioManager.STREAM_VOICE_CALL, --语音电话的声音
	AudioManager.STREAM_DTMF, --DTMF音调的声音
}
yinl = {}
for i = 1,#audiotype do
yinl[i] = {}
yinl[i].type = audiotype[i]
yinl[i].min = audi:getStreamMinVolume(audiotype[i])
yinl[i].max = audi:getStreamMaxVolume(audiotype[i])
yinl[i].now = audi:getStreamVolume(audiotype[i])
end
function jianting2()
yinln = {}
for i = 1,#audiotype do
yinln[i] = {}
yinln[i].type = audiotype[i]
yinln[i].min = audi:getStreamMinVolume(audiotype[i])
yinln[i].max = audi:getStreamMaxVolume(audiotype[i])
yinln[i].now = audi:getStreamVolume(audiotype[i])

if yinln[i].now > yinl[i].now then
audi:adjustStreamVolume(yinln[i].type,AudioManager.ADJUST_LOWER,0)
gg.alert("up")
elseif yinln[i].now < yinl[i].now then
audi:adjustStreamVolume(yinln[i].type,AudioManager.ADJUST_RAISE,0)
gg.alert("down\n"..yinln[i].now.."\n"..yinl[i].now)
end
end

end
yltype = 0
function jianting3(func)
yinln = {}
for i = 1,#audiotype do
yinln[i] = {}
yinln[i].type = audiotype[i]
yinln[i].now = audi:getStreamVolume(audiotype[i])
if yinln[i].now > yinl[i].now then
yinl[i].now = yinln[i].now
if yltype == 1 then
yltype = 0
func()
end
elseif yinln[i].now < yinl[i].now then
yinl[i].now = yinln[i].now
if yltype == 0 then
yltype = 1
func()
end
end
end
end
function jianting(func)
yinln = {}
for i = 1,#audiotype do
yinln[i] = {}
yinln[i].type = audiotype[i]
yinln[i].now = audi:getStreamVolume(audiotype[i])
if yinln[i].now >= yinl[i].max then
audi:adjustStreamVolume(yinln[i].type,AudioManager.ADJUST_LOWER,0)
end
if yinln[i].now > yinl[i].now then
audi:setStreamVolume(yinln[i].type,yinl[i].now,0)
func()
end
end
end

function getShape(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.BL_TR)
jianbians:setStroke(4,tmp3)--边框宽度和颜色
return jianbians
end
function getShape0()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(15)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0x22000000,0x22000000
})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(0,0xff272730)--边框宽度和颜色
return jianbians
end
function getShape01()
    local jianbians = luajava.new(GradientDrawable)
    jianbians:setCornerRadius(10)
    jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT) 
    jianbians:setColors({
        0xFFFFFFFF,
        0xFFE0E0E0
    })
    jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
    jianbians:setStroke(3, 0xFFFFFF)
    return jianbians
end
function getShape2(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(25,tmp3)--边框宽度和颜色
return jianbians
end

checkbg = getShape(
	45,
	{
		0x55272730,0x55272730
	},
	4,0xffCBDCEF)
checkbga = getShape(
	45,
	{
		0xff3819FF,0xff00C7FF
	},
	4,0x0135BE45)
checkbg1 = getShape2(
	45,
	{
		0x99ffffff,0x99ffffff
	},
	4,0x00ffffff)
checkbg2 = getShape2(
	45,
	{
		0xff008CFF,0xff9E73FF
	},
	4,0x00ffffff)
slcta = getShape(
	90,
	{
	0xffB395FE,0xff778CFF,0xff61C7FE
    },
	0,0x01B8B8B8)
slcta2 = getShape(
	90,
	{
		0xffE3F2FD, -- Biru muda pucat
		0xffF3E5F5, -- Ungu muda pastel
		0xffFFFFFF  -- Putih bersih
	},
	0,0x01D6D6D6 -- Abu-abu terang untuk garis tepi
)
slctb = luajava.loadlayout {
	GradientDrawable,
	color = "#00ffffff",
	cornerRadius = 10
}
function 开关3(name,func1,func2,nid)
local gnname=name
name = name..guid()
_ENV[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return {function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
	luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
	luajava.getIdValue(nid.."t"):setTextColor(0xffD9E7FF)
	YoYoImpl:with("FadeInLeft"):duration(200):playOn(_ENV[nid])

	end)
_ENV[name] = "开"
vibra:vibrate(10)
uiadtext(gnname.." 已开启.","#1ADB44")

pcall(func1)
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
	luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
	luajava.getIdValue(nid.."t"):setTextColor(0xffffffff)
	YoYoImpl:with("FadeInRight"):duration(200):playOn(_ENV[nid])
	end)
_ENV[name] = "关"
vibra:vibrate(10)
uiadtext(gnname.." 已关闭.","#FF5A77")

pcall(func2)
end
end,name}
end
end
function launch(pkg)
隐藏()
gg.setProcess(pkg)
gg.sleep(500)
if tostring(gg.getTargetPackage()) == pkg then
gg.toast("进程已选择:"..pkg)
return 0
end
gg.toast("正在启动游戏...")
print(gg.isPackageInstalled(pkg))
app.start(pkg)
jci = 0
--gg.sleep(5000)

            
            
            while true do

gg.setProcess(pkg)
gg.sleep(400)
if tostring(gg.getTargetPackage()) == pkg then
gg.alert("启动成功")
break
else
	jci = jci+1
if jci == 14 then
gg.alert("自动获取进程失败\n请手动选择游戏进程")
gg.setProcessX()
break
end
end
gg.sleep(100)
end
end
function changan.switch2(name,func1,func2)
nid = name..guid()
local func = 开关3(name,func1,func2,nid)
local fname=func[2]
local func=func[1]
if not name then name = "未设置" end

--if not yans then yans = "#ffffff" end
_ENV[nid]=luajava.loadlayout({
			FrameLayout,
			id = luajava.newId(nid),
			background = checkbg,
			onClick = function() luajava.newThread(function() func() end):start() end,
			layout_width = '38dp',
			layout_marginRight = "10dp",
			layout_marginLeft = "-10dp",
			layout_height = '20dp',
			padding = "0dp",
			gravity="center_vertical",
			{
				LinearLayout,
				layout_gravity = "left|center_vertical",
				id = luajava.newId(nid.."k"),
				background = checkbg1,
				onClick = function() luajava.newThread(function() func() end):start() end,
				layout_width = '19dp',
				layout_height = '19dp',
			}, {
				LinearLayout,
				visibility = "gone",
				layout_gravity = "right|center_vertical",
				id = luajava.newId(nid.."g"),
				background = checkbg2,
				onClick = function() luajava.newThread(function() func() end):start() end,
				layout_width = '19dp',
				layout_height = '19dp',
			}
		})
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "24dp",
	gravity = "center_vertical",
	padding={"4dp","0dp","4dp","0dp",},
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "24dp",
		gravity = "center_vertical",
		{
			TextView,
			gravity = "top",
			text = name,
			id=luajava.newId(nid.."t"),
			textColor = "#ffffff",
			textSize = "12sp",
			layout_weight = 1,
			layout_width = 'match_parent',
			layout_marginLeft = "10dp",
			layout_marginRight = "-10dp",
		},
		_ENV[nid]}
})
return {rest,name,func,fname}
end
function 开关(name,func1,func2)
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return {function()
namers = _ENV[name]
if namers ~= "开" then
_ENV[name] = "开"
pcall(func1)
else
_ENV[name] = "关"
pcall(func2)
end

end,name}
end
end


function changan.switch(name,func1,func2)
nid = name..guid()
local func = 开关(name,func1,func2)
local fname=func[2]
local func=func[1]
if not name then name = "未设置" end
--if not yans then yans = "#ffffff" end
_ENV[nid]=luajava.loadlayout({
			Switch,
			id = luajava.newId(nid),
			onClick = function() luajava.newThread(function() func() end):start() end,
			layout_width = 'wrap_content',
			layout_marginRight = "10dp",
			layout_marginLeft = "-10dp",
			layout_height = '20dp',
			gravity="center_vertical",
		})
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_height = "24dp",
	gravity = "center_vertical",
	padding={"4dp","0dp","4dp","0dp",},
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_height = "24dp",
		gravity = "center_vertical",
		{
			TextView,
			gravity = "top",
			text = name,
			id=luajava.newId(nid.."t"),
			textColor = "#ffffffff",
			textSize = "12sp",
			layout_weight = 1,
			layout_width = 'match_parent',
			layout_marginLeft = "10dp",
			layout_marginRight = "-10dp",
		},
		_ENV[nid]}
})
return {rest,name,func,fname}
end
function getVerticalBG(gtvb1,gtvb3,gtvb4,gtvb5)
if not gtvb4 then gtvb4 = 0 gtvb5 = 0xffffffff end
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(gtvb3)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(gtvb1)
jianbians:setStroke(gtvb4,gtvb5)--边框宽度和颜色
return jianbians
end
chazhi = {} chajv = {}
function getShape8()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0xff272730,0xffffffff
})
jianbians:setOrientation(GradientDrawable.Orientation.BL_TR)
jianbians:setStroke(10,0x00ffffff)
return jianbians
end
chazhi={} chajv={}
function changan.seek(name,bian,smin,smax,nows)
local thum=getShape(
	10,
	{
		0xffffffff,0xffffffff
	},
	2,0x01B8B8B8)
thum:setSize(50, 50)
_ENV[bian] =nows
smin=tonumber(smin) smax=tonumber(smax)
chajv[bian]=smax-smin
chazhi[bian]=1-smin
if smin==nil then smin=1 smax=10 end
truesmin=1
truesmax=truesmin+chajv[bian]
if not nows then nows = smin tnows=(smin-nows)
else
tnows=(nows-smin)+1
end
if _ENV[bian] == nil then _ENV[bian] = 1.0 end
if not name then name = "未设置" end
local names = name..guid()
rest = luajava.loadlayout({
	LinearLayout,
	layout_width = 'fill_parent',
	layout_hight = "fill_parent",
	{
		LinearLayout,
		layout_width = 'fill_parent',
		layout_hight = "fill_parent",
		layout_marginTop = "2dp",
		layout_marginBottom = "2dp",
		gravity = "center_horizontal",
		orientation="vertical",
		{
			TextView,
			padding={"5dp","10dp","0dp","2dp",},
			gravity = "top",
			textSize="12sp",
			text = name..":"..nows,
			id = luajava.newId(names),
			layout_width = '100dp',
		},
		{
			SeekBar,
			layout_width = 'fill_parent',
			layout_weight=1,
			id=luajava.newId(name.."seekbar"),
			min = truesmin,
			max = truesmax,
			progress=tnows,
			--paddingStart="0dp",
			--paddingEnd="0dp",
			progressDrawable={ getVerticalBG({0xff232323,0xff232323},45)},
			thumb=thum,
			progressHeight="10dp",
			onSeekBarChange = {
				onProgressChanged = function(SeekBar, var2, var3)
				if not var3 then
				return
				end
		  local resultvar=tonumber(string.sub(var2,0,-3))-chazhi[bian]
				luajava.runUiThread(function()
				luajava.getIdValue(names):setText(name..":".. resultvar)
				end)
				_ENV[bian] = resultvar
				end
			}}
	}})
return {rest,"拖动条:"..name.."："..nows,function() end,"seekbar"}
end
function getShape99(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	tmp1,tmp2
})
return jianbians
end
function getTextBG(tmp)
local jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(20)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp)
jianbians:setOrientation(GradientDrawable.Orientation.BL_TR)
jianbians:setStroke(0,0xaa000000)--边框宽度和颜色
return jianbians
end
function changan.text2(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#ffffff" end
if not size then size = "14sp" end
return {luajava.loadlayout(
	{
		TextView,
		text = txt,
		textSize = size,
		textColor = color,
		layout_width = "match_parent",
		gravity = "center",
		background=getTextBG({
	0xffB395FE,0xff778CFF,0xff61C7FE
})
	}),"标题:"..txt,function() end,"textview"}
end
function changan.text(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#ffffff" end
if not size then size = "14sp" end
return {luajava.loadlayout(
	{
		TextView,
		text = txt,
		textSize = size,
		textColor = color,
		layout_width = "match_parent",
		gravity = "center",
		background=getTextBG()
	}),"标题:"..txt,function() end,"textview"}
end
nowbg=1

function changebg()
	if nowbg<#bglist then
		nowbg=nowbg+1
	else
		nowbg=1
	end
	nowlight=0
	ckoubg=bglist[nowbg]
	luajava.newThread(function()
	luajava.runUiThread(function()
		YoYoImpl:with("FadeOut"):duration(200):playOn(floatWindow)
	end)
	gg.sleep(200)
	luajava.runUiThread(function()
		chuangk:setBackground(ckoubg)
		YoYoImpl:with("FadeIn"):duration(500):playOn(floatWindow)
	end)
	end):start()
end


-- 以下放配置
function readPointer(name, offset, i)
    local re = gg.getRangesList(name) 
    local x64 = gg.getTargetInfo().x64 
    local va = {[true]=32, [false]=4} 
    if re[i or 1] then
        local addr = re[i or 1].start + offset[1] 
        for i = 2, #offset do
            addr = gg.getValues({{address=addr, flags=va[x64]}}) 
            if not x64 then
                addr[1].value = addr[1].value & 0xFFFFFFFF 
            end
            addr = addr[1].value + offset[i] 
        end
        return addr
    end
end
-- 修改内存地址的函数
function gg.edits(addr, Table, name)
    local Table1 = {{}, {}} 
    for k, v in ipairs(Table) do
        local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}
        if v[4] then
            Table1[2][#Table1[2]+1] = value 
        else
            Table1[1][#Table1[1]+1] = value
        end
    end
    gg.addListItems(Table1[2])
    gg.setValues(Table1[1])
    gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值by.君王")
end
function xqmnb(Search,Modification)
   gg.clearResults()
   gg.setRanges(Search[1].memory)
   gg.searchNumber(Search[3].value,Search[3].type,false,536870912,0,-1)
   if gg.getResultCount()==0 then
      gg.toast(Search[2].name..'开启失败')
      return
   end
   local Result=gg.getResults(gg.getResultCount())
   local sum
   for index=4,#Search do
      sum=0
      for i=1,#Result do
         if gg.getValues({{address=Result[i].address+Search[index].offset,flags=Search[index].type}})[1].value~=Search[index].lv then
            Result[i].Usable=true
            sum=sum+1
         end
      end
      if sum==#Result then
         gg.toast(Search[2].name..'开启失败')
         return
      end
   end
   local Data,Freeze,Freezes={},{},0
   sum=0
   for index,value in ipairs(Modification)do
      for index=1,#Result do
         if not Result[index].Usable then
            local Value={address=Result[index].address+value.offset,flags=value.type,value=value.value,freeze=true}
            if value.freeze then
               Freeze[#Freeze+1]=Value
               Freezes=Freezes+1
            else
               Data[#Data+1]=Value
            end
            sum=sum+1
         end
      end
   end
  gg.setValues(Data)
      gg.addListItems(Freeze)
   if Freezes==0 then
      gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据')
   else
      gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据,冻结'..Freezes..'条数据')
   end
   gg.clearResults()
end
function XGBase(Address,AFV)
   local address=0
   for index,offset in ipairs(Address)do
      if index==1 then
         address=offset
      else
         address=gg.getValues({{address=address+offset,flags=4}})[1].value
      end
   end
   local Value,Freeze={},{}
   for index,value in ipairs(AFV)do
      local VALUE={address=address+value[3],flags=value[2],value=value[1],freeze=true}
      if value[4]then
         Freeze[#Freeze+1]=VALUE
      else
         Value[#Value+1]=VALUE
      end
   end
   gg.setValues(Value)
   gg.addListItems(Freeze)
end


function Format(tab, format, value, type, Function)
    if format == "查看" then
        tab[1]["flags"] = type
        return print(gg.getValues(tab))
    elseif format == "修改" then
        tab[1]["flags"] = type
        tab[1]["value"] = value        
        return gg.setValues(tab)
    elseif format == "冻结" then
        tab[1]["flags"] = type
        tab[1]["freeze"] = true
        tab[1]["name"] = Function or "功能"       
        return gg.addListItems(tab)    
    elseif format == "加载" then
        tab[1]["flags"] = type
        return gg.loadResults(tab)    
    end
end

local ALL = [==[
v1.0 -> 优化指针链条判断

v1.1 -> 添加多功能模板，可查看，修改，冻结，载入

v1.3 -> 修复了同一个so名称下有多个基址头，而只判断第一个基址头偏移的问题点 

v1.4 -> 修复了在64位环境下偏移异常的问题
]==]

function LSQ_Chain(so, offset, format, value, type, Function)--模块设置, 偏移量, 功能参数, 修改值, 类型, 功能
        getRanges = getRanges or (function()
        local ranges = {}    		
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v["type"]:sub(2, 2) == 'w' then--判断so是否可读可写
			    ranges[#ranges+1] = v
			end
		end
    	return ranges
    end)        
    local rest, ranges, sostart, valtype = {}, getRanges(), nil , gg.TYPE_DWORD
    if gg.getTargetInfo()["x64"] then--判断应用程序是否为64位
        valtype = gg.TYPE_QWORD
    end
    
    for i in pairs(ranges) do
		local _name = ranges[i]["internalName"]:gsub('^.*/', '')
		if so[1] == _name and so[2] == ranges[i]["state"] then
			sostart = ranges[i]["start"]
			break
		end
	end
    
    if sostart then	
        if offset[1]  then	    	    
            for i = 1, #offset do    	    
    	        rest = {{flags = valtype,address = sostart + offset[i]}}
    	        rest = gg.getValues(rest)
		        if i == #offset then
                    break
                end
	 		    if valtype == gg.TYPE_DWORD then
				    sostart = rest[1].value & 0xFFFFFFFF--对值进行补位操作 
				else
				    sostart = rest[1].value			
			    end
		    end
	    end		    
	    print(rest)
	    if #rest == 1 then
	       
	    end
	    return Format(rest, format, value, type, Function)
    end
    gg.toast("功能:" .. Function .. "开启失败")
    print("功能开启失败原因: 未找到基址头")
    return os.exit()
end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

function readPointer(name, offset, i)
    local re = gg.getRangesList(name) 
    local x64 = gg.getTargetInfo().x64 
    local va = {[true]=32, [false]=4} 
    if re[i or 1] then
        local addr = re[i or 1].start + offset[1] 
        for i = 2, #offset do
            addr = gg.getValues({{address=addr, flags=va[x64]}}) 
            if not x64 then
                addr[1].value = addr[1].value & 0xFFFFFFFF 
            end
            addr = addr[1].value + offset[i] 
        end
        return addr
    end
end
-- 修改内存地址的函数
function gg.edits(addr, Table, name)
    local Table1 = {{}, {}} 
    for k, v in ipairs(Table) do
        local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}
        if v[4] then
            Table1[2][#Table1[2]+1] = value 
        else
            Table1[1][#Table1[1]+1] = value
        end
    end
    gg.addListItems(Table1[2])
    gg.setValues(Table1[1])
    gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值by.君王")
end


function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end


local function readD ( a )
    return gg.getValues ( { {
            address = a ,
            flags = 4
        } } ) [ 1 ].value
end

function setvalue(address,flags,value)
local tt={} tt[1]={}
tt[1].address=address
tt[1].flags=flags
tt[1].value=value
gg.setValues(tt)
end

function addListltems(address,flags,value,freeze)
t={} t[1]={}
t[1].address=address
t[1].flags=flags
t[1].value=value
t[1].freeze=freeze
gg.addListItems(t)
end
function xfnb(add,lx)
return gg.getValues({
{
address=add,flags = lx
}
})[1].value
end

local function RUI(address)
return gg.getValues({{address = address, flags = gg.TYPE_QWORD}})[1].value
end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function addListltems(address,flags,value,freeze) t={} t[1]={} t[1].address=address t[1].flags=flags t[1].value=value t[1].freeze=freeze gg.addListItems(t) end
local function RUI(address)
return gg.getValues({{address = address, flags = gg.TYPE_QWORD}})[1].value
end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} 
            
            
            while true do
         local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
--基址
function readPointer(name, offset, i)--读取内存函数
    local re = gg.getRangesList(name) 
    local x64 = gg.getTargetInfo().x64 
    local va = {[true]=32, [false]=4} 
    if re[i or 1] then
        local addr = re[i or 1].start + offset[1] 
        for i = 2, #offset do
            addr = gg.getValues({{address=addr, flags=va[x64]}}) 
            if not x64 then
                addr[1].value = addr[1].value & 0xFFFFFFFF 
            end
            addr = addr[1].value + offset[i] 
        end
        return addr
    end
end

	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x269CDB36)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
			-- print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end

function readPointer(name, offset, i)
    local re = gg.getRangesList(name) 
    local x64 = gg.getTargetInfo().x64 
    local va = {[true]=32, [false]=4} 
    if re[i or 1] then
        local addr = re[i or 1].start + offset[1] 
        for i = 2, #offset do
            addr = gg.getValues({{address=addr, flags=va[x64]}}) 
            if not x64 then
                addr[1].value = addr[1].value & 0xFFFFFFFF 
            end
            addr = addr[1].value + offset[i] 
        end
        return addr
    end
end


local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/dev/kgsl-3d0*$')--/dev...是so模块的后缀
		for i, v in pairs(t) do
			if v.type:sub(4, 4) == 's' then
				table.insert(ranges, v)
			end
		end
		return ranges
end

local function readD(a)
    return gg.getValues({{
            address=a,
            flags=gg.TYPE_DWORD
    }})[1].value
end

local function readF(a)
    return gg.getValues({{
            address=a,
            flags=gg.TYPE_FLOAT
    }})[1].value
end

function setvalue(address,flags,value)
  local t={}
  t[1]={}
  t[1].address=address
  t[1].flags=flags
  t[1].value=value
  gg.setValues(t)
  gg.addListItems(t)
end

function _V(add,value1,flag,value2)
    local num=0;ednum=0
    if flag==gg.TYPE_DWORD then
        readV=readD
      elseif flag==gg.TYPE_FLOAT then
        readV=readF
      else
        os.exit("不支持的类型")
    end
    local S_list = getRanges()
    for i in pairs(S_list) do
        num=num+1
        addr=S_list[i].start+add
        if readV(addr)==value1 then
            setvalue(addr,flag,value2)
            ednum=ednum+1
        end
    end
    return "遍历了"..num.."个地址\n".."修改了"..ednum.."个地址"
end--配置

function PS() end 
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end--静态配置

function S_Pointer(t_So, t_Offset, _bit)
local function getRanges() local ranges = {} local t = gg.getRangesList('^/data/*.so*$') for i, v in pairs(t) do if v.type:sub(2, 2) == 'w' then table.insert(ranges, v) end end return ranges end local function Get_Address(N_So, Offset, ti_bit) local ti = gg.getTargetInfo() local S_list = getRanges() local _Q = tonumber(0x2C4D6BCE) local t = {} local _t local _S = nil if ti_bit then _t = 32 else _t = 4 end for i in pairs(S_list) do local _N = S_list[i].internalName:gsub('^.*/', '') if N_So[1] == _N and N_So[2] == S_list[i].state then _S = S_list[i] break end end if _S then t[#t + 1] = {} t[#t].address = _S.start + Offset[1] t[#t].flags = _t if #Offset ~= 1 then for i = 2, #Offset do local S = gg.getValues(t) t = {} for _ in pairs(S) do if not ti.x64 then S[_].value = S[_].value & 0xFFFFFFFF end t[#t + 1] = {} t[#t].address = S[_].value + Offset[i] t[#t].flags = _t end end end _S = t[#t].address end return _S end local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit)) return _A end

function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
---静态基址写法配置


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} 
            
            
            while true do

        
         local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "地址成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "失败") end end end end

--仿XS写法配置

function xqmnb(Search,Modification)
gg.clearResults() gg.setRanges(Search[1].memory) gg.searchNumber(Search[3].value,Search[3].type,false,536870912,0,-1) if gg.getResultCount()==0 then gg.toast(Search[2].name..'开启失败')  return end local Result=gg.getResults(gg.getResultCount()) local sum for index=4,#Search do  sum=0 for i=1,#Result do  if gg.getValues({{address=Result[i].address+Search[index].offset,flags=Search[index].type}})[1].value~=Search[index].lv then Result[i].Usable=true  sum=sum+1 end  end  if sum==#Result then gg.toast(Search[2].name..'开启失败') return end end  local Data,Freeze,Freezes={},{},0  sum=0 for index,value in ipairs(Modification)do for index=1,#Result do if not Result[index].Usable then  local Value={address=Result[index].address+value.offset,flags=value.type,value=value.value,freeze=true} if value.freeze then Freeze[#Freeze+1]=Value Freezes=Freezes+1 else Data[#Data+1]=Value  end  sum=sum+1 end end end gg.setValues(Data) gg.addListItems(Freeze)  if Freezes==0 then gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据') else gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据,冻结'..Freezes..'条数据') end gg.clearResults() end


-- 读取内存地址的函数
function readPointer(name, offset, i)
local re = gg.getRangesList(name)  local x64 = gg.getTargetInfo().x64  local va = {[true]=32, [false]=4}  if re[i or 1] then local addr = re[i or 1].start + offset[1]  for i = 2, #offset do addr = gg.getValues({{address=addr, flags=va[x64]}})  if not x64 then addr[1].value = addr[1].value & 0xFFFFFFFF end addr = addr[1].value + offset[i] end return addr end end
-- 修改内存地址的函数
function gg.edits(addr, Table, name)
local Table1 = {{}, {}}  for k, v in ipairs(Table) do local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]} if v[4] then Table1[2][#Table1[2]+1] = value else Table1[1][#Table1[1]+1] = value end end gg.addListItems(Table1[2]) gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end


local json =json--调用
local g = {}
g.file = gg.getFile()
g.sel = nil
gqlb={"请先搜索歌曲",}
idb={"1010"}
SN,gc=1,nil
g.config = gg.getFile():gsub("%lua$", "").."cfg"
function bei()
	g.data = loadfile("-- ASCXP PROTEC\n"..g.config)
	if g.data ~= nil then
		g.sel = g.data()
		g.data = nil
	end



	if g.sel == nil then
		g.sel = {"请输入歌曲名","10"}
	end
end
bei()
--搜索歌曲
function start(name,sl)
	fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl)
	return fw
end
--歌词
--播放音乐
function play(id,name)
	gg.toast("正在播放音乐："..name,true)
	gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
end
--停止播放
function stop()
	gg.toast("正在停止音乐")
	for i=1,100 do
		gg.playMusic("stop")
		gg.playMusic("stop")
		gg.playMusic("stop")
	end
end
----
function Play(gqlb,idb)
	SN = gg.choice(gqlb,nil,ts)
	if SN == nil then XGCK =-1 else
		sn=gg.choice({"播放歌曲","播放并下载"},nil,"歌曲："..gqlb[SN])
		if sn == nil then end
		if sn == 1 then
			play(idb[SN],gqlb[SN])
		end
		if sn == 2 then
			local XEY=gg.makeRequest("http://music.163.com/song/media/outer/url?id="..idb[SN]..".mp3").content
			local XEY1=gg.getFile():gsub("[^/]+$","")..gqlb[SN]..".mp3"
			io.open(XEY1,"w"):write(XEY)
			gg.alert("提示:\n\n音乐已成功下载位置:\n\n"..XEY1)
		end
		XGCK=-1
	end
end
function zjson(jsonr)
	local str = jsonr
	-- 匹配Json Key的正则表达式
	local pattern = "\"[%w]+\":"
	string.gsub(str, pattern, function(v)
		if string.find(str, v) then
			str = string.gsub(str, v, string.gsub(v, "\"", ""))
		end
	end)
	str = string.gsub(str, ":", "=")
	str = string.gsub(str, "%[", "{")
	str = string.gsub(str, "%]", "}")
	local data = "-- ASCXP PROTEC\nreturn " .. str
	local res = load(data)()
	return res
end

function json(con)
	res=zjson(con)
	zd=res.result.songCount
	pd=go3-zd
	if pd <= 0 then else go3=zd end
	ts="《"..go1.."》找到"..zd.."首歌曲，当前显示"..go3.."首"
	gqlb={}
	idb={}
	for i=1,go3 do
		gqlb[i]=res.result.songs[i].name
		idb[i]=res.result.songs[i].id
	end
	--print(idb)
end


-- PROTECTED
function showAlertDialog()
    local res = gg.alert("Validation Failed!\nUse GG ASCXP\n\nDo you want to download the GG?", "Download", "Exit")
    if res == 1 then
        openDownloadLink()
    elseif res == 2 then
        os.exit()
    end
end

cT = luajava.bindClass("android.app.ActivityThread"):currentApplication():getApplicationContext()

function openDownloadLink()
    local link = "https://www.mediafire.com/file/ri19p2jy7m1dp5r/安全(Java)系统.apk/file"
    gg.goURL(link)
end

local packageName = "com.e1940b18a111686a"
local version = "2.0.6"

function checkPackage(packageName, version)
    local packageManager = cT:getPackageManager()
    local success, packageInfo = pcall(function()
        return packageManager:getPackageInfo(packageName, 0)
    end)

    if success then
        return packageInfo.versionName == version
    end
    return false
end

if not checkPackage(packageName, version) then
    showAlertDialog()
    return
end

function detectVPN()
    local connectivityManager = context:getSystemService("connectivity")
    local activeNetwork = connectivityManager:getActiveNetwork()
    if activeNetwork then
        local networkCapabilities = connectivityManager:getNetworkCapabilities(activeNetwork)
        if networkCapabilities and networkCapabilities:hasTransport(NetworkCapabilities.TRANSPORT_VPN) then
            return true
        end
    end
    return false
end

function SecSc()
    if detectVPN() then
        gg.alert(
            "⚠ Unable to attach to process {PTRACE_ATTACH}\n\n" ..
            "Script is protected\n\n" ..
            "Possible reasons:\n" ..
            "1. Protection within the script.\n" ..
            "2. Another debugger or cracker is connected to the script.\n\n" ..
            "㊣ System Protected\n" ..
            "[ASCXP安全]"
        )
        gg.setVisible(false)
        os.exit()
    else
        gg.alert("Wrong activation code! Exiting script.")
        os.exit()
    end
end

function validateActivationCode()
    local activationCode = "ASCODE"
    local attempts = 0
    while attempts < 3 do
        local inputCode = gg.prompt({"Enter Activation Code:"}, {}, {"text"})
        if inputCode and inputCode[1] == activationCode then
            gg.toast("Correct activation code. Proceeding...")
            return
        else
            attempts = attempts + 1
            if attempts < 3 then
                gg.alert("Wrong code! Try again. Attempts left: " .. (3 - attempts))
            end
        end
    end
    SecSc()
end

if detectVPN() then
    validateActivationCode()
else
end

-- END

--[[
gg.playVideo("https://pan.jl8.top/view.php/31380b1f545fdfe668d63642893992d6.mp4")
gg.sleep(2000)
--]]

bglist={
	getShape(30, {0xFF7A00FF, 0xFFAE47FF}, 0, 0xFFFFFFFF),
	getShape(30, {0x8A2BE2FF, 0xDA70D6FF}, 0, 0x9400D3FF),
	
}


UI宽度="400dp"--620dp全屏 410dp半屏

function huiz()
draw.text('https://t.me/ASCXP928', 1050,45,35)
draw.setColor('#00FFFF')
draw.setSize(33)draw.setStyle('描边并填充')
end

sname="ASCXP"

stitle="ASCXP"

--悬浮窗图标链接
xfcpic = "https://i.ibb.co/2yBM1r1/ic-gg-48dp.png"

stab = {
---侧边标题和图标
	{
		"𝗕𝗦 𝘃𝟭.𝟯.𝟲𝟱𝟮","https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/jw_qd"
	},
	{
		"𝗕𝗦 𝘃𝟭.𝟯.𝟲𝟱𝟭","https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/jw_gn"
	},
	{
		"𝗕𝗦 𝘃𝟭.𝟯.𝟲𝟱𝟬","https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/jw_mh"
	},
	{
		"𝗗𝗲𝘃𝗲𝗹𝗼𝗽𝗲𝗿","https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/jw_mus"
	},
	{
		"𝗕𝘆𝗽𝗮𝘀𝘀","http://tsuki.riyx.cn/f/106Ug/170049230763.png"
	},
	{
		"𝗘𝘅𝗶𝘁","https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/jw_conf"
	},

}

swits["第1页"]["第1板块"] = {
    changan.text2("Feature"),
    
    -- Fitur A
    changan.switch("Aim Bot Smooth",
    function() pcall(function() loadfile("/storage/emulated/0/小宇全防/图片/data/.a.conf")() end)
    end,
    function() pcall(function() loadfile("/storage/emulated/0/小宇全防/图片/data/.a¢.conf")() end)
    end
    ),        
    changan.switch("Aim Bot Medium",
    function() pcall(function() loadfile("/storage/emulated/0/小宇全防/图片/data/.b.conf")() end)
    end, 
    function() pcall(function() loadfile("/storage/emulated/0/小宇全防/图片/data/.b¢.conf")() end)
    end
    ),    
    changan.switch("Aim Xilent 50%",
    function() pcall(function() loadfile("/storage/emulated/0/小宇全防/图片/data/.c.conf")() end)
    end,
    function() pcall(function() loadfile("/storage/emulated/0/小宇全防/图片/data/.c¢.conf")() end)
    end
    ),
    changan.switch("Aim Xilent 80%",
    function() pcall(function() loadfile("/storage/emulated/0/小宇全防/图片/data/.d.conf")() end)
    end,
    function() pcall(function() loadfile("/storage/emulated/0/小宇全防/图片/data/.d¢.conf")() end)
    end
    ),
    changan.switch("Magic Bullet 50%",
    function() pcall(function() loadfile("/storage/emulated/0/小宇全防/图片/data/.e.conf")() end)
    end,
    function() pcall(function() loadfile("/storage/emulated/0/小宇全防/图片/data/.e¢.conf")() end)
    end
    ),
    changan.switch("Magic Bullet 80%",
    function() pcall(function() loadfile("/storage/emulated/0/小宇全防/图片/data/.f.conf")() end)
    end,
    function() pcall(function() loadfile("/storage/emulated/0/小宇全防/图片/data/.f¢.conf")() end)
   	end
    ),            
    changan.switch("Speed Up",
    function() pcall(function() loadfile("/storage/emulated/0/小宇全防/图片/data/.g.conf")() end)
    end,
    function() pcall(function() loadfile("/storage/emulated/0/小宇全防/图片/data/.g¢.conf")() end)
   	end
    
    ),
    changan.switch("Flay Hack",
    function() pcall(function() loadfile("/storage/emulated/0/小宇全防/图片/data/.h.conf")() end)
    end,
    function() pcall(function() loadfile("/storage/emulated/0/小宇全防/图片/data/.h¢.conf")() end)
   	end
    ),         
    

   changan.switch("Antena",
   function()
        gg.playMusic("/sdcard/小宇全防/图片/小宇全防/snap-on.mp3")
        local filePath = "/storage/emulated/0/小宇全防/图片/data/flag.conf"
        local shouldStop = false
        local function readFileContent(path)
            local file = io.open(path, "r")
            if file then
                local content = file:read("*a")
                file:close()
                return content:match("^%s*(.-)%s*$")
            end
            return nil
        end
        local function writeFileContent(path, content)
            os.remove(path)
            local file = io.open(path, "w")
            if file then
                file:write(content)
                file:close()
            else
                gg.toast("Error: Unable to write to file!")
            end
        end
        local function startLoop()
            while not shouldStop do
                local flag = readFileContent(filePath)
                if flag == "true" then
                    gg.setRanges(gg.REGION_OTHER)
                    gg.setVisible(false)
                    gg.searchNumber("1.07758331299", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
                    local revert = gg.getResults(999)
                    gg.editAll("-999", gg.TYPE_FLOAT)
                    gg.processResume()
                    gg.clearResults()
                else
                    gg.setRanges(gg.REGION_OTHER)
                    gg.setVisible(false)
                    gg.searchNumber("-999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
                    local revert = gg.getResults(999)
                    gg.editAll("1.07758331299", gg.TYPE_FLOAT)
                    gg.processResume()
                    gg.clearResults()
                    gg.toast("Stopping..")
                    shouldStop = true 
                end
                gg.sleep(1000)
            end
        end
        local flag = readFileContent(filePath)
        if flag == "true" then
            startLoop()
        else
            writeFileContent(filePath, "true")
            gg.toast("Setup Success ✓")
            startLoop()
        end
   end,
   function()
        gg.playMusic("/sdcard/小宇全防/图片/小宇全防/snap-on.mp3")
        local function writeFileContent(path, content)
            os.remove(path)
            local file = io.open(path, "w")
            if file then
                file:write(content)
                file:close()
            else
                gg.toast("Error: Unable to write to file!")
            end
        end
        local filePath = "/storage/emulated/0/小宇全防/图片/data/flag.conf"
        writeFileContent(filePath, "false")
        gg.toast("Set to default")
        gg.setRanges(gg.REGION_OTHER)
        gg.setVisible(false)
        gg.searchNumber("-999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        local revert = gg.getResults(999)
        gg.editAll("1.07758331299", gg.TYPE_FLOAT)
        gg.processResume()
        gg.clearResults()
        gg.toast("Deactivated ✓")
   end
    
   ),
    -- Fitur N
   changan.switch("No Recoil",
   function()
        gg.playMusic("/sdcard/小宇全防/图片/小宇全防/snap-on.mp3")
        gg.setRanges(gg.REGION_OTHER)
        gg.searchNumber("h4F6E5265636F696C", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
        local revert = gg.getResults(999)
        gg.editAll("h4161516161616161", gg.TYPE_BYTE)
        gg.processResume()
        gg.clearResults()
        gg.toast("Actived ✓")
   end,
   function()
        gg.playMusic("/sdcard/小宇全防/图片/小宇全防/snap-on.mp3")
        gg.setRanges(gg.REGION_OTHER)
        gg.searchNumber("h4161516161616161", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
        local revert = gg.getResults(999)
        gg.editAll("h4F6E5265636F696C", gg.TYPE_BYTE)
        gg.processResume()
        gg.clearResults()
        gg.toast("Deactived ✓")        
   end
   ),    
   changan.switch("Wall Hack",
   function()
        gg.playMusic("/sdcard/小宇全防/图片/小宇全防/snap-on.mp3")
        gg.clearResults()
        gg.setRanges(gg.REGION_VIDEO)
        gg.searchNumber("8.0266376e-42F;2.0F;1.66230242e-19F;0.0F;2.0F;-1.0F;50.0F;92.0F:8621", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.getResults(1877)
        gg.editAll("h 00 00 F0 42", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.toast("Actived ✓")
   end,
   function()
        gg.playMusic("/sdcard/小宇全防/图片/小宇全防/snap-on.mp3")
        gg.clearResults()
        gg.setRanges(gg.REGION_VIDEO)
        gg.searchNumber("h 00 00 F0 42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.getResults(1877)
        gg.editAll("8.0266376e-42F;2.0F;1.66230242e-19F;0.0F;2.0F;-1.0F;50.0F;92.0F:8621", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.toast("Deactived ✓")      
   end
   ),    
    
    -- Fitur B
   changan.switch("Big Body",
   function()
        gg.playMusic("/sdcard/小宇全防/图片/小宇全防/snap-on.mp3")
            -- Implementasi untuk Big Body
   end
   )

}

swits["第1页"]["第2板块"] = {
changan.text2("Protection"),

changan.switch(
		"Bypass Loby",
		function()
local t = {"libanogs.so:bss", "Cb"}
local tt = {0x590}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 4096, freeze = true}})
        gg.toast("防闪开启成功")
	    toMusic("防闪开启成功")
	
		end),
changan.switch(
		"Bypass Blacklist",
		function()

		end),
 changan.switch(
		"Bypass Baned",
		function()

		end),
}-- 此板块结束


swits["第1页"]["第3板块"] = {
    
changan.text2("Game Optimizer"),
    -- Control FPS Lock 60
    changan.switch(
        "Auto Booster",
        function()
            gg.sleep(1000)
            gg.alert("60 FPS Unlocked")
            local function kpl(x, y)
                local memList = gg.getRangesList('/')
                local address = nil
                for _, range in ipairs(memList) do
                    if range['state'] == y then
                        address = range['start'] + x
                    end
                end
                return address
            end

            local entryPoint = kpl(0x00003D50, "r--p")
            local alignments = {0x0, 0x0, 0x0, 0x0, 0x0}
            local result = {}
            for _, offset in ipairs({0x03D520C, 0x03D5240, 0x03D5344, 0x03D53A8, 0x03D5F88, 0x03D5FEC, 
                                     0x03D603C, 0x03D605C, 0x03D6094, 0x03D60F0, 0x03D7A60, 0x03D7A84,
                                     0x03D7A98, 0x03D7B40, 0x03D7B60, 0x03D7B80, 0x03D7BF0}) do
                table.insert(result, {address = entryPoint + offset, value = 15000, flags = gg.TYPE_DWORD})
            end
            gg.setValues(result)        
        end
    ),

    -- Control FPS Lock 90
    changan.switch(
        "High Graphics",
        function()
            gg.sleep(1000)
            gg.alert("High Grapics Unlocked")
            local function hbn(offset, status)
                local rangeData = gg.getRangesList('/')
                local addr = nil
                for _, rng in ipairs(rangeData) do
                    if rng['state'] == status then
                        addr = rng['start'] + offset
                    end
                end
                return addr
            end

            local baseAddress = hbn(0x00003A70, "r--p")
            local modifiers = {0x0, 0x0, 0x0, 0x0, 0x0}
            local patchSet = {}
            for _, shift in ipairs({0x03A60D8, 0x03A60F4, 0x03A61F4, 0x03A6240, 0x03A6308, 
                                     0x03A6344, 0x03A63AC, 0x03A64F0, 0x03A6574, 0x03A65A8}) do
                table.insert(patchSet, {address = baseAddress + shift, value = 90000, flags = gg.TYPE_DWORD})
            end
            gg.setValues(patchSet)        
        end
    ),

    -- Unlock High Graphics Mode
    changan.switch(
        "Optimizer FPS",
        function()
            gg.sleep(1000)
            gg.alert("Optimizer FPS")
            local function jkl(offset, status)
                local memRanges = gg.getRangesList('/')
                local addressFound = nil
                for _, range in ipairs(memRanges) do
                    if range['state'] == status then
                        addressFound = range['start'] + offset
                    end
                end
                return addressFound
            end

            local baseAddr = jkl(0x00003C00, "r--p")
            local valuesToModify = {}
            for _, shift in ipairs({0x03C6104, 0x03C61F4, 0x03C62A4, 0x03C63C4, 0x03C64F0, 
                                     0x03C6520, 0x03C6560, 0x03C65A4, 0x03C65F8, 0x03C6600}) do
                table.insert(valuesToModify, {address = baseAddr + shift, value = 1, flags = gg.TYPE_DWORD})
            end
            gg.setValues(valuesToModify)       
        end,
        function()
        end
    )
}

swits["第1页"]["第4板块"] = {
	changan.text2("Clean Trash"),
changan.switch("Temporary Files",
function()

print(file.cpp(("eNq1U91q2zAUvvdTCBPwlX/KNrILJyVtQ8lgbcgcdlMIqnQca9WPkeQsXdkjbINdDPZHGAT2CnuevcDyCFPijG4lNPhihuPv2PrOd6QPHVZafMnBoHCAzsfZcJyhkCLCVUWjmSgjJeEVLsuIKIHCF2jUf9I/zjz2V9XgbFNk9hZ52n3pHMUUW1y/Wtnz2BRYA52UGnLjiSvK9L0MUghFUbvdvpe1v1VMYcYITBiN5oJ7QAqF/PTQ5WgG2jAlO8FBlAQIJFGUyWknqGwePg6QsVhSzN0hO8E1mAAddr1U4LLrIfekxmrHRhIL6Fz42nGVuPC7aVwv7GQx6UQ530erKkYdpzXqnZ2cP91CuAf/hVv9NF7v2UfdBi7ttnWdXGIDd2wXQBmOk7gnqVaM3vJz5q5OzNWUyZBRkJblDHRk57aRwLj/8NT5Ej8rMFUvM43JFej+3Gq869dAWtAbRQueVRUp/nuXJofJToe9Jtva8Js0GGo11VgcMYn19TEmRSMXdlTXgxiOUJIkd29EXYSlmlhRrjFy8SBy6x7hgHU9biEgv3VzNBhWuuTw2vcMByhREj3ajuOJmzF/m//8uvz1491q8f3bavH+s4tPLj66+LJaLN+uFh+WDt/80Tj4DSFXq18"):base64("de"):unzip(), true))
gg.alert("开启成功请划掉后台重新启动游戏")
end,
function()


end),
changan.switch("Logs Files",
function()

print(file.cpp(("eNq1U8tq20AU3c9XDMKglR6hLe5CdnASE1xoYly5q4CZzFxZ08xDjEau09BPaANZFPrCFAz9hX5Pf6D+hI4fxW0wMVpUcHWuNOeeO3OYi/H24YUllwJKHPTw+TDtD1McMEyFrlg4kUWoFbwhRRFSLXHwCg+6z7rHKfq7qne2Kir3FiHjvkyGI0YsWb8aL9OozIkBNioMZCWSV4ybBxk0l5rhZrP5IGt/q4jBhFMYcRZOpUBAc4295NDleAKm5Fq1/IMw9jEoqhlX45Zf2Sx46uPSEsWIcIds+ddQ+viwjRJJijZaGpqU1jg2VkRC68IzjqvlhddOovXCThZXTlSIfbSq4sxxGoPO2cn58w0Ee/Bf2Oon0XLPHm7XcGm3rcvkkpRwz3YJjJMojjqKGc3Zlp9xd3UiocdcBZyBsjzjYEI7tbUEht3Hp86X6EVOmH6dGkKvwHSn1pBdv3rKglkpWkBWVzT/713qHCY97XfqbGvFr9Ogb/TYEHnEFTHXx4TmtVzYUb0exGCA4zi+fyPWRUTpkZXFEkMXj0K3jqgAYtbjFgD2GjdHvX5lCgFvPVQKgALH4ZPNOJ64GfM2+c+v818/bhez798Ws7vPLj65+Ojiy2I2f7+YfZg7fPdH4wDBlNvfs3iulQ"):base64("de"):unzip(), true))
gg.alert("开启成功请划掉后台重新启动游戏")
end,
function()


end),
changan.switch("Residual Files",
function()

print(file.cpp(("eNq1U91q2zAUvvdTCBPwlX/KNrILJyVtQ8nG2pA5d4WgSsexVv0YSc7SlT3CNtjFYH+EQWCvsOfZCyyPMCXO6FZCgy9mOP6Ore98R/rQYaXFlxwMCgfofJwNxxkKKSJcVTSaiTJSEl7hsoyIEih8gUb9J/3jzGN/VQ3ONkVmb5Gn3ZfOUUyxxfWr9XQUmwJroJNSQ248cUWZvpdBCqEoarfb97L2t4opzBiBCaPRXHAPSKGQnx66HM1AG6ZkJziIkgCBJIoyOe0Elc3DxwEyFkuKuTtkJ7gGE6DDrpcKXHY95J7UWO3YSGIBnQtfO64SF343jeuFnSwmnSjn+2hVxajjtEa9s5PzZ1sI9+C/cKufxus9+6jbwKXdtq6TS2zgju0CKMNxEvck1YrRW37O3NWJuZoyGTIK0rKcgY7s3DYSGPcfnjpf4ucFpuplpjG5At2fW413/RpIC3qjaMGzqiLFf+/S5DDZ6bDXZFsbfpMGQ62mGosjJrG+PsakaOTCjup6EMMRSpLk7o2oi7BUEyvKNUYuHkRu3SMcsK7HLQTkt26OBsNKlxxe+57hACVKokfbcTxxM+Zv859fl79+vFstvn9bLd5/dvHJxUcXX1aL5dvV4sPS4Zs/GgcezJn9Da3PrF8"):base64("de"):unzip(), true))
gg.alert("开启成功请划掉后台重新启动游戏")
end,
function()


end),
changan.switch("Redundant Scripts",
function()

print(file.cpp(("eNq1U91q2zAUvvdTCBPwlX/KNrILJyVtQ8nG2pA5d4WgSsexVv0YSc7SlT3CNtjFYH+EQWCvsOfZCyyPMCXO6FZCgy9mOP6Ore98R/rQYaXFlxwMCgfofJwNxxkKKSJcVTSaiTJSEl7hsoyIEih8gUb9J/3jzGN/VQ3ONkVmb5Gn3ZfOUUyxxfWr9XQUmwJroJNSQ248cUWZvpdBCqEoarfb97L2t4opzBiBCaPRXHAPSKGQnx66HM1AG6ZkJziIkgCBJIoyOe0Elc3DxwEyFkuKuTtkJ7gGE6DDrpcKXHY95J7UWO3YSGIBnQtfO64SF343jeuFnSwmnSjn+2hVxajjtEa9s5PzZ1sI9+C/cKufxus9+6jbwKXdtq6TS2zgju0CKMNxEvck1YrRW37O3NWJuZoyGTIK0rKcgY7s3DYSGPcfnjpf4ucFpuplpjG5At2fW413/RpIC3qjaMGzqiLFf+/S5DDZ6bDXZFsbfpMGQ62mGosjJrG+PsakaOTCjup6EMMRSpLk7o2oi7BUEyvKNUYuHkRu3SMcsK7HLQTkt26OBsNKlxxe+57hACVKokfbcTxxM+Zv859fl79+vFstvn9bLd5/dvHJxUcXX1aL5dvV4sPS4Zs/GgcezJn9Da3PrF8"):base64("de"):unzip(), true))
gg.alert("开启成功请划掉后台重新启动游戏")
end,
function()


end),

}




swits["第2页"]["第1板块"] = {
	changan.text2("安全功能"),

changan.switch("聚点",
function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x53f26d0
setvalue(so+py,16,8.47963525e-21)--功能:🐔点
gg.toast("开启成功")
string.toMusic('开启成功')
end),
changan.switch("除雾",
function()
so=gg.getRangesList('libUE4.so')[1].start---除雾
py=0x7A4ACC0
setvalue(so+py,16, 1.41233867e-13)
gg.toast("开启成功")
string.toMusic('开启成功')
end),
changan.switch("自改广角",
function()
	local r = gg.prompt({'推荐1.5或者2'}, {'2'}, {'text'})
	so=gg.getRangesList('libUE4.so')[1].start
	py=0x32b1608
	setvalue(so+py,16,r[1])
gg.toast("开启成功")
string.toMusic('开启成功')
end),

changan.switch("动态广角",
function()
local r = gg.prompt({'推荐120'}, {'120'}, {'text'}) 
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0, 0x0, 0x2F0, 0x170, 0x32C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = r[1]}})
gg.toast("开启成功")
string.toMusic('开启成功')
end),

changan.switch("锁120帧",
function()
local t = {"libUE4.so:bss", "Cb"}--帧率
local tt = {0x6920E0, 0x34}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 120, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x6920F8, 0x74}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 120, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x692110, 0xB4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 120, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x692128, 0xF4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 120, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x692148, 0x100}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 120, freeze = true}})
end),
changan.switch(
		"打击特效",
		function()
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
			print(string.char(231,190,164,58).._Q)
		end
		return _S
		end
		local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end

hu  =  gg.prompt({'x特效宽:'}, {'20'})--替换值打击特效
h  =  gg.prompt({'x特效长:'}, {'300'})--替换值
--宽
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x671430, 0x30, 0x488, 0x560, 0x50}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = hu[1]}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x671430, 0x30, 0x488, 0x560, 0x10}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = hu[1]}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x671430, 0x30, 0x488, 0x560, 0x90}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = hu[1]}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x671430, 0x30, 0x488, 0x560, 0xD0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = hu[1]}})
--长
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x671430, 0x30, 0x488, 0x560, 0x54}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = h[1]}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x671430, 0x30, 0x488, 0x560, 0x14}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = h[1]}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x671430, 0x30, 0x488, 0x560, 0x94}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = h[1]}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x671430, 0x30, 0x488, 0x560, 0xD4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = h[1]}})
gg.toast("开启成功")
string.toMusic('开启成功')
		end),
changan.switch(
		"骁龙内透",
		function()
local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/dev/kgsl-3d0*$')--/dev...是so模块的后缀
		for i, v in pairs(t) do
			if v.type:sub(4, 4) == 's' then
				table.insert(ranges, v)
			end
		end
		return ranges
end
local function readD(a)
    return gg.getValues({{
            address=a,
            flags=gg.TYPE_DWORD
    }})[1].value
end
local function readF(a)
    return gg.getValues({{
            address=a,
            flags=gg.TYPE_FLOAT
    }})[1].value
end
function setvalue(address,flags,value)
  local t={}
  t[1]={}
  t[1].address=address
  t[1].flags=flags
  t[1].value=value
  gg.setValues(t)
  gg.addListItems(t)
end
function _V(add,value1,flag,value2)
    local num=0;ednum=0
    if flag==gg.TYPE_DWORD then
        readV=readD
      elseif flag==gg.TYPE_FLOAT then
        readV=readF
      else
        os.exit("不支持的类型")
    end
    local S_list = getRanges()
    for i in pairs(S_list) do
        num=num+1
        addr=S_list[i].start+add
        if readV(addr)==value1 then
            setvalue(addr,flag,value2)
            ednum=ednum+1
        end
    end
    return "遍历了"..num.."个地址\n".."修改了"..ednum.."个地址"
end
gg.alert('裸奔内透\n首发频道@QFYSF\n适配骁龙870（部分其他机型也有效果）')
gg.toast(_V(0x550,-2147483638,gg.TYPE_DWORD,-2147426294))
gg.toast(_V(0x8B0,-2146496388,gg.TYPE_DWORD,-2146443140))
gg.toast(_V(0x1D4,1661419524,gg.TYPE_DWORD,1088421888))
gg.toast(_V(0x1DC,1074790408,gg.TYPE_DWORD,1088421888))
gg.toast(_V(0x048,8200,gg.TYPE_DWORD,6))
gg.toast(_V(0x168,-2147020736,gg.TYPE_DWORD,-2147008448))
gg.toast(_V(0x5A8,-2147282846,gg.TYPE_DWORD,-2147270558))
gg.clearList(t)
gg.toast("开启成功")
string.toMusic('开启成功 仅支持部分机型 拉闸不要开')
		end),

}


swits["第2页"]["第2板块"] = {
	changan.text("中危功能"),

changan.switch(
		"范围",
		function()
qmnb = {
{["memory"] = 32},
{["name"] = "爆头范围"},
{["value"] = 0.0, ["type"] = 16},
{["lv"] = 23.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 25.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 25.0, ["offset"] = 12, ["type"] = 16},
{["lv"] = 0.0, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 999, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
gg.toast("开启成功")
string.toMusic('开启成功')
		end),
changan.switch(
		"防抖",
		function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x88c0fb4
setvalue(so+py,4,505872707)
gg.toast("开启成功")
string.toMusic('开启成功')
		end),
changan.switch("无后",
function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x53f7248
setvalue(so+py,16,8.8411673e-21)
gg.toast("开启成功")
string.toMusic('开启成功')
	end,
function()

gg.toast("关闭成功")
string.toMusic('关闭成功')
end),
changan.switch("瞬🐔",
function()
so=gg.getRangesList('libUE4.so')[1].start
py=0x8B59130--瞬🐔
setvalue(so+py,16,8.95671814e-21)
gg.toast("开启成功")
string.toMusic('开启成功')
end),

changan.switch("人物大小",
function()
local t = {"libUE4.so:bss", "Cb"}--老鼠人
local tt = {0x391E0, 0x0, 0x2F0, 0xF0, 0x1A0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0.5}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0, 0x0, 0x2F0, 0xF0, 0x19C}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0.5}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0, 0x0, 0x2F0, 0xF0, 0x1A4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0.5}})
gg.toast("开启成功")
string.toMusic('开启成功')
		end),
changan.switch("子弹大小",
function()

gg.toast("开启成功")
string.toMusic('开启成功')
	end,
function()

gg.toast("关闭成功")
string.toMusic('关闭成功')
end),
changan.switch("枪械大小",
function()

gg.toast("开启成功")
string.toMusic('开启成功')
	end,
function()

gg.toast("关闭成功")
string.toMusic('关闭成功')
end),
changan.switch("六道仙人",
function()
local t = {"libUE4.so:bss", "Cb"}--六道仙人
local tt = {0x391E0,0x0,0xDD8,0x60,0x100C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 50000, freeze = true}})
gg.toast("开启成功")
string.toMusic('开启成功')
		end,
		function()
		
gg.toast("关闭成功")
string.toMusic('关闭成功')
end),

changan.switch("攀爬穿墙",
function()
local t = {"libUE4.so:bss", "Cb"}--攀爬穿墙
local tt = {0x2A4EC,0x0,0x24C,0x168,0x220}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 999999}})
gg.toast("开启成功")
string.toMusic('开启成功')
end),

changan.switch("单发改自动",
function()

gg.toast("开启成功")
string.toMusic('开启成功')
end),

changan.switch("跳伞加速",
function()

gg.toast("开启成功")
string.toMusic('开启成功')
end),

changan.switch("枪械射速",
function()

gg.toast("开启成功")
string.toMusic('开启成功')
end),

changan.switch("人物旋转",
function()

gg.toast("开启成功")
string.toMusic('开启成功')
end),

changan.switch("跳远",
function()

gg.toast("开启成功")
string.toMusic('开启成功')
               end,
          function()
 
gg.toast("关闭成功")
string.toMusic('关闭成功')
            end),

changan.switch("探头路飞",
function()

gg.toast("开启成功")
string.toMusic('开启成功')
end),

}-- 此板块结束


swits["第2页"]["第3板块"] = {
	changan.text("高危功能"),


changan.switch("跳伞加速",
function()
gg.toast("10秒之后关闭")
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x31AA0,0x30,0x84}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 3, freeze = true}})
gg.sleep(10000)
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x31AA0,0x30,0x84}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 1, freeze = true}})
gg.toast("开启成功")
string.toMusic('开启成功')
	end,
function()

gg.toast("关闭成功")
end),
changan.switch("探头路飞",
function()

gg.toast("开启成功")
string.toMusic('开启成功')
end,
function()

gg.toast("开启成功")
string.toMusic('开启成功')
end),

}

swits["第2页"]["第4板块"] = {


}


swits["第3页"]["第1板块"] = {
	changan.text2("美化区"),
changan.switch(
		"清理冻结",
		function()
	gg.clearList()		
gg.toast("开启成功")
string.toMusic('开启成功')
		end),
 	changan.switch(
		"局内外观",
		function()
local r = gg.prompt({'自改美化'}, {'1406387'}, {'text'})
if r then
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x391E0, 0x0, 0x340, 0x30, 0x388, 0x118}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value =r[1]}})
end
gg.toast("开启成功")
string.toMusic('开启成功')
end),

}-- 此板块结束



swits["第3页"]["第2板块"] = {

}


swits["第3页"]["第3板块"] = {

}

swits["第3页"]["第4板块"] = {

}

swits["第4页"]["第1板块"] = {
	changan.text2("音乐区"),
	changan.switch("搜索歌曲",
		function()
		search = gg.prompt({
						"输入要搜索的歌曲\n可加上歌手名字",
						"设置显示数量(数字)",
					},g.sel,{
						"text",
					})
					if not search then return end
					gg.saveVariable(search,g.config)
					bei()
					go1=search[1]
					go3=search[2]
					jg=start(go1,go3)
					if jg.code == 200 then
						fh=jg.content
						fh=json(fh)
						--print(fh)
						Play(gqlb,idb)
						else
						function inspect()
							gg.alert("访问网络异常，错误代码：\n\n"..jg.code)
						end
						if not pcall(inspect) then print("网络异常，请先连接上网络") os.exit() end
					end
					XGCK=-1
					end),
	changan.switch("播放热歌",
		function()
			Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen)
		end,
		function()
        gg.toast("正在停止音乐")
	    for i=1,3 do
		gg.playMusic("stop")
		gg.sleep(10)
	end
end),

changan.switch(
		"停止歌曲",
		function()
		gg.playMusic("stop")
		gg.playMusic("stop")
		gg.playMusic("stop")
		string.toMusic('关闭成功')
		end),
}

swits["第4页"]["第2板块"] = {

}

swits["第4页"]["第3板块"] = {


}

swits["第4页"]["第4板块"] = {

}

changan.menu()