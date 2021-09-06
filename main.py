# -*- coding: utf-8 -*-
"""
@File    : main.py
@Time    : 2021/9/1 1:45 下午
@Author  : xxlaila
@Software: PyCharm
"""

import string

def disknum(num=0):
    resutl = {}
    if num == 1:
        resutl["/dev/vdb"] = "/data"
    else:
        for k, v in zip(range(1, (num+2)), string.ascii_lowercase):
            if k == 1 or v in ["a", "b"]:
                resutl["/dev/vdb"] = "/data"
            else:
                resutl.update({"/dev/vd%s" % v: "/data%s" % (k - 2)})
    return resutl

if __name__ == "__main__":
    val = input("请输入磁盘快数: ")
    try:
        num = int(val)
        data = disknum(num)
        print(data)
    except ValueError:
        print("输入不是数字")