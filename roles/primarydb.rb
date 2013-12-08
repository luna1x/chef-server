name 'primarydb'
description 'A redis master on slave (on a single machine)'
default_attributes({
})
run_list(
  'recipe[redisio::install]',
  'recipe[redisio::enable]',
)
