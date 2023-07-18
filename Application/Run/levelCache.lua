loaded = {
  [15] = {
  ["selected"] = false,
  ["entity"] = 2097167,
  ["name"] = "playerHandSlider",
  ["components"] = {
  [1] = {
  ["data"] = {
  ["anchorx"] = 0,
  ["anchory"] = 0.80000001192093,
  ["lowerlimit"] = -0.10000000149012,
  ["axisx"] = 1,
  ["maxforce"] = 100,
  ["axisy"] = 0,
  ["objectB"] = "playerHand",
  ["objectA"] = "playerAimer",
  ["motor"] = true,
  ["upperlimit"] = 0.69999998807907,
}
,
  ["name"] = "Sliderjoint",
}
,
}
,
}
,
  [1] = {
  ["selected"] = false,
  ["entity"] = 5242880,
  ["name"] = "climberBall",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sy"] = 1,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["ty"] = 0,
  ["tx"] = 0,
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
  [2] = {
  ["selected"] = false,
  ["entity"] = 5242881,
  ["name"] = "climberBody",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sy"] = 1,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["ty"] = 0,
  ["tx"] = 0,
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
  [3] = {
  ["selected"] = false,
  ["entity"] = 5242882,
  ["name"] = "climberHammer",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sy"] = 1,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tz"] = 0.61400002241135,
  ["sz"] = 1,
  ["rz"] = 0,
  ["ty"] = 0,
  ["tx"] = 0,
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
  [4] = {
  ["selected"] = false,
  ["entity"] = 5242883,
  ["name"] = "climberHead",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sy"] = 1,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["ty"] = 0.42499995231628,
  ["tx"] = 0,
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
  [5] = {
  ["selected"] = false,
  ["entity"] = 4194308,
  ["name"] = "coin",
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
  ["category"] = 1,
  ["friction"] = 1,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["mask"] = 2,
  ["density"] = 1,
  ["sensor"] = true,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [6] = {
  ["data"] = {
  ["sy"] = 1,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["ty"] = 0.29999873042107,
  ["tx"] = 2.5666632652283,
}
,
  ["name"] = "Transform",
}
,
}
,
}
,
  [6] = {
  ["selected"] = false,
  ["entity"] = 5242886,
  ["name"] = "diamondbox",
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
  ["category"] = 1,
  ["friction"] = 1,
  ["rotation"] = true,
  ["dynamic"] = true,
  ["mask"] = 65535,
  ["density"] = 1,
  ["sensor"] = false,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["sy"] = 1,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["ty"] = 2.6666655540466,
  ["tx"] = 0.06666673719883,
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
  ["selected"] = false,
  ["entity"] = 5242887,
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
  ["category"] = 1,
  ["friction"] = 1,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["mask"] = 2,
  ["density"] = 1,
  ["sensor"] = true,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [6] = {
  ["data"] = {
  ["tx"] = 4.5333271026611,
  ["sx"] = 2.0710000991821,
  ["sz"] = 1.8259999752045,
  ["rz"] = 0,
  ["tz"] = 0,
  ["ry"] = 0,
  ["sy"] = 1.7900000810623,
  ["ty"] = 0.29999873042107,
  ["rx"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["name"] = "goal",
}
,
  [8] = {
  ["selected"] = false,
  ["entity"] = 5242888,
  ["name"] = "linebox",
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
  ["category"] = 1,
  ["friction"] = 1,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["mask"] = 65535,
  ["density"] = 1,
  ["sensor"] = false,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["sy"] = 1,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["ty"] = -1.1000002622604,
  ["tx"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
}
,
  [9] = {
  ["selected"] = true,
  ["entity"] = 5242889,
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
  ["category"] = 1,
  ["friction"] = 1,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["mask"] = 65535,
  ["density"] = 1,
  ["sensor"] = false,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["tx"] = 4.5666637420654,
  ["sx"] = 1,
  ["sz"] = 1,
  ["rz"] = 0,
  ["tz"] = 0,
  ["ry"] = 0,
  ["sy"] = 1,
  ["ty"] = -1.1000002622604,
  ["rx"] = -179.99998474121,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["name"] = "tilebox",
}
,
  [10] = {
  ["selected"] = false,
  ["entity"] = 5242890,
  ["name"] = "playerAimHinge",
  ["components"] = {
  [1] = {
  ["data"] = {
  ["maxforce"] = 100,
  ["anchorx"] = 0,
  ["anchory"] = 0.80000001192093,
  ["objectB"] = "playerAimer",
  ["motor"] = true,
  ["objectA"] = "playerTop",
}
,
  ["name"] = "Hingejoint",
}
,
}
,
}
,
  [11] = {
  ["selected"] = false,
  ["entity"] = 5242891,
  ["name"] = "playerAimer",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["category"] = 2,
  ["friction"] = 1,
  ["rotation"] = true,
  ["dynamic"] = true,
  ["mask"] = 0,
  ["density"] = 1,
  ["sensor"] = false,
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
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["ty"] = 0.80000001192093,
  ["tx"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
}
,
  [12] = {
  ["selected"] = false,
  ["entity"] = 5242892,
  ["name"] = "playerBot",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["category"] = 2,
  ["friction"] = 0.30000001192093,
  ["rotation"] = false,
  ["dynamic"] = true,
  ["mask"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
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
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["ty"] = 0,
  ["tx"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
}
,
  [13] = {
  ["selected"] = false,
  ["entity"] = 4194317,
  ["name"] = "playerCrouchSlider",
  ["components"] = {
  [1] = {
  ["data"] = {
  ["anchorx"] = 0,
  ["anchory"] = 0,
  ["lowerlimit"] = -0.30000001192093,
  ["axisx"] = 0,
  ["maxforce"] = 100,
  ["axisy"] = 1,
  ["objectB"] = "playerTop",
  ["objectA"] = "playerBot",
  ["motor"] = true,
  ["upperlimit"] = 0.40000000596046,
}
,
  ["name"] = "Sliderjoint",
}
,
}
,
}
,
  [14] = {
  ["selected"] = false,
  ["entity"] = 2097166,
  ["name"] = "playerHand",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["category"] = 2,
  ["friction"] = 1,
  ["rotation"] = true,
  ["dynamic"] = true,
  ["mask"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
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
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["ty"] = 0.80000001192093,
  ["tx"] = 0.60000002384186,
}
,
  ["name"] = "Transform",
}
,
}
,
}
,
  [16] = {
  ["selected"] = false,
  ["entity"] = 4194309,
  ["name"] = "playerTop",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["category"] = 2,
  ["friction"] = 1,
  ["rotation"] = false,
  ["dynamic"] = true,
  ["mask"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
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
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tz"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["ty"] = 0.80000001192093,
  ["tx"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
}
,
}
