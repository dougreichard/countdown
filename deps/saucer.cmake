

include(FetchContent)
# This is have us -D 
# set(FETCHCONTENT_QUIET FALSE)

FetchContent_Declare(
    saucer
    GIT_REPOSITORY "https://github.com/saucer/saucer.git"
    GIT_TAG "v2.3.0"
    GIT_PROGRESS TRUE
)

FetchContent_MakeAvailable(saucer)

