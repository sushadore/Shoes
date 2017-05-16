## Shoe Distribution
Ruby Active Record exercise for Epicodus

By Susha Dore 5.12.2017
### Description

Saves records relating to stores and the brands they carry in a database using many-to-many relationships.

### Specifications
|Description|Input|Output|
|----------|:--------:|:---------|
|Supports addition, list, update & deletion of stores.|Susha's Shoes|Store List: Susha's Shoes|
|Supports addition, list, update & deletion of shoe brands including dollar formatted price.| Jandals, 20|Brands List: Jandals, $20.00|
|Stores and brands returned in titlecase.|susha's shoes|Susha's Shoes|
|Does not allow blank fields on input forms.| none | Error: Input for Brandname/Store can't be blank|
|Does not allow names to be more that 100 characters.|101 letter title|Error: Input for Brandname/Store 100 characters maximum|
|Does not allow duplicate names.| Create: Susha's Shoes|Error: Input for Brandname/Store has already been taken

## Requirements
* ES6 compatible browser
* Ruby
* Sinatra
* Active Record
* Postgres

## Setup
This is an unpublished page but a browser preview is available with the following instructions. Each instruction formatted `like this` should be typed verbatim or copy/pasted and executed by hitting the 'return' key.
#### Browser preview:
  * Open terminal
  * `cd desktop`
  * `git clone https://github.com/sushadore/Shoes`
  * `cd shoes`
  * `atom .`
  * `ruby app.rb`
  * Open browser
  * For the URL run `localhost:4567`

## Contact
Email with questions or comments: susha.dore@gmail.com
## Technologies
 Ruby, Active Record, Postgres, Sinatra, Rubygem, HTML, Bootstrap
## Legal
MIT license

Copyright (c) 2017 Susha Dore
