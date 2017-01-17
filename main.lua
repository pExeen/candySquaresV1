local canvas = love.graphics.newCanvas()
time = 1
screenW, screenH = love.graphics.getDimensions()
screenWMid, screenHMid = screenW / 2, screenH / 2
squareW = 200

function love.update(dt)
  time = time + dt
--  if time > 0.1 then
    racio=love.math.random(love.math.random(300))
    squareW = screenH / racio
    -- squareW = love.math.random(love.math.random(800))
    --time2stop = squareW / 5000
    count = 200*200/(squareW*squareW)
    canvas:renderTo(function()
        love.graphics.setColor(love.math.random(255), love.math.random(255), love.math.random(255), love.math.random(255));
        for i=0,count do
            x = (love.math.random(screenW/squareW)-1)*squareW
            y = (love.math.random(screenH/squareW)-1)*squareW
            love.graphics.rectangle('fill', x, y, squareW, squareW)
            time = 0
    --      love.graphics.line(0, 0, love.math.random(0, love.graphics.getWidth()), love.math.random(0, love.graphics.getHeight()));
        end
      end);
  --  end
end

function love.draw()
    love.graphics.setColor(255, 255, 255);
    love.graphics.draw(canvas);
end


function love.keypressed(key)
  if  key == 'escape' then
    love.event.quit()
  end
end
