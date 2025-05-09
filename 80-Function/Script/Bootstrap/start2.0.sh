#!/bin/bash

./ShadowsocksR-dotnet4.0.exe.lnk

cd /e/A/Mornczp/Mornczp2.0;
echo "start to pull"
git fetch --all && git reset --hard origin/main && git pull;

# cd /d/A/Learning/MornczpDatabase;
cd /d/A/Learning/Mornczp/Mornczp2.0;
echo "start to pull"
git fetch --all && git reset --hard origin/main && git pull;



