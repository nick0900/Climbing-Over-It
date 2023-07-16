loaded = {
  [1] = {
  ["selected"] = false,
  ["name"] = "climberBall",
  ["entity"] = 1048576,
  ["components"] = {
  [3] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sx"] = 1,
  ["rx"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["ty"] = 0,
  ["tz"] = 0,
  ["tx"] = 0,
  ["sy"] = 1,
  ["ry"] = 0,
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
  ["name"] = "climberBody",
  ["entity"] = 1048577,
  ["components"] = {
  [3] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sx"] = 1,
  ["rx"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["ty"] = 0,
  ["tz"] = 0,
  ["tx"] = 0,
  ["sy"] = 1,
  ["ry"] = 0,
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
  ["name"] = "climberHammer",
  ["entity"] = 1048578,
  ["components"] = {
  [3] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sx"] = 1,
  ["rx"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["ty"] = 0,
  ["tz"] = 0.61400002241135,
  ["tx"] = 0,
  ["sy"] = 1,
  ["ry"] = 0,
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
  ["name"] = "climberHead",
  ["entity"] = 1048579,
  ["components"] = {
  [3] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sx"] = 1,
  ["rx"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["ty"] = 0.42499995231628,
  ["tz"] = 0,
  ["tx"] = 0,
  ["sy"] = 1,
  ["ry"] = 0,
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
  ["name"] = "ground",
  ["entity"] = 1048580,
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
  ["density"] = 1,
  ["sensor"] = false,
  ["dynamic"] = false,
  ["category"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sx"] = 7.9870004653931,
  ["rx"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["ty"] = -1.1000002622604,
  ["tz"] = 0,
  ["tx"] = 0,
  ["sy"] = 1,
  ["ry"] = 0,
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
  ["name"] = "playerAimHinge",
  ["entity"] = 1048581,
  ["components"] = {
  [1] = {
  ["name"] = "Hingejoint",
  ["data"] = {
  ["motor"] = true,
  ["objectB"] = "playerAimer",
  ["anchorx"] = 0,
  ["objectA"] = "playerTop",
  ["anchory"] = 0.80000001192093,
  ["maxforce"] = 100,
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
  ["name"] = "playerAimer",
  ["entity"] = 1048582,
  ["components"] = {
  [3] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["mask"] = 0,
  ["friction"] = 1,
  ["rotation"] = true,
  ["density"] = 1,
  ["sensor"] = false,
  ["dynamic"] = true,
  ["category"] = 2,
}
,
}
,
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
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sx"] = 1,
  ["rx"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["ty"] = 0.80000001192093,
  ["tz"] = 0,
  ["tx"] = 0,
  ["sy"] = 1,
  ["ry"] = 0,
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
  ["name"] = "playerBot",
  ["entity"] = 1048583,
  ["components"] = {
  [3] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["mask"] = 1,
  ["friction"] = 0.30000001192093,
  ["rotation"] = false,
  ["density"] = 1,
  ["sensor"] = false,
  ["dynamic"] = true,
  ["category"] = 2,
}
,
}
,
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
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sx"] = 1,
  ["rx"] = 0,
  ["sz"] = 1,
  ["sy"] = 1,
  ["ty"] = 0,
  ["tz"] = 0,
  ["tx"] = 0,
  ["rz"] = 0,
  ["ry"] = 0,
}
,
}
,
}
,
}
,
  [9] = {
  ["selected"] = false,
  ["name"] = "playerCrouchSlider",
  ["entity"] = 1048584,
  ["components"] = {
  [1] = {
  ["name"] = "Sliderjoint",
  ["data"] = {
  ["motor"] = true,
  ["objectB"] = "playerTop",
  ["axisx"] = 0,
  ["anchory"] = 0,
  ["axisy"] = 1,
  ["anchorx"] = 0,
  ["lowerlimit"] = -0.30000001192093,
  ["objectA"] = "playerBot",
  ["upperlimit"] = 0.40000000596046,
  ["maxforce"] = 100,
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
  ["name"] = "playerHand",
  ["entity"] = 1048585,
  ["components"] = {
  [3] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["mask"] = 1,
  ["friction"] = 1,
  ["rotation"] = true,
  ["density"] = 1,
  ["sensor"] = false,
  ["dynamic"] = true,
  ["category"] = 2,
}
,
}
,
  [1] = {
  ["name"] = "BoxCollider",
  ["data"] = {
  ["hy"] = 0.34999999403954,
  ["hx"] = 0.15000000596046,
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
  ["sx"] = 1,
  ["rx"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["ty"] = 0.80000001192093,
  ["tz"] = 0,
  ["tx"] = 0.60000002384186,
  ["sy"] = 1,
  ["ry"] = 0,
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
  ["name"] = "playerHandSlider",
  ["entity"] = 1048586,
  ["components"] = {
  [1] = {
  ["name"] = "Sliderjoint",
  ["data"] = {
  ["motor"] = true,
  ["objectB"] = "playerHand",
  ["axisx"] = 1,
  ["anchory"] = 0.80000001192093,
  ["axisy"] = 0,
  ["anchorx"] = 0,
  ["lowerlimit"] = -0.10000000149012,
  ["objectA"] = "playerAimer",
  ["upperlimit"] = 0.69999998807907,
  ["maxforce"] = 100,
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
  ["name"] = "playerTop",
  ["entity"] = 1048587,
  ["components"] = {
  [3] = {
  ["name"] = "RigidbodyDef",
  ["data"] = {
  ["mask"] = 1,
  ["friction"] = 1,
  ["rotation"] = false,
  ["density"] = 1,
  ["sensor"] = false,
  ["dynamic"] = true,
  ["category"] = 2,
}
,
}
,
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
  ["name"] = "Rigidbody",
}
,
  [4] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sx"] = 1,
  ["rx"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["ty"] = 0.80000001192093,
  ["tz"] = 0,
  ["tx"] = 0,
  ["sy"] = 1,
  ["ry"] = 0,
}
,
}
,
}
,
}
,
}
