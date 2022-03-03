TEMPLATE = subdirs

SUBDIRS = common
!android:!ios:!winrt {
  SUBDIRS += audiopipeline
!no-widgets {
  SUBDIRS += player

contains(QT_CONFIG, opengl): SUBDIRS += \
    shader \
    glslfilter

  player.depends += common

}
}



OTHER_FILES = qml/*.qml
