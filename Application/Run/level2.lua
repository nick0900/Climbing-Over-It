loaded = {
  [1] = {
  ["name"] = "climberBall",
  ["entity"] = 53477376,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sy"] = 1,
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
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
  [2] = {
  ["name"] = "climberBody",
  ["entity"] = 53477377,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sy"] = 1,
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
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
  [3] = {
  ["name"] = "climberHammer",
  ["entity"] = 53477378,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sy"] = 1,
  ["sz"] = 1,
  ["tz"] = 0.61400002241135,
  ["sx"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
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
  [4] = {
  ["name"] = "climberHead",
  ["entity"] = 53477379,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sy"] = 1,
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
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
  [5] = {
  ["name"] = "coin",
  ["entity"] = 50331652,
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
  ["friction"] = 1,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["density"] = 1,
  ["category"] = 1,
  ["sensor"] = true,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [6] = {
  ["data"] = {
  ["sy"] = 1,
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = 7.8500108718872,
  ["ty"] = 4.233332157135,
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
  ["name"] = "coin02",
  ["entity"] = 40894469,
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
  ["tx"] = 5.4333271980286,
  ["ty"] = -0.20000125467777,
}
,
}
,
}
,
}
,
  [7] = {
  ["name"] = "coin03",
  ["entity"] = 42991622,
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
  ["tx"] = 10.466691017151,
  ["ty"] = 0.49999871850014,
}
,
}
,
}
,
}
,
  [8] = {
  ["name"] = "coin04",
  ["entity"] = 40894471,
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
  ["tx"] = -0.66665315628052,
  ["ty"] = 4.4999976158142,
}
,
}
,
}
,
}
,
  [9] = {
  ["name"] = "coin05",
  ["entity"] = 42991624,
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
  ["tx"] = 4.050012588501,
  ["ty"] = 12.199990272522,
}
,
}
,
}
,
}
,
  [10] = {
  ["name"] = "coin06",
  ["entity"] = 32505865,
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
  ["tx"] = 18.416698455811,
  ["ty"] = 11.46665763855,
}
,
}
,
}
,
}
,
  [11] = {
  ["name"] = "diamondbox",
  ["entity"] = 38797322,
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
  ["friction"] = 1,
  ["rotation"] = true,
  ["dynamic"] = true,
  ["density"] = 1,
  ["category"] = 1,
  ["sensor"] = false,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["sy"] = 1,
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = -1.0333321094513,
  ["ty"] = -1.1083477735519,
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
  ["name"] = "diamondbox02",
  ["entity"] = 38797323,
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
  ["friction"] = 1,
  ["rotation"] = true,
  ["dynamic"] = true,
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
  ["sx"] = 1,
  ["rz"] = -15.000005540055,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = 17.933343887329,
  ["ty"] = 9.1666612625122,
}
,
}
,
}
,
}
,
  [13] = {
  ["name"] = "diamondbox03",
  ["entity"] = 37748748,
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
  ["friction"] = 1,
  ["rotation"] = true,
  ["dynamic"] = true,
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
  ["sx"] = 1,
  ["rz"] = -15.000005540055,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = 18.191673278809,
  ["ty"] = 10.191645622253,
}
,
}
,
}
,
}
,
  [14] = {
  ["name"] = "diamondbox04",
  ["entity"] = 33554445,
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
  ["friction"] = 1,
  ["rotation"] = true,
  ["dynamic"] = true,
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
  ["sx"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = 1.0333242416382,
  ["ty"] = -1.1083477735519,
}
,
}
,
}
,
}
,
  [15] = {
  ["name"] = "diamondbox05",
  ["entity"] = 40894478,
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
  ["friction"] = 1,
  ["rotation"] = true,
  ["dynamic"] = true,
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
  ["sx"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = 2.058324098587,
  ["ty"] = -1.1083477735519,
}
,
}
,
}
,
}
,
  [16] = {
  ["name"] = "diamondbox06",
  ["entity"] = 40894479,
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
  ["friction"] = 1,
  ["rotation"] = true,
  ["dynamic"] = true,
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
  ["sx"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = 3.0916712284088,
  ["ty"] = -1.1083477735519,
}
,
}
,
}
,
}
,
  [17] = {
  ["name"] = "goal",
  ["entity"] = 39845904,
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
  ["friction"] = 1,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["density"] = 1,
  ["category"] = 1,
  ["sensor"] = true,
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
  ["tx"] = 17.166667938232,
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
  [18] = {
  ["name"] = "ladder01",
  ["entity"] = 38797329,
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
  ["sx"] = 10,
  ["rz"] = 89.999992370605,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = 4.0333323478699,
  ["ty"] = 4.2999973297119,
}
,
}
,
}
,
}
,
  [19] = {
  ["name"] = "ladder02",
  ["entity"] = 38797330,
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
  ["sx"] = 10,
  ["rz"] = 75,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = 16.500068664551,
  ["ty"] = 3.7999978065491,
}
,
}
,
}
,
}
,
  [20] = {
  ["name"] = "linebox",
  ["entity"] = 37748755,
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
  ["friction"] = 1,
  ["rotation"] = false,
  ["dynamic"] = false,
  ["density"] = 1,
  ["category"] = 1,
  ["sensor"] = false,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["sy"] = 0.64499998092651,
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 3,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = -0.66666668653488,
  ["ty"] = 3.3666648864746,
}
,
  ["name"] = "Transform",
}
,
}
,
}
,
  [21] = {
  ["name"] = "linebox03",
  ["entity"] = 32505876,
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
  ["sz"] = 1.8320000171661,
  ["tz"] = 0,
  ["sx"] = 10.817999839783,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = 13.300064086914,
  ["ty"] = -1.1666667461395,
}
,
}
,
}
,
}
,
  [22] = {
  ["name"] = "linebox04",
  ["entity"] = 31457301,
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
  ["sx"] = 5,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = 9.4000120162964,
  ["ty"] = 2.8333320617676,
}
,
}
,
}
,
}
,
  [23] = {
  ["name"] = "playerAimHinge",
  ["entity"] = 27262998,
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
  [24] = {
  ["name"] = "playerAimer",
  ["entity"] = 25165847,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["mask"] = 0,
  ["friction"] = 1,
  ["rotation"] = true,
  ["dynamic"] = true,
  ["density"] = 1,
  ["category"] = 2,
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
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
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
  [25] = {
  ["name"] = "playerBot",
  ["entity"] = 27263000,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["mask"] = 1,
  ["friction"] = 0.30000001192093,
  ["rotation"] = false,
  ["dynamic"] = true,
  ["density"] = 1,
  ["category"] = 2,
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
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
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
  [26] = {
  ["name"] = "playerCrouchSlider",
  ["entity"] = 16777241,
  ["selected"] = false,
  ["components"] = {
  [1] = {
  ["data"] = {
  ["motor"] = true,
  ["anchorx"] = 0,
  ["maxforce"] = 100,
  ["objectB"] = "playerTop",
  ["lowerlimit"] = -0.30000001192093,
  ["axisy"] = 1,
  ["upperlimit"] = 0.40000000596046,
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
  [27] = {
  ["name"] = "playerHand",
  ["entity"] = 24117274,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["mask"] = 1,
  ["friction"] = 1,
  ["rotation"] = true,
  ["dynamic"] = true,
  ["density"] = 1,
  ["category"] = 2,
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
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
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
  [28] = {
  ["name"] = "playerHandSlider",
  ["entity"] = 24117275,
  ["selected"] = false,
  ["components"] = {
  [1] = {
  ["data"] = {
  ["motor"] = true,
  ["anchorx"] = 0,
  ["maxforce"] = 100,
  ["objectB"] = "playerHand",
  ["lowerlimit"] = -0.10000000149012,
  ["axisy"] = 0,
  ["upperlimit"] = 0.69999998807907,
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
  [29] = {
  ["name"] = "playerTop",
  ["entity"] = 24117276,
  ["selected"] = false,
  ["components"] = {
  [3] = {
  ["data"] = {
  ["mask"] = 1,
  ["friction"] = 1,
  ["rotation"] = false,
  ["dynamic"] = true,
  ["density"] = 1,
  ["category"] = 2,
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
  ["sz"] = 1,
  ["tz"] = 0,
  ["sx"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
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
  [30] = {
  ["name"] = "tilebox",
  ["entity"] = 24117277,
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
  ["density"] = 1,
  ["dynamic"] = false,
  ["rotation"] = false,
  ["category"] = 1,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 0.57599997520447,
  ["sz"] = 0.52499997615814,
  ["tz"] = 0,
  ["sx"] = 0.91899996995926,
  ["rz"] = -15.000005722046,
  ["rx"] = -179.99998474121,
  ["ry"] = 1.0177775099486e-13,
  ["tx"] = 16.933319091797,
  ["ty"] = 7.4666595458984,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [31] = {
  ["name"] = "tilebox02",
  ["entity"] = 24117278,
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
  ["sx"] = 1,
  ["rz"] = 0,
  ["rx"] = -179.99999134858,
  ["ry"] = 0,
  ["tx"] = -7.4505805969238e-09,
  ["ty"] = -1.1000002622604,
}
,
}
,
}
,
}
,
  [32] = {
  ["name"] = "tilebox03",
  ["entity"] = 18874399,
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
  ["sy"] = 0.57599997520447,
  ["sz"] = 0.52499997615814,
  ["tz"] = 0,
  ["sx"] = 0.91899996995926,
  ["rz"] = 0,
  ["rx"] = -179.99999134858,
  ["ry"] = 0,
  ["tx"] = 3.4916641712189,
  ["ty"] = 1.6333330869675,
}
,
}
,
}
,
}
,
  [33] = {
  ["name"] = "tilebox04",
  ["entity"] = 18874400,
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
  ["sy"] = 0.57599997520447,
  ["sz"] = 0.52499997615814,
  ["tz"] = 0,
  ["sx"] = 0.91899996995926,
  ["rz"] = 0,
  ["rx"] = -179.99999134858,
  ["ry"] = 0,
  ["tx"] = 3.4916641712189,
  ["ty"] = 3.96666431427,
}
,
}
,
}
,
}
,
  [34] = {
  ["name"] = "tilebox05",
  ["entity"] = 15728673,
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
  ["sy"] = 0.57599997520447,
  ["sz"] = 0.52499997615814,
  ["tz"] = 0,
  ["sx"] = 0.91899996995926,
  ["rz"] = 0,
  ["rx"] = -179.99999134858,
  ["ry"] = 0,
  ["tx"] = 3.4916641712189,
  ["ty"] = 6.5333285331726,
}
,
}
,
}
,
}
,
  [35] = {
  ["name"] = "tilebox06",
  ["entity"] = 1048610,
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
  ["sy"] = 0.57599997520447,
  ["sz"] = 0.52499997615814,
  ["tz"] = 0,
  ["sx"] = 0.91899996995926,
  ["rz"] = -15.000005540055,
  ["rx"] = -179.99999134858,
  ["ry"] = 1.0177774980683e-13,
  ["tx"] = 15.216656684875,
  ["ty"] = 0.99999862909317,
}
,
}
,
}
,
}
,
  [36] = {
  ["name"] = "tilebox07",
  ["entity"] = 1048611,
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
  ["sy"] = 0.57599997520447,
  ["sz"] = 0.52499997615814,
  ["tz"] = 0,
  ["sx"] = 0.91899996995926,
  ["rz"] = -15.000005540055,
  ["rx"] = -179.99999134858,
  ["ry"] = 1.0177774980683e-13,
  ["tx"] = 16.058332443237,
  ["ty"] = 4.1999959945679,
}
,
}
,
}
,
}
,
}
