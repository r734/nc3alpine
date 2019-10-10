FROM mcr.microsoft.com/dotnet/core/sdk:3.0-alpine3.9 as builder

COPY nc3alpine.sln .
COPY nc3alpine/ nc3alpine/

RUN dotnet publish -r linux-musl-x64 -c Release -o ./deploy

FROM mcr.microsoft.com/dotnet/core/runtime-deps:3.0-alpine3.9

COPY --from=builder /deploy .

ENTRYPOINT ["./nc3alpine"]