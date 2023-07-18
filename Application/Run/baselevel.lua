loaded = {
  [1] = {
  ["name"] = "box",
  ["entity"] = 1048576,
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
  ["dynamic"] = true,
  ["mask"] = 65535,
  ["rotation"] = true,
  ["friction"] = 1,
  ["sensor"] = false,
  ["category"] = 1,
  ["density"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["sz"] = 1,
  ["tx"] = 8.1956386566162e-08,
  ["ry"] = 0,
  ["rx"] = 0,
  ["ty"] = 2.6666655540466,
  ["tz"] = 0,
  ["rz"] = 0,
  ["sx"] = 1,
  ["sy"] = 1,
}
,
  ["name"] = "Transform",
}
,
}
,
}
,
  [2] = {
  ["name"] = "climberBall",
  ["entity"] = 1048580,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["ty"] = 0,
  ["rz"] = 0,
  ["sx"] = 1,
  ["sy"] = 1,
  ["sz"] = 1,
  ["tx"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["tz"] = 0,
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
  ["entity"] = 1048581,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["ty"] = 0,
  ["rz"] = 0,
  ["sx"] = 1,
  ["sy"] = 1,
  ["sz"] = 1,
  ["tx"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["tz"] = 0,
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
  ["entity"] = 1048582,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["ty"] = 0,
  ["rz"] = 0,
  ["sx"] = 1,
  ["sy"] = 1,
  ["sz"] = 1,
  ["tx"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["tz"] = 0.61400002241135,
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
  ["entity"] = 1048583,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["ty"] = 0.42499995231628,
  ["rz"] = 0,
  ["sx"] = 1,
  ["sy"] = 1,
  ["sz"] = 1,
  ["tx"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["tz"] = 0,
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
  ["entity"] = 1048584,
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
  ["triggerFunction"] = "IncrementCoins",
  ["object"] = "coin",
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
  ["dynamic"] = false,
  ["mask"] = 2,
  ["rotation"] = false,
  ["friction"] = 1,
  ["sensor"] = true,
  ["category"] = 1,
  ["density"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [6] = {
  ["data"] = {
  ["sz"] = 1,
  ["tx"] = 2.5666632652283,
  ["ry"] = 0,
  ["rx"] = 0,
  ["ty"] = 0.29999873042107,
  ["tz"] = 0,
  ["rz"] = 0,
  ["sx"] = 1,
  ["sy"] = 1,
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
  ["name"] = "goal",
  ["entity"] = 1048587,
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
  ["object"] = "goal",
  ["triggerFunction"] = "",
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
  ["dynamic"] = false,
  ["mask"] = 2,
  ["rotation"] = false,
  ["friction"] = 1,
  ["sensor"] = true,
  ["category"] = 1,
  ["density"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [6] = {
  ["data"] = {
  ["sz"] = 1,
  ["tx"] = -2.3666694164276,
  ["ry"] = 0,
  ["rx"] = 0,
  ["ty"] = 0.29999873042107,
  ["tz"] = 0,
  ["rz"] = 0,
  ["sx"] = 1,
  ["sy"] = 1,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["selected"] = true,
}
,
  [8] = {
  ["name"] = "ground",
  ["entity"] = 1048588,
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
  ["dynamic"] = false,
  ["mask"] = 65535,
  ["rotation"] = false,
  ["friction"] = 1,
  ["sensor"] = false,
  ["category"] = 1,
  ["density"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["sz"] = 1,
  ["tx"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["ty"] = -1.1000002622604,
  ["tz"] = 0,
  ["rz"] = 0,
  ["sx"] = 1,
  ["sy"] = 1,
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
  ["name"] = "playerAimHinge",
  ["entity"] = 1048590,
  ["selected"] = false,
  ["components"] = {
  [1] = {
  ["data"] = {
  ["anchory"] = 0.80000001192093,
  ["objectB"] = "playerAimer",
  ["motor"] = true,
  ["anchorx"] = 0,
  ["maxforce"] = 100,
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
  [10] = {
  ["name"] = "playerAimer",
  ["entity"] = 1048591,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["dynamic"] = true,
  ["mask"] = 0,
  ["rotation"] = true,
  ["friction"] = 1,
  ["sensor"] = false,
  ["category"] = 2,
  ["density"] = 1,
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
  ["ty"] = 0.80000001192093,
  ["rz"] = 0,
  ["sx"] = 1,
  ["sy"] = 1,
  ["sz"] = 1,
  ["tx"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["tz"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
}
,
  [11] = {
  ["name"] = "playerBot",
  ["entity"] = 1048592,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["dynamic"] = true,
  ["mask"] = 1,
  ["rotation"] = false,
  ["friction"] = 0.30000001192093,
  ["sensor"] = false,
  ["category"] = 2,
  ["density"] = 1,
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
  ["ty"] = 0,
  ["rz"] = 0,
  ["sx"] = 1,
  ["sy"] = 1,
  ["sz"] = 1,
  ["tx"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["tz"] = 0,
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
  ["name"] = "playerCrouchSlider",
  ["entity"] = 1048593,
  ["selected"] = false,
  ["components"] = {
  [1] = {
  ["data"] = {
  ["axisx"] = 0,
  ["anchorx"] = 0,
  ["axisy"] = 1,
  ["motor"] = true,
  ["upperlimit"] = 0.40000000596046,
  ["lowerlimit"] = -0.30000001192093,
  ["anchory"] = 0,
  ["objectB"] = "playerTop",
  ["objectA"] = "playerBot",
  ["maxforce"] = 100,
}
,
  ["name"] = "Sliderjoint",
}
,
}
,
}
,
  [13] = {
  ["name"] = "playerHand",
  ["entity"] = 1048594,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["dynamic"] = true,
  ["mask"] = 1,
  ["rotation"] = true,
  ["friction"] = 1,
  ["sensor"] = false,
  ["category"] = 2,
  ["density"] = 1,
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
  ["ty"] = 0.80000001192093,
  ["rz"] = 0,
  ["sx"] = 1,
  ["sy"] = 1,
  ["sz"] = 1,
  ["tx"] = 0.60000002384186,
  ["ry"] = 0,
  ["rx"] = 0,
  ["tz"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
}
,
  [14] = {
  ["name"] = "playerHandSlider",
  ["entity"] = 1048595,
  ["selected"] = false,
  ["components"] = {
  [1] = {
  ["data"] = {
  ["axisx"] = 1,
  ["anchorx"] = 0,
  ["axisy"] = 0,
  ["motor"] = true,
  ["upperlimit"] = 0.69999998807907,
  ["lowerlimit"] = -0.10000000149012,
  ["anchory"] = 0.80000001192093,
  ["objectB"] = "playerHand",
  ["objectA"] = "playerAimer",
  ["maxforce"] = 100,
}
,
  ["name"] = "Sliderjoint",
}
,
}
,
}
,
  [15] = {
  ["name"] = "playerTop",
  ["entity"] = 1048596,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["dynamic"] = true,
  ["mask"] = 1,
  ["rotation"] = false,
  ["friction"] = 1,
  ["sensor"] = false,
  ["category"] = 2,
  ["density"] = 1,
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
  ["ty"] = 0.80000001192093,
  ["rz"] = 0,
  ["sx"] = 1,
  ["sy"] = 1,
  ["sz"] = 1,
  ["tx"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["tz"] = 0,
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
