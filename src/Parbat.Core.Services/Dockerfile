from mcr.microsoft.com/dotnet/core/aspnet:2.1 as base
workdir /app

ENV ASPNETCORE_URLS=http://*:5000

expose 80
expose 5000

from mcr.microsoft.com/dotnet/core/sdk:2.1 as build
workdir /app

copy . ./
run dotnet publish ParbatCore -c release -o out

from base as final
workdir /app
copy --from=build /app/ParbatCore/out .

entrypoint ["dotnet","ParbatCore.dll"]

