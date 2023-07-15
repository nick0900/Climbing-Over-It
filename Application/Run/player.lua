loaded = {
  [1] = {
  ["components"] = {
  [3] = {
  ["name"] = "Transform",
  ["data"] = {
  ["ty"] = 0,
  ["tz"] = 0,
  ["tx"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["rz"] = 0,
  ["ry"] = 0,
  ["sz"] = 1,
  ["sy"] = 1,
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
  ["entity"] = 12582912,
  ["selected"] = false,
}
,
  [2] = {
  ["components"] = {
  [3] = {
  ["name"] = "Transform",
  ["data"] = {
  ["ty"] = 0,
  ["tz"] = 0,
  ["tx"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["rz"] = 0,
  ["ry"] = 0,
  ["sz"] = 1,
  ["sy"] = 1,
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
  ["entity"] = 12582913,
  ["selected"] = false,
}
,
  [3] = {
  ["components"] = {
  [3] = {
  ["data"] = {
  ["ty"] = 0,
  ["tz"] = 0.61400002241135,
  ["tx"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["rz"] = 0,
  ["sz"] = 1,
  ["ry"] = 0,
  ["sy"] = 1,
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
  ["name"] = "climberHammer",
  ["entity"] = 12582914,
  ["selected"] = false,
}
,
  [4] = {
  ["components"] = {
  [3] = {
  ["name"] = "Transform",
  ["data"] = {
  ["ty"] = 0.42499995231628,
  ["tz"] = 0,
  ["tx"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["rz"] = 0,
  ["ry"] = 0,
  ["sz"] = 1,
  ["sy"] = 1,
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
  ["entity"] = 12582915,
  ["selected"] = false,
}
,
  [5] = {
  ["components"] = {
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hy"] = 0.5,
  ["hx"] = 0.5,
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
  ["density"] = 1,
  ["dynamic"] = false,
  ["rotation"] = false,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["category"] = 1,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["ty"] = -1.1000002622604,
  ["tz"] = 0,
  ["tx"] = 0,
  ["sx"] = 7.9870004653931,
  ["rx"] = 0,
  ["sy"] = 1,
  ["ry"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
}
,
}
,
}
,
  ["name"] = "ground",
  ["entity"] = 12582916,
  ["selected"] = false,
}
,
  [6] = {
  ["components"] = {
  [1] = {
  ["name"] = "Hingejoint",
  ["data"] = {
  ["motor"] = false,
  ["anchory"] = 0.80000001192093,
  ["anchorx"] = 0,
  ["maxforce"] = 0,
  ["objectB"] = "playerAimer",
  ["objectA"] = "playerTop",
}
,
}
,
}
,
  ["name"] = "playerAimHinge",
  ["entity"] = 12582917,
  ["selected"] = false,
}
,
  [7] = {
  ["components"] = {
  [3] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["density"] = 1,
  ["dynamic"] = true,
  ["rotation"] = true,
  ["mask"] = 0,
  ["sensor"] = false,
  ["category"] = 2,
  ["friction"] = 1,
}
,
}
,
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hy"] = 0.10000000149012,
  ["hx"] = 0.10000000149012,
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
  ["ty"] = 0.80000001192093,
  ["tz"] = 0,
  ["tx"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["rz"] = 0,
  ["sz"] = 1,
  ["ry"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["name"] = "playerAimer",
  ["entity"] = 12582918,
  ["selected"] = false,
}
,
  [8] = {
  ["components"] = {
  [3] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["density"] = 1,
  ["dynamic"] = true,
  ["rotation"] = false,
  ["mask"] = 1,
  ["sensor"] = false,
  ["category"] = 2,
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
  ["ty"] = 0,
  ["tz"] = 0,
  ["tx"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["rz"] = 0,
  ["ry"] = 0,
  ["sz"] = 1,
  ["sy"] = 1,
}
,
}
,
}
,
  ["name"] = "playerBot",
  ["entity"] = 7340039,
  ["selected"] = false,
}
,
  [9] = {
  ["components"] = {
  [1] = {
  ["name"] = "Sliderjoint",
  ["data"] = {
  ["motor"] = false,
  ["upperlimit"] = 0.40000000596046,
  ["maxforce"] = 0,
  ["objectA"] = "playerBot",
  ["anchory"] = 0,
  ["axisy"] = 1,
  ["objectB"] = "playerTop",
  ["anchorx"] = 0,
  ["axisx"] = 0,
  ["lowerlimit"] = -0.30000001192093,
}
,
}
,
}
,
  ["name"] = "playerCrouchSlider",
  ["entity"] = 7340040,
  ["selected"] = false,
}
,
  [10] = {
  ["components"] = {
  [3] = {
  ["data"] = {
  ["density"] = 1,
  ["sensor"] = false,
  ["rotation"] = true,
  ["mask"] = 1,
  ["dynamic"] = true,
  ["category"] = 2,
  ["friction"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [1] = {
  ["data"] = {
  ["hy"] = 0.34999999403954,
  ["hx"] = 0.15000000596046,
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
  ["tz"] = 0,
  ["tx"] = 0.60000002384186,
  ["sx"] = 1,
  ["rx"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["ry"] = 0,
  ["sy"] = 1,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["name"] = "playerHand",
  ["entity"] = 7340041,
  ["selected"] = true,
}
,
  [11] = {
  ["components"] = {
}
,
  ["name"] = "playerHandSlider",
  ["entity"] = 4194314,
  ["selected"] = false,
}
,
  [12] = {
  ["components"] = {
  [3] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["density"] = 1,
  ["dynamic"] = true,
  ["rotation"] = false,
  ["mask"] = 1,
  ["sensor"] = false,
  ["category"] = 2,
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
  ["ty"] = 0.80000001192093,
  ["tz"] = 0,
  ["tx"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
  ["rz"] = 0,
  ["ry"] = 0,
  ["sz"] = 1,
  ["sy"] = 1,
}
,
}
,
}
,
  ["name"] = "playerTop",
  ["entity"] = 4194315,
  ["selected"] = false,
}
,
}
