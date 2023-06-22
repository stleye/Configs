
import os
import sys

def localOVSDK():
	localPod('ovsdk', os.getenv('OVSDK'))

def localAlexa():
	localPod('OVAlexa', os.getenv('OVALEXA'))

def localOVToolbox():
  localPod('OVToolbox', os.getenv('OVTOOLBOX'))

def localPod(pod_name, pod_directory):
	filename = "Podfile"
	line_number = find_line_number(filename, "pod '{}',".format(pod_name))
	new_line = "pod '{}',                  :path => '{}'\n".format(pod_name, pod_directory)
	replace_line(filename, line_number, new_line)


def find_line_number(file_name, text):
  with open(file_name, "r") as f:
    for line_number, line in enumerate(f):
      if text in line:
        return line_number + 1

  return -1


def replace_line(file_name, line_number, new_line):
  with open(file_name, "r+") as f:
    lines = f.readlines()
    lines[line_number - 1] = new_line
    f.seek(0)
    f.writelines(lines)



function = sys.argv[1]

if function == 'localOVSDK':
	localOVSDK()
elif function == 'localAlexa':
	localAlexa()
elif function == 'localOVToolbox':
  localOVToolbox()
