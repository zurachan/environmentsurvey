#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 8080
#EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY ["EnvironmentSurvey.WebAPI/EnvironmentSurvey.WebAPI.csproj", "EnvironmentSurvey.WebAPI/"]
RUN dotnet restore "EnvironmentSurvey.WebAPI/EnvironmentSurvey.WebAPI.csproj"
COPY . .
WORKDIR "/src/EnvironmentSurvey.WebAPI"
RUN dotnet build "EnvironmentSurvey.WebAPI.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "EnvironmentSurvey.WebAPI.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "EnvironmentSurvey.WebAPI.dll"]