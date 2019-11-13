## greet
* greet
  - utter_greet

## happy path               <!-- name of the story - just for debugging -->
* greet              
  - utter_greet
* mood_great               <!-- user utterance, in format _intent[entities] -->
  - utter_happy

## sad path 1               <!-- this is already the start of the next story -->
* greet
  - utter_greet             <!-- action of the bot to execute -->
* mood_unhappy
  - utter_cheer_up
  - utter_did_that_help
* mood_affirm
  - utter_happy

## sad path 2
* greet
  - utter_greet
* mood_unhappy
  - utter_cheer_up
  - utter_did_that_help
* mood_deny
  - utter_goodbye

## say goodbye
* goodbye
  - utter_goodbye

## chitchat
* ask_weather OR ask_howdoing OR ask_howold OR ask_restaurant OR ask_time
  - action_chitchat

## more chitchat
* greet
  - utter_greet
* ask_weather OR ask_howdoing OR ask_howold OR ask_restaurant OR ask_time
  - action_chitchat
* ask_weather OR ask_howdoing OR ask_howold OR ask_restaurant OR ask_time
  - action_chitchat

## thanks
* thanks
  - utter_thanks
  - utter_anything_else

## out of scope
* out_of_scope
  - utter_out_of_scope
  - utter_possibilities

## out of scope + out of scope
* out_of_scope
  - utter_out_of_scope
  - utter_possibilities
* out_of_scope OR mood_deny
  - utter_default
