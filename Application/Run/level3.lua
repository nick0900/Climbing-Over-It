loaded = {
  [1] = {
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 0,
  ["ty"] = 0,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
  ["name"] = "Transform",
}
,
  [1] = {
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "climber ball.obj",
}
,
  ["name"] = "Model",
}
,
  [2] = {
  ["data"] = "playerBot",
  ["name"] = "Parent",
}
,
}
,
  ["entity"] = 50331648,
  ["name"] = "climberBall",
  ["selected"] = false,
}
,
  [2] = {
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 0,
  ["ty"] = 0,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
  ["name"] = "Transform",
}
,
  [1] = {
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "climber body.obj",
}
,
  ["name"] = "Model",
}
,
  [2] = {
  ["data"] = "playerTop",
  ["name"] = "Parent",
}
,
}
,
  ["entity"] = 50331649,
  ["name"] = "climberBody",
  ["selected"] = false,
}
,
  [3] = {
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 0,
  ["ty"] = 0,
  ["tz"] = 0.61400002241135,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
  ["name"] = "Transform",
}
,
  [1] = {
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "climber hammer.obj",
}
,
  ["name"] = "Model",
}
,
  [2] = {
  ["data"] = "playerHand",
  ["name"] = "Parent",
}
,
}
,
  ["entity"] = 50331650,
  ["name"] = "climberHammer",
  ["selected"] = false,
}
,
  [4] = {
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 0,
  ["ty"] = 0.42499995231628,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
  ["name"] = "Transform",
}
,
  [1] = {
  ["data"] = {
  ["texture"] = "climber eyes.png",
  ["model"] = "climber head.obj",
}
,
  ["name"] = "Model",
}
,
  [2] = {
  ["data"] = "playerTop",
  ["name"] = "Parent",
}
,
}
,
  ["entity"] = 50331651,
  ["name"] = "climberHead",
  ["selected"] = false,
}
,
  [5] = {
  ["components"] = {
  [1] = {
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
  ["name"] = "BoxCollider",
}
,
  [2] = {
  ["data"] = {
  ["object"] = "coin",
  ["triggerFunction"] = "IncrementCoins",
}
,
  ["name"] = "HitTrigger",
}
,
  [3] = {
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "coin.obj",
}
,
  ["name"] = "Model",
}
,
  [4] = {
  ["name"] = "Rigidbody",
}
,
  [5] = {
  ["data"] = {
  ["friction"] = 1,
  ["dynamic"] = false,
  ["sensor"] = true,
  ["mask"] = 2,
  ["rotation"] = false,
  ["density"] = 1,
  ["category"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [6] = {
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 32.716831207275,
  ["ty"] = 10.458333015442,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["entity"] = 42991620,
  ["name"] = "coin",
  ["selected"] = true,
}
,
  [6] = {
  ["entity"] = 38797317,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "HitTrigger",
  ["data"] = {
  ["object"] = "coin02",
  ["triggerFunction"] = "IncrementCoins",
}
,
}
,
  [3] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "coin.obj",
}
,
}
,
  [4] = {
  ["name"] = "Rigidbody",
}
,
  [5] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = true,
  ["mask"] = 2,
  ["rotation"] = false,
  ["friction"] = 1,
  ["dynamic"] = false,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 1.0333313941956,
  ["sy"] = 1,
  ["ty"] = 4.2666630744934,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "coin02",
  ["selected"] = false,
}
,
  [7] = {
  ["entity"] = 38797318,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "HitTrigger",
  ["data"] = {
  ["object"] = "coin03",
  ["triggerFunction"] = "IncrementCoins",
}
,
}
,
  [3] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "coin.obj",
}
,
}
,
  [4] = {
  ["name"] = "Rigidbody",
}
,
  [5] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = true,
  ["mask"] = 2,
  ["rotation"] = false,
  ["friction"] = 1,
  ["dynamic"] = false,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 7.6749930381775,
  ["ty"] = 4.3333377838135,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "coin03",
  ["selected"] = false,
}
,
  [8] = {
  ["entity"] = 46137351,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "HitTrigger",
  ["data"] = {
  ["object"] = "coin04",
  ["triggerFunction"] = "IncrementCoins",
}
,
}
,
  [3] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "coin.obj",
}
,
}
,
  [4] = {
  ["name"] = "Rigidbody",
}
,
  [5] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = true,
  ["mask"] = 2,
  ["rotation"] = false,
  ["friction"] = 1,
  ["dynamic"] = false,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3.008330821991,
  ["sy"] = 1,
  ["ty"] = 15.691634178162,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "coin04",
  ["selected"] = false,
}
,
  [9] = {
  ["entity"] = 38797320,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "HitTrigger",
  ["data"] = {
  ["object"] = "coin05",
  ["triggerFunction"] = "IncrementCoins",
}
,
}
,
  [3] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "coin.obj",
}
,
}
,
  [4] = {
  ["name"] = "Rigidbody",
}
,
  [5] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = true,
  ["mask"] = 2,
  ["rotation"] = false,
  ["friction"] = 1,
  ["dynamic"] = false,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 9.6083250045776,
  ["sy"] = 1,
  ["ty"] = 1.0583077669144,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "coin05",
  ["selected"] = false,
}
,
  [10] = {
  ["entity"] = 37748745,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "HitTrigger",
  ["data"] = {
  ["object"] = "coin06",
  ["triggerFunction"] = "IncrementCoins",
}
,
}
,
  [3] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "coin.obj",
}
,
}
,
  [4] = {
  ["name"] = "Rigidbody",
}
,
  [5] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = true,
  ["mask"] = 2,
  ["rotation"] = false,
  ["friction"] = 1,
  ["dynamic"] = false,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 16.141654968262,
  ["sy"] = 1,
  ["ty"] = 1.0583077669144,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "coin06",
  ["selected"] = false,
}
,
  [11] = {
  ["entity"] = 47185930,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "HitTrigger",
  ["data"] = {
  ["object"] = "coin07",
  ["triggerFunction"] = "IncrementCoins",
}
,
}
,
  [3] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "coin.obj",
}
,
}
,
  [4] = {
  ["name"] = "Rigidbody",
}
,
  [5] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = true,
  ["mask"] = 2,
  ["rotation"] = false,
  ["friction"] = 1,
  ["dynamic"] = false,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 14.683319091797,
  ["sy"] = 1,
  ["ty"] = 4.3249731063843,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "coin07",
  ["selected"] = false,
}
,
  [12] = {
  ["entity"] = 46137355,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "HitTrigger",
  ["data"] = {
  ["object"] = "coin08",
  ["triggerFunction"] = "IncrementCoins",
}
,
}
,
  [3] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "coin.obj",
}
,
}
,
  [4] = {
  ["name"] = "Rigidbody",
}
,
  [5] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = true,
  ["mask"] = 2,
  ["rotation"] = false,
  ["friction"] = 1,
  ["dynamic"] = false,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 24.050086975098,
  ["sy"] = 1,
  ["ty"] = 6.4916377067566,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "coin08",
  ["selected"] = false,
}
,
  [13] = {
  ["entity"] = 45088780,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "HitTrigger",
  ["data"] = {
  ["object"] = "coin09",
  ["triggerFunction"] = "IncrementCoins",
}
,
}
,
  [3] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "coin.obj",
}
,
}
,
  [4] = {
  ["name"] = "Rigidbody",
}
,
  [5] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["dynamic"] = false,
  ["sensor"] = true,
  ["mask"] = 2,
  ["rotation"] = false,
  ["friction"] = 1,
  ["density"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 32.716831207275,
  ["ty"] = 9.3249845504761,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "coin09",
  ["selected"] = false,
}
,
  [14] = {
  ["entity"] = 41943054,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "HitTrigger",
  ["data"] = {
  ["object"] = "coin11",
  ["triggerFunction"] = "IncrementCoins",
}
,
}
,
  [3] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "coin.obj",
}
,
}
,
  [4] = {
  ["name"] = "Rigidbody",
}
,
  [5] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["dynamic"] = false,
  ["sensor"] = true,
  ["mask"] = 2,
  ["rotation"] = false,
  ["friction"] = 1,
  ["density"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 3.008330821991,
  ["ty"] = 14.399987220764,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "coin11",
  ["selected"] = false,
}
,
  [15] = {
  ["entity"] = 38797327,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "HitTrigger",
  ["data"] = {
  ["object"] = "coin12",
  ["triggerFunction"] = "IncrementCoins",
}
,
}
,
  [3] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "coin.obj",
}
,
}
,
  [4] = {
  ["name"] = "Rigidbody",
}
,
  [5] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["dynamic"] = false,
  ["sensor"] = true,
  ["mask"] = 2,
  ["rotation"] = false,
  ["friction"] = 1,
  ["density"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 3.008330821991,
  ["ty"] = 16.899993896484,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "coin12",
  ["selected"] = false,
}
,
  [16] = {
  ["components"] = {
  [1] = {
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
  ["name"] = "BoxCollider",
}
,
  [2] = {
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
  ["name"] = "Model",
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["data"] = {
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["density"] = 1,
  ["category"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["tx"] = 29.116724014282,
  ["sy"] = 1,
  ["ty"] = 7.80832862854,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["entity"] = 31457296,
  ["name"] = "diamondbox",
  ["selected"] = false,
}
,
  [17] = {
  ["components"] = {
  [1] = {
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
  ["name"] = "BoxCollider",
}
,
  [2] = {
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
  ["name"] = "Model",
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["data"] = {
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["density"] = 1,
  ["category"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["tx"] = 17.507999420166,
  ["sy"] = 1,
  ["ty"] = 0,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["entity"] = 28311569,
  ["name"] = "diamondbox02",
  ["selected"] = false,
}
,
  [18] = {
  ["components"] = {
  [1] = {
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
  ["name"] = "BoxCollider",
}
,
  [2] = {
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
  ["name"] = "Model",
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["data"] = {
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["density"] = 1,
  ["category"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["sx"] = 1,
  ["tx"] = 3,
  ["ty"] = 1,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sy"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["entity"] = 36700178,
  ["name"] = "diamondbox03",
  ["selected"] = false,
}
,
  [19] = {
  ["entity"] = 37748755,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3,
  ["sy"] = 1,
  ["ty"] = 2,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "diamondbox04",
  ["selected"] = false,
}
,
  [20] = {
  ["entity"] = 38797332,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["dynamic"] = true,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
  ["density"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 3,
  ["ty"] = 5.0583372116089,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "diamondbox05",
  ["selected"] = false,
}
,
  [21] = {
  ["entity"] = 38797333,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3,
  ["sy"] = 1,
  ["ty"] = 0,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "diamondbox06",
  ["selected"] = false,
}
,
  [22] = {
  ["entity"] = 35651606,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 7.6999998092651,
  ["sy"] = 1,
  ["ty"] = 0,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "diamondbox07",
  ["selected"] = false,
}
,
  [23] = {
  ["entity"] = 35651607,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 7.6999998092651,
  ["sy"] = 1,
  ["ty"] = 1,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "diamondbox08",
  ["selected"] = false,
}
,
  [24] = {
  ["entity"] = 31457304,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 7.6999998092651,
  ["sy"] = 1,
  ["ty"] = 2,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "diamondbox09",
  ["selected"] = false,
}
,
  [25] = {
  ["entity"] = 30408729,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 11.500045776367,
  ["sy"] = 1,
  ["ty"] = 2,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "diamondbox10",
  ["selected"] = false,
}
,
  [26] = {
  ["entity"] = 30408730,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 11.500045776367,
  ["sy"] = 1,
  ["ty"] = 1,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "diamondbox11",
  ["selected"] = false,
}
,
  [27] = {
  ["entity"] = 30408731,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 11.500045776367,
  ["sy"] = 1,
  ["ty"] = 0,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "diamondbox12",
  ["selected"] = false,
}
,
  [28] = {
  ["entity"] = 30408732,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 14.699999809265,
  ["sy"] = 1,
  ["ty"] = 0,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "diamondbox13",
  ["selected"] = false,
}
,
  [29] = {
  ["entity"] = 27263005,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 14.699999809265,
  ["sy"] = 1,
  ["ty"] = 1,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "diamondbox14",
  ["selected"] = false,
}
,
  [30] = {
  ["entity"] = 27263006,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 14.699999809265,
  ["sy"] = 1,
  ["ty"] = 2,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "diamondbox15",
  ["selected"] = false,
}
,
  [31] = {
  ["entity"] = 27263007,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 17.507999420166,
  ["sy"] = 1,
  ["ty"] = 2,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "diamondbox16",
  ["selected"] = false,
}
,
  [32] = {
  ["entity"] = 27263008,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 17.507999420166,
  ["sy"] = 1,
  ["ty"] = 1,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "diamondbox17",
  ["selected"] = false,
}
,
  [33] = {
  ["entity"] = 26214434,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3,
  ["sy"] = 1,
  ["ty"] = 8.1083278656006,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "diamondbox18",
  ["selected"] = false,
}
,
  [34] = {
  ["entity"] = 26214435,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3,
  ["sy"] = 1,
  ["ty"] = 11.166703224182,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "diamondbox19",
  ["selected"] = false,
}
,
  [35] = {
  ["entity"] = 16777252,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3,
  ["sy"] = 1,
  ["ty"] = 12.183354377747,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "diamondbox20",
  ["selected"] = false,
}
,
  [36] = {
  ["entity"] = 17825829,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3,
  ["sy"] = 1,
  ["ty"] = 13.208338737488,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "diamondbox21",
  ["selected"] = false,
}
,
  [37] = {
  ["entity"] = 17825830,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
  ["dynamic"] = true,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 22.866733551025,
  ["ty"] = 3.1416721343994,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "diamondbox22",
  ["selected"] = false,
}
,
  [38] = {
  ["entity"] = 11534375,
  ["components"] = {
  [1] = {
  ["data"] = {
  ["hx"] = 0.20000000298023,
  ["hy"] = 0.5,
}
,
  ["name"] = "BoxCollider",
}
,
  [2] = {
  ["data"] = {
  ["object"] = "goal",
  ["triggerFunction"] = "victory",
}
,
  ["name"] = "HitTrigger",
}
,
  [3] = {
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "flag.obj",
}
,
  ["name"] = "Model",
}
,
  [4] = {
  ["name"] = "Rigidbody",
}
,
  [5] = {
  ["data"] = {
  ["friction"] = 1,
  ["dynamic"] = false,
  ["sensor"] = true,
  ["mask"] = 2,
  ["rotation"] = false,
  ["density"] = 1,
  ["category"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [6] = {
  ["data"] = {
  ["tx"] = 48.833274841309,
  ["sy"] = 1.7900000810623,
  ["ty"] = 3.1666650772095,
  ["tz"] = 0,
  ["sz"] = 1.8259999752045,
  ["rz"] = 0,
  ["sx"] = 2.0710000991821,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["name"] = "goal",
  ["selected"] = false,
}
,
  [39] = {
  ["components"] = {
  [1] = {
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
  ["name"] = "BoxCollider",
}
,
  [2] = {
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box line.obj",
}
,
  ["name"] = "Model",
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["data"] = {
  ["friction"] = 1,
  ["dynamic"] = false,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = false,
  ["density"] = 1,
  ["category"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["tx"] = 48.832962036133,
  ["sy"] = 0.90399998426437,
  ["ty"] = 1.9333757162094,
  ["tz"] = 0,
  ["sz"] = 0.63199996948242,
  ["rz"] = 0,
  ["sx"] = 5,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["entity"] = 11534376,
  ["name"] = "linebox",
  ["selected"] = false,
}
,
  [40] = {
  ["entity"] = 10485801,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box line.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = false,
  ["friction"] = 1,
  ["dynamic"] = false,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 20.966732025146,
  ["sy"] = 1,
  ["ty"] = -1,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 20,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "linebox02",
  ["selected"] = false,
}
,
  [41] = {
  ["entity"] = 9437226,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box line.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = false,
  ["friction"] = 1,
  ["dynamic"] = false,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 7,
  ["sy"] = 1,
  ["ty"] = -1,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 20,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "linebox03",
  ["selected"] = false,
}
,
  [42] = {
  ["entity"] = 14680108,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box line.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = false,
  ["friction"] = 1,
  ["dynamic"] = false,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 10.200028419495,
  ["sy"] = 0.90399998426437,
  ["ty"] = 3.0333321094513,
  ["tz"] = 0,
  ["sz"] = 0.63199996948242,
  ["rz"] = 0,
  ["sx"] = 15,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "linebox04",
  ["selected"] = false,
}
,
  [43] = {
  ["entity"] = 14680109,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box line.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = false,
  ["friction"] = 1,
  ["dynamic"] = false,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 0.90399998426437,
  ["tx"] = 22.866617202759,
  ["ty"] = 11.666709899902,
  ["tz"] = 0,
  ["sz"] = 0.63199996948242,
  ["rz"] = 89.999992370605,
  ["sx"] = 15,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "linebox05",
  ["selected"] = false,
}
,
  [44] = {
  ["entity"] = 14680110,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box line.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = false,
  ["friction"] = 1,
  ["dynamic"] = false,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 28.633253097534,
  ["sy"] = 0.90399998426437,
  ["ty"] = 4.633373260498,
  ["tz"] = 0,
  ["sz"] = 0.63199996948242,
  ["rz"] = 0,
  ["sx"] = 5,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "linebox06",
  ["selected"] = false,
}
,
  [45] = {
  ["entity"] = 14680111,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box line.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = false,
  ["friction"] = 1,
  ["dynamic"] = false,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 37.199806213379,
  ["sy"] = 0.90399998426437,
  ["ty"] = 4.6000399589539,
  ["tz"] = 0,
  ["sz"] = 0.63199996948242,
  ["rz"] = 0,
  ["sx"] = 5,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "linebox07",
  ["selected"] = false,
}
,
  [46] = {
  ["components"] = {
  [1] = {
  ["data"] = {
  ["anchory"] = 0.80000001192093,
  ["anchorx"] = 0,
  ["objectA"] = "playerTop",
  ["maxforce"] = 100,
  ["motor"] = true,
  ["objectB"] = "playerAimer",
}
,
  ["name"] = "Hingejoint",
}
,
}
,
  ["entity"] = 14680112,
  ["name"] = "playerAimHinge",
  ["selected"] = false,
}
,
  [47] = {
  ["components"] = {
  [3] = {
  ["data"] = {
  ["friction"] = 1,
  ["dynamic"] = true,
  ["sensor"] = false,
  ["mask"] = 0,
  ["rotation"] = true,
  ["density"] = 1,
  ["category"] = 2,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [1] = {
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
  ["name"] = "BoxCollider",
}
,
  [2] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 0,
  ["ty"] = 0.80000001192093,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["entity"] = 14680113,
  ["name"] = "playerAimer",
  ["selected"] = false,
}
,
  [48] = {
  ["components"] = {
  [3] = {
  ["data"] = {
  ["friction"] = 0.30000001192093,
  ["dynamic"] = true,
  ["sensor"] = false,
  ["mask"] = 1,
  ["rotation"] = false,
  ["density"] = 1,
  ["category"] = 2,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [1] = {
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
  ["name"] = "BoxCollider",
}
,
  [2] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 0,
  ["ty"] = 0,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["entity"] = 14680114,
  ["name"] = "playerBot",
  ["selected"] = false,
}
,
  [49] = {
  ["components"] = {
  [1] = {
  ["data"] = {
  ["anchory"] = 0,
  ["axisy"] = 1,
  ["objectA"] = "playerBot",
  ["maxforce"] = 100,
  ["upperlimit"] = 0.40000000596046,
  ["lowerlimit"] = -0.30000001192093,
  ["motor"] = true,
  ["anchorx"] = 0,
  ["axisx"] = 0,
  ["objectB"] = "playerTop",
}
,
  ["name"] = "Sliderjoint",
}
,
}
,
  ["entity"] = 14680115,
  ["name"] = "playerCrouchSlider",
  ["selected"] = false,
}
,
  [50] = {
  ["components"] = {
  [3] = {
  ["data"] = {
  ["friction"] = 1,
  ["dynamic"] = true,
  ["sensor"] = false,
  ["mask"] = 1,
  ["rotation"] = true,
  ["density"] = 1,
  ["category"] = 2,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [1] = {
  ["data"] = {
  ["hx"] = 0.15000000596046,
  ["hy"] = 0.34999999403954,
}
,
  ["name"] = "BoxCollider",
}
,
  [2] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 0.60000002384186,
  ["ty"] = 0.80000001192093,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["entity"] = 14680116,
  ["name"] = "playerHand",
  ["selected"] = false,
}
,
  [51] = {
  ["components"] = {
  [1] = {
  ["data"] = {
  ["anchory"] = 0.80000001192093,
  ["axisy"] = 0,
  ["objectA"] = "playerAimer",
  ["maxforce"] = 100,
  ["upperlimit"] = 0.69999998807907,
  ["lowerlimit"] = -0.10000000149012,
  ["motor"] = true,
  ["anchorx"] = 0,
  ["axisx"] = 1,
  ["objectB"] = "playerHand",
}
,
  ["name"] = "Sliderjoint",
}
,
}
,
  ["entity"] = 14680117,
  ["name"] = "playerHandSlider",
  ["selected"] = false,
}
,
  [52] = {
  ["components"] = {
  [3] = {
  ["data"] = {
  ["friction"] = 1,
  ["dynamic"] = true,
  ["sensor"] = false,
  ["mask"] = 1,
  ["rotation"] = false,
  ["density"] = 1,
  ["category"] = 2,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [1] = {
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
  ["name"] = "BoxCollider",
}
,
  [2] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 0,
  ["ty"] = 0.80000001192093,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["entity"] = 14680118,
  ["name"] = "playerTop",
  ["selected"] = false,
}
,
  [53] = {
  ["entity"] = 14680119,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["friction"] = 1,
  ["dynamic"] = false,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = false,
  ["density"] = 1,
  ["category"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 22.866743087769,
  ["ty"] = 4.1666526794434,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = -179.99998474121,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "tilebox",
  ["selected"] = false,
}
,
  [54] = {
  ["entity"] = 14680120,
  ["components"] = {
  [1] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [2] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 17.5,
  ["ty"] = 3.0416576862335,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = -179.99998474121,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "tilebox02",
  ["selected"] = false,
}
,
  [55] = {
  ["entity"] = 14680121,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["dynamic"] = false,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = false,
  ["friction"] = 1,
  ["density"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 3,
  ["ty"] = 4.0499911308289,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = -179.99999134858,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "tilebox03",
  ["selected"] = false,
}
,
  [56] = {
  ["entity"] = 14680122,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["dynamic"] = false,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = false,
  ["friction"] = 1,
  ["density"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 3,
  ["ty"] = 6.0833225250244,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = -179.99999134858,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "tilebox04",
  ["selected"] = false,
}
,
  [57] = {
  ["entity"] = 14680123,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = false,
  ["friction"] = 1,
  ["dynamic"] = false,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3,
  ["sy"] = 1,
  ["ty"] = 3.0416576862335,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = -179.99999134858,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "tilebox05",
  ["selected"] = false,
}
,
  [58] = {
  ["entity"] = 14680124,
  ["components"] = {
  [1] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [2] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 7.6999998092651,
  ["ty"] = 3.0416576862335,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = -179.99998474121,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "tilebox06",
  ["selected"] = false,
}
,
  [59] = {
  ["entity"] = 14680125,
  ["components"] = {
  [1] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [2] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 11.5,
  ["ty"] = 3.0416576862335,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = -179.99998474121,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "tilebox07",
  ["selected"] = false,
}
,
  [60] = {
  ["entity"] = 14680126,
  ["components"] = {
  [1] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [2] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["tx"] = 14.699999809265,
  ["ty"] = 3.0416576862335,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = -179.99998474121,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "tilebox08",
  ["selected"] = false,
}
,
  [61] = {
  ["entity"] = 14680127,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = false,
  ["friction"] = 1,
  ["dynamic"] = false,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3,
  ["sy"] = 1,
  ["ty"] = 7.0916404724121,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = -179.99999134858,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "tilebox09",
  ["selected"] = false,
}
,
  [62] = {
  ["entity"] = 14680128,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = false,
  ["friction"] = 1,
  ["dynamic"] = false,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3,
  ["sy"] = 1,
  ["ty"] = 9.1333150863647,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = -179.99999134858,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "tilebox10",
  ["selected"] = false,
}
,
  [63] = {
  ["entity"] = 14680129,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = false,
  ["friction"] = 1,
  ["dynamic"] = false,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3,
  ["sy"] = 1,
  ["ty"] = 10.149966239929,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = -179.99999134858,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "tilebox11",
  ["selected"] = false,
}
,
  [64] = {
  ["entity"] = 14680130,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "box diamond.obj",
}
,
}
,
  [3] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["mask"] = 65535,
  ["rotation"] = false,
  ["friction"] = 1,
  ["dynamic"] = false,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 0.31099995970726,
  ["tx"] = 22.866743087769,
  ["ty"] = 2.4749703407288,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = -179.99998474121,
  ["ry"] = 0,
}
,
}
,
}
,
  ["name"] = "tilebox12",
  ["selected"] = false,
}
,
}
