
= exports.topic $ \ (store id)
  ... store
    setIn ([] :router :name) :topic
    setIn ([] :router :data :id) id

= exports.user $ \ (store id)
  ... store
    setIn ([] :router :name) :user
    setIn ([] :router :data :id) id
