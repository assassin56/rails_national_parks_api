# _National Parks_
## _By: Antonio Cruz_
## Description
_This is an API for a National Park search service that allows users to append and edit objects in the database. Currently, there is no UI to accompany this app._

## Setup

1. If you would like to view this project locally... :

2. Visit this link https://github.com/assassin56/rails_national_parks_api
 
3. Clone this repo by selecting the "clone or download" button. This will allow you to copy the repo's link.

4. While on the command line in your terminal, enter "git clone" followed by the copied url.

5. Enter "ls" to show a list of files and documents. One of them will be labeled "rails_national_parks_api". Use "cd" followed by the project directory name to navigate there.

6. While in project directory, run the command "rails s"

7. Type in your browser the url "localhost:3000" to access the page.

8. Utilize Postman to make the API calls from the provided URL.

## Known Bugs
_N/A_

## Technology

* _Git_
* _GitHub_
* _Gem_
* _Ruby_
* _Rspec_
* _Rails_
* _Puma_
* _Pry_
* _Bootstrap_


## Specs

| Method Action | Endpoint |
|---|---|
| GET list of all national parks | localhost:3000/national_parks |
| GET a national park by its id | localhost:3000/national_parks/[national_park_id] |
| POST a new national park | localhost:3000/national_parks?national_park=[national_park_param]&state=[state_param]| 
| PUT/PATCH | 	localhost:3000/national_parks?national_park=[new_national_park_param]&state=[new_state_param] |
| DELETE a national park record | localhost:3000/national_parks/[national_park_id]|


## Legal

#### MIT License

### Copyright (c) 2020 Antonio Cruz

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.