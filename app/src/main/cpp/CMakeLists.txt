cmake_minimum_required(VERSION 3.18.1)
project("sample")

set(EXEC bonnie.so)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_LIBRARY_OUTPUT_DIRECTORY}")
add_executable(${EXEC}
        bonnie++-1.04/bonnie++.cpp
        bonnie++-1.04/bon_file.cpp
        bonnie++-1.04/bon_io.cpp
        bonnie++-1.04/bon_suid.cpp
        bonnie++-1.04/bon_time.cpp
        bonnie++-1.04/forkit.cpp
        bonnie++-1.04/semaphore.cpp
        #bonnie++-1.04/zcav.cpp
        )

set(EXTRA_FLAG "-DANDROID -D__ARM__ -DIS_ANDROID=1 -DSEMUN_IN_SEM_H")
set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} ${EXTRA_FLAG}")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${EXTRA_FLAG}")
target_link_libraries(${EXEC} ${log-lib})
