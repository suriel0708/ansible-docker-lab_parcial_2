#!/bin/bash

# Iniciar SSH
service ssh start

# Iniciar Nginx
service nginx start

# Evitar que el contenedor se cierre
tail -f /dev/null
