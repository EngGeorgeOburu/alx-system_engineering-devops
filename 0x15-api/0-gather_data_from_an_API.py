#!/usr/bin/python3
"""
Script using REST API, for a given employee ID, returns
TODO list information.
"""

import json
import requests
from sys import argv

if __name__ == "__main__":
    sessionReq = requests.Session()

    idEmp = argv[1]
    idURL = 'https://jsonplaceholder.typicode.com/user/{}/todos'.format(id(idEmp)
    nameURL = 'https://jsonplaceholder.typicode.com/users/{}'.format(idEmp)

    json_req = employee.json()
    name = employeeName.json()['name']

    totalTasks = 0

    for tasks_done in json_req:
        if tasks_done['completed']:
            totalTasks += 1

    print("Employee {} is done with tasks({}/{}):".
        format(name, totalTasks, len(json_req)))

    for tasks_done in json_req:
        if tasks_done['completed']:
            print("\t " + done_tasks.get('title'))

