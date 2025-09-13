#!/bin/sh
# Roblox Mass Place Version Downloader shell script by Thomasluigi07, 2024-2025
# Run chmod +x on this file if it doesn't run.
# Your Roblox cookies aren't required for uncopylocked places.
# Make sure to add your roblox cookies in the curl command or it won't download copylocked places. 
# DO NOT SHARE YOUR ROBLOX COOKIES WITH ANYONE, ESPECIALLY YOUR .ROBLOSECURITY COOKIE.
# Put your place id you want to download from in ?id=NUMBER
for i in {1..10} # Change 10 to the number of the highest version your place has
do
echo Starting download for version $i;
curl "https://assetdelivery.roblox.com/v1/asset/?id=1818&version=${i}" \
  -L \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7' \
  -H 'accept-language: en-AU,en-GB;q=0.9,en;q=0.8,en-US;q=0.7' \
  -H 'cookie: GuestData=UserID=blank; _ga=blank; _ga_BK4ZY0C59K=blank; _gcl_au=blank; RBXSource=blank&rbx_acquisition_referrer=&rbx_medium=blank&rbx_source=&rbx_campaign=&rbx_adgroup=&rbx_keyword=&rbx_matchtype=&rbx_send_info=blank; .ROBLOSECURITY=NoCookieForU; rbxas=blank; RBXEventTrackerV2=CreateDate=blank&rbxid=blank&browserid=blank; _t=blank; UnifiedLoggerSession=blank; rbx-ip2=blank; RBXSessionTracker=sessionid=blank' \
  -H 'dnt: 1' \
  -H 'priority: u=0, i' \
  -H 'sec-ch-ua: ""' \
  -H 'sec-ch-ua-mobile: ' \
  -H 'sec-ch-ua-platform: ""' \
  -H 'sec-fetch-dest: document' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-site: none' \
  -H 'sec-fetch-user: ?1' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: ' \
  --output build$i.rbxl;
echo Finished download for version $i, sleeping for 3 seconds;
sleep 3;
done
