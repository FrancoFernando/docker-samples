FROM mcr.microsoft.com/azure-sql-edge:latest

USER root

# Create db directory
RUN mkdir -p /usr/src/db
WORKDIR /usr/src/db

# Install ping that will be used to keep the container up
RUN apt-get update && apt-get install -y iputils-ping

COPY . .

# Grant permissions for the import-data and entrypoint scripts to be executable
RUN chmod +x /usr/src/db/import-data.sh
RUN chmod +x /usr/src/db/entrypoint.sh

CMD ./entrypoint.sh
