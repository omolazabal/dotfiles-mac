
FLAGS = [
    '-Wall',
    '-Wextra',
    '-Wconversion',
    '-fexceptions',
    '-ferror-limit=10000',
    '-DNDEBUG',
    '-xc++',
    '-std=c++14',
    ]


def FlagsForFile(filename, **kwargs):
    return {
        'flags': FLAGS
    }
