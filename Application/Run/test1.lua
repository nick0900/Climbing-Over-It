loaded = {
  [1] = {
  ["components"] = {
  [3] = {
  ["data"] = {
  ["ty"] = 0,
  ["tx"] = 0,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["sy"] = 1,
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
  ["entity"] = 0,
  ["name"] = "climberBall",
  ["selected"] = false,
}
,
  [2] = {
  ["components"] = {
  [3] = {
  ["data"] = {
  ["ty"] = 0,
  ["tx"] = 0,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["sy"] = 1,
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
  ["entity"] = 1,
  ["name"] = "climberBody",
  ["selected"] = false,
}
,
  [3] = {
  ["components"] = {
  [3] = {
  ["data"] = {
  ["ty"] = 0,
  ["tx"] = 0,
  ["tz"] = 0.61400002241135,
  ["ry"] = 0,
  ["rx"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
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
  ["entity"] = 2,
  ["name"] = "climberHammer",
  ["selected"] = false,
}
,
  [4] = {
  ["components"] = {
  [3] = {
  ["data"] = {
  ["ty"] = 0.42499995231628,
  ["tx"] = 0,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["sy"] = 1,
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
  ["entity"] = 3,
  ["name"] = "climberHead",
  ["selected"] = false,
}
,
  [5] = {
  ["components"] = {
  [1] = {
  ["data"] = {
  ["hy"] = 0.5,
  ["hx"] = 0.5,
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
  ["rotation"] = false,
  ["sensor"] = false,
  ["category"] = 1,
  ["mask"] = 65535,
  ["density"] = 1,
  ["dynamic"] = false,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["ty"] = -1.1000002622604,
  ["tx"] = 0,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 7.9870004653931,
  ["sy"] = 1,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["entity"] = 4,
  ["name"] = "ground",
  ["selected"] = false,
}
,
  [6] = {
  ["components"] = {
  [1] = {
  ["data"] = {
  ["anchory"] = 0.80000001192093,
  ["objectA"] = "playerTop",
  ["objectB"] = "playerAimer",
  ["anchorx"] = 0,
  ["motor"] = true,
  ["maxforce"] = 100000,
}
,
  ["name"] = "Hingejoint",
}
,
}
,
  ["entity"] = 5,
  ["name"] = "playerAimHinge",
  ["selected"] = false,
}
,
  [7] = {
  ["components"] = {
  [3] = {
  ["data"] = {
  ["friction"] = 1,
  ["rotation"] = true,
  ["sensor"] = false,
  ["category"] = 2,
  ["mask"] = 0,
  ["density"] = 1,
  ["dynamic"] = true,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [1] = {
  ["data"] = {
  ["hy"] = 0.5,
  ["hx"] = 0.5,
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
  ["tx"] = 0,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["sz"] = 1,
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
  ["entity"] = 6,
  ["name"] = "playerAimer",
  ["selected"] = false,
}
,
  [8] = {
  ["components"] = {
  [3] = {
  ["data"] = {
  ["friction"] = 1,
  ["rotation"] = false,
  ["sensor"] = false,
  ["category"] = 2,
  ["mask"] = 1,
  ["density"] = 1,
  ["dynamic"] = true,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [1] = {
  ["data"] = {
  ["hy"] = 0.5,
  ["hx"] = 0.5,
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
  ["tx"] = 0,
  ["tz"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["sz"] = 1,
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
  ["entity"] = 7,
  ["name"] = "playerBot",
  ["selected"] = false,
}
,
  [9] = {
  ["components"] = {
  [1] = {
  ["data"] = {
  ["lowerlimit"] = -0.30000001192093,
  ["anchory"] = 0,
  ["objectA"] = "playerBot",
  ["upperlimit"] = 0.40000000596046,
  ["anchorx"] = 0,
  ["motor"] = true,
  ["maxforce"] = 100,
  ["objectB"] = "playerTop",
  ["axisx"] = 0,
  ["axisy"] = 1,
}
,
  ["name"] = "Sliderjoint",
}
,
}
,
  ["entity"] = 8,
  ["name"] = "playerCrouchSlider",
  ["selected"] = false,
}
,
  [10] = {
  ["components"] = {
  [3] = {
  ["data"] = {
  ["friction"] = 1,
  ["rotation"] = true,
  ["sensor"] = false,
  ["category"] = 2,
  ["mask"] = 1,
  ["density"] = 1,
  ["dynamic"] = true,
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
  ["tx"] = 0.60000002384186,
  ["tz"] = 0,
  ["ry"] = 0,
  ["sy"] = 1,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["entity"] = 9,
  ["name"] = "playerHand",
  ["selected"] = false,
}
,
  [11] = {
  ["components"] = {
  [1] = {
  ["data"] = {
  ["lowerlimit"] = -0.10000000149012,
  ["anchory"] = 0.80000001192093,
  ["objectA"] = "playerAimer",
  ["upperlimit"] = 0.5,
  ["anchorx"] = 0,
  ["motor"] = true,
  ["maxforce"] = 100,
  ["objectB"] = "playerHand",
  ["axisx"] = 1,
  ["axisy"] = 0,
}
,
  ["name"] = "Sliderjoint",
}
,
}
,
  ["entity"] = 10,
  ["name"] = "playerHandSlider",
  ["selected"] = true,
}
,
  [12] = {
  ["components"] = {
  [3] = {
  ["data"] = {
  ["friction"] = 1,
  ["rotation"] = false,
  ["sensor"] = false,
  ["category"] = 2,
  ["mask"] = 1,
  ["density"] = 1,
  ["dynamic"] = true,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [1] = {
  ["data"] = {
  ["hy"] = 0.5,
  ["hx"] = 0.5,
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
  ["tx"] = 0,
  ["tz"] = 0,
  ["ry"] = 0,
  ["sy"] = 1,
  ["sz"] = 1,
  ["rz"] = 0,
  ["sx"] = 1,
  ["rx"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["entity"] = 11,
  ["name"] = "playerTop",
  ["selected"] = false,
}
,
}
