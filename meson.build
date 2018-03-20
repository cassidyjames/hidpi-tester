project('com.github.cassidyjames.hidpi-tester', 'vala', 'c')

gnome = import('gnome')

executable(
  meson.project_name(),
  'src/Application.vala',
  'src/MainWindow.vala',
  dependencies: [
    dependency('glib-2.0'),
    dependency('gtk+-3.0'),
    meson.get_compiler('c').find_library('m', required : false)
  ],
  install: true
)

