#!/usr/bin/env bash
# detect <build-dir>

for x in $(find $1 -maxdepth 5 -iname "*.csproj");
do 
    if [ -n "$(grep "Microsoft.NET.Sdk.Web" $x)" ]; then
        directory=$x
    fi
done

echo "Found WebAPI project directory in $x"
echo
echo Restoring project
echo
dotnet restore $directory
echo
echo Restoring project
echo
dotnet build $directory

