# Anagrams and Antigrams

#### Epicodus Ruby Independent Project: June 29th, 2018

#### Nate Cottle

## Description

A program that will let the user know if a word is anagram or an antigram.

## Setup/Contribution Requirements

1. Clone repo
1. Make new branch
1. Add changes
1. Push to public repo

## Technologies Used

* Ruby 2.2.2

## Specs/Steps

* Program will check if words are anagrams
  * Input: 'ruby', 'bury'
  * Output: true

* Program will check if words are antigrams
  * Input: 'hi', 'bye'
  * Output: 'is Antigram'

* Program will account for different letter casing
  * Input: 'Tea', 'Eat'
  * Output: tea, eat

* Program will account for different word lengths
  * Input: 'Teas', 'eat'
  * Output: 'These words are different lengths'

* Program will remove punctuation and other special characters
  * Input: 'Ru,By!', 'Bu9ry.'
  * Output: 'RuBy', 'Bury'

* Program will check if both words have vowels
  * Input: 'ruby', 'bvry'
  * Output: false

* Program will check if phrases are anagrams
  * Input: 'O, DRACONIAN DEVIL', 'LEONARDO DA VINCI'
  * Output: True

* Program will check if phrases are Antigrams
  * Input: 'jumpy brick', 'glent vozhd'
  * Output: 'is Antigram'

## License

This software is licensed under the MIT license.

Copyright (c)2018 **Nate Cottle**
