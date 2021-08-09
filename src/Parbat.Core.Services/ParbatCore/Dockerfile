from microsoft/dotnet:2.1-aspnetcore-runtime AS base
workdir /app
expose 80
expose 443

from microsoft/dotnet:2.1-sdk AS build
workdir /app

copy . ./
run dotnet publish ParbatCore -c release -o out

from base as final
workdir /app
copy --from=build /app/ParbatCore/out .

entrypoint ["dotnet","ParbatCore.dll"]

