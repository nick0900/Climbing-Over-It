loaded = {
  [15] = {
  ["entity"] = 2097166,
  ["components"] = {
  [1] = {
  ["name"] = "Sliderjoint",
  ["data"] = {
  ["anchorx"] = 0,
  ["lowerlimit"] = -0.10000000149012,
  ["motor"] = true,
  ["upperlimit"] = 0.69999998807907,
  ["anchory"] = 0.80000001192093,
  ["maxforce"] = 100,
  ["axisy"] = 0,
  ["objectB"] = "playerHand",
  ["objectA"] = "playerAimer",
  ["axisx"] = 1,
}
,
}
,
}
,
  ["name"] = "playerHandSlider",
  ["selected"] = false,
}
,
  [1] = {
  ["entity"] = 4194304,
  ["components"] = {
  [3] = {
  ["name"] = "Transform",
  ["data"] = {
  ["ry"] = 0,
  ["sy"] = 1,
  ["rx"] = 0,
  ["sx"] = 1,
  ["tx"] = 0,
  ["tz"] = 0,
  ["ty"] = 0,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
}
,
  [1] = {
  ["name"] = "Model",
  ["data"] = {
  ["model"] = "climber ball.obj",
  ["texture"] = "climber pallet.png",
}
,
}
,
  [2] = {
  ["name"] = "Parent",
  ["data"] = "playerBot",
}
,
}
,
  ["name"] = "climberBall",
  ["selected"] = false,
}
,
  [2] = {
  ["entity"] = 4194305,
  ["components"] = {
  [3] = {
  ["name"] = "Transform",
  ["data"] = {
  ["ry"] = 0,
  ["sy"] = 1,
  ["rx"] = 0,
  ["sx"] = 1,
  ["tx"] = 0,
  ["tz"] = 0,
  ["ty"] = 0,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
}
,
  [1] = {
  ["name"] = "Model",
  ["data"] = {
  ["model"] = "climber body.obj",
  ["texture"] = "climber pallet.png",
}
,
}
,
  [2] = {
  ["name"] = "Parent",
  ["data"] = "playerTop",
}
,
}
,
  ["name"] = "climberBody",
  ["selected"] = false,
}
,
  [3] = {
  ["entity"] = 4194306,
  ["components"] = {
  [3] = {
  ["name"] = "Transform",
  ["data"] = {
  ["ry"] = 0,
  ["sy"] = 1,
  ["rx"] = 0,
  ["sx"] = 1,
  ["tx"] = 0,
  ["tz"] = 0.61400002241135,
  ["ty"] = 0,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
}
,
  [1] = {
  ["name"] = "Model",
  ["data"] = {
  ["model"] = "climber hammer.obj",
  ["texture"] = "climber pallet.png",
}
,
}
,
  [2] = {
  ["name"] = "Parent",
  ["data"] = "playerHand",
}
,
}
,
  ["name"] = "climberHammer",
  ["selected"] = false,
}
,
  [4] = {
  ["entity"] = 4194307,
  ["components"] = {
  [3] = {
  ["name"] = "Transform",
  ["data"] = {
  ["ry"] = 0,
  ["sy"] = 1,
  ["rx"] = 0,
  ["sx"] = 1,
  ["tx"] = 0,
  ["tz"] = 0,
  ["ty"] = 0.42499995231628,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
}
,
  [1] = {
  ["name"] = "Model",
  ["data"] = {
  ["model"] = "climber head.obj",
  ["texture"] = "climber eyes.png",
}
,
}
,
  [2] = {
  ["name"] = "Parent",
  ["data"] = "playerTop",
}
,
}
,
  ["name"] = "climberHead",
  ["selected"] = false,
}
,
  [5] = {
  ["entity"] = 4194308,
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
  ["triggerFunction"] = "IncrementCoins",
  ["object"] = "coin",
}
,
}
,
  [3] = {
  ["name"] = "Model",
  ["data"] = {
  ["model"] = "coin.obj",
  ["texture"] = "climber pallet.png",
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
  ["rotation"] = false,
  ["density"] = 1,
  ["mask"] = 2,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["ry"] = 0,
  ["sy"] = 1,
  ["rx"] = 0,
  ["sx"] = 1,
  ["tx"] = 2.5666632652283,
  ["tz"] = 0,
  ["ty"] = 0.29999873042107,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
}
,
}
,
  ["name"] = "coin",
  ["selected"] = false,
}
,
  [6] = {
  ["entity"] = 4194309,
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
  ["model"] = "box diamond.obj",
  ["texture"] = "climber pallet.png",
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
  ["rotation"] = true,
  ["density"] = 1,
  ["mask"] = 65535,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["ry"] = 0,
  ["sy"] = 1,
  ["rx"] = 0,
  ["sx"] = 1,
  ["tx"] = 0.06666673719883,
  ["tz"] = 0,
  ["ty"] = 2.6666655540466,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
}
,
}
,
  ["name"] = "diamondbox",
  ["selected"] = false,
}
,
  [7] = {
  ["entity"] = 4194310,
  ["name"] = "goal",
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.20000000298023,
  ["hy"] = 0.5,
}
,
}
,
  [2] = {
  ["name"] = "HitTrigger",
  ["data"] = {
  ["triggerFunction"] = "victory",
  ["object"] = "goal",
}
,
}
,
  [3] = {
  ["name"] = "Model",
  ["data"] = {
  ["model"] = "flag.obj",
  ["texture"] = "climber pallet.png",
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
  ["rotation"] = false,
  ["density"] = 1,
  ["mask"] = 2,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sz"] = 1.8259999752045,
  ["rz"] = 0,
  ["rx"] = 0,
  ["sx"] = 2.0710000991821,
  ["tx"] = 4.5333271026611,
  ["tz"] = 0,
  ["ty"] = 0.29999873042107,
  ["sy"] = 1.7900000810623,
  ["ry"] = 0,
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
  ["entity"] = 4194311,
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
  ["model"] = "box line.obj",
  ["texture"] = "climber pallet.png",
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
  ["rotation"] = false,
  ["density"] = 1,
  ["mask"] = 65535,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["ry"] = 0,
  ["sy"] = 1,
  ["rx"] = 0,
  ["sx"] = 1,
  ["tx"] = 0,
  ["tz"] = 0,
  ["ty"] = -1.1000002622604,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
}
,
}
,
  ["name"] = "linebox",
  ["selected"] = false,
}
,
  [9] = {
  ["entity"] = 4194312,
  ["name"] = "tilebox",
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
  ["model"] = "box diamond.obj",
  ["texture"] = "climber pallet.png",
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
  ["rotation"] = false,
  ["density"] = 1,
  ["mask"] = 65535,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = -179.99998474121,
  ["sx"] = 1,
  ["tx"] = 4.5666637420654,
  ["tz"] = 0,
  ["ty"] = -1.1000002622604,
  ["sy"] = 1,
  ["ry"] = 0,
}
,
}
,
}
,
  ["selected"] = true,
}
,
  [10] = {
  ["entity"] = 4194313,
  ["components"] = {
  [1] = {
  ["name"] = "Hingejoint",
  ["data"] = {
  ["anchorx"] = 0,
  ["maxforce"] = 100,
  ["anchory"] = 0.80000001192093,
  ["objectB"] = "playerAimer",
  ["objectA"] = "playerTop",
  ["motor"] = true,
}
,
}
,
}
,
  ["name"] = "playerAimHinge",
  ["selected"] = false,
}
,
  [11] = {
  ["entity"] = 4194314,
  ["components"] = {
  [3] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 2,
  ["dynamic"] = true,
  ["sensor"] = false,
  ["rotation"] = true,
  ["density"] = 1,
  ["mask"] = 0,
  ["friction"] = 1,
}
,
}
,
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
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "Transform",
  ["data"] = {
  ["ry"] = 0,
  ["sy"] = 1,
  ["rx"] = 0,
  ["sx"] = 1,
  ["tx"] = 0,
  ["tz"] = 0,
  ["ty"] = 0.80000001192093,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
}
,
}
,
  ["name"] = "playerAimer",
  ["selected"] = false,
}
,
  [12] = {
  ["entity"] = 4194315,
  ["components"] = {
  [3] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 2,
  ["dynamic"] = true,
  ["sensor"] = false,
  ["rotation"] = false,
  ["density"] = 1,
  ["mask"] = 1,
  ["friction"] = 0.30000001192093,
}
,
}
,
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
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "Transform",
  ["data"] = {
  ["ry"] = 0,
  ["sy"] = 1,
  ["rx"] = 0,
  ["sx"] = 1,
  ["tx"] = 0,
  ["tz"] = 0,
  ["ty"] = 0,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
}
,
}
,
  ["name"] = "playerBot",
  ["selected"] = false,
}
,
  [13] = {
  ["entity"] = 4194316,
  ["components"] = {
  [1] = {
  ["name"] = "Sliderjoint",
  ["data"] = {
  ["anchorx"] = 0,
  ["lowerlimit"] = -0.30000001192093,
  ["motor"] = true,
  ["upperlimit"] = 0.40000000596046,
  ["anchory"] = 0,
  ["maxforce"] = 100,
  ["axisy"] = 1,
  ["objectB"] = "playerTop",
  ["objectA"] = "playerBot",
  ["axisx"] = 0,
}
,
}
,
}
,
  ["name"] = "playerCrouchSlider",
  ["selected"] = false,
}
,
  [14] = {
  ["entity"] = 2097165,
  ["components"] = {
  [3] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 2,
  ["dynamic"] = true,
  ["sensor"] = false,
  ["rotation"] = true,
  ["density"] = 1,
  ["mask"] = 1,
  ["friction"] = 1,
}
,
}
,
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hx"] = 0.15000000596046,
  ["hy"] = 0.34999999403954,
}
,
}
,
  [2] = {
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "Transform",
  ["data"] = {
  ["ry"] = 0,
  ["sy"] = 1,
  ["rx"] = 0,
  ["sx"] = 1,
  ["tx"] = 0.60000002384186,
  ["tz"] = 0,
  ["ty"] = 0.80000001192093,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
}
,
}
,
  ["name"] = "playerHand",
  ["selected"] = false,
}
,
  [16] = {
  ["entity"] = 2097167,
  ["components"] = {
  [3] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["category"] = 2,
  ["dynamic"] = true,
  ["sensor"] = false,
  ["rotation"] = false,
  ["density"] = 1,
  ["mask"] = 1,
  ["friction"] = 1,
}
,
}
,
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
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "Transform",
  ["data"] = {
  ["ry"] = 0,
  ["sy"] = 1,
  ["rx"] = 0,
  ["sx"] = 1,
  ["tx"] = 0,
  ["tz"] = 0,
  ["ty"] = 0.80000001192093,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
}
,
}
,
  ["name"] = "playerTop",
  ["selected"] = false,
}
,
}
