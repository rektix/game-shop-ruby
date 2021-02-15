User.create!([
  {id: 2, created_at: "2021-02-14 21:14:51", updated_at: "2021-02-15 15:38:03", email: "test@test.com", password: "testtest", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, admin: nil, computer_id: nil},
  {id: 3, created_at: "2021-02-14 22:22:22", updated_at: "2021-02-15 14:11:57", email: "admin@admin.com", password: "admin123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, admin: true, computer_id: nil}
])
Gpu.create!([
  {id: 1, name: "qwfp", ram: 6, created_at: "2021-02-14 18:58:13", updated_at: "2021-02-14 18:58:13"},
  {id: 2, name: "nvidia 1660s", ram: 6, created_at: "2021-02-14 22:30:27", updated_at: "2021-02-14 22:30:27"}
])
Cpu.create!([
  {id: 1, name: "abcd", cores: 8, created_at: "2021-02-14 18:58:00", updated_at: "2021-02-14 18:58:00"},
  {id: 2, name: "intel i5 8250u", cores: 4, created_at: "2021-02-14 22:30:17", updated_at: "2021-02-14 22:30:17"}
])
Studio.create!([
  {id: 1, name: "test1", created_at: "2021-02-14 18:58:58", updated_at: "2021-02-14 18:58:58"},
  {id: 2, name: "abcd", created_at: "2021-02-14 22:29:52", updated_at: "2021-02-14 22:29:52"}
])
Genre.create!([
  {id: 1, name: "RPG", created_at: "2021-02-14 18:59:07", updated_at: "2021-02-14 18:59:07"},
  {id: 2, name: "RTS", created_at: "2021-02-14 22:30:02", updated_at: "2021-02-14 22:30:02"}
])
Game.create!([
  {id: 1, name: "abcd", description: "aorsieroieas aroeisoaier", price: 20, studio_id: 1, genre_id: 1, created_at: "2021-02-14 18:59:12", updated_at: "2021-02-14 18:59:12"},
  {id: 2, name: "Doom", description: "abcd", price: 20, studio_id: 1, genre_id: 2, created_at: "2021-02-14 22:39:37", updated_at: "2021-02-15 12:50:01"},
  {id: 4, name: "qwfpqwfp", description: "arstrastrsta", price: 234, studio_id: 2, genre_id: 1, created_at: "2021-02-15 22:39:31", updated_at: "2021-02-15 22:39:31"}
])
Comment.create!([
  {id: 4, user_id: 2, game_id: 2, content: "123213tarst", created_at: "2021-02-15 11:28:35", updated_at: "2021-02-15 11:28:35"},
  {id: 5, user_id: 3, game_id: 2, content: "wqpqwfqwfp", created_at: "2021-02-15 11:45:03", updated_at: "2021-02-15 11:45:03"},
  {id: 6, user_id: 3, game_id: 2, content: "qwpfpqwffwqp", created_at: "2021-02-15 13:01:50", updated_at: "2021-02-15 13:01:50"},
  {id: 7, user_id: 2, game_id: 2, content: "aienrstniersaein", created_at: "2021-02-15 15:02:19", updated_at: "2021-02-15 15:02:19"},
  {id: 8, user_id: 2, game_id: 2, content: "qwpffpqwqfwp", created_at: "2021-02-15 15:02:36", updated_at: "2021-02-15 15:02:36"},
  {id: 9, user_id: 2, game_id: 2, content: "zxvczxcvxcv", created_at: "2021-02-15 15:11:35", updated_at: "2021-02-15 15:11:35"},
  {id: 10, user_id: 2, game_id: 1, content: "zvcxcxvzxcvz", created_at: "2021-02-15 15:11:43", updated_at: "2021-02-15 15:11:43"},
  {id: 11, user_id: 2, game_id: 1, content: "zxcvzxcv", created_at: "2021-02-15 15:13:15", updated_at: "2021-02-15 15:13:15"}
])
Article.create!([
  {id: 1, user_id: 3, title: "qwfpqwf", content: "rsetoastr", created_at: "2021-02-15 11:41:30", updated_at: "2021-02-15 11:41:30"},
  {id: 2, user_id: 2, title: "abcd", content: "qweifp", created_at: "2021-02-15 22:05:03", updated_at: "2021-02-15 22:05:03"}
])
Computer.create!([
  {id: 1, user_id: 3, cpu_id: 1, gpu_id: 1, ram: 8, created_at: "2021-02-14 18:58:22", updated_at: "2021-02-14 18:58:22"},
  {id: 3, user_id: 2, cpu_id: 2, gpu_id: 2, ram: 24, created_at: "2021-02-15 12:18:20", updated_at: "2021-02-15 12:18:20"}
])
Order.create!([
  {id: 4, user_id: 3, game_id: 1, created_at: "2021-02-15 22:12:39", updated_at: "2021-02-15 22:12:39"}
])
