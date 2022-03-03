TEMPLATE = subdirs

SUBDIRS = common
!android:!ios:!winrt {
  SUBDIRS +=
!no-widgets {
  SUBDIRS += player

contains(QT_CONFIG, opengl): SUBDIRS +=

  player.depends += common

}
}



OTHER_FILES = qml/*.qml
