#!/bin/sh

find $1 -exec sh -c "chown $2 {} & chgrp $2 {}" \;
