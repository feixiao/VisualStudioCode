cmake_minimum_required(VERSION 3.16)
project(QtInWSL VERSION 0.1 LANGUAGES CXX)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
find_package(Qt5 REQUIRED COMPONENTS Quick)


qt5_add_resources(QML_RESOURCES qt_quick.qrc)
add_executable(appQt
    main.cpp
    ${QML_RESOURCES}
)

# 解决方法：如果你用的是 Qt5，直接删除 qt_add_qml_module 相关内容即可，QML 文件会被 Qt5::Quick 自动加载，不需要专门注册模块。
target_link_libraries(appQt
    PRIVATE Qt5::Quick
)
include(GNUInstallDirs)
install(TARGETS appQt
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)