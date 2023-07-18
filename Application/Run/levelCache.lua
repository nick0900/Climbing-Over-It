loaded = {
  [15] = {
  ["selected"] = false,
  ["entity"] = 14,
  ["name"] = "playerHandSlider",
  ["components"] = {
  [1] = {
  ["name"] = "Sliderjoint",
  ["data"] = {
  ["objectB"] = "playerHand",
  ["objectA"] = "playerAimer",
  ["lowerlimit"] = -0.10000000149012,
  ["upperlimit"] = 0.69999998807907,
  ["anchory"] = 0.80000001192093,
  ["axisy"] = 0,
  ["motor"] = true,
  ["anchorx"] = 0,
  ["maxforce"] = 100,
  ["axisx"] = 1,
}
,
}
,
}
,
}
,
  [1] = {
  ["selected"] = false,
  ["entity"] = 1048576,
  ["name"] = "climberBall",
  ["components"] = {
  [3] = {
  ["name"] = "Transform",
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
}
,
  [1] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "climber ball.obj",
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
}
,
  [2] = {
  ["selected"] = false,
  ["entity"] = 1048577,
  ["name"] = "climberBody",
  ["components"] = {
  [3] = {
  ["name"] = "Transform",
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
}
,
  [1] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "climber body.obj",
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
}
,
  [3] = {
  ["selected"] = false,
  ["entity"] = 1048578,
  ["name"] = "climberHammer",
  ["components"] = {
  [3] = {
  ["name"] = "Transform",
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
}
,
  [1] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "climber hammer.obj",
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
}
,
  [4] = {
  ["selected"] = false,
  ["entity"] = 1048579,
  ["name"] = "climberHead",
  ["components"] = {
  [3] = {
  ["name"] = "Transform",
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
}
,
  [1] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber eyes.png",
  ["model"] = "climber head.obj",
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
}
,
  [5] = {
  ["selected"] = false,
  ["entity"] = 1048580,
  ["name"] = "coin",
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
  ["object"] = "coin",
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
  ["rotation"] = false,
  ["sensor"] = true,
  ["dynamic"] = false,
  ["friction"] = 1,
  ["density"] = 1,
  ["category"] = 1,
  ["mask"] = 2,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
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
}
,
}
,
}
,
  [6] = {
  ["selected"] = false,
  ["entity"] = 1048581,
  ["name"] = "diamondbox",
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
  ["rotation"] = true,
  ["sensor"] = false,
  ["dynamic"] = true,
  ["friction"] = 1,
  ["density"] = 1,
  ["category"] = 1,
  ["mask"] = 65535,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
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
}
,
}
,
}
,
  [7] = {
  ["selected"] = false,
  ["entity"] = 1048582,
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
  ["object"] = "goal",
  ["triggerFunction"] = "victory",
}
,
}
,
  [3] = {
  ["name"] = "Model",
  ["data"] = {
  ["texture"] = "climber pallet.png",
  ["model"] = "flag.obj",
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
  ["rotation"] = false,
  ["sensor"] = true,
  ["dynamic"] = false,
  ["friction"] = 1,
  ["density"] = 1,
  ["category"] = 1,
  ["mask"] = 2,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
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
}
,
}
,
}
,
  [8] = {
  ["selected"] = false,
  ["entity"] = 1048583,
  ["name"] = "linebox",
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
  ["rotation"] = false,
  ["sensor"] = false,
  ["dynamic"] = false,
  ["friction"] = 1,
  ["density"] = 1,
  ["category"] = 1,
  ["mask"] = 65535,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
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
}
,
}
,
}
,
  [9] = {
  ["selected"] = true,
  ["entity"] = 1048584,
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
  ["rotation"] = false,
  ["sensor"] = false,
  ["dynamic"] = false,
  ["friction"] = 1,
  ["density"] = 1,
  ["category"] = 1,
  ["mask"] = 65535,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
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
}
,
}
,
}
,
  [10] = {
  ["selected"] = false,
  ["entity"] = 1048585,
  ["name"] = "playerAimHinge",
  ["components"] = {
  [1] = {
  ["name"] = "Hingejoint",
  ["data"] = {
  ["anchory"] = 0.80000001192093,
  ["objectA"] = "playerTop",
  ["motor"] = true,
  ["anchorx"] = 0,
  ["maxforce"] = 100,
  ["objectB"] = "playerAimer",
}
,
}
,
}
,
}
,
  [11] = {
  ["selected"] = false,
  ["entity"] = 1048586,
  ["name"] = "playerAimer",
  ["components"] = {
  [3] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["rotation"] = true,
  ["sensor"] = false,
  ["dynamic"] = true,
  ["friction"] = 1,
  ["density"] = 1,
  ["category"] = 2,
  ["mask"] = 0,
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
}
,
}
,
}
,
  [12] = {
  ["selected"] = false,
  ["entity"] = 1048587,
  ["name"] = "playerBot",
  ["components"] = {
  [3] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["rotation"] = false,
  ["sensor"] = false,
  ["dynamic"] = true,
  ["friction"] = 0.30000001192093,
  ["density"] = 1,
  ["category"] = 2,
  ["mask"] = 1,
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
}
,
}
,
}
,
  [13] = {
  ["selected"] = false,
  ["entity"] = 1048588,
  ["name"] = "playerCrouchSlider",
  ["components"] = {
  [1] = {
  ["name"] = "Sliderjoint",
  ["data"] = {
  ["objectB"] = "playerTop",
  ["objectA"] = "playerBot",
  ["lowerlimit"] = -0.30000001192093,
  ["upperlimit"] = 0.40000000596046,
  ["anchory"] = 0,
  ["axisy"] = 1,
  ["motor"] = true,
  ["anchorx"] = 0,
  ["maxforce"] = 100,
  ["axisx"] = 0,
}
,
}
,
}
,
}
,
  [14] = {
  ["selected"] = false,
  ["entity"] = 13,
  ["name"] = "playerHand",
  ["components"] = {
  [3] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["rotation"] = true,
  ["sensor"] = false,
  ["dynamic"] = true,
  ["friction"] = 1,
  ["density"] = 1,
  ["category"] = 2,
  ["mask"] = 1,
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
}
,
}
,
}
,
  [16] = {
  ["selected"] = false,
  ["entity"] = 15,
  ["name"] = "playerTop",
  ["components"] = {
  [3] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["rotation"] = false,
  ["sensor"] = false,
  ["dynamic"] = true,
  ["friction"] = 1,
  ["density"] = 1,
  ["category"] = 2,
  ["mask"] = 1,
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
}
,
}
,
}
,
}
