meta:
  id: gbs
  file-extension: gbs
  endian: le
seq:
- id: gbsc_header
  type: str
  encoding: ASCII
  size: 4
- id: file_size
  type: u4
- id: data_version
  size: 4
- id: scene_id
  type: u4
- id: fonts_count
  type: u4
- id: textures_count
  type: u4
- id: sounds_count
  type: u4
- id: views_count
  type: u4
- id: messages_count
  type: u4
- id: unknow_count
  type: u4
- id: textures_offset
  type: u4
- id: sounds_offset
  type: u4
- id: view_offset
  type: u4
- id: messages_offset
  type: u4
- id: fonts
  type: font
  repeat: expr
  repeat-expr: fonts_count
- id: textures
  type: texture
  repeat: expr
  repeat-expr: textures_count
  
types:
  font:
    seq:
      - id: gfnt_lable
        type: str
        encoding: ASCII
        size: 4
      - id: font_lenght
        type: u4
      - id: font_id
        type: u4
      - id: font_name
        type: str
        encoding: ASCII
        size: 64
      - id: font_size
        type: u4
      - id: atlas_w
        type: u4
      - id: atlas_h
        type: u4
      - id: max_top
        type: u4
      - id: atlas_count
        type: u4
      - id: chars_count
        type: u4
      - id: chars
        type: char
        repeat: expr
        repeat-expr: chars_count
        
  char:
    seq:
      - id: char_code
        type: str
        encoding: ASCII
        size: 4
      - id: is_image_glyph
        type: u4
      - id: char_x_offset
        type: u4
      - id: char_y_offset
        type: u4
      - id: char_w
        type: u4
      - id: char_h
        type: u4
      - id: char_top
        type: u4
      - id: char_advance
        type: u4
      - id: char_left_bearning
        type: u4
      - id: char_atlas_index
        type: u4
        
  texture:
    seq:
      - id: id
        type: u4
      - id: path
        type: str
        encoding: ASCII
        size: 260
      - id: id_repeat
        type: u4
      - id: skip
        size: 16
    

  
