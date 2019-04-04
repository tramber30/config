#!/bin/bash
sed -E '/^(Comment|Name|GenericName)\[.*\]=.*/d' -i $1
sed 's/(c|C)alc/cluc/g' -i $1
