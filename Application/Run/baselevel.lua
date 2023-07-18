loaded = {
  [15] = {
  ["entity"] = 1048591,
  ["components"] = {
  [1] = {
  ["data"] = {
  ["motor"] = true,
  ["anchorx"] = 0,
  ["upperlimit"] = 0.69999998807907,
  ["axisx"] = 1,
  ["axisy"] = 0,
  ["objectB"] = "playerHand",
  ["objectA"] = "playerAimer",
  ["maxforce"] = 100,
  ["lowerlimit"] = -0.10000000149012,
  ["anchory"] = 0.80000001192093,
}
,
  ["name"] = "Sliderjoint",
}
,
}
,
  ["name"] = "playerHandSlider",
  ["selected"] = false,
}
,
  [1] = {
  ["entity"] = 2097152,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["tz"] = 0,
  ["tx"] = 0,
  ["ty"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
  ["name"] = "Transform",
}
,
  [1] = {
  ["data"] = {
  ["model"] = "climber ball.obj",
  ["texture"] = "climber pallet.png",
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
  ["name"] = "climberBall",
  ["selected"] = false,
}
,
  [2] = {
  ["entity"] = 2097153,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["tz"] = 0,
  ["tx"] = 0,
  ["ty"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
  ["name"] = "Transform",
}
,
  [1] = {
  ["data"] = {
  ["model"] = "climber body.obj",
  ["texture"] = "climber pallet.png",
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
  ["name"] = "climberBody",
  ["selected"] = false,
}
,
  [3] = {
  ["entity"] = 2097154,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["tz"] = 0.61400002241135,
  ["tx"] = 0,
  ["ty"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
  ["name"] = "Transform",
}
,
  [1] = {
  ["data"] = {
  ["model"] = "climber hammer.obj",
  ["texture"] = "climber pallet.png",
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
  ["name"] = "climberHammer",
  ["selected"] = false,
}
,
  [4] = {
  ["entity"] = 2097155,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["tz"] = 0,
  ["tx"] = 0,
  ["ty"] = 0.42499995231628,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
  ["name"] = "Transform",
}
,
  [1] = {
  ["data"] = {
  ["model"] = "climber head.obj",
  ["texture"] = "climber eyes.png",
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
  ["name"] = "climberHead",
  ["selected"] = false,
}
,
  [5] = {
  ["entity"] = 2097156,
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
  ["triggerFunction"] = "IncrementCoins",
  ["object"] = "coin",
}
,
  ["name"] = "HitTrigger",
}
,
  [3] = {
  ["data"] = {
  ["model"] = "coin.obj",
  ["texture"] = "climber pallet.png",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = true,
  ["friction"] = 1,
  ["rotation"] = false,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [6] = {
  ["data"] = {
  ["tz"] = 0,
  ["tx"] = 2.5666632652283,
  ["ty"] = 0.29999873042107,
  ["sy"] = 1,
  ["sx"] = 1,
  ["rx"] = 0,
  ["ry"] = 0,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["name"] = "coin",
  ["selected"] = false,
}
,
  [6] = {
  ["entity"] = 2097158,
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
  ["model"] = "box diamond.obj",
  ["texture"] = "climber pallet.png",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["friction"] = 1,
  ["rotation"] = true,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["tz"] = 0,
  ["tx"] = 0.06666673719883,
  ["ty"] = 2.6666655540466,
  ["sy"] = 1,
  ["ry"] = 0,
  ["rx"] = 0,
  ["sx"] = 1,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["name"] = "diamondbox",
  ["selected"] = false,
}
,
  [7] = {
  ["entity"] = 2097159,
  ["selected"] = true,
  ["name"] = "goal",
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
  ["model"] = "flag.obj",
  ["texture"] = "climber pallet.png",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = true,
  ["friction"] = 1,
  ["rotation"] = false,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [6] = {
  ["data"] = {
  ["tz"] = 0,
  ["tx"] = -2.7666690349579,
  ["ty"] = 0.29999873042107,
  ["rx"] = 0,
  ["sx"] = 2.0710000991821,
  ["sy"] = 1.7900000810623,
  ["ry"] = 0,
  ["rz"] = 0,
  ["sz"] = 1.8259999752045,
}
,
  ["name"] = "Transform",
}
,
}
,
}
,
  [8] = {
  ["entity"] = 2097160,
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
  ["model"] = "box line.obj",
  ["texture"] = "climber pallet.png",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["friction"] = 1,
  ["rotation"] = false,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["tz"] = 0,
  ["tx"] = 0,
  ["ty"] = -1.1000002622604,
  ["sy"] = 1,
  ["ry"] = 0,
  ["rx"] = 0,
  ["sx"] = 1,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["name"] = "linebox",
  ["selected"] = false,
}
,
  [9] = {
  ["entity"] = 2097161,
  ["selected"] = false,
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
  ["mask"] = 65535,
  ["category"] = 1,
  ["dynamic"] = false,
  ["density"] = 1,
  ["rotation"] = false,
  ["friction"] = 1,
  ["sensor"] = false,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tz"] = 0,
  ["tx"] = 1.2666667699814,
  ["ty"] = -1.1000002622604,
  ["sy"] = 1,
  ["ry"] = 0,
  ["rx"] = -179.99998474121,
  ["sx"] = 1,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
}
,
}
,
}
,
  [10] = {
  ["entity"] = 2097162,
  ["components"] = {
  [1] = {
  ["data"] = {
  ["anchory"] = 0.80000001192093,
  ["objectB"] = "playerAimer",
  ["anchorx"] = 0,
  ["maxforce"] = 100,
  ["objectA"] = "playerTop",
  ["motor"] = true,
}
,
  ["name"] = "Hingejoint",
}
,
}
,
  ["name"] = "playerAimHinge",
  ["selected"] = false,
}
,
  [11] = {
  ["entity"] = 2097163,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["mask"] = 0,
  ["dynamic"] = true,
  ["category"] = 2,
  ["density"] = 1,
  ["sensor"] = false,
  ["friction"] = 1,
  ["rotation"] = true,
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
  ["tz"] = 0,
  ["tx"] = 0,
  ["ty"] = 0.80000001192093,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["name"] = "playerAimer",
  ["selected"] = false,
}
,
  [12] = {
  ["entity"] = 2097164,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["mask"] = 1,
  ["dynamic"] = true,
  ["category"] = 2,
  ["density"] = 1,
  ["sensor"] = false,
  ["friction"] = 0.30000001192093,
  ["rotation"] = false,
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
  ["tz"] = 0,
  ["tx"] = 0,
  ["ty"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["name"] = "playerBot",
  ["selected"] = false,
}
,
  [13] = {
  ["entity"] = 2097165,
  ["components"] = {
  [1] = {
  ["data"] = {
  ["motor"] = true,
  ["anchorx"] = 0,
  ["upperlimit"] = 0.40000000596046,
  ["axisx"] = 0,
  ["axisy"] = 1,
  ["objectB"] = "playerTop",
  ["objectA"] = "playerBot",
  ["maxforce"] = 100,
  ["lowerlimit"] = -0.30000001192093,
  ["anchory"] = 0,
}
,
  ["name"] = "Sliderjoint",
}
,
}
,
  ["name"] = "playerCrouchSlider",
  ["selected"] = false,
}
,
  [14] = {
  ["entity"] = 2097166,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["mask"] = 1,
  ["dynamic"] = true,
  ["category"] = 2,
  ["density"] = 1,
  ["sensor"] = false,
  ["friction"] = 1,
  ["rotation"] = true,
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
  ["tz"] = 0,
  ["tx"] = 0.60000002384186,
  ["ty"] = 0.80000001192093,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["name"] = "playerHand",
  ["selected"] = false,
}
,
  [16] = {
  ["entity"] = 2097157,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["mask"] = 1,
  ["dynamic"] = true,
  ["category"] = 2,
  ["density"] = 1,
  ["sensor"] = false,
  ["friction"] = 1,
  ["rotation"] = false,
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
  ["tz"] = 0,
  ["tx"] = 0,
  ["ty"] = 0.80000001192093,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["rz"] = 0,
  ["sz"] = 1,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["name"] = "playerTop",
  ["selected"] = false,
}
,
}
