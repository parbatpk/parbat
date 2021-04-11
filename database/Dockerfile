from mcr.microsoft.com/mssql/server:2019-latest
ENV SA_PASSWORD MyPass@1234
ENV ACCEPT_EULA Y

copy ./database /
copy ./database/scripts/CreateDB.sql /setup.sql
copy ./database/scripts/combine_sps.sql /

ENTRYPOINT ["/bin/bash","entrypoint.sh"]
CMD ["/opt/mssql/bin/sqlservr"]

