GUIDE TO RUN TEST CASE
1. Import library
    pip3 install -r LibraryImport.txt

2. Run test case
    robot -d Results ./TestCase/Add_To_Cart.robot

3. Project stucture
3.1 Folder ./Keywords
+ ./Keywords/Page: contains keywords of each pages
+ ./Keywords/Common.robot: contains common keywords of project
+ ./Keywords/Central.robot: contains keywords of Central website

3.2 Folder ./Resources
+ ./Resources/Data: contains web url, browser name, search term
+ ./Resources/Locator: contains all web elements
+ ./Resources/import.robot: contains all library, resources link of project

3.3 Folder ./Results
- Contains test report

3.4 Folder ./TestCase
- Contains test case file of project

4. Test case flow
    1. Go to website https://www.central.co.th/en
    2. Search for keyword "TV"
    3. Select filter brand name "Sony"
    4. In search result page, select random 01 sony tv and add to cart
    5. Select filter for price < 50000
    6. Add first product from search result to cart