## greet + search course by cooking category
* greet
  - utter_greet
* search_course
  - utter_search_course
* enter_data{"cooking_category": "cooking"}
  - utter_ask_cooking_sub_category
* enter_data{"cooking_sub_category": "Chinese food"}
  - action_search_course

## greet + search course by sport category
* greet
  - utter_greet
* search_course
  - utter_search_course
* enter_data{"sports_category": "sports"}
  - utter_ask_sports_sub_category
* enter_data{"sports_sub_category": "swimming"}
  - action_search_course

## greet + search course by sub-category
* greet
  - utter_greet
* search_course
  - utter_search_course
* enter_data{"cooking_sub_category": "Chinese food"} OR enter_data{"sports_sub_category": "swimming"}
  - action_search_course

## greet + say enter data outside the flows
* greet
  - utter_greet
* search_course
  - utter_search_course
* enter_data
  - utter_no_course
* thanks
  - utter_thanks
