#!/bin/bash
source ../.env

# Nombre del backup
BACKUP_NAME=opnform_$(date +\%Y-\%m-\%d-\%H.\%M.\%S).tar.gz

# Respaldar opnform
docker run --rm -v opnform-data:/data -v $BACKUP_DIR:/backup alpine tar czf /backup/$BACKUP_NAME -C /data .

#Buscamos y borramos backups antiguos a mas de 7 dias
find ${BACKUP_DIR} -type f -mtime +7 -name "${BACKUP_NAME}*" -delete

#Backup S3
#aws s3 --region ${REGION} sync --delete ${BACKUP_DIR} ${S3_BUCKET}