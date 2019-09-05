_G.OSVERSION = "Hannax 0.0.1

local component = component
local computer = computer
local unicode = unicode

local w, h
local screen = component.list("screen", true)()
local gpu = screen and component.list("gpu", true)()

if gpu then
  gpu = component.proxy(gpu)
  if not gpu.getScreen() then
    gpu.bind(screen)
 end
 _G.boot_screen = gpu
 w, h = gpu.maxResolution()
 gpu.setResolution(w,h)
 gpu.setBackground(0xFFFFFF)
 gpu.setForeground(0xF7A8B8)
 gpu.fill(1, 1, w, h, " ")
