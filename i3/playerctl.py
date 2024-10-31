#!/usr/bin/env python3
import json
import subprocess
import sys

def get_current_music_title():
    status = subprocess.getoutput("playerctl metadata --format ' {{status}} '")
    title = subprocess.getoutput("playerctl metadata --format '- {{ trunc(title,20) }} {{ duration(position) }}|{{ duration(mpris:length) }} ' ")
    if 'No players found' in title:
        return ""
    return status+title

def print_line(message):
    """ Non-buffered printing to stdout. """
    sys.stdout.write(message + '\n')
    sys.stdout.flush()


def read_line():
    """ Interrupted respecting reader for stdin. """
    # try reading a line, removing any extra whitespace
    try:
        line = sys.stdin.readline().strip()
        # i3status sends EOF, or an empty line
        if not line:
            sys.exit(3)
        return line
    # exit on ctrl-c
    except KeyboardInterrupt:
        sys.exit()


if __name__ == '__main__':
    # Skip the first line which contains the version header.
    print_line(read_line())

    # The second line contains the start of the infinite array.
    print_line(read_line())

    while True:
        line, prefix = read_line(), ''

        # ignore comma at start of lines
        if line.startswith(','):
            line, prefix = line[1:], ','
        j = json.loads(line)

        music_title = get_current_music_title()
        # this is where the magic happens
        # https://i3wm.org/docs/i3bar-protocol.html
        j.insert(0, {
            'full_text': '%s' % music_title,
            'color': '#000000',
            'name': 'music_title',
            'separator_block_width': 25})

        print_line(prefix+json.dumps(j))
