from django.http import HttpResponse
import os
import pyautogui
import time


def index(request):
    os.popen("shutdown /i")
  #  pyautogui.screenshot('soja.jpeg')
    return HttpResponse("Shutdown")
