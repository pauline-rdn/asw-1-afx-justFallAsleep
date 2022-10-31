define :layer_base do |n|
  with_fx :reverb do
    use_synth :sine
    play n, amp: 0.8
  end
end

define :layer_1 do |n|
  use_synth :dark_ambience
  play n, amp: 0.7, attack: 0, sustain: 2, release: 2
end

define :layer_2 do |n|
  sample :guit_e_slide
  play n
end

define :layer_3 do |n|
  use_synth :hollow
  play n, amp: 0.5, attack: 0, sustain: 1, release: 2
end

define :layer_4 do |n|
  use_synth :dtri
  play n, amp: 0.3, attack: 0, sustain: 1, release: 2
end

define :voices do |a, b, c|
  use_synth :hollow
  play a, sustain: 2, release: 3, amp: 2
  sleep 1
  play b, sustain: 2, release: 3, amp: 2
  sleep 0.7
  play c, sustain: 2, release: 5, amp: 2
end

define :main do
  layer_1 :A
  layer_base :A
  sleep 1
  layer_base :As4
  sleep 1
  layer_base :D5
  layer_1 :D5
  sleep 1
  layer_base :C5
  sleep 0.5
  layer_base :Cs5
  layer_1 :C5
  sleep 0.5
end

# use_bpm 60
use_bpm 70
# use_bpm 100

main

live_loop :bass do
  3.times {sample :bd_boom; sleep 0.75}
  sample :bd_ada
  sleep 0.5
  sample :perc_door
  sleep 1.25
end

3.times do
  main
end

3.times do
  layer_2 :A
  with_fx :reverb do
    layer_3 :A
    sleep 1
    layer_3 :As4
    sleep 1
    layer_2 :D5
    layer_3 :D5
    sleep 1
    layer_3 :C5
    sleep 0.5
    layer_3 :Cs5
    layer_2 :C5
    sleep 0.5
  end
end

2.times do
  layer_2 :A
  with_fx :reverb do
    layer_4 :A
    sleep 1
    layer_3 :As4
    sleep 1
    layer_2 :D5
    layer_4 :D5
    sleep 1
    layer_4 :C5
    sleep 0.5
    layer_4 :Cs5
    layer_2 :C5
    sleep 0.5
  end
end

live_loop :kind_of_ghost_voices do
  sample :loop_drone_g_97, amp: 0.3
  with_fx :ixi_techno do
    3.times{sample :mehackit_robot7; sleep 0.75}
  end
end

2.times do
  layer_1 :A
  layer_base :A
  sleep 1
  layer_base :As4
  sleep 1
  layer_base :D5
  layer_1 :D5
  sleep 1
  layer_base :C5
  sleep 0.5
  with_fx :echo do
    layer_base :Cs5
    layer_1 :C5
  end
  sleep 0.5
end

with_fx :reverb do
  main
end

sleep 15

with_fx :panslicer do
  voices :As3, :Bs3, :D3
end
sample :mehackit_robot3

sleep 13











