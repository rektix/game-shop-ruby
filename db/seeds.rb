User.create!([
  {email: "test@test.com", password: "testtest", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, admin: nil, computer_id: nil},
  {email: "admin@admin.com", password: "admin123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, admin: true, computer_id: nil}
])
Gpu.create!([
  {name: "qwfp", ram: 6},
  {name: "nvidia 1660s", ram: 6}
])
Comment.create!([
  {user_id: 2, game_id: 2, content: "123213tarst"},
  {user_id: 3, game_id: 2, content: "wqpqwfqwfp"},
  {user_id: 3, game_id: 2, content: "qwpfpqwffwqp"},
  {user_id: 2, game_id: 2, content: "aienrstniersaein"},
  {user_id: 2, game_id: 2, content: "qwpffpqwqfwp"},
  {user_id: 2, game_id: 2, content: "zxvczxcvxcv"},
  {user_id: 2, game_id: 1, content: "zvcxcxvzxcvz"},
  {user_id: 2, game_id: 1, content: "zxcvzxcv"}
])
Article.create!([
  {user_id: 3, title: "qwfpqwf", content: "rsetoastr"},
  {user_id: 2, title: "abcd", content: "qweifp"}
])
Genre.create!([
  {name: "RPG"},
  {name: "RTS"}
])
Cpu.create!([
  {name: "abcd", cores: 8},
  {name: "intel i5 8250u", cores: 4}
])
Computer.create!([
  {user_id: 1, cpu_id: 1, gpu_id: 1, ram: 8},
  {user_id: 2, cpu_id: 2, gpu_id: 2, ram: 24}
])
Game.create!([
  {name: "abcd", description: "aorsieroieas aroeisoaier", price: 20, studio_id: 1, genre_id: 1},
  {name: "Doom", description: "abcd", price: 20, studio_id: 1, genre_id: 2},
  {name: "qwfpqwfp", description: "arstrastrsta", price: 234, studio_id: 2, genre_id: 1}
])
Order.create!([
  {user_id: 3, game_id: 1}
])
Studio.create!([
  {name: "test1"},
  {name: "abcd"}
])
