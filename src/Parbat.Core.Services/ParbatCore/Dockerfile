from mcr.microsoft.com/dotnet/core/aspnet:2.1-alpine as base
workdir /app
expose 80
expose 443

from mcr.microsoft.com/dotnet/core/sdk:2.1 as build
workdir /app

copy . ./
run dotnet publish ParbatCore -c release -o out

from base as final
workdir /app
copy --from=build /app/ParbatCore/out .

entrypoint ["dotnet","ParbatCore.dll"]

