#!/bin/sh
jupyter notebook --port=${NOTEBOOK_PORT} --ip=* --no-browser -y --notebook-dir=${DATA_DIR}
