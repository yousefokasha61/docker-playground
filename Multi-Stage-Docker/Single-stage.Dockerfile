FROM microsoft/dotnet:2.2-sdk AS builder
WORKDIR /app

COPY . .
RUN dotnet restore
RUN dotnet publish --output /out/ --configuration Release

EXPOSE 80
ENTRYPOINT ["dotnet", "aspnet-core.dll"]