loaded = {
  [1] = {
  ["components"] = {
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
  ["name"] = "Transform",
  ["data"] = {
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = 4.3999972343445,
  ["ty"] = -2.6333322525024,
  ["sy"] = 1,
  ["sx"] = 1,
  ["sz"] = 1,
  ["tz"] = 0,
}
,
}
,
}
,
  ["selected"] = false,
  ["entity"] = 3145728,
  ["name"] = "climberBall",
}
,
  [2] = {
  ["components"] = {
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
  ["name"] = "Transform",
  ["data"] = {
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = -38.500007629395,
  ["tx"] = 4.3333306312561,
  ["ty"] = -1.9666661024094,
  ["sy"] = 1,
  ["sx"] = 1,
  ["sz"] = 1,
  ["tz"] = 0,
}
,
}
,
}
,
  ["selected"] = false,
  ["entity"] = 3145729,
  ["name"] = "climberBody",
}
,
  [3] = {
  ["components"] = {
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
  ["name"] = "Transform",
  ["data"] = {
  ["rz"] = 137.20002746582,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = 3.1333317756653,
  ["ty"] = -1.5333333015442,
  ["sy"] = 1,
  ["sx"] = 1,
  ["sz"] = 1,
  ["tz"] = 0.61400002241135,
}
,
}
,
}
,
  ["selected"] = false,
  ["entity"] = 3145730,
  ["name"] = "climberHammer",
}
,
  [4] = {
  ["components"] = {
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
  ["name"] = "Transform",
  ["data"] = {
  ["rz"] = 1.6999921798706,
  ["rx"] = -11.000033378601,
  ["ry"] = -27.799987792969,
  ["tx"] = 4.3333306312561,
  ["ty"] = -1.5749999284744,
  ["sy"] = 1,
  ["sx"] = 1,
  ["sz"] = 1,
  ["tz"] = 0,
}
,
}
,
}
,
  ["selected"] = false,
  ["entity"] = 3145731,
  ["name"] = "climberHead",
}
,
  [5] = {
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
  ["friction"] = 1,
  ["density"] = 1,
  ["dynamic"] = false,
  ["mask"] = 2,
  ["rotation"] = false,
  ["sensor"] = true,
  ["category"] = 1,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["rz"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["tx"] = -6.3666644096375,
  ["ty"] = 0.69999885559082,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sz"] = 1,
  ["tz"] = 0,
}
,
}
,
}
,
  ["selected"] = true,
  ["entity"] = 3145732,
  ["name"] = "coin",
}
,
  [6] = {
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
  ["object"] = "coin02",
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
  ["friction"] = 1,
  ["density"] = 1,
  ["dynamic"] = false,
  ["mask"] = 2,
  ["rotation"] = false,
  ["category"] = 1,
  ["sensor"] = true,
}
,
}
,
  [6] = {
  ["name"] = "Transform",
  ["data"] = {
  ["rz"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["tx"] = 6.3666596412659,
  ["ty"] = 0.3999987244606,
  ["rx"] = 0,
  ["ry"] = 0,
  ["sz"] = 1,
  ["tz"] = 0,
}
,
}
,
}
,
  ["selected"] = false,
  ["entity"] = 3145733,
  ["name"] = "coin02",
}
,
  [7] = {
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
  ["rz"] = 20.499992370605,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = 4.6999969482422,
  ["ty"] = 2.9999985694885,
  ["sy"] = 1,
  ["sx"] = 1,
  ["sz"] = 1,
  ["tz"] = 0,
}
,
}
,
}
,
  ["selected"] = false,
  ["entity"] = 3145734,
  ["name"] = "diamondbox",
}
,
  [8] = {
  ["components"] = {
  [1] = {
  ["name"] = "Model",
  ["data"] = {
  ["model"] = "flag.obj",
  ["texture"] = "climber pallet.png",
}
,
}
,
  [2] = {
  ["name"] = "Transform",
  ["data"] = {
  ["rz"] = 0,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = -5.7999997138977,
  ["ty"] = -1.4333345890045,
  ["sy"] = 1.7900000810623,
  ["sx"] = 2.0710000991821,
  ["sz"] = 1.8259999752045,
  ["tz"] = 0,
}
,
}
,
}
,
  ["selected"] = false,
  ["entity"] = 3145735,
  ["name"] = "goal",
}
,
  [9] = {
  ["components"] = {
  [1] = {
  ["name"] = "Model",
  ["data"] = {
  ["model"] = "box line.obj",
  ["texture"] = "climber pallet.png",
}
,
}
,
  [2] = {
  ["name"] = "Transform",
  ["data"] = {
  ["rz"] = 89.999992370605,
  ["rx"] = 0,
  ["ry"] = 0,
  ["tx"] = -6.43332862854,
  ["ty"] = -4.2999973297119,
  ["sy"] = 1.3530000448227,
  ["sx"] = 3.8050000667572,
  ["sz"] = 1,
  ["tz"] = 0,
}
,
}
,
}
,
  ["selected"] = false,
  ["entity"] = 3145736,
  ["name"] = "linebox",
}
,
  [10] = {
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
  ["rz"] = 0,
  ["rx"] = -179.99998474121,
  ["ry"] = 0,
  ["tx"] = 8.2333307266235,
  ["ty"] = -3.9999990463257,
  ["sy"] = 1.7990000247955,
  ["sx"] = 1.7960000038147,
  ["sz"] = 1,
  ["tz"] = 0,
}
,
}
,
}
,
  ["selected"] = false,
  ["entity"] = 3145737,
  ["name"] = "tilebox",
}
,
  [11] = {
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
  ["rz"] = 0,
  ["rx"] = -179.99998474121,
  ["ry"] = 0,
  ["tx"] = 4.4999976158142,
  ["ty"] = -5.633330821991,
  ["sy"] = 1.7990000247955,
  ["sx"] = 1.7960000038147,
  ["sz"] = 1,
  ["tz"] = 0,
}
,
}
,
}
,
  ["selected"] = false,
  ["entity"] = 3145738,
  ["name"] = "tilebox02",
}
,
  [12] = {
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
  ["rz"] = 0,
  ["rx"] = -179.99998474121,
  ["ry"] = 0,
  ["tx"] = 6.3666625022888,
  ["ty"] = -3.9999990463257,
  ["sy"] = 1.7990000247955,
  ["sx"] = 1.7960000038147,
  ["sz"] = 1,
  ["tz"] = 0,
}
,
}
,
}
,
  ["selected"] = false,
  ["entity"] = 3145739,
  ["name"] = "tilebox03",
}
,
  [13] = {
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
  ["rz"] = 0,
  ["rx"] = -179.99999134858,
  ["ry"] = 0,
  ["tx"] = 4.4999976158142,
  ["ty"] = -3.9999990463257,
  ["sy"] = 1.7990000247955,
  ["sx"] = 1.7960000038147,
  ["sz"] = 1,
  ["tz"] = 0,
}
,
}
,
}
,
  ["selected"] = false,
  ["entity"] = 3145740,
  ["name"] = "tilebox04",
}
,
}
