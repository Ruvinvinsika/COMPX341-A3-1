# Ruvin Kokuhennadige
# 1541447
echo "(0) upadte all .ts file with nmae and id"
shopt -s globstar
for filename in **/*.ts; do
    sed -i '1i//Ruvin Kokuhennadige 1541447' "$filename"
done
  