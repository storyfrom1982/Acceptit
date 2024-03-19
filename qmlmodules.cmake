if(NOT EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/Qaterial)
    # 如果项目不存在，则执行 git clone 命令
    execute_process(
        COMMAND git clone -b qt6.7 git@github.com:storyfrom1982/Qaterial.git
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
        RESULT_VARIABLE result
    )
    if(result)
        message(FATAL_ERROR "Failed to clone Qaterial")
    endif()
endif()


add_subdirectory(Qaterial)
target_link_libraries(Acceptit PRIVATE Qaterial Qaterialplugin)

add_subdirectory(Gallery)
target_link_libraries(Acceptit PRIVATE Gallery Galleryplugin)
