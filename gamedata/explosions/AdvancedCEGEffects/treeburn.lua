-- treeburnexplode
-- treeburn

local definitions = {
  ["treeburnexplode"] = {
    dirtw1 = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      underwater         = 1,
      water              = true,
      properties = {
        airdrag            = 0.9,
        colormap           = [[0.9 0.9 0.9 1.0	0.5 0.5 0.9 0.0]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.3, 0]],
        numparticles       = 10,
        particlelife       = 15,
        particlelifespread = 10,
        particlesize       = 3,
        particlesizespread = 5,
        particlespeed      = 1,
        particlespeedspread = 5,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 1.2,
        sizemod            = 1.0,
        texture            = [[randomdots]],
        useairlos          = false,
      },
    },
    groundflash = {
      air                = true,
      circlealpha        = 0.0,
      circlegrowth       = 6,
      flashalpha         = 0.25,
      flashsize          = 25,
      ground             = true,
      ttl                = 3,
      underwater         = 1,
      water              = true,
      color = {
        [1]  = 1,
        [2]  = 0.15,
        [3]  = 0,
      },
    },
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.96,
        colormap           = [[1 1 0.4 0.04	1.0 0.66 0.2 0.01	1.0 0.55 0.0 0.00]],
        directional        = true,
        emitrot            = 10,
        emitrotspread      = 75,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.5, 0]],
        numparticles       = 3,
        particlelife       = 9,
        particlelifespread = 5,
        particlesize       = 7,
        particlesizespread = 4,
        particlespeed      = 2,
        particlespeedspread = 2,
        pos                = [[0, 2, 0]],
        sizegrowth         = 1,
        sizemod            = 0.8,
        texture            = [[gunshotglow]],
        useairlos          = false,
      },
    },
  },


  ["treeburn"] = {
    flame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 2,
      ground             = true,
      properties = {
        airdrag            = 0.93,
        colormap           = [[0.9 0.5 0.5 0.3  0.5 0.5 0.2 0.2   0.7 0.7 0.1 0.11   0 0 0 0.08   0 0 0 0.06   0 0 0 0.035   0 0 0 0.01]],
        directional        = true,
        emitrot            = 70,
        emitrotspread      = 40,
        emitvector         = [[0.3 r0.1, 1, 0.3 r0.1]],
        gravity            = [[0 r0.1, 0.125 r0.1, 0 r0.1]],
        numparticles       = 3,
        particlelife       = 18,
        particlelifespread = 28,
        particlesize       = 1.2,
        particlesizespread = 1.5,
        particlespeed      = 0.35,
        particlespeedspread = 0.55,
        pos                = [[-3 r6, -3 r25, -3 r6]],
        sizegrowth         = 0.6,
        sizemod            = 0.99,
        texture            = [[fire]],
      },
    },
    dirtg = { -- ASHES
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
	  water				 = true,
	  underwater		 = false,
      properties = {
        airdrag            = 0.97,
        colormap           = [[1 0.5 0 1.0	1 0.5 0 1.0		0.9 0.4 0 1.0	0.6 0.2 0 1.0	0.3 0.1 0 1.0	0 0 0 1.0	0 0 0 0.7	0 0 0 0.4]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.1, 0]],
        numparticles       = 5,
        particlelife       = 55,
        particlelifespread = 20,
        particlesize       = 0.08,
        particlesizespread = 0.25,
        particlespeed      = 0.8,
        particlespeedspread = 3.3,
        sizegrowth         = 0.1,
        sizemod            = 0.9,
        texture            = [[new_dirta]],
        useairlos          = false,
      },
    },
  },
}


function tableMerge(t1, t2)
  for k,v in pairs(t2) do
    if type(v) == "table" then
      if type(t1[k] or false) == "table" then
        tableMerge(t1[k] or {}, t2[k] or {})
      else
        t1[k] = v
      end
    else
      t1[k] = v
    end
  end
  return t1
end

function deepcopy(orig)
  local orig_type = type(orig)
  local copy
  if orig_type == 'table' then
    copy = {}
    for orig_key, orig_value in next, orig, nil do
      copy[deepcopy(orig_key)] = deepcopy(orig_value)
    end
    setmetatable(copy, deepcopy(getmetatable(orig)))
  else -- number, string, boolean, etc
    copy = orig
  end
  return copy
end

-- add different sizes
local root = 'treeburn'
definitions[root..'-medium'] = definitions[root]

local sizes = {
  tiny = {
    flame = {
      properties = {
        numparticles       = 2,
        particlesize       = 0.35,
        particlesizespread = 0.35,
        particlespeed      = 0.1,
        particlespeedspread = 0.12,
        particlelifespread = 15,
        pos                = [[-1 r3, -1 r15, -1 r3]],
      },
    },
    dirtg = {
      properties = {
        numparticles       = 2,
        particlesize       = 0.05,
        particlesizespread = 0.03,
        particlespeed      = 0.1,
        particlelife       = 38,
        particlespeedspread = 1.4,
      },
    },
  },

  small = {
    flame = {
      properties = {
        numparticles       = 2,
        particlesize       = 1,
        particlesizespread = 0.5,
        particlespeed      = 0.2,
        particlespeedspread = 0.3,
        particlelifespread = 20,
        pos                = [[-2 r4, -1 r20, -2 r4]],
      },
    },
    dirtg = {
      properties = {
        numparticles       = 3,
        particlesize       = 0.1,
        particlesizespread = 0.15,
        particlespeed      = 0.5,
        particlespeedspread = 1.5,
        particlelife       = 46,
      },
    },
  },

  large = {
    flame = {
      properties = {
        numparticles       = 3,
        particlesize       = 1.7,
        particlesizespread = 2,
        particlespeed      = 0.45,
        particlespeedspread = 0.75,
        particlelifespread = 32,
        pos                = [[-4 r7, -4 r30, -4 r7]],
      },
    },
    dirtg = {
      properties = {
        numparticles       = 5,
        particlesize       = 0.11,
        particlesizespread = 0.35,
        particlespeed      = 0.9,
        particlespeedspread = 3.5,
        particlelife       = 60,
      },
    },
  },
}
for size, effects in pairs(sizes) do
  definitions[root..'-'..size] = tableMerge(deepcopy(definitions[root]), deepcopy(effects))
end


return definitions