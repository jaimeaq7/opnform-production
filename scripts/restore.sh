#!/bin/bash
source ../.env

# Restaurar opnform
docker run --rm -v opnform-data:/data -v $BACKUP_DIR:/backup alpine tar xzf /backup/$BACKUP_NAME -C /data
