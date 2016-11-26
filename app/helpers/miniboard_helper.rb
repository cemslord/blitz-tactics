module MiniboardHelper

  def linked_position_miniboard(position)
    options = {
      :fen => position.fen,
      :flip => position.fen.include?(" b "),
    }
    %(
      <div class="position-board">
        <a href="/positions/#{position.id}">
          #{render :partial => "static/mini_board", :locals => options}
          #{position.name_or_id}
        </a>
      </div>
    ).html_safe
  end

  def linked_miniboard(title, fen, goal = "win", depth = nil)
    options = {
      :fen => fen,
      :flip => fen.include?(" b "),
    }
    link = "/position?goal=#{goal}&fen=#{fen}"
    link = "#{link}&depth=#{depth}" if depth
    %(
      <div class="position-board">
        <a href="#{link}">
          #{render :partial => "static/mini_board", :locals => options}
          #{title}
        </a>
      </div>
    ).html_safe
  end

end
