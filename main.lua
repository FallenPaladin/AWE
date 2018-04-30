function love.load()
  positionX = 400
  positionY = 300
  width = 30
  height = 30
  speed = 100

  enemyPositionX = 200
  enemyPositionY = 500
  enemyWidth = 30
  enemyHeight = 30
  enemySpeed = 100
end

function love.update(dt)
  if love.keyboard.isDown( 'w' ) then
    positionY = positionY - speed*dt
  end
  if love.keyboard.isDown( 'a' ) then
    positionX = positionX - speed*dt
  end
  if love.keyboard.isDown( 's' ) then
    positionY = positionY + speed*dt
  end
  if love.keyboard.isDown( 'd' ) then
    positionX = positionX + speed*dt
  end

  if positionY < enemyPositionY then
    enemyPositionY = enemyPositionY - 1
  end
  if positionY > enemyPositionY then
    enemyPositionY = enemyPositionY + 1
  end
  if positionX < enemyPositionX then
    enemyPositionX = enemyPositionX -1
  end
  if positionX > enemyPositionX then
    enemyPositionX = enemyPositionX + 1
  end 
  --if love.keyboard.isDown( 'q' ) then
    
  --if love.keyboard.isDown( 'e' ) then
  
  --if love.keyboard.isDown( 'r' ) then  
end

function love.draw()
  --Player Character Color
  love.graphics.setColor(1, 1, 1)
  --love.graphics.rectangle( mode, x, y, width, height )
  love.graphics.rectangle( 'fill', positionX, positionY, width, height )
  love.graphics.setColor(1, 0, 0)
  love.graphics.rectangle( 'fill', enemyPositionX, enemyPositionY, enemyWidth, enemyHeight)
  
  
end