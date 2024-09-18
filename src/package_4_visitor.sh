#!/bin/sh

set -o nounset
set -o errexit

set -e

. ./.env

timestamp()
{
    TIMESTAMP="$(date +%Y%m%d-%H%M%S)"
    echo ${TIMESTAMP}
}
TIME=$(timestamp)


echo "Packaging ${VISITOR_DIR}..."

rm -rf ${VISITOR_DIR}


cp -a ./visitor ${VISITOR_DIR}/
cp -a ./cfgs ${VISITOR_DIR}/
cp -a  ${CERTS_DIR} ${VISITOR_DIR}/
cp ./frpc_entrypoint.sh ${VISITOR_DIR}/

tree -a ${VISITOR_DIR}

tar -zcf "${VISITOR_DIR}_${TIME}.tar.gz" ${VISITOR_DIR}

echo "${VISITOR_DIR} has been packaged to $(realpath ${VISITOR_DIR}_${TIME}.tar.gz) successfully."

