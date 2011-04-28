#ifndef _LUAMANAGER_H
#define _LUAMANAGER_H

#include "LuaUtils.h"

class LuaManager {
public:
	LuaManager();
	~LuaManager();

	lua_State *GetLuaState() { return m_lua; }

private:
	LuaManager(const LuaManager &);
	LuaManager &operator=(const LuaManager &);

	lua_State *m_lua;
};

#endif
