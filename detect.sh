#!/usr/bin/env bash
# detect <build-dir>

valid=false
for x in $(find $1 -maxdepth 5 -iname "*.csproj");
do 
    if [ -n "$(grep "Microsoft.NET.Sdk.Web" $x)" ]; then
        valid=true
    fi
done

if [ $valid = 'true' ]; then scmd

    echo "dotnet6" && exit 0
else
    echo "none" && exit 1
fi


