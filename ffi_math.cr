@[Link("m")]

lib LibM
  # LLVM standard C library intrinsics
  fun cos_f32 = "llvm.cos.f32"(value : Float32) : Float32
  fun exp_f32 = "llvm.exp.f32"(value : Float32) : Float32
end


puts LibM.cos_f32(0.0)
puts LibM.exp_f32(1.0)
