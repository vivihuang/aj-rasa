## learn cooking + enter cooking category
* learn_cooking_course
  - utter_ask_cooking_category
* enter_course_category{"cooking_category": "Chinese food"}
  - action_search_course

## learn course + learn cooking + enter cooking category
* learn_course
  - utter_learn_course
* learn_cooking_course
  - utter_ask_cooking_category
* enter_course_category{"cooking_category": "Chinese food"}
  - action_search_course

## learn sports + enter sports category
* learn_sports_course
  - utter_ask_sports_category
* enter_course_category{"sports_category": "swimming"}
  - action_search_course

## learn course + learn sports + enter sports category
* learn_course
  - utter_learn_course
* learn_sports_course
  - utter_ask_sports_category
* enter_course_category{"sports_category": "swimming"}
  - action_search_course

## enter category
* enter_course_category{"cooking_category": "Chinese food"} OR enter_course_category{"sports_category": "swimming"}
  - action_search_course

## search course + enter category
* learn_course
  - utter_learn_course
* enter_course_category{"cooking_category": "Chinese food"} OR enter_course_category{"sports_category": "swimming"}
  - action_search_course

## enter outside data + learn sports + enter sports data
* learn_other_course
  - utter_no_course
* learn_sports_course
  - utter_ask_sports_category
* enter_course_category{"sports_category": "swimming"}
  - action_search_course

## enter outside data + learn cooking + enter cooking data
* learn_other_course
  - utter_no_course
* learn_cooking_course
  - utter_ask_cooking_category
* enter_course_category{"cooking_category": "Chinese food"}
  - action_search_course

## learn course + enter outside data + enter cooking data
* learn_course
  - utter_learn_course
* learn_other_course
  - utter_no_course
* learn_cooking_course
  - utter_ask_cooking_category
* enter_course_category{"cooking_category": "Chinese food"}
  - action_search_course

## search course + enter outside data twice
* learn_other_course
  - utter_no_course
* learn_other_course
  - utter_no_course

## search course + enter outside data twice
* learn_course
  - utter_learn_course
* learn_other_course
  - utter_no_course
* learn_other_course
  - utter_no_course

## out of scope + affirm
* out_of_scope
  - utter_out_of_scope
  - utter_possibilities
* mood_affirm
  - utter_learn_course
