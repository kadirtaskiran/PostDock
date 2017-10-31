FROM postdock/postgres:latest-postgres96

ARG EXTENSIONS="postgis nominatim"

COPY ./bin/ /extensions_installer/
RUN chmod -R +x /extensions_installer/ && /extensions_installer/install.sh "$EXTENSIONS" && \
    rm -rf /extensions_installer/