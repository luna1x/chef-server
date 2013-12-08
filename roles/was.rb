name 'was'
description 'node.js, gameserver'
default_attributes({
})
run_list(
  'recipe[git]',
  'recipe[nodejs]',
  'recipe[was]'
)
