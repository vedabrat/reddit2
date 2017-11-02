[5] pry(#<Post>):1> nesting
Nesting status:
--
0. main (Pry top level)
1. #<Post>
[6] pry(#<Post>):1>
[7] pry(#<Post>):1> self.to_s
=> "#<Post:0x0055edeb097cc8>"
[8] pry(#<Post>):1> self.title
=> "first Post"
[9] pry(#<Post>):1> self.body
=> "this is my first post for reddit2"
[10] pry(#<Post>):1> self.changes
=> {}
[11] pry(#<Post>):1> seslf.title = 'butts are friends not food'
NameError: undefined local variable or method `seslf' for #<Post:0x0055edeb097cc8>
from /home/vedabrat/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/activemodel-4.2.5/lib/active_model/attribute_methods.rb:433:in `method_missing'
[12] pry(#<Post>):1> self.title = 'butts are friends not food'
=> "butts are friends not food"
[13] pry(#<Post>):1> self.body = "look at my body. you like looking dont you?"
=> "look at my body. you like looking dont you?"
[14] pry(#<Post>):1> self.changes
=> {"title"=>
  ["first Post", "butts are friends not food"],
 "body"=>
  ["this is my first post for reddit2",
   "look at my body. you like looking dont you?"]}
[15] pry(#<Post>):1> self.save!
   (0.2ms)  begin transaction
  SQL (1.7ms)  UPDATE "posts" SET "title" = ?, "body" = ?, "updated_at" = ? WHERE "posts"."id" = ?  [["title", "butts are friends not food"], ["body", "look at my body. you like looking dont you?"], ["updated_at", "2017-11-02 17:23:14.360912"], ["id", 1]]
   (109.5ms)  commit transaction
=> true
[16] pry(#<Post>):1>
