setActiveLink = ->
  link = window.location.pathname.split('/')[1] || 'home'
  el = $('.nav').find('.' + link)
  $('nav').find('li').each ->
    $(this).removeClass 'active'
  el.addClass('active')

$ ->
  setActiveLink()

$(document).on 'page:change', ->
  setActiveLink()
