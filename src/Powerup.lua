



Powerup = Class{}

function Powerup:init(x, y, number)
    self.x = 8
    self.y = 8
    self.width = 18
    self.height = 18
    self.dy = 0
    self.number = 3
end

function Powerup:catched(target)
    if self.x > target.x + target.width or target.x > self.x + self.width then
        return false
    end

    if self.y > target.y + target.height or target.y > self.y + self.height then
        return false
    end

    return true
end

function Powerup:render()
    love.graphics.draw(gTextures['main'], gFrames['powerUp'][self.number], self.x, self.y)
end

function Powerup:update(dt)
    self.y = self.y + self.dy * dt    
end