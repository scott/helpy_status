Deface::Override.new(
  :virtual_path  => "layouts/_admin_header",
  :insert_after => "erb[loud]:contains('admin_header_store_nav')",
  :name          => "admin_nav",
  :text => '<li><a href="/admin/statuses/">Status</a></li>'
  )
