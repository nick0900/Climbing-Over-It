loaded = {
  [1] = {
  ["entity"] = 1048576,
  ["name"] = "climberBall",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 1,
  ["tx"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["rz"] = 0,
  ["sy"] = 1,
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
  ["selected"] = false,
}
,
  [2] = {
  ["entity"] = 1048577,
  ["name"] = "climberBody",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 1,
  ["tx"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["rz"] = 0,
  ["sy"] = 1,
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
  ["selected"] = false,
}
,
  [3] = {
  ["entity"] = 1048578,
  ["name"] = "climberHammer",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sz"] = 1,
  ["tz"] = 0.61400002241135,
  ["sx"] = 1,
  ["tx"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["rz"] = 0,
  ["sy"] = 1,
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
  ["selected"] = false,
}
,
  [4] = {
  ["entity"] = 1048579,
  ["name"] = "climberHead",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 1,
  ["tx"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["rz"] = 0,
  ["sy"] = 1,
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
  ["selected"] = false,
}
,
  [5] = {
  ["entity"] = 1048580,
  ["name"] = "ground",
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
  ["density"] = 1,
  ["friction"] = 1,
  ["category"] = 1,
  ["rotation"] = false,
  ["sensor"] = false,
  ["dynamic"] = false,
  ["mask"] = 65535,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 7.9870004653931,
  ["tx"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["rz"] = 0,
  ["sy"] = 1,
  ["ty"] = -1.1000002622604,
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
  [6] = {
  ["entity"] = 1048581,
  ["name"] = "playerAimHinge",
  ["components"] = {
  [1] = {
  ["data"] = {
  ["objectB"] = "playerAimer",
  ["motor"] = true,
  ["anchorx"] = 0,
  ["maxforce"] = 100,
  ["objectA"] = "playerTop",
  ["anchory"] = 0.80000001192093,
}
,
  ["name"] = "Hingejoint",
}
,
}
,
  ["selected"] = false,
}
,
  [7] = {
  ["entity"] = 1048582,
  ["name"] = "playerAimer",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["density"] = 1,
  ["friction"] = 1,
  ["category"] = 2,
  ["rotation"] = true,
  ["sensor"] = false,
  ["dynamic"] = true,
  ["mask"] = 0,
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
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 1,
  ["tx"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["rz"] = 0,
  ["sy"] = 1,
  ["ty"] = 0.80000001192093,
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
  [8] = {
  ["entity"] = 1048583,
  ["name"] = "playerBot",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["density"] = 1,
  ["friction"] = 0.30000001192093,
  ["category"] = 2,
  ["rotation"] = false,
  ["sensor"] = false,
  ["dynamic"] = true,
  ["mask"] = 1,
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
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 1,
  ["sy"] = 1,
  ["ry"] = 0,
  ["rx"] = 0,
  ["rz"] = 0,
  ["tx"] = 0,
  ["ty"] = 0,
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
  [9] = {
  ["entity"] = 1048584,
  ["name"] = "playerCrouchSlider",
  ["components"] = {
  [1] = {
  ["data"] = {
  ["lowerlimit"] = -0.30000001192093,
  ["anchory"] = 0,
  ["anchorx"] = 0,
  ["maxforce"] = 100,
  ["axisy"] = 1,
  ["motor"] = true,
  ["axisx"] = 0,
  ["upperlimit"] = 0.40000000596046,
  ["objectA"] = "playerBot",
  ["objectB"] = "playerTop",
}
,
  ["name"] = "Sliderjoint",
}
,
}
,
  ["selected"] = true,
}
,
  [10] = {
  ["entity"] = 1048585,
  ["name"] = "playerHand",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["density"] = 1,
  ["friction"] = 1,
  ["category"] = 2,
  ["rotation"] = true,
  ["sensor"] = false,
  ["dynamic"] = true,
  ["mask"] = 1,
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
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 1,
  ["tx"] = 0.60000002384186,
  ["ry"] = 0,
  ["rx"] = 0,
  ["rz"] = 0,
  ["ty"] = 0.80000001192093,
  ["sy"] = 1,
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
  [11] = {
  ["entity"] = 1048586,
  ["name"] = "playerHandSlider",
  ["components"] = {
  [1] = {
  ["data"] = {
  ["lowerlimit"] = -0.10000000149012,
  ["anchory"] = 0.80000001192093,
  ["anchorx"] = 0,
  ["maxforce"] = 100,
  ["axisy"] = 0,
  ["motor"] = true,
  ["axisx"] = 1,
  ["upperlimit"] = 0.69999998807907,
  ["objectA"] = "playerAimer",
  ["objectB"] = "playerHand",
}
,
  ["name"] = "Sliderjoint",
}
,
}
,
  ["selected"] = false,
}
,
  [12] = {
  ["entity"] = 1048587,
  ["name"] = "playerTop",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["density"] = 1,
  ["friction"] = 1,
  ["category"] = 2,
  ["rotation"] = false,
  ["sensor"] = false,
  ["dynamic"] = true,
  ["mask"] = 1,
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
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 1,
  ["tx"] = 0,
  ["ry"] = 0,
  ["rx"] = 0,
  ["rz"] = 0,
  ["ty"] = 0.80000001192093,
  ["sy"] = 1,
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
}
