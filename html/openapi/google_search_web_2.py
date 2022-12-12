"""
make a simple web page with google search api
"""
__author__ = 'shane'

from google import search

import webbrowser


class Browser():
    def __init__(self):
        self.__urls = []

    # search the google api and record links first 30 are save
    def en_Google(self, srch):
        for url in search(
                        srch,
                        num=30,
                        start=0,
                        stop=30,
                        pause=2.0):
            self.__urls.append(url)

    # makes web browser
    def de_google(self):
        f = open('webbrowser.html', 'w')
        for each in self.__urls:
            if self.run_html(each):
                temp = """<a href='{0}'>{1}</a><br>
                """.format(each, each.split('.')[1])
                f.write(temp)
        f.close()
        f = 'file://' + f.name
        webbrowser.open(f, new=2)

    # sanitize the web page input
    @staticmethod
    def run_html(html):
        if 'http' not in html and '.html' not in html:
            return True
        else:
            return False



"""
TESTING AREA
"""
myb = Browser()
myb.en_Google('stackoverflow')
myb.de_google()
