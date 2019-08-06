class YouTube < Liquid::Tag
  Syntax = /^\s*([^\s]+)(\s+(\d+)\s+(\d+)\s*)?/

  def initialize(tagName, markup, tokens)
    super

    if markup =~ Syntax then
      @id = $1

      if $2.nil? then
          @width = 450
          @height = 253
      else
          @width = $2.to_i
          @height = $3.to_i
      end
      
    else
      raise "No YouTube ID provided in the \"youtube\" tag"
    end
  end

  def render(context)
    "<iframe width=\"#{@width}\" height=\"#{@height}\" src=\"http://www.youtube.com/embed/Fsx3H5g_tPQ\" allowfullscreen></iframe>"
  end

  Liquid::Template.register_tag "youtube", self
end