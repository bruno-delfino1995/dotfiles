import json
import sys

def eprint(*args, **kwargs):
  """Print to stder instead of stdout by default"""
  print(*args, file=sys.stderr, **kwargs)

def reverse_hex(hex_str):
  """Reverse a hex foreground string into its background version."""

  hex_str = "".join([hex_str[i : i + 2] for i in range(0, len(hex_str), 2)][::-1])
  return hex_str

def format_scheme(scheme, slug):
  """Change $scheme so it can be applied to a template."""

  scheme["scheme-name"] = scheme.pop("scheme")
  scheme["scheme-author"] = scheme.pop("author")
  scheme["scheme-slug"] = slug
  bases = ["base{:02X}".format(x) for x in range(0, 16)]

  for base in bases:
    scheme["{}-hex".format(base)] = scheme.pop(base)
    scheme["{}-hex-r".format(base)] = scheme["{}-hex".format(base)][0:2]
    scheme["{}-hex-g".format(base)] = scheme["{}-hex".format(base)][2:4]
    scheme["{}-hex-b".format(base)] = scheme["{}-hex".format(base)][4:6]
    scheme["{}-hex-bgr".format(base)] = reverse_hex(scheme["{}-hex".format(base)])

    scheme["{}-rgb-r".format(base)] = str(int(scheme["{}-hex-r".format(base)], 16))
    scheme["{}-rgb-g".format(base)] = str(int(scheme["{}-hex-g".format(base)], 16))
    scheme["{}-rgb-b".format(base)] = str(int(scheme["{}-hex-b".format(base)], 16))

    scheme["{}-dec-r".format(base)] = str(
      int(scheme["{}-rgb-r".format(base)]) / 255
    )
    scheme["{}-dec-g".format(base)] = str(
      int(scheme["{}-rgb-g".format(base)]) / 255
    )
    scheme["{}-dec-b".format(base)] = str(
      int(scheme["{}-rgb-b".format(base)]) / 255
    )

def slugify(scheme_file_name):
  """Format $scheme_file_name to be used as a slug variable."""

  if scheme_file_name.endswith(".yaml"):
    scheme_file_name = scheme_file_name[:-5]

  return scheme_file_name.lower().replace(" ", "-")

if __name__ == "__main__":
  if len(sys.argv) != 3:
    eprint("You need to provide the json string and the filename")
    sys.exit(1)

  scheme = json.loads(sys.argv[1])
  slug = slugify(sys.argv[2])

  format_scheme(scheme, slug)

  print(json.dumps(scheme))
