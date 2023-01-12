local status_ok, markdown = pcall(require, 'markdown-preview')

if not status_ok then
  print('md preview error')
  return
end


markdown.setup()
