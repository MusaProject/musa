$ ->
  start = 0
  end = 0
  subtitles = []

  $('#next-line').on 'click', (e)->
    e.preventDefault()
    current = $('.current')
    lineNumber = current.data('line')
    lineHeight = parseInt($('.lyric p').css('line-height'))
    $('.lyric').scrollTop((lineNumber + 1) * lineHeight)
    next = current.next()
    next.addClass 'current'
    current.removeClass 'current'

    end = window.pop.currentTime()
    item = {}
    item["start"] = "#{start}"
    item["end"] = "#{end}"
    item["line"] = "#{current.text()}"
    # debugger
    subtitles.push item
    start = end

    $('#song_subtitles').val JSON.stringify(subtitles)




