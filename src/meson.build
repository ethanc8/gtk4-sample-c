gtk4_sample_c_sources = [
  'main.c',
  'gtk4-sample-c-application.c',
  'gtk4-sample-c-window.c',
]

gtk4_sample_c_deps = [
  dependency('gtk4'),
]

gtk4_sample_c_sources += gnome.compile_resources('gtk4-sample-c-resources',
  'gtk4-sample-c.gresource.xml',
  c_name: 'gtk4_sample_c'
)

executable('gtk4-sample-c', gtk4_sample_c_sources,
  dependencies: gtk4_sample_c_deps,
       install: true,
)
