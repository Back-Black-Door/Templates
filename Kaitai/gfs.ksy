meta:
  id: gfs
  endian: be

seq:
  - id: data_offset
    type: u4
  - id: file_identifier_length
    type: u8
  - id: file_identifier
    type: str
    encoding: ASCII
    size: file_identifier_length
  - id: file_version_length
    type: u8
  - id: file_version
    type: str
    encoding: ASCII
    size: file_version_length
  - id: count_of_files
    type: u8
  - id: files_meta_data
    type: file_meta
    repeat: expr
    repeat-expr: count_of_files
  - id: file_data
    size: files_meta_data[_index].file_size
    repeat: expr
    repeat-expr: count_of_files
    
types:
  file_meta:
    seq:
      - id: file_path_length
        type: u8
      - id: reference_path
        type: str
        encoding: ASCII
        size: file_path_length
      - id: file_size
        type: u8
      - id: reference_alignment
        type: u4