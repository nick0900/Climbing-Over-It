loaded = {
  [1] = {
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
  ["model"] = "climber ball.obj",
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
  ["category"] = 65535,
  ["dynamic"] = false,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["friction"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["ry"] = 0,
  ["sy"] = 1,
  ["sx"] = 1,
  ["rx"] = 0,
  ["rz"] = 0,
  ["sz"] = 1,
  ["ty"] = 0,
  ["tz"] = 0,
  ["tx"] = 0,
}
,
  ["name"] = "Transform",
}
,
}
,
  ["name"] = "anc",
  ["entity"] = 2097152,
  ["selected"] = false,
}
,
  [2] = {
  ["components"] = {
  [1] = {
  ["data"] = {
  ["objectA"] = "anc",
  ["motor"] = false,
  ["anchorx"] = 0,
  ["ptr"] = nil,
  ["maxforce"] = 0,
  ["anchory"] = 0,
  ["objectB"] = "pen1",
}
,
  ["name"] = "Hingejoint",
}
,
}
,
  ["name"] = "joint1",
  ["entity"] = 1048577,
  ["selected"] = false,
}
,
  [3] = {
  ["components"] = {
  [1] = {
  ["data"] = {
  ["objectA"] = "pen1",
  ["motor"] = false,
  ["anchorx"] = 2.2330000400543,
  ["ptr"] = nil,
  ["maxforce"] = 0,
  ["anchory"] = 0,
  ["objectB"] = "pen2",
}
,
  ["name"] = "Hingejoint",
}
,
}
,
  ["name"] = "joint2",
  ["entity"] = 1048578,
  ["selected"] = true,
}
,
  [4] = {
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
  ["model"] = "climber ball.obj",
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
  ["rotation"] = true,
  ["category"] = 65535,
  ["dynamic"] = true,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["friction"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["ry"] = 0,
  ["tx"] = 2.2333326339722,
  ["ty"] = 0,
  ["rx"] = 0,
  ["sz"] = 1,
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
  ["name"] = "pen1",
  ["entity"] = 3,
  ["selected"] = false,
}
,
  [5] = {
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
  ["model"] = "climber ball.obj",
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
  ["rotation"] = true,
  ["category"] = 65535,
  ["dynamic"] = true,
  ["density"] = 1,
  ["mask"] = 65535,
  ["sensor"] = false,
  ["friction"] = 1,
}
,
  ["name"] = "RigidbodyDef",
}
,
  [5] = {
  ["data"] = {
  ["ry"] = 0,
  ["tx"] = 4.3999972343445,
  ["ty"] = -1.3743463832261e-12,
  ["rx"] = 0,
  ["sz"] = 1,
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
  ["name"] = "pen2",
  ["entity"] = 4,
  ["selected"] = false,
}
,
}
