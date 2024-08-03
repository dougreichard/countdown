

include(FetchContent)
# This is have us -D 
# set(FETCHCONTENT_QUIET FALSE)

FetchContent_Declare(
    countdowntimer
    GIT_REPOSITORY "https://github.com/dougreichard/CountDownTimer.git"
    GIT_TAG "master"
    GIT_PROGRESS TRUE
)

FetchContent_MakeAvailable(countdowntimer)

