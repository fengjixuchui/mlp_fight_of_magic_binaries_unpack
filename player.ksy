meta:
  id: player_file
  file-extension: player
  application: Game fight of magic
  endian: le
  license: MIT
seq:
  - id: magic
    type: str
    size: 16
    encoding: ASCII
  - id: player_n
    type: str
    encoding: ASCII
    size: 128
  - id: path
    type: str
    encoding: ASCII
    size: 128
  - id: filenum
    type: u4
  - id: files
    type: file
    repeat: expr
    repeat-expr: filenum
  - id: imgnum
    type: u4
  - id: images
    type: imgbuf
    repeat: expr
    repeat-expr: imgnum
  - id: defpalette
    size: 8448
types:
  file:
    seq:
      - id: name
        type: str
        encoding: ASCII
        size: 19
      - id: indexbeg
        type: u4
      - id: unc1
        type: u4
      - id: unc2
        type: u4
      - id: unc3
        type: u8
  imgbuf:
    seq:
      - id: pvoid
        type: u4
      - id: w
        type: u4
      - id: h
        type: u4
      - id: haspalette
        type: u1
      - id: imgsize
        type: u1
      - id: imgbuf_data
        size: imgsize