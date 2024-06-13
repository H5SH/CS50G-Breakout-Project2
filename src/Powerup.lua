



Powerup = Class{}

function Powerup:init()
    self.x = 0
    self.y = 0
    self.width = 8
    self.height = 8
    self.number = 1
    self.genrate = false
end

function Powerup:catched(target)
    if self.x > target.x + target.width + 7 or target.x > self.x + self.width + 7 then
        return false
    end

    if self.y > target.y + target.height + 7 or target.y > self.y + self.height + 7  then
        return false
    end

    return true
end

function Powerup:render()
    if self.genrate then
        love.graphics.draw(gTextures['main'], gFrames['powerUp'][self.number], self.x, self.y)
    end
end

function Powerup:update(dt)
    self.y = self.y + dt * 8
end