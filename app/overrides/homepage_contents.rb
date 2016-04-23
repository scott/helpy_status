Deface::Override.new(
  :virtual_path  => "home/index",
  :insert_after => "[data-hook='home_search_box']",
  :name          => "homepage_contents",
  :partial => "statuses/status_board"
  )

Deface::Override.new(
  :virtual_path  => "layouts/_header",
  :insert_after => "erb[loud]:contains('question_nav')",
  :name          => "main_nav",
  :text => '<li><a href="/statuses/">Status</a></li>'
  )
