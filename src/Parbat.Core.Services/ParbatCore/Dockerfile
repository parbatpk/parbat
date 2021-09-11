from mcr.microsoft.com/dotnet/aspnet:2.1 AS base
workdir /app
expose 80
expose 443

from mcr.microsoft.com/dotnet/sdk:2.1 AS build
workdir /app

copy . ./
run dotnet publish src/Parbat.Core.Services/ParbatCore -c release -o out

from base as final
workdir /app
copy --from=build /app/src/Parbat.Core.Services/ParbatCore/out .

entrypoint ["dotnet","ParbatCore.dll"]

