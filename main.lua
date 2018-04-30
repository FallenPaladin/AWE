function love.load()
  -- this is a table containing data
  player = { x = 400, y = 300, width = 30, height = 30, spd = 200 }

  -- this is a table containing tables which contain data
  enemies = {
    enemy1 = { x = 500, y = 300, width = 30, height = 30, spd = 100 },
    enemy2 = { x = 300, y = 200, width = 30, height = 30, spd = 100 }
  }
end

function love.update(dt)
  if love.keyboard.isDown( 'w' ) then
    player.y = player.y - player.spd*dt
  end
  if love.keyboard.isDown( 'a' ) then
    player.x = player.x - player.spd*dt
  end
  if love.keyboard.isDown( 's' ) then
    player.y = player.y + player.spd*dt
  end
  if love.keyboard.isDown( 'd' ) then
    player.x = player.x + player.spd*dt
  end

  -- using a for loop to iterate through the table of enemies and perform all of their logic
  for _, enemy in pairs(enemies) do
    if player.y < enemy.y then
      enemy.y = enemy.y - enemy.spd*dt
    end
    if player.y > enemy.y then
      enemy.y = enemy.y + enemy.spd*dt
    end
    if player.x < enemy.x then
      enemy.x = enemy.x - enemy.spd*dt
    end
    if player.x > enemy.x then
      enemy.x = enemy.x + enemy.spd*dt
    end 
  end
end

function love.draw()
  -- player color
  love.graphics.setColor(1, 1, 1)

  -- draw the player
  love.graphics.rectangle( 'fill', player.x, player.y, player.width, player.height )
  
  -- enemy color
  love.graphics.setColor(1, 0, 0)

  -- using a for loop to iterate through the table of enemies and draw all of them
  for _, enemy in pairs(enemies) do
    love.graphics.rectangle( 'fill', enemy.x, enemy.y, enemy.width, enemy.height)
  end
end