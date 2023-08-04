loaded = {
  [63] = {
  ["entity"] = 62,
  ["name"] = "tilebox11",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3,
  ["ty"] = 10.149966239929,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = -179.99999134858,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [1] = {
  ["entity"] = 1048576,
  ["name"] = "climberBall",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sy"] = 1,
  ["ty"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 0,
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
  ["selected"] = false,
}
,
  [2] = {
  ["entity"] = 1048577,
  ["name"] = "climberBody",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sy"] = 1,
  ["ty"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 0,
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
  ["selected"] = false,
}
,
  [3] = {
  ["entity"] = 1048578,
  ["name"] = "climberHammer",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sy"] = 1,
  ["ty"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0.61400002241135,
  ["tx"] = 0,
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
  ["selected"] = false,
}
,
  [4] = {
  ["entity"] = 1048579,
  ["name"] = "climberHead",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["sy"] = 1,
  ["ty"] = 0.42499995231628,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 0,
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
  ["selected"] = false,
}
,
  [5] = {
  ["entity"] = 1048580,
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["mask"] = 2,
  ["density"] = 1,
  ["sensor"] = true,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [6] = {
  ["data"] = {
  ["sy"] = 1,
  ["ty"] = 10.458333015442,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 32.716831207275,
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
  [6] = {
  ["entity"] = 1048581,
  ["name"] = "coin02",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 2,
  ["sensor"] = true,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 1.0333313941956,
  ["ty"] = 4.2666630744934,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [7] = {
  ["entity"] = 1048582,
  ["name"] = "coin03",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 2,
  ["sensor"] = true,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["ty"] = 4.3333377838135,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 7.6749930381775,
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
  ["entity"] = 1048583,
  ["name"] = "coin04",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 2,
  ["sensor"] = true,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3.008330821991,
  ["ty"] = 15.691634178162,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [9] = {
  ["entity"] = 1048584,
  ["name"] = "coin05",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 2,
  ["sensor"] = true,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 9.6083250045776,
  ["ty"] = 1.0583077669144,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [10] = {
  ["entity"] = 1048585,
  ["name"] = "coin06",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 2,
  ["sensor"] = true,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 16.141654968262,
  ["ty"] = 1.0583077669144,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [11] = {
  ["entity"] = 1048586,
  ["name"] = "coin07",
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
  ["object"] = "coin07",
  ["triggerFunction"] = "IncrementCoins",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 2,
  ["sensor"] = true,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 14.683319091797,
  ["ty"] = 4.3249731063843,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [12] = {
  ["entity"] = 1048587,
  ["name"] = "coin08",
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
  ["object"] = "coin08",
  ["triggerFunction"] = "IncrementCoins",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 2,
  ["sensor"] = true,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 24.050086975098,
  ["ty"] = 6.4916377067566,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [13] = {
  ["entity"] = 1048588,
  ["name"] = "coin09",
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
  ["object"] = "coin09",
  ["triggerFunction"] = "IncrementCoins",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["mask"] = 2,
  ["density"] = 1,
  ["sensor"] = true,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["ty"] = 9.3249845504761,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 32.716831207275,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [14] = {
  ["entity"] = 13,
  ["name"] = "coin11",
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
  ["object"] = "coin11",
  ["triggerFunction"] = "IncrementCoins",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["mask"] = 2,
  ["density"] = 1,
  ["sensor"] = true,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["ty"] = 14.399987220764,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 3.008330821991,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [15] = {
  ["entity"] = 14,
  ["name"] = "coin12",
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
  ["object"] = "coin12",
  ["triggerFunction"] = "IncrementCoins",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["mask"] = 2,
  ["density"] = 1,
  ["sensor"] = true,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["ty"] = 16.899993896484,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 3.008330821991,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [16] = {
  ["entity"] = 15,
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["mask"] = 65535,
  ["density"] = 1,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["tx"] = 29.116724014282,
  ["ty"] = 7.80832862854,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
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
  [17] = {
  ["entity"] = 16,
  ["name"] = "diamondbox02",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["mask"] = 65535,
  ["density"] = 1,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["tx"] = 17.507999420166,
  ["ty"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
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
  [18] = {
  ["entity"] = 17,
  ["name"] = "diamondbox03",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["mask"] = 65535,
  ["density"] = 1,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["tx"] = 3,
  ["sx"] = 1,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sy"] = 1,
  ["tz"] = 0,
  ["ty"] = 1,
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
  [19] = {
  ["entity"] = 18,
  ["name"] = "diamondbox04",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3,
  ["ty"] = 2,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [20] = {
  ["entity"] = 19,
  ["name"] = "diamondbox05",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["mask"] = 65535,
  ["density"] = 1,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["ty"] = 5.0583372116089,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 3,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [21] = {
  ["entity"] = 20,
  ["name"] = "diamondbox06",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3,
  ["ty"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [22] = {
  ["entity"] = 21,
  ["name"] = "diamondbox07",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 7.6999998092651,
  ["ty"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [23] = {
  ["entity"] = 22,
  ["name"] = "diamondbox08",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 7.6999998092651,
  ["ty"] = 1,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [24] = {
  ["entity"] = 23,
  ["name"] = "diamondbox09",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 7.6999998092651,
  ["ty"] = 2,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [25] = {
  ["entity"] = 24,
  ["name"] = "diamondbox10",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 11.500045776367,
  ["ty"] = 2,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [26] = {
  ["entity"] = 25,
  ["name"] = "diamondbox11",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 11.500045776367,
  ["ty"] = 1,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [27] = {
  ["entity"] = 26,
  ["name"] = "diamondbox12",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 11.500045776367,
  ["ty"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [28] = {
  ["entity"] = 27,
  ["name"] = "diamondbox13",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 14.699999809265,
  ["ty"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [29] = {
  ["entity"] = 28,
  ["name"] = "diamondbox14",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 14.699999809265,
  ["ty"] = 1,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [30] = {
  ["entity"] = 29,
  ["name"] = "diamondbox15",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 14.699999809265,
  ["ty"] = 2,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
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
  ["entity"] = 30,
  ["name"] = "diamondbox16",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 17.507999420166,
  ["ty"] = 2,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [32] = {
  ["entity"] = 31,
  ["name"] = "diamondbox17",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 17.507999420166,
  ["ty"] = 1,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [33] = {
  ["entity"] = 32,
  ["name"] = "diamondbox18",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3,
  ["ty"] = 8.1083278656006,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [34] = {
  ["entity"] = 33,
  ["name"] = "diamondbox19",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3,
  ["ty"] = 11.166703224182,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [35] = {
  ["entity"] = 34,
  ["name"] = "diamondbox20",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3,
  ["ty"] = 12.183354377747,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [36] = {
  ["entity"] = 35,
  ["name"] = "diamondbox21",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3,
  ["ty"] = 13.208338737488,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [37] = {
  ["entity"] = 36,
  ["name"] = "diamondbox22",
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
  ["dynamic"] = true,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 0.10000000149012,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["ty"] = 3.1416721343994,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 22.866733551025,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [38] = {
  ["entity"] = 37,
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["mask"] = 2,
  ["density"] = 1,
  ["sensor"] = true,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [6] = {
  ["data"] = {
  ["tx"] = 48.833274841309,
  ["ty"] = 3.1666650772095,
  ["sz"] = 1.8259999752045,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 2.0710000991821,
  ["tz"] = 0,
  ["sy"] = 1.7900000810623,
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
  [39] = {
  ["entity"] = 38,
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["mask"] = 65535,
  ["density"] = 1,
  ["sensor"] = false,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["tx"] = 48.832962036133,
  ["ty"] = 1.9333757162094,
  ["sz"] = 0.63199996948242,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 5,
  ["tz"] = 0,
  ["sy"] = 0.90399998426437,
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
  [40] = {
  ["entity"] = 39,
  ["name"] = "linebox02",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 20.966732025146,
  ["ty"] = -1,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 20,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [41] = {
  ["entity"] = 40,
  ["name"] = "linebox03",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 7,
  ["ty"] = -1,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 20,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [42] = {
  ["entity"] = 41,
  ["name"] = "linebox04",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 10.200028419495,
  ["ty"] = 3.0333321094513,
  ["sz"] = 0.63199996948242,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 15,
  ["tz"] = 0,
  ["sy"] = 0.90399998426437,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [43] = {
  ["entity"] = 42,
  ["name"] = "linebox05",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 0.90399998426437,
  ["ty"] = 11.666709899902,
  ["sz"] = 0.63199996948242,
  ["rz"] = 89.999992370605,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 15,
  ["tz"] = 0,
  ["tx"] = 22.866617202759,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [44] = {
  ["entity"] = 43,
  ["name"] = "linebox06",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 28.633253097534,
  ["ty"] = 4.633373260498,
  ["sz"] = 0.63199996948242,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 5,
  ["tz"] = 0,
  ["sy"] = 0.90399998426437,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [45] = {
  ["entity"] = 44,
  ["name"] = "linebox07",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 37.199806213379,
  ["ty"] = 4.6000399589539,
  ["sz"] = 0.63199996948242,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 5,
  ["tz"] = 0,
  ["sy"] = 0.90399998426437,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [46] = {
  ["entity"] = 45,
  ["name"] = "playerAimHinge",
  ["components"] = {
  [1] = {
  ["data"] = {
  ["motor"] = true,
  ["anchorx"] = 0,
  ["anchory"] = 0.80000001192093,
  ["maxforce"] = 100,
  ["objectB"] = "playerAimer",
  ["objectA"] = "playerTop",
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
  [47] = {
  ["entity"] = 46,
  ["name"] = "playerAimer",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["dynamic"] = true,
  ["category"] = 2,
  ["mask"] = 0,
  ["density"] = 1,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 1,
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
  ["ty"] = 0.80000001192093,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 0,
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
  [48] = {
  ["entity"] = 47,
  ["name"] = "playerBot",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["dynamic"] = true,
  ["category"] = 2,
  ["mask"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["rotation"] = false,
  ["friction"] = 0.30000001192093,
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
  ["ty"] = 0,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 0,
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
  [49] = {
  ["entity"] = 48,
  ["name"] = "playerCrouchSlider",
  ["components"] = {
  [1] = {
  ["data"] = {
  ["anchorx"] = 0,
  ["axisx"] = 0,
  ["maxforce"] = 100,
  ["axisy"] = 1,
  ["motor"] = true,
  ["objectA"] = "playerBot",
  ["anchory"] = 0,
  ["upperlimit"] = 0.40000000596046,
  ["objectB"] = "playerTop",
  ["lowerlimit"] = -0.30000001192093,
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
  [50] = {
  ["entity"] = 49,
  ["name"] = "playerHand",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["dynamic"] = true,
  ["category"] = 2,
  ["mask"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["rotation"] = true,
  ["friction"] = 1,
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
  ["ty"] = 0.80000001192093,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 0.60000002384186,
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
  [51] = {
  ["entity"] = 50,
  ["name"] = "playerHandSlider",
  ["components"] = {
  [1] = {
  ["data"] = {
  ["anchorx"] = 0,
  ["axisx"] = 1,
  ["maxforce"] = 100,
  ["axisy"] = 0,
  ["motor"] = true,
  ["objectA"] = "playerAimer",
  ["anchory"] = 0.80000001192093,
  ["upperlimit"] = 0.69999998807907,
  ["objectB"] = "playerHand",
  ["lowerlimit"] = -0.10000000149012,
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
  [52] = {
  ["entity"] = 51,
  ["name"] = "playerTop",
  ["components"] = {
  [3] = {
  ["data"] = {
  ["dynamic"] = true,
  ["category"] = 2,
  ["mask"] = 1,
  ["density"] = 1,
  ["sensor"] = false,
  ["rotation"] = false,
  ["friction"] = 1,
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
  ["ty"] = 0.80000001192093,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 0,
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
  [53] = {
  ["entity"] = 52,
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["mask"] = 65535,
  ["density"] = 1,
  ["sensor"] = false,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["ty"] = 4.1666526794434,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = -179.99998474121,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 22.866743087769,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [54] = {
  ["entity"] = 53,
  ["name"] = "tilebox02",
  ["components"] = {
  [1] = {
  ["name"] = "Model",
  ["data"] = {
  ["model"] = "box diamond.obj",
  ["texture"] = "climber pallet.png",
}
,
}
,
  [2] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["ty"] = 3.0416576862335,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = -179.99998474121,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 17.5,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [55] = {
  ["entity"] = 54,
  ["name"] = "tilebox03",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["mask"] = 65535,
  ["density"] = 1,
  ["sensor"] = false,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["ty"] = 4.0499911308289,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = -179.99999134858,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 3,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [56] = {
  ["entity"] = 55,
  ["name"] = "tilebox04",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["mask"] = 65535,
  ["density"] = 1,
  ["sensor"] = false,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["ty"] = 6.0833225250244,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = -179.99999134858,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 3,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [57] = {
  ["entity"] = 56,
  ["name"] = "tilebox05",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3,
  ["ty"] = 3.0416576862335,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = -179.99999134858,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [58] = {
  ["entity"] = 57,
  ["name"] = "tilebox06",
  ["components"] = {
  [1] = {
  ["name"] = "Model",
  ["data"] = {
  ["model"] = "box diamond.obj",
  ["texture"] = "climber pallet.png",
}
,
}
,
  [2] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["ty"] = 3.0416576862335,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = -179.99998474121,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 7.6999998092651,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [59] = {
  ["entity"] = 58,
  ["name"] = "tilebox07",
  ["components"] = {
  [1] = {
  ["name"] = "Model",
  ["data"] = {
  ["model"] = "box diamond.obj",
  ["texture"] = "climber pallet.png",
}
,
}
,
  [2] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["ty"] = 3.0416576862335,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = -179.99998474121,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 11.5,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [60] = {
  ["entity"] = 59,
  ["name"] = "tilebox08",
  ["components"] = {
  [1] = {
  ["name"] = "Model",
  ["data"] = {
  ["model"] = "box diamond.obj",
  ["texture"] = "climber pallet.png",
}
,
}
,
  [2] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 1,
  ["ty"] = 3.0416576862335,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = -179.99998474121,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 14.699999809265,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [61] = {
  ["entity"] = 60,
  ["name"] = "tilebox09",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3,
  ["ty"] = 7.0916404724121,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = -179.99999134858,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [62] = {
  ["entity"] = 61,
  ["name"] = "tilebox10",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["tx"] = 3,
  ["ty"] = 9.1333150863647,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = -179.99999134858,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["sy"] = 1,
}
,
}
,
}
,
  ["selected"] = false,
}
,
  [64] = {
  ["entity"] = 63,
  ["name"] = "tilebox12",
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
  ["dynamic"] = false,
  ["category"] = 1,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["rotation"] = false,
  ["friction"] = 1,
}
,
}
,
  [5] = {
  ["name"] = "Transform",
  ["data"] = {
  ["sy"] = 0.31099995970726,
  ["ty"] = 2.4749703407288,
  ["sz"] = 1,
  ["rz"] = 0,
  ["rx"] = -179.99998474121,
  ["ry"] = 0,
  ["sx"] = 1,
  ["tz"] = 0,
  ["tx"] = 22.866743087769,
}
,
}
,
}
,
  ["selected"] = false,
}
,
}
