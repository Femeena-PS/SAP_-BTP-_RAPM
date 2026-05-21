CLASS zcl_ats_fm_first_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_ATS_FM_FIRST_CLASS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  "write 'welcome to aoc'.
    select * from I_Country into table @data(itab).

    "Ctrl+space and Shift+Enter for code completion
    out->write(
      EXPORTING
        data   = itab
*        name   =
*      RECEIVING
*        output =
    ).

  ENDMETHOD.
ENDCLASS.
