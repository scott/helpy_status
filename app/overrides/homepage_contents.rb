Deface::Override.new(
  :virtual_path  => "layouts/_header",
  :insert_after => "erb[loud]:contains('site_header_question_nav')",
  :name          => "main_nav",
  :text => '<li><a href="/statuses/">Status</a></li>'
  )
