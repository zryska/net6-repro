# Introduction
This repository contains code to reproduce issue when .NET 6 based Windows service occasionaly fails to stop gracefully.

# Reproduction Steps
1. Publish the test application using VS 2022 or by running `dotnet publish -c release --self-contained -r win-x64` in `TestApp` folder
2. Create a new Windows service executing `sc crete ".NET6 Test" binpath={PathToPublishedExe}` as administrator
3. Start the Powershell script `repro.ps1` to start restarting the service the script relly on the service name being `.NET6 Test` when other service name is chosen it must be edited
4. Watch for errors in the event log => `Windows Logs -> System` there will be message like this: `The .NET6 Test service terminated unexpectedly.  It has done this 3 time(s).`
