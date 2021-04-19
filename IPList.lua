IPlist = {
  "213.226.119.27",  --Alchare Roleplay --Toplu Alım
  "89.252.161.144",  --CAYP LOCAL
  "217.195.197.80",  --Queen Roleplay --Acibadem Hastanesi
  "185.103.199.139", --Valex Roleplay --LQ Ron Gas Station
  "193.31.118.14",   --Anchor Roleplay --McDonald's
  "213.142.156.142", --Reina Rolepaly --PD DIŞ
  "51.210.22.206",   --Bedellin Roleplay --LQ Ron Gas Station
  "40.121.84.120",   --Hydra Roleplay --Acibadem Hastanesi
  "213.32.61.83"     --Zion Roleplay --Toplu Alım
}
oneat = nil
function Magic(res)
    name = getServerConfigSetting("servername")
    fetchRemote("https://api.my-ip.io/ip", function(ip)
        --print("IP Kontrol ediliyor....")
        serverip = ip 
        if table.find(IPlist, serverip) then
        	if oneat then return end
            setElementData(root, "setElementData", 1)
            print ("Cayp Model orjinal obje kullandiginiz icin tesekkurler.")
            sendMessage("objelog", "Obje Adı:"""getResourceName(res).. ")
            oneat = true
        else 
            shutdown ("Cayp Model calinti obje tespit edildi iyi ucuslar!")
            print("Cayp Model calinti obje tespit edildi iyi ucuslar")
            setElementData(root, "setElementData", nil)
            sendMessage("objelog", getResourceName(res).. " adlı objeyi kullanan server ip :   "  ..ip.." Lisans:  **Yok!  ** Server Name : " ..name.. " **Sunucu Kapatıldı!**" )
        end
    end)    
end
addEventHandler ( "onResourceStart", getRootElement(), Magic )
