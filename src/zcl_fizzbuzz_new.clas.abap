CLASS zcl_fizzbuzz_new DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    METHODS: thinking IMPORTING iv_num             TYPE int2
                      RETURNING VALUE(rv_res_word) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS: divider_exam IMPORTING iv_num         TYPE int2
                          RETURNING VALUE(rv_word) TYPE string,
      is_three_divider IMPORTING iV_num          TYPE int2
                       RETURNING VALUE(rv_three) TYPE string,
      is_five_divider  IMPORTING iV_num         TYPE int2
                       RETURNING VALUE(rv_five) TYPE string.
ENDCLASS.

CLASS zcl_fizzbuzz_new IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA lv_count TYPE int2 VALUE 1.

    DO 100 TIMES.
      out->write( thinking( lv_count ) ).
      lv_count += 1.
*      out->write('Test output').
    ENDDO.
  ENDMETHOD.

  METHOD is_three_divider.
    DATA(lv_mod) = iV_num MOD 3.
    IF lv_mod EQ 0.
      rv_three = 'Fizz'.
    ENDIF.
  ENDMETHOD.

  METHOD is_five_divider.
    DATA(lv_mod) = iV_num MOD 5.
    IF lv_mod EQ 0.
      rv_five = 'Buzz'.
    ENDIF.
  ENDMETHOD.

  METHOD divider_exam.
    rv_word = is_three_divider( iv_num ) && is_five_divider( iv_num ).
  ENDMETHOD.

  METHOD thinking.
    DATA(lv_result) = divider_exam( iv_num ).
    IF lv_result IS NOT INITIAL.
      rv_res_word = lv_result.
    ELSE.
      rv_res_word = iv_num.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
