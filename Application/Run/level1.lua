loaded = {
  [1] = {
  ["name"] = "bigGround",
  ["entity"] = 13631488,
  ["selected"] = false,
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
  ["mask"] = 65535,
  ["friction"] = 1,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["density"] = 1,
  ["category"] = 1,
  ["sensor"] = false,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 50,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = 21.666723251343,
  ["ty"] = -1.1000002622604,
}
,
}
,
}
,
}
,
  [2] = {
  ["name"] = "climberBall",
  ["entity"] = 13631489,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sy"] = 1,
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["rx"] = 0,
  ["sx"] = 1,
  ["tx"] = 0,
  ["ty"] = 0,
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
}
,
  [3] = {
  ["name"] = "climberBody",
  ["entity"] = 13631490,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sy"] = 1,
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["rx"] = 0,
  ["sx"] = 1,
  ["tx"] = 0,
  ["ty"] = 0,
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
}
,
  [4] = {
  ["name"] = "climberHammer",
  ["entity"] = 13631491,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sy"] = 1,
  ["sz"] = 1,
  ["tz"] = 0.61400002241135,
  ["ry"] = 0,
  ["rz"] = 0,
  ["rx"] = 0,
  ["sx"] = 1,
  ["tx"] = 0,
  ["ty"] = 0,
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
}
,
  [5] = {
  ["name"] = "climberHead",
  ["entity"] = 13631492,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sy"] = 1,
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["rx"] = 0,
  ["sx"] = 1,
  ["tx"] = 0,
  ["ty"] = 0.42499995231628,
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
}
,
  [6] = {
  ["name"] = "coin",
  ["entity"] = 12582917,
  ["selected"] = false,
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
  ["mask"] = 2,
  ["sensor"] = true,
  ["density"] = 1,
  ["dynamic"] = false,
  ["rotation"] = false,
  ["category"] = 1,
  ["friction"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [6] = {
  ["data"] = {
  ["rx"] = 0,
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["tx"] = 40.166835784912,
  ["ty"] = 4.4749970436096,
}
,
  ["name"] = "Transform",
}
,
}
,
}
,
  [7] = {
  ["name"] = "coin02",
  ["entity"] = 12582918,
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
  ["mask"] = 2,
  ["sensor"] = true,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["density"] = 1,
  ["category"] = 1,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["rx"] = 0,
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["tx"] = 3.3333292007446,
  ["ty"] = 0.29999873042107,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [8] = {
  ["name"] = "coin03",
  ["entity"] = 12582919,
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
  ["mask"] = 2,
  ["sensor"] = true,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["density"] = 1,
  ["category"] = 1,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["rx"] = 0,
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["tx"] = 33.300136566162,
  ["ty"] = 5.8666801452637,
}
,
}
,
}
,
  ["selected"] = true,
}
,
  [9] = {
  ["name"] = "coin04",
  ["entity"] = 12582920,
  ["selected"] = false,
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
  ["mask"] = 2,
  ["friction"] = 1,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["density"] = 1,
  ["category"] = 1,
  ["sensor"] = true,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = 8.5333318710327,
  ["ty"] = 1.4999990463257,
}
,
}
,
}
,
}
,
  [10] = {
  ["name"] = "coin05",
  ["entity"] = 13631497,
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
  ["mask"] = 2,
  ["sensor"] = true,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["density"] = 1,
  ["category"] = 1,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["rx"] = 0,
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["tx"] = 14.666747093201,
  ["ty"] = 3.3333306312561,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [11] = {
  ["name"] = "coin06",
  ["entity"] = 13631498,
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
  ["mask"] = 2,
  ["sensor"] = true,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["density"] = 1,
  ["category"] = 1,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["rx"] = 0,
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["tx"] = 17.200109481812,
  ["ty"] = 6.4999942779541,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [12] = {
  ["name"] = "coin07",
  ["entity"] = 13631499,
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
  ["mask"] = 2,
  ["sensor"] = true,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["density"] = 1,
  ["category"] = 1,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["rx"] = 0,
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["tx"] = 22.233497619629,
  ["ty"] = 3.2083313465118,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [13] = {
  ["name"] = "coin08",
  ["entity"] = 13631500,
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
  ["mask"] = 2,
  ["sensor"] = true,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["density"] = 1,
  ["category"] = 1,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["rx"] = 0,
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["tx"] = 40.166835784912,
  ["ty"] = 3.408331155777,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [14] = {
  ["name"] = "coin09",
  ["entity"] = 31,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["ptr"] = nil,
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
  ["model"] = "coin.obj",
  ["texture"] = "climber pallet.png",
  ["ptr"] = nil,
}
,
}
,
  [4] = {
  ["name"] = "Rigidbody",
  ["data"] = nil,
}
,
  [5] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["mask"] = 2,
  ["rotation"] = false,
  ["density"] = 1,
  ["dynamic"] = false,
  ["sensor"] = true,
  ["category"] = 1,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["rx"] = 0,
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["tx"] = 4.8666610717773,
  ["ty"] = 7.8999929428101,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [15] = {
  ["name"] = "coin10",
  ["entity"] = 32,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["ptr"] = nil,
  ["hx"] = 0.5,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "HitTrigger",
  ["data"] = {
  ["object"] = "coin10",
  ["triggerFunction"] = "IncrementCoins",
}
,
}
,
  [3] = {
  ["name"] = "Model",
  ["data"] = {
  ["model"] = "coin.obj",
  ["texture"] = "climber pallet.png",
  ["ptr"] = nil,
}
,
}
,
  [4] = {
  ["name"] = "Rigidbody",
  ["data"] = nil,
}
,
  [5] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["mask"] = 2,
  ["rotation"] = false,
  ["density"] = 1,
  ["dynamic"] = false,
  ["sensor"] = true,
  ["category"] = 1,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["rx"] = 0,
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["tx"] = 18.53338432312,
  ["ty"] = 9.3333435058594,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [16] = {
  ["name"] = "coin11",
  ["entity"] = 33,
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["ptr"] = nil,
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
  ["model"] = "coin.obj",
  ["texture"] = "climber pallet.png",
  ["ptr"] = nil,
}
,
}
,
  [4] = {
  ["name"] = "Rigidbody",
  ["data"] = nil,
}
,
  [5] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["mask"] = 2,
  ["rotation"] = false,
  ["density"] = 1,
  ["dynamic"] = false,
  ["sensor"] = true,
  ["category"] = 1,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["rx"] = 0,
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["tx"] = 26.200096130371,
  ["ty"] = 9.3333435058594,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [17] = {
  ["name"] = "diamondbox",
  ["entity"] = 12582925,
  ["selected"] = false,
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
  ["mask"] = 65535,
  ["sensor"] = false,
  ["density"] = 1,
  ["dynamic"] = true,
  ["rotation"] = true,
  ["category"] = 1,
  ["friction"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["rx"] = 0,
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["tx"] = 30.766859054565,
  ["ty"] = 3.1999983787537,
}
,
  ["name"] = "Transform",
}
,
}
,
}
,
  [18] = {
  ["name"] = "goal",
  ["entity"] = 12582926,
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
  ["mask"] = 2,
  ["sensor"] = true,
  ["density"] = 1,
  ["dynamic"] = false,
  ["rotation"] = false,
  ["category"] = 1,
  ["friction"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [6] = {
  ["data"] = {
  ["sy"] = 1.7900000810623,
  ["sz"] = 1.8259999752045,
  ["tz"] = 0,
  ["sx"] = 2.0710000991821,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = 44.566673278809,
  ["ty"] = 0.29999873042107,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["selected"] = false,
}
,
  [19] = {
  ["name"] = "linebox",
  ["entity"] = 12582927,
  ["selected"] = false,
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
  ["mask"] = 65535,
  ["sensor"] = false,
  ["density"] = 1,
  ["dynamic"] = false,
  ["rotation"] = false,
  ["category"] = 1,
  ["friction"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["rx"] = 0,
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 89.999992370605,
  ["sy"] = 1,
  ["sx"] = 3,
  ["tx"] = 30.766920089722,
  ["ty"] = 0.96666711568832,
}
,
  ["name"] = "Transform",
}
,
}
,
}
,
  [20] = {
  ["name"] = "linebox02",
  ["entity"] = 11534352,
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
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["density"] = 1,
  ["category"] = 1,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 7.2880001068115,
  ["rz"] = 89.999992370605,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = 4.8666634559631,
  ["ty"] = 3.0999984741211,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [21] = {
  ["name"] = "linelong",
  ["entity"] = 9437201,
  ["selected"] = false,
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
  ["mask"] = 65535,
  ["friction"] = 1,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["density"] = 1,
  ["category"] = 1,
  ["sensor"] = false,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["rx"] = 0,
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 89.999992370605,
  ["sy"] = 1,
  ["sx"] = 7.2880001068115,
  ["tx"] = 26.19994354248,
  ["ty"] = 4.8333301544189,
}
,
}
,
}
,
}
,
  [22] = {
  ["name"] = "linelong02",
  ["entity"] = 9437202,
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
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["density"] = 1,
  ["category"] = 1,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["rx"] = 0,
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 89.999992370605,
  ["sy"] = 1,
  ["sx"] = 7.2880001068115,
  ["tx"] = 10.900032043457,
  ["ty"] = 4.8666634559631,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [23] = {
  ["name"] = "linelong03",
  ["entity"] = 9437203,
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
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["density"] = 1,
  ["category"] = 1,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["rx"] = 0,
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 89.999992370605,
  ["sy"] = 1,
  ["sx"] = 7.2880001068115,
  ["tx"] = 18.500061035156,
  ["ty"] = 4.8333301544189,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [24] = {
  ["name"] = "lineshort",
  ["entity"] = 7340052,
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
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["density"] = 1,
  ["category"] = 1,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["rx"] = 0,
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 89.999992370605,
  ["sy"] = 1,
  ["sx"] = 3,
  ["tx"] = 22.233337402344,
  ["ty"] = 0.96666711568832,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [25] = {
  ["name"] = "lineshort02",
  ["entity"] = 6291477,
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
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["density"] = 1,
  ["category"] = 1,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["rx"] = 0,
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 89.999995674289,
  ["sy"] = 1,
  ["sx"] = 3,
  ["tx"] = 14.700082778931,
  ["ty"] = 0.96666711568832,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [26] = {
  ["name"] = "playerAimHinge",
  ["entity"] = 6291478,
  ["selected"] = false,
  ["components"] = {
  [1] = {
  ["data"] = {
  ["motor"] = true,
  ["anchorx"] = 0,
  ["maxforce"] = 100,
  ["objectA"] = "playerTop",
  ["objectB"] = "playerAimer",
  ["anchory"] = 0.80000001192093,
}
,
  ["name"] = "Hingejoint",
}
,
}
,
}
,
  [27] = {
  ["name"] = "playerAimer",
  ["entity"] = 5242903,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["mask"] = 0,
  ["sensor"] = false,
  ["density"] = 1,
  ["dynamic"] = true,
  ["rotation"] = true,
  ["category"] = 2,
  ["friction"] = 1,
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
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["rx"] = 0,
  ["sx"] = 1,
  ["tx"] = 0,
  ["ty"] = 0.80000001192093,
}
,
  ["name"] = "Transform",
}
,
}
,
}
,
  [28] = {
  ["name"] = "playerBot",
  ["entity"] = 5242904,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["mask"] = 1,
  ["sensor"] = false,
  ["density"] = 1,
  ["dynamic"] = true,
  ["rotation"] = false,
  ["category"] = 2,
  ["friction"] = 0.30000001192093,
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
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["rx"] = 0,
  ["sx"] = 1,
  ["tx"] = 0,
  ["ty"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
}
,
  [29] = {
  ["name"] = "playerCrouchSlider",
  ["entity"] = 5242905,
  ["selected"] = false,
  ["components"] = {
  [1] = {
  ["data"] = {
  ["upperlimit"] = 0.40000000596046,
  ["anchorx"] = 0,
  ["maxforce"] = 100,
  ["objectB"] = "playerTop",
  ["lowerlimit"] = -0.30000001192093,
  ["axisy"] = 1,
  ["motor"] = true,
  ["axisx"] = 0,
  ["objectA"] = "playerBot",
  ["anchory"] = 0,
}
,
  ["name"] = "Sliderjoint",
}
,
}
,
}
,
  [30] = {
  ["name"] = "playerHand",
  ["entity"] = 5242906,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["mask"] = 1,
  ["sensor"] = false,
  ["density"] = 1,
  ["dynamic"] = true,
  ["rotation"] = true,
  ["category"] = 2,
  ["friction"] = 1,
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
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["rx"] = 0,
  ["sx"] = 1,
  ["tx"] = 0.60000002384186,
  ["ty"] = 0.80000001192093,
}
,
  ["name"] = "Transform",
}
,
}
,
}
,
  [31] = {
  ["name"] = "playerHandSlider",
  ["entity"] = 5242907,
  ["selected"] = false,
  ["components"] = {
  [1] = {
  ["data"] = {
  ["upperlimit"] = 0.69999998807907,
  ["anchorx"] = 0,
  ["maxforce"] = 100,
  ["objectB"] = "playerHand",
  ["lowerlimit"] = -0.10000000149012,
  ["axisy"] = 0,
  ["motor"] = true,
  ["axisx"] = 1,
  ["objectA"] = "playerAimer",
  ["anchory"] = 0.80000001192093,
}
,
  ["name"] = "Sliderjoint",
}
,
}
,
}
,
  [32] = {
  ["name"] = "playerTop",
  ["entity"] = 5242908,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["mask"] = 1,
  ["sensor"] = false,
  ["density"] = 1,
  ["dynamic"] = true,
  ["rotation"] = false,
  ["category"] = 2,
  ["friction"] = 1,
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
  ["sz"] = 1,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["rx"] = 0,
  ["sx"] = 1,
  ["tx"] = 0,
  ["ty"] = 0.80000001192093,
}
,
  ["name"] = "Transform",
}
,
}
,
}
,
  [33] = {
  ["name"] = "tilebox",
  ["entity"] = 5242909,
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
  ["mask"] = 65535,
  ["sensor"] = false,
  ["density"] = 1,
  ["dynamic"] = false,
  ["rotation"] = false,
  ["category"] = 1,
  ["friction"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["rx"] = -179.99998474121,
  ["sz"] = 0.74500000476837,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["tx"] = 1.4333333969116,
  ["ty"] = 4.6333303451538,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["selected"] = false,
}
,
  [34] = {
  ["name"] = "tilebox02",
  ["entity"] = 5242910,
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
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["density"] = 1,
  ["category"] = 1,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["rx"] = -179.99999134858,
  ["sz"] = 0.74500000476837,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["tx"] = 3.8999977111816,
  ["ty"] = 1.9333329200745,
}
,
}
,
}
,
  ["selected"] = false,
}
,
}
