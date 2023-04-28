OUTPUT_FORMAT("elf32-littlearm")
OUTPUT_ARCH(arm)
ENTRY(main)
SECTIONS
{
   . = LOAD_ADDR;

   .text : {
       *(.entry)
       *(.text)
   }

   /* always end on a word boundary for our copy */
   . = ALIGN(4);

   /DISCARD/ : { *(.dynstr*) }
   /DISCARD/ : { *(.dynamic*) }
   /DISCARD/ : { *(.plt*) }
   /DISCARD/ : { *(.interp*) }
   /DISCARD/ : { *(.gnu*) }
   /DISCARD/ : { *(.data*) }
}
