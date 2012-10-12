(( $ ) ->
  $.fn.editable = ->
    options =
      mode: 'ace/mode/ruby'

    this.each ->
      element = $(this)
      textarea = element.closest('form').find('.editable')

      editor = ace.edit(element.prop('id'))
      editor.getSession().setMode(options.mode)

      editor.getSession().on 'change', ->
        textarea.val(editor.getSession().getValue())
)(jQuery)
