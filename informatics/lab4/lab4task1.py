
#var 21
#JSON to YAML

import yaml
import json

def convert():
    f = open("schedule.json", mode='r+', encoding='utf-8')
    text = json.loads(f.read())
    f.close()

    text = yaml.dump(text)

    f = open("scheduleLibrary.yml", mode="w", encoding='UTF-8')
    f.write(text)
    f.close()

if __name__ == '__main__':
    convert()
