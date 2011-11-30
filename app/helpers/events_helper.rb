module EventsHelper
  def patrons_form_column(record, options)
    #   my_select = "<select id='#{options[:id]}', name='#{options[:name]}', class='#{options[:class]}'>" +
    #               "<option>test</option>"+
    #               "</select>"
    str = '<ul>'
    a = Patron.find :all, :order => 'id asc'
    a.each do |p|
      str += "<li><input type=\"checkbox\" #{'checked' if record.patrons.include?(p)} name='record[patrons][]' value='#{p.id}'>#{p.to_label}</li>"
    end
    str += '</ul>'
  end
  def patron_form_column(record, options)
    # y_select = "<select id='#{options[:id]}', name='#{options[:name]}', class='#{options[:class]}'>" +
    #               "<option>test</option>"+
    #               "</select>"
    str = "<select id='#{options[:id]}', name='#{options[:name]}', class='#{options[:class]}'>"
    a = Patron.find :all, :order => 'id asc'
    a.each do |p|
      # str += "<li><input type=\"checkbox\" #{'checked' if record.patrons.include?(p)} name='record[patrons][]' value='#{p.id}'>#{p.to_label}</li>"
      str += "<option #{'selected' if record.patron_id == p.id} value='#{p.id}'>#{p.to_label}</option>"
    end
    str += '</select>'
  end
end