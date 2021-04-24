IPlist = {
  "185.171.1.183",   --Alchare Roleplay --McDonald's --PD DIŞ --İsbankasiATM --LQ Ron GS
  "89.252.161.144",  --CAYP LOCAL
  "217.195.197.80",  --Queen Roleplay --MD DIŞ
  "185.103.199.139", --Valex Roleplay --LQ Ron Gas Station
  "193.31.118.14",   --Anchor Roleplay --McDonald's
  "213.142.156.142", --Reina Rolepaly --PD DIŞ
  "51.210.22.206",   --Bedellin Roleplay --LQ Ron Gas Station
  "40.121.84.120",   --Hydra Roleplay --Acibadem Hastanesi
  "213.32.61.83",    --Zion Roleplay --McDonald's --İsbankasiATM --MD DIŞ --PD DIŞ
  "54.36.0.87",      --Turan Roleplay --LQ Ron Gas Station
  "217.195.197.63",  --Nice Roleplay --McDonald's --İsbankasiATM
  "51.178.185.69",   --AnonyTurks Roleplay --MD İNT --PD DIŞ
  "89.252.161.135",  --Aspera Roleplay --İsbankasiATM --PD DIŞ
  "2.59.116.108",    --CEKILIS KAZANANI --MC 
  "213.202.223.132", --Sekiz Roleplay --MD İNTERİOR
  "176.98.41.19"     --Venom Roleplay --BUĞRA
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
            sendMessage("objelog", getResourceName(res).. " adlı objeyi kullanan server ip :   "  ..ip.." Lisans:  **Var(V2 SÜRÜM)!  ** Server Name : " ..name.. " **Obje Aktif!**" )
            oneat = true
        else 
            shutdown ("Cayp Model calinti obje tespit edildi iyi ucuslar!")
            print("Cayp Model calinti obje tespit edildi iyi ucuslar")
            setElementData(root, "setElementData", nil)
            sendMessage("objelog", getResourceName(res).. " adlı objeyi kullanan server ip :   "  ..ip.." Lisans:  **Yok(V2 SÜRÜM)!  ** Server Name : " ..name.. " **Sunucu Kapatıldı!**" )
        end
    end)    
end
addEventHandler ( "onResourceStart", getRootElement(), Magic )
