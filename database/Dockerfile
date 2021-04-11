from mcr.microsoft.com/mssql/server:2019-latest
env SA_PASSWORD: "MyPass@1234"
env ACCEPT_EULA: "Y"

copy ./database /

ENTRYPOINT ["/bin/bash","entrypoint.sh"]
CMD ["/opt/mssql/bin/sqlservr"]

