#!/usr/bin/env python3

import sys
import re

with open(sys.argv[1]) as f:
    text = f.read()

p = re.compile(r"\[\[(.*)\|media/(.*)\]\]")
text = p.sub(r'<a href="media/\2"><img alt="\1" src="media/thumb-\2"/></a>', text)

with open(sys.argv[1], 'w') as f:
    f.write(text)

