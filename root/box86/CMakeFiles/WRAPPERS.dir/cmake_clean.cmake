file(REMOVE_RECURSE
  "CMakeFiles/WRAPPERS"
  "../src/wrapped/generated/functions_list.txt"
  "../src/wrapped/generated/wrapper.c"
  "../src/wrapped/generated/wrapper.h"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/WRAPPERS.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
