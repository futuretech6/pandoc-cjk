# Pandoc CJK

To run Pandoc with CJK support:

```bash
docker run --rm -v "$(pwd):/data" futuretech6/pandoc-cjk \
    input.md \
    -o output.pdf \
    --pdf-engine=xelatex \
    -V CJKmainfont="Noto Sans CJK SC"  # fonts can be changed
```

Available fonts include:

```bash
docker run --rm --entrypoint=bash futuretech6/pandoc-cjk -c "fc-list | grep CJK"
```
