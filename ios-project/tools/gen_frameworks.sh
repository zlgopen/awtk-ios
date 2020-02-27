awk '{print "find_library("toupper($1)" "$1")"}' frameworks
awk '{print "target_link_libraries(${APP_NAME} ${" toupper($1)"})"}' frameworks
