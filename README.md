# Setup J Composite Action

This action installs the J interpreter for running J code.
Only works on Unix runners.

## Inputs

### `j-version`

**Required** The version of J to install. Default `"903"`.

## Example Usage

```yaml
uses: IbzanHyena/setup-j@v1
with:
  j-version: "903"
```

