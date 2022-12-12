import requests 

textToSearch = input('What to search for?')
searchResultsNumber = input('How many link to display (max 100)')

# searchResultsNumber can be either a number from 1 to 100, else keep it to 0
if (not searchResultsNumber.isnumeric()) or (int(searchResultsNumber) == 0):
    searchResultsNumber = 8

# getting google custom search api
cseKey = 'YOUR_API_KEY'
cseKey = 'AIzaSyDWrP3mPgPSmfwrccIbKQX1NaOQFca32pk'
cseID = 'YOUR_SEARCH_ENGINE_ID'
cseID = '8242220d228744b85'
url = 'https://www.googleapis.com/customsearch/v1?key='\
    + cseKey + '&cx=' + cseID + '&q=' + textToSearch +\
    '&num=' + searchResultsNumber  
print(url)
r = requests.get(url)
#print(r.status_code)

# unicode links to make our web page
pageLinks = []

# create a list of links to display on the web page
# from the links list that google api returns
# first link is not in links list, but in items list
pageLinks.append(r.json()['items'][0]['link'])
for link in r.json()['items']:
    pageLinks.append(link['link'])    
# below code is for testing
 #    for linkSet in linkSets:
 #        f.write('<a href="%s"> %s </a> </br>' % \
 #               (link['link'], link['title']))
 #        pageLinks.append(link['link'])   
 # print('Here are the search results')
 # for item in r.json()['items']:
    # below prints all urls in search result
 #    print('title: ' + item['title'])
 #    print('link: ' + item['link'])
    # print('snippet: ' + item['snippet'])
    # print()

# insert the links from pageLinks into our html template        
html = """
<!DOCTYPE html>
<html>
     <head>
         <title>Search suggested links for %s </title>
         <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
     </head>
      <body>

          <h1 >Search results for %s</h1>

          <p> Links: </br>

         <a href="%s"> %d </a> </br></br></br>

          <a href="%s"> %d </a> </br></br></br>

          <a href="%s"> %d </a> </br></br></br>

          <a href="%s"> %d </a> </br></br></br>

          <a href="%s"> %d </a> </br></br></br>

          <a href="%s"> %d </a> </br></br></br>

          <a href="%s"> %d </a> </br></br></br>

          <a href="%s"> %d </a> </br></br></br>

          </p>              
     </body>
</html>
""" % (textToSearch, textToSearch, pageLinks[0], 1,
       pageLinks[1], 2,
       pageLinks[2], 3,
       pageLinks[3], 4,
       pageLinks[4], 5,
       pageLinks[5], 6,
       pageLinks[6], 7,
       pageLinks[7], 8)
# if we have a number of results >= 9,
# then we have 9 links
# till number of results <= 7, we have 8 links
if int(searchResultsNumber) >= 9:
    html = html.replace('</br></br></br>', '')
    # to replace this one by one

try:
    htmlFile = open('search.html', 'w')
    htmlFile.write(html)
    htmlFile.close()
except Exception as error:
    print('Error: ', error)
