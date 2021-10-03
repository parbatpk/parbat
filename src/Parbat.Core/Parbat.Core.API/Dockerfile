#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY ["Parbat.Core.API/Parbat.Core.API.csproj", "Parbat.Core.API/"]
COPY ["Parbat.Core.DataObjects/Parbat.Core.DataObjects.csproj", "Parbat.Core.DataObjects/"]
COPY ["Parbat.Core.Services/Parbat.Core.Services.csproj", "Parbat.Core.Services/"]
COPY ["Parbat.Core.BaseRepository/Parbat.Core.BaseRepository.csproj", "Parbat.Core.BaseRepository/"]
COPY ["Parbat.Core.DBRepository/Parbat.Core.DBRepository.csproj", "Parbat.Core.DBRepository/"]
COPY ["Parbat.Data/Parbat.Data.csproj", "Parbat.Data/"]
RUN dotnet restore "Parbat.Core.API/Parbat.Core.API.csproj"
COPY . .
WORKDIR "/src/Parbat.Core.API"
RUN dotnet build "Parbat.Core.API.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Parbat.Core.API.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Parbat.Core.API.dll"]