-- Copyright © 2008-2013 Pioneer Developers. See AUTHORS.txt for details
-- Licensed under the terms of the GPL v3. See licenses/GPL-3.txt

local Player = import_core("Player")

--
-- Method: GetMoney
--
-- Get the player's current money
--
-- > money = player:GetMoney()
--
-- Return:
--
--   money - the player's money, in dollars
--
-- Availability:
--
--   alpha 10
--
-- Status:
--
--   experimental
--
function Player:GetMoney ()
	return self.cash
end

--
-- Method: SetMoney
--
-- Set the player's money
--
-- > player:SetMoney(money)
--
-- Parameters:
--
--   money - the new amount of money, in dollars
--
-- Availability:
--
--   alpha 10
--
-- Status:
--
--   experimental
--
function Player:SetMoney (m)
	self:setprop("cash", m)
end

--
-- Method: AddMoney
--
-- Add an amount to the player's money
--
-- > money = player:AddMoney(change)
--
-- Parameters:
--
--   change - the amount of money to add to the player's money, in dollars
--
-- Return:
--
--   money - the player's new money, in dollars
--
-- Availability:
--
--   alpha 10
--
-- Status:
--
--   experimental
--
function Player:AddMoney (m)
	self:setprop("cash", self.cash + m)
end

return Player
