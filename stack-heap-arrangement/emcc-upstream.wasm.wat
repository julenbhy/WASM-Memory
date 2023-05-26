(module
  (type $t0 (func (param i32 i32 i32) (result i32)))
  (type $t1 (func (param i32) (result i32)))
  (type $t2 (func (param i32)))
  (type $t3 (func (param i32 i32) (result i32)))
  (type $t4 (func (result i32)))
  (type $t5 (func (param i32 i32 i32)))
  (type $t6 (func))
  (type $t7 (func (param i32 i32)))
  (type $t8 (func (param i32 i64 i32) (result i64)))
  (type $t9 (func (param i32 i32 i32 i32) (result i32)))
  (type $t10 (func (param i32 i32 i32 i32 i32) (result i32)))
  (type $t11 (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type $t12 (func (param i32 i32 i32 i32 i32)))
  (import "wasi_snapshot_preview1" "args_sizes_get" (func $wasi_snapshot_preview1.args_sizes_get (type $t3)))
  (import "wasi_snapshot_preview1" "args_get" (func $wasi_snapshot_preview1.args_get (type $t3)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $wasi_snapshot_preview1.proc_exit (type $t2)))
  (import "wasi_snapshot_preview1" "fd_write" (func $wasi_snapshot_preview1.fd_write (type $t9)))
  (func $f4 (type $t6)
    i32.const 3256
    i32.const 3144
    i32.store
    i32.const 3184
    i32.const 42
    i32.store)
  (func $_start (type $t6)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    call $f4
    block $B0 (result i32)
      global.get $g0
      i32.const 16
      i32.sub
      local.tee $l1
      global.set $g0
      block $B1
        local.get $l1
        local.tee $l4
        i32.const 12
        i32.add
        local.get $l1
        i32.const 8
        i32.add
        call $wasi_snapshot_preview1.args_sizes_get
        i32.eqz
        if $I2
          local.get $l4
          i32.load offset=12
          local.tee $l0
          if $I3 (result i32)
            local.get $l1
            local.get $l0
            i32.const 2
            i32.shl
            local.tee $l0
            i32.const 19
            i32.add
            i32.const -16
            i32.and
            i32.sub
            local.tee $l1
            local.tee $l2
            global.set $g0
            local.get $l2
            local.get $l4
            i32.load offset=8
            i32.const 15
            i32.add
            i32.const -16
            i32.and
            i32.sub
            local.tee $l2
            global.set $g0
            local.get $l0
            local.get $l1
            i32.add
            i32.const 0
            i32.store
            local.get $l1
            local.get $l2
            call $wasi_snapshot_preview1.args_get
            br_if $B1
            local.get $l4
            i32.load offset=12
          else
            i32.const 0
          end
          drop
          i32.const 1162
          call $f12
          local.get $l1
          i32.load
          local.set $l5
          global.get $g0
          i32.const -64
          i32.add
          local.tee $l1
          global.set $g0
          local.get $l1
          i32.const 1113
          i64.load align=1
          i64.store offset=23 align=1
          local.get $l1
          i32.const 1106
          i64.load align=1
          i64.store offset=16
          local.get $l1
          i32.const 1098
          i64.load align=1
          i64.store offset=8
          local.get $l1
          i32.const 1090
          i64.load align=1
          i64.store
          call $f24
          local.tee $l2
          i32.const 1086
          i32.load align=1
          i32.store offset=32 align=1
          local.get $l2
          i32.const 1078
          i64.load align=1
          i64.store offset=24 align=1
          local.get $l2
          i32.const 1070
          i64.load align=1
          i64.store offset=16 align=1
          local.get $l2
          i32.const 1062
          i64.load align=1
          i64.store offset=8 align=1
          local.get $l2
          i32.const 1054
          i64.load align=1
          i64.store align=1
          call $f24
          local.tee $l3
          i32.const 1153
          i32.load16_u align=1
          i32.store16 offset=32 align=1
          local.get $l3
          i32.const 1145
          i64.load align=1
          i64.store offset=24 align=1
          local.get $l3
          i32.const 1137
          i64.load align=1
          i64.store offset=16 align=1
          local.get $l3
          i32.const 1129
          i64.load align=1
          i64.store offset=8 align=1
          local.get $l3
          i32.const 1121
          i64.load align=1
          i64.store align=1
          i32.const 1186
          call $f12
          global.get $g0
          i32.const 128
          i32.sub
          local.tee $l0
          global.set $g0
          local.get $l0
          i32.const 42
          i32.store offset=124
          i32.const 1174
          call $f12
          local.get $l0
          i32.const 1904
          i32.load
          local.tee $l6
          i32.store offset=112
          local.get $l0
          local.get $l6
          i32.store offset=116
          local.get $l0
          local.get $l6
          i32.store offset=120
          i32.const 1287
          local.get $l0
          i32.const 112
          i32.add
          call $f6
          local.get $l0
          local.get $l1
          i32.store offset=104
          local.get $l0
          local.get $l1
          i32.store offset=100
          local.get $l0
          local.get $l1
          i32.store offset=96
          i32.const 1287
          local.get $l0
          i32.const 96
          i32.add
          call $f6
          local.get $l0
          local.get $l0
          i32.const 124
          i32.add
          i32.store offset=84
          local.get $l0
          local.get $l0
          i32.const 124
          i32.add
          i32.store offset=80
          i32.const 1336
          local.get $l0
          i32.const 80
          i32.add
          call $f6
          local.get $l0
          local.get $l0
          i32.const 124
          i32.add
          local.get $l1
          i32.sub
          i32.store offset=64
          i32.const 1206
          local.get $l0
          i32.const -64
          i32.sub
          call $f6
          local.get $l0
          local.get $l2
          i32.store offset=56
          local.get $l0
          local.get $l2
          i32.store offset=52
          local.get $l0
          local.get $l2
          i32.store offset=48
          i32.const 1287
          local.get $l0
          i32.const 48
          i32.add
          call $f6
          local.get $l0
          local.get $l3
          i32.store offset=40
          local.get $l0
          local.get $l3
          i32.store offset=36
          local.get $l0
          local.get $l3
          i32.store offset=32
          i32.const 1311
          local.get $l0
          i32.const 32
          i32.add
          call $f6
          local.get $l0
          i32.const 42
          i32.store offset=20
          local.get $l0
          local.get $l3
          local.get $l2
          i32.sub
          i32.store offset=16
          i32.const 1229
          local.get $l0
          i32.const 16
          i32.add
          call $f6
          local.get $l0
          local.get $l5
          i32.store offset=8
          local.get $l0
          local.get $l5
          i32.store offset=4
          local.get $l0
          local.get $l5
          i32.store
          i32.const 1388
          local.get $l0
          call $f6
          local.get $l0
          i32.const 128
          i32.add
          global.set $g0
          local.get $l1
          i32.const -64
          i32.sub
          global.set $g0
          i32.const 0
          local.set $l1
          local.get $l4
          i32.const 16
          i32.add
          global.set $g0
          local.get $l1
          br $B0
        end
        i32.const 71
        call $wasi_snapshot_preview1.proc_exit
        unreachable
      end
      i32.const 71
      call $wasi_snapshot_preview1.proc_exit
      unreachable
    end
    local.set $l4
    i32.const 2072
    i32.load
    local.tee $l1
    if $I4
      loop $L5
        local.get $l1
        call $f9
        local.get $l1
        i32.load offset=56
        local.tee $l1
        br_if $L5
      end
    end
    i32.const 2076
    i32.load
    call $f9
    i32.const 2056
    i32.load
    call $f9
    i32.const 2076
    i32.load
    call $f9
    local.get $l4
    call $wasi_snapshot_preview1.proc_exit
    unreachable)
  (func $f6 (type $t7) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l4
    global.set $g0
    local.get $l4
    local.get $p1
    i32.store offset=12
    global.get $g0
    i32.const 208
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    i32.store offset=204
    local.get $l2
    i32.const 160
    i32.add
    i32.const 0
    i32.const 40
    call $f15
    local.get $l2
    local.get $l2
    i32.load offset=204
    i32.store offset=200
    block $B0
      i32.const 0
      local.get $p0
      local.get $l2
      i32.const 200
      i32.add
      local.get $l2
      i32.const 80
      i32.add
      local.get $l2
      i32.const 160
      i32.add
      call $f17
      i32.const 0
      i32.lt_s
      br_if $B0
      i32.const 1988
      i32.load
      i32.const 0
      i32.ge_s
      local.set $l6
      i32.const 1912
      i32.load
      local.set $l5
      i32.const 1984
      i32.load
      i32.const 0
      i32.le_s
      if $I1
        i32.const 1912
        local.get $l5
        i32.const -33
        i32.and
        i32.store
      end
      block $B2 (result i32)
        block $B3
          block $B4
            i32.const 1960
            i32.load
            i32.eqz
            if $I5
              i32.const 1960
              i32.const 80
              i32.store
              i32.const 1940
              i32.const 0
              i32.store
              i32.const 1928
              i64.const 0
              i64.store
              i32.const 1956
              i32.load
              local.set $l3
              i32.const 1956
              local.get $l2
              i32.store
              br $B4
            end
            i32.const 1928
            i32.load
            br_if $B3
          end
          i32.const -1
          i32.const 1912
          call $f10
          br_if $B2
          drop
        end
        i32.const 1912
        local.get $p0
        local.get $l2
        i32.const 200
        i32.add
        local.get $l2
        i32.const 80
        i32.add
        local.get $l2
        i32.const 160
        i32.add
        call $f17
      end
      local.set $p1
      local.get $l5
      i32.const 32
      i32.and
      local.set $p0
      local.get $l3
      if $I6 (result i32)
        i32.const 1912
        i32.const 0
        i32.const 0
        i32.const 1948
        i32.load
        call_indirect $__indirect_function_table (type $t0)
        drop
        i32.const 1960
        i32.const 0
        i32.store
        i32.const 1956
        local.get $l3
        i32.store
        i32.const 1940
        i32.const 0
        i32.store
        i32.const 1928
        i32.const 0
        i32.store
        i32.const 1932
        i32.load
        drop
        i32.const 1932
        i32.const 0
        i32.store
        i32.const 0
      else
        local.get $p1
      end
      drop
      i32.const 1912
      i32.const 1912
      i32.load
      local.get $p0
      i32.or
      i32.store
      local.get $l6
      i32.eqz
      br_if $B0
    end
    local.get $l2
    i32.const 208
    i32.add
    global.set $g0
    local.get $l4
    i32.const 16
    i32.add
    global.set $g0)
  (func $__errno_location (type $t4) (result i32)
    i32.const 2064)
  (func $f8 (type $t1) (param $p0 i32) (result i32)
    i32.const 0)
  (func $f9 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    block $B0
      local.get $p0
      i32.eqz
      br_if $B0
      local.get $p0
      i32.load offset=76
      drop
      local.get $p0
      i32.load offset=20
      local.get $p0
      i32.load offset=28
      i32.ne
      if $I1
        local.get $p0
        i32.const 0
        i32.const 0
        local.get $p0
        i32.load offset=36
        call_indirect $__indirect_function_table (type $t0)
        drop
      end
      local.get $p0
      i32.load offset=4
      local.tee $l1
      local.get $p0
      i32.load offset=8
      local.tee $l2
      i32.eq
      br_if $B0
      local.get $p0
      local.get $l1
      local.get $l2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get $p0
      i32.load offset=40
      call_indirect $__indirect_function_table (type $t8)
      drop
    end)
  (func $f10 (type $t1) (param $p0 i32) (result i32)
    (local $l1 i32)
    local.get $p0
    local.get $p0
    i32.load offset=72
    local.tee $l1
    i32.const 1
    i32.sub
    local.get $l1
    i32.or
    i32.store offset=72
    local.get $p0
    i32.load
    local.tee $l1
    i32.const 8
    i32.and
    if $I0
      local.get $p0
      local.get $l1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    local.get $p0
    i64.const 0
    i64.store offset=4 align=4
    local.get $p0
    local.get $p0
    i32.load offset=44
    local.tee $l1
    i32.store offset=28
    local.get $p0
    local.get $l1
    i32.store offset=20
    local.get $p0
    local.get $l1
    local.get $p0
    i32.load offset=48
    i32.add
    i32.store offset=16
    i32.const 0)
  (func $f11 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    block $B0
      local.get $p1
      local.get $p2
      i32.load offset=16
      local.tee $l5
      if $I1 (result i32)
        local.get $l5
      else
        local.get $p2
        call $f10
        br_if $B0
        local.get $p2
        i32.load offset=16
      end
      local.get $p2
      i32.load offset=20
      local.tee $l3
      i32.sub
      i32.gt_u
      if $I2
        local.get $p2
        local.get $p0
        local.get $p1
        local.get $p2
        i32.load offset=36
        call_indirect $__indirect_function_table (type $t0)
        return
      end
      block $B3
        local.get $p2
        i32.load offset=80
        i32.const 0
        i32.lt_s
        if $I4
          i32.const 0
          local.set $l5
          br $B3
        end
        local.get $p1
        local.set $l4
        loop $L5
          local.get $l4
          local.tee $l5
          i32.eqz
          if $I6
            i32.const 0
            local.set $l5
            br $B3
          end
          local.get $p0
          local.get $l5
          i32.const 1
          i32.sub
          local.tee $l4
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if $L5
        end
        local.get $p2
        local.get $p0
        local.get $l5
        local.get $p2
        i32.load offset=36
        call_indirect $__indirect_function_table (type $t0)
        local.tee $l4
        local.get $l5
        i32.lt_u
        br_if $B0
        local.get $p0
        local.get $l5
        i32.add
        local.set $p0
        local.get $p1
        local.get $l5
        i32.sub
        local.set $p1
        local.get $p2
        i32.load offset=20
        local.set $l3
      end
      local.get $l3
      local.tee $l4
      local.get $p1
      local.tee $l3
      i32.add
      local.set $l6
      block $B7
        block $B8
          block $B9
            local.get $p0
            local.get $l4
            i32.xor
            i32.const 3
            i32.and
            i32.eqz
            if $I10
              local.get $l4
              i32.const 3
              i32.and
              i32.eqz
              br_if $B9
              local.get $l3
              i32.const 0
              i32.le_s
              br_if $B9
              local.get $l4
              local.set $l3
              loop $L11
                local.get $l3
                local.get $p0
                i32.load8_u
                i32.store8
                local.get $p0
                i32.const 1
                i32.add
                local.set $p0
                local.get $l3
                i32.const 1
                i32.add
                local.tee $l3
                i32.const 3
                i32.and
                i32.eqz
                br_if $B8
                local.get $l3
                local.get $l6
                i32.lt_u
                br_if $L11
              end
              br $B8
            end
            block $B12
              local.get $l6
              i32.const 4
              i32.lt_u
              br_if $B12
              local.get $l6
              i32.const 4
              i32.sub
              local.tee $l7
              local.get $l4
              i32.lt_u
              br_if $B12
              local.get $l4
              local.set $l3
              loop $L13
                local.get $l3
                local.get $p0
                i32.load8_u
                i32.store8
                local.get $l3
                local.get $p0
                i32.load8_u offset=1
                i32.store8 offset=1
                local.get $l3
                local.get $p0
                i32.load8_u offset=2
                i32.store8 offset=2
                local.get $l3
                local.get $p0
                i32.load8_u offset=3
                i32.store8 offset=3
                local.get $p0
                i32.const 4
                i32.add
                local.set $p0
                local.get $l3
                i32.const 4
                i32.add
                local.tee $l3
                local.get $l7
                i32.le_u
                br_if $L13
              end
              br $B7
            end
            local.get $l4
            local.set $l3
            br $B7
          end
          local.get $l4
          local.set $l3
        end
        block $B14
          local.get $l6
          i32.const -4
          i32.and
          local.tee $l7
          i32.const 64
          i32.lt_u
          br_if $B14
          local.get $l3
          local.get $l7
          i32.const -64
          i32.add
          local.tee $l4
          i32.gt_u
          br_if $B14
          loop $L15
            local.get $l3
            local.get $p0
            i32.load
            i32.store
            local.get $l3
            local.get $p0
            i32.load offset=4
            i32.store offset=4
            local.get $l3
            local.get $p0
            i32.load offset=8
            i32.store offset=8
            local.get $l3
            local.get $p0
            i32.load offset=12
            i32.store offset=12
            local.get $l3
            local.get $p0
            i32.load offset=16
            i32.store offset=16
            local.get $l3
            local.get $p0
            i32.load offset=20
            i32.store offset=20
            local.get $l3
            local.get $p0
            i32.load offset=24
            i32.store offset=24
            local.get $l3
            local.get $p0
            i32.load offset=28
            i32.store offset=28
            local.get $l3
            local.get $p0
            i32.load offset=32
            i32.store offset=32
            local.get $l3
            local.get $p0
            i32.load offset=36
            i32.store offset=36
            local.get $l3
            local.get $p0
            i32.load offset=40
            i32.store offset=40
            local.get $l3
            local.get $p0
            i32.load offset=44
            i32.store offset=44
            local.get $l3
            local.get $p0
            i32.load offset=48
            i32.store offset=48
            local.get $l3
            local.get $p0
            i32.load offset=52
            i32.store offset=52
            local.get $l3
            local.get $p0
            i32.load offset=56
            i32.store offset=56
            local.get $l3
            local.get $p0
            i32.load offset=60
            i32.store offset=60
            local.get $p0
            i32.const -64
            i32.sub
            local.set $p0
            local.get $l3
            i32.const -64
            i32.sub
            local.tee $l3
            local.get $l4
            i32.le_u
            br_if $L15
          end
        end
        local.get $l3
        local.get $l7
        i32.ge_u
        br_if $B7
        loop $L16
          local.get $l3
          local.get $p0
          i32.load
          i32.store
          local.get $p0
          i32.const 4
          i32.add
          local.set $p0
          local.get $l3
          i32.const 4
          i32.add
          local.tee $l3
          local.get $l7
          i32.lt_u
          br_if $L16
        end
      end
      local.get $l3
      local.get $l6
      i32.lt_u
      if $I17
        loop $L18
          local.get $l3
          local.get $p0
          i32.load8_u
          i32.store8
          local.get $p0
          i32.const 1
          i32.add
          local.set $p0
          local.get $l3
          i32.const 1
          i32.add
          local.tee $l3
          local.get $l6
          i32.ne
          br_if $L18
        end
      end
      local.get $p2
      local.get $p2
      i32.load offset=20
      local.get $p1
      i32.add
      i32.store offset=20
      local.get $p1
      local.get $l5
      i32.add
      local.set $l4
    end
    local.get $l4)
  (func $f12 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    i32.const 1988
    i32.load
    drop
    block $B0
      i32.const -1
      i32.const 0
      block $B1 (result i32)
        local.get $p0
        local.tee $l1
        local.set $l3
        block $B2 (result i32)
          block $B3
            local.get $p0
            i32.const 3
            i32.and
            if $I4
              loop $L5
                local.get $p0
                i32.load8_u
                i32.eqz
                br_if $B3
                local.get $p0
                i32.const 1
                i32.add
                local.tee $p0
                i32.const 3
                i32.and
                br_if $L5
              end
            end
            loop $L6
              local.get $p0
              local.tee $l2
              i32.const 4
              i32.add
              local.set $p0
              local.get $l2
              i32.load
              local.tee $l4
              i32.const -1
              i32.xor
              local.get $l4
              i32.const 16843009
              i32.sub
              i32.and
              i32.const -2139062144
              i32.and
              i32.eqz
              br_if $L6
            end
            local.get $l2
            local.get $l1
            i32.sub
            local.get $l4
            i32.const 255
            i32.and
            i32.eqz
            br_if $B2
            drop
            loop $L7
              local.get $l2
              i32.load8_u offset=1
              local.set $l4
              local.get $l2
              i32.const 1
              i32.add
              local.tee $p0
              local.set $l2
              local.get $l4
              br_if $L7
            end
          end
          local.get $p0
          local.get $l1
          i32.sub
        end
        local.tee $l1
        local.get $l1
        block $B8 (result i32)
          i32.const 1988
          i32.load
          i32.const 0
          i32.lt_s
          if $I9
            local.get $l3
            local.get $l1
            i32.const 1912
            call $f11
            br $B8
          end
          local.get $l3
          local.get $l1
          i32.const 1912
          call $f11
        end
        local.tee $l3
        i32.eq
        br_if $B1
        drop
        local.get $l3
      end
      local.get $l1
      i32.ne
      select
      i32.const 0
      i32.lt_s
      br_if $B0
      block $B10
        i32.const 1992
        i32.load
        i32.const 10
        i32.eq
        br_if $B10
        i32.const 1932
        i32.load
        local.tee $p0
        i32.const 1928
        i32.load
        i32.eq
        br_if $B10
        i32.const 1932
        local.get $p0
        i32.const 1
        i32.add
        i32.store
        local.get $p0
        i32.const 10
        i32.store8
        br $B0
      end
      global.get $g0
      i32.const 16
      i32.sub
      local.tee $p0
      global.set $g0
      local.get $p0
      i32.const 10
      i32.store8 offset=15
      block $B11
        block $B12
          i32.const 1928
          i32.load
          local.tee $l1
          if $I13 (result i32)
            local.get $l1
          else
            i32.const 1912
            call $f10
            br_if $B11
            i32.const 1928
            i32.load
          end
          i32.const 1932
          i32.load
          local.tee $l1
          i32.eq
          br_if $B12
          i32.const 1992
          i32.load
          i32.const 10
          i32.eq
          br_if $B12
          i32.const 1932
          local.get $l1
          i32.const 1
          i32.add
          i32.store
          local.get $l1
          i32.const 10
          i32.store8
          br $B11
        end
        i32.const 1912
        local.get $p0
        i32.const 15
        i32.add
        i32.const 1
        i32.const 1948
        i32.load
        call_indirect $__indirect_function_table (type $t0)
        i32.const 1
        i32.ne
        br_if $B11
        local.get $p0
        i32.load8_u offset=15
        drop
      end
      local.get $p0
      i32.const 16
      i32.add
      global.set $g0
    end)
  (func $f13 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p0
    i32.load offset=28
    local.tee $l4
    i32.store offset=16
    local.get $p0
    i32.load offset=20
    local.set $l5
    local.get $l3
    local.get $p2
    i32.store offset=28
    local.get $l3
    local.get $p1
    i32.store offset=24
    local.get $l3
    local.get $l5
    local.get $l4
    i32.sub
    local.tee $p1
    i32.store offset=20
    local.get $p1
    local.get $p2
    i32.add
    local.set $l6
    i32.const 2
    local.set $l7
    local.get $l3
    i32.const 16
    i32.add
    local.set $p1
    block $B0 (result i32)
      block $B1
        block $B2
          local.get $p0
          i32.load offset=60
          local.get $l3
          i32.const 16
          i32.add
          i32.const 2
          local.get $l3
          i32.const 12
          i32.add
          call $wasi_snapshot_preview1.fd_write
          call $f22
          i32.eqz
          if $I3
            loop $L4
              local.get $l6
              local.get $l3
              i32.load offset=12
              local.tee $l4
              i32.eq
              br_if $B2
              local.get $l4
              i32.const 0
              i32.lt_s
              br_if $B1
              local.get $p1
              local.get $l4
              local.get $p1
              i32.load offset=4
              local.tee $l8
              i32.gt_u
              local.tee $l5
              i32.const 3
              i32.shl
              i32.add
              local.tee $l9
              local.get $l4
              local.get $l8
              i32.const 0
              local.get $l5
              select
              i32.sub
              local.tee $l8
              local.get $l9
              i32.load
              i32.add
              i32.store
              local.get $p1
              i32.const 12
              i32.const 4
              local.get $l5
              select
              i32.add
              local.tee $l9
              local.get $l9
              i32.load
              local.get $l8
              i32.sub
              i32.store
              local.get $l6
              local.get $l4
              i32.sub
              local.set $l6
              local.get $p0
              i32.load offset=60
              local.get $p1
              i32.const 8
              i32.add
              local.get $p1
              local.get $l5
              select
              local.tee $p1
              local.get $l7
              local.get $l5
              i32.sub
              local.tee $l7
              local.get $l3
              i32.const 12
              i32.add
              call $wasi_snapshot_preview1.fd_write
              call $f22
              i32.eqz
              br_if $L4
            end
          end
          local.get $l6
          i32.const -1
          i32.ne
          br_if $B1
        end
        local.get $p0
        local.get $p0
        i32.load offset=44
        local.tee $p1
        i32.store offset=28
        local.get $p0
        local.get $p1
        i32.store offset=20
        local.get $p0
        local.get $p1
        local.get $p0
        i32.load offset=48
        i32.add
        i32.store offset=16
        local.get $p2
        br $B0
      end
      local.get $p0
      i32.const 0
      i32.store offset=28
      local.get $p0
      i64.const 0
      i64.store offset=16
      local.get $p0
      local.get $p0
      i32.load
      i32.const 32
      i32.or
      i32.store
      i32.const 0
      local.get $l7
      i32.const 2
      i32.eq
      br_if $B0
      drop
      local.get $p2
      local.get $p1
      i32.load offset=4
      i32.sub
    end
    local.set $l4
    local.get $l3
    i32.const 32
    i32.add
    global.set $g0
    local.get $l4)
  (func $f14 (type $t8) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    i64.const 0)
  (func $f15 (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i64)
    block $B0
      local.get $p2
      i32.eqz
      br_if $B0
      local.get $p0
      local.get $p1
      i32.store8
      local.get $p0
      local.get $p2
      i32.add
      local.tee $l3
      i32.const 1
      i32.sub
      local.get $p1
      i32.store8
      local.get $p2
      i32.const 3
      i32.lt_u
      br_if $B0
      local.get $p0
      local.get $p1
      i32.store8 offset=2
      local.get $p0
      local.get $p1
      i32.store8 offset=1
      local.get $l3
      i32.const 3
      i32.sub
      local.get $p1
      i32.store8
      local.get $l3
      i32.const 2
      i32.sub
      local.get $p1
      i32.store8
      local.get $p2
      i32.const 7
      i32.lt_u
      br_if $B0
      local.get $p0
      local.get $p1
      i32.store8 offset=3
      local.get $l3
      i32.const 4
      i32.sub
      local.get $p1
      i32.store8
      local.get $p2
      i32.const 9
      i32.lt_u
      br_if $B0
      local.get $p0
      i32.const 0
      local.get $p0
      i32.sub
      i32.const 3
      i32.and
      local.tee $l4
      i32.add
      local.tee $l3
      local.get $p1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee $p1
      i32.store
      local.get $l3
      local.get $p2
      local.get $l4
      i32.sub
      i32.const -4
      i32.and
      local.tee $l4
      i32.add
      local.tee $p2
      i32.const 4
      i32.sub
      local.get $p1
      i32.store
      local.get $l4
      i32.const 9
      i32.lt_u
      br_if $B0
      local.get $l3
      local.get $p1
      i32.store offset=8
      local.get $l3
      local.get $p1
      i32.store offset=4
      local.get $p2
      i32.const 8
      i32.sub
      local.get $p1
      i32.store
      local.get $p2
      i32.const 12
      i32.sub
      local.get $p1
      i32.store
      local.get $l4
      i32.const 25
      i32.lt_u
      br_if $B0
      local.get $l3
      local.get $p1
      i32.store offset=24
      local.get $l3
      local.get $p1
      i32.store offset=20
      local.get $l3
      local.get $p1
      i32.store offset=16
      local.get $l3
      local.get $p1
      i32.store offset=12
      local.get $p2
      i32.const 16
      i32.sub
      local.get $p1
      i32.store
      local.get $p2
      i32.const 20
      i32.sub
      local.get $p1
      i32.store
      local.get $p2
      i32.const 24
      i32.sub
      local.get $p1
      i32.store
      local.get $p2
      i32.const 28
      i32.sub
      local.get $p1
      i32.store
      local.get $l4
      local.get $l3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee $l4
      i32.sub
      local.tee $p2
      i32.const 32
      i32.lt_u
      br_if $B0
      local.get $p1
      i64.extend_i32_u
      i64.const 4294967297
      i64.mul
      local.set $l5
      local.get $l3
      local.get $l4
      i32.add
      local.set $p1
      loop $L1
        local.get $p1
        local.get $l5
        i64.store offset=24
        local.get $p1
        local.get $l5
        i64.store offset=16
        local.get $p1
        local.get $l5
        i64.store offset=8
        local.get $p1
        local.get $l5
        i64.store
        local.get $p1
        i32.const 32
        i32.add
        local.set $p1
        local.get $p2
        i32.const 32
        i32.sub
        local.tee $p2
        i32.const 31
        i32.gt_u
        br_if $L1
      end
    end)
  (func $f16 (type $t1) (param $p0 i32) (result i32)
    local.get $p0
    i32.const 48
    i32.sub
    i32.const 10
    i32.lt_u)
  (func $f17 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i64) (local $l23 i64)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l5
    global.set $g0
    local.get $l5
    local.get $p1
    i32.store offset=76
    local.get $l5
    i32.const 55
    i32.add
    local.set $l21
    local.get $l5
    i32.const 56
    i32.add
    local.set $l18
    i32.const 0
    local.set $p1
    block $B0
      block $B1
        block $B2
          block $B3
            loop $L4
              local.get $p1
              i32.const 2147483647
              local.get $l11
              i32.sub
              i32.gt_s
              br_if $B3
              local.get $p1
              local.get $l11
              i32.add
              local.set $l11
              local.get $l5
              i32.load offset=76
              local.tee $l9
              local.set $p1
              block $B5
                block $B6
                  block $B7
                    local.get $l9
                    i32.load8_u
                    local.tee $l10
                    if $I8
                      loop $L9
                        block $B10
                          block $B11
                            local.get $l10
                            i32.const 255
                            i32.and
                            local.tee $l10
                            i32.eqz
                            if $I12
                              local.get $p1
                              local.set $l10
                              br $B11
                            end
                            local.get $l10
                            i32.const 37
                            i32.ne
                            br_if $B10
                            local.get $p1
                            local.set $l10
                            loop $L13
                              local.get $p1
                              i32.load8_u offset=1
                              i32.const 37
                              i32.ne
                              br_if $B11
                              local.get $l5
                              local.get $p1
                              i32.const 2
                              i32.add
                              local.tee $l6
                              i32.store offset=76
                              local.get $l10
                              i32.const 1
                              i32.add
                              local.set $l10
                              local.get $p1
                              i32.load8_u offset=2
                              local.set $l7
                              local.get $l6
                              local.set $p1
                              local.get $l7
                              i32.const 37
                              i32.eq
                              br_if $L13
                            end
                          end
                          local.get $l10
                          local.get $l9
                          i32.sub
                          local.tee $p1
                          i32.const 2147483647
                          local.get $l11
                          i32.sub
                          local.tee $l10
                          i32.gt_s
                          br_if $B3
                          local.get $p0
                          if $I14
                            local.get $p0
                            local.get $l9
                            local.get $p1
                            call $f18
                          end
                          local.get $p1
                          br_if $L4
                          i32.const -1
                          local.set $l17
                          i32.const 1
                          local.set $l6
                          local.get $l5
                          i32.load offset=76
                          i32.load8_s offset=1
                          call $f16
                          local.set $l7
                          local.get $l5
                          i32.load offset=76
                          local.set $p1
                          block $B15
                            local.get $l7
                            i32.eqz
                            br_if $B15
                            local.get $p1
                            i32.load8_u offset=2
                            i32.const 36
                            i32.ne
                            br_if $B15
                            local.get $p1
                            i32.load8_s offset=1
                            i32.const 48
                            i32.sub
                            local.set $l17
                            i32.const 1
                            local.set $l19
                            i32.const 3
                            local.set $l6
                          end
                          local.get $l5
                          local.get $p1
                          local.get $l6
                          i32.add
                          local.tee $p1
                          i32.store offset=76
                          i32.const 0
                          local.set $l12
                          block $B16
                            local.get $p1
                            i32.load8_s
                            local.tee $l16
                            i32.const 32
                            i32.sub
                            local.tee $l7
                            i32.const 31
                            i32.gt_u
                            if $I17
                              local.get $p1
                              local.set $l6
                              br $B16
                            end
                            local.get $p1
                            local.set $l6
                            i32.const 1
                            local.get $l7
                            i32.shl
                            local.tee $l7
                            i32.const 75913
                            i32.and
                            i32.eqz
                            br_if $B16
                            loop $L18
                              local.get $l5
                              local.get $p1
                              i32.const 1
                              i32.add
                              local.tee $l6
                              i32.store offset=76
                              local.get $l7
                              local.get $l12
                              i32.or
                              local.set $l12
                              local.get $p1
                              i32.load8_s offset=1
                              local.tee $l16
                              i32.const 32
                              i32.sub
                              local.tee $l7
                              i32.const 32
                              i32.ge_u
                              br_if $B16
                              local.get $l6
                              local.set $p1
                              i32.const 1
                              local.get $l7
                              i32.shl
                              local.tee $l7
                              i32.const 75913
                              i32.and
                              br_if $L18
                            end
                          end
                          block $B19
                            local.get $l16
                            i32.const 42
                            i32.eq
                            if $I20
                              local.get $l5
                              block $B21 (result i32)
                                block $B22
                                  local.get $l6
                                  i32.load8_s offset=1
                                  call $f16
                                  i32.eqz
                                  br_if $B22
                                  local.get $l5
                                  i32.load offset=76
                                  local.tee $l6
                                  i32.load8_u offset=2
                                  i32.const 36
                                  i32.ne
                                  br_if $B22
                                  local.get $l6
                                  i32.load8_s offset=1
                                  i32.const 2
                                  i32.shl
                                  local.get $p4
                                  i32.add
                                  i32.const 192
                                  i32.sub
                                  i32.const 10
                                  i32.store
                                  local.get $l6
                                  i32.load8_s offset=1
                                  i32.const 3
                                  i32.shl
                                  local.get $p3
                                  i32.add
                                  i32.const 384
                                  i32.sub
                                  i32.load
                                  local.set $l13
                                  i32.const 1
                                  local.set $l19
                                  local.get $l6
                                  i32.const 3
                                  i32.add
                                  br $B21
                                end
                                local.get $l19
                                br_if $B7
                                i32.const 0
                                local.set $l19
                                i32.const 0
                                local.set $l13
                                local.get $p0
                                if $I23
                                  local.get $p2
                                  local.get $p2
                                  i32.load
                                  local.tee $p1
                                  i32.const 4
                                  i32.add
                                  i32.store
                                  local.get $p1
                                  i32.load
                                  local.set $l13
                                end
                                local.get $l5
                                i32.load offset=76
                                i32.const 1
                                i32.add
                              end
                              local.tee $p1
                              i32.store offset=76
                              local.get $l13
                              i32.const 0
                              i32.ge_s
                              br_if $B19
                              i32.const 0
                              local.get $l13
                              i32.sub
                              local.set $l13
                              local.get $l12
                              i32.const 8192
                              i32.or
                              local.set $l12
                              br $B19
                            end
                            local.get $l5
                            i32.const 76
                            i32.add
                            call $f19
                            local.tee $l13
                            i32.const 0
                            i32.lt_s
                            br_if $B3
                            local.get $l5
                            i32.load offset=76
                            local.set $p1
                          end
                          i32.const 0
                          local.set $l6
                          i32.const -1
                          local.set $l8
                          block $B24 (result i32)
                            i32.const 0
                            local.get $p1
                            i32.load8_u
                            i32.const 46
                            i32.ne
                            br_if $B24
                            drop
                            local.get $p1
                            i32.load8_u offset=1
                            i32.const 42
                            i32.eq
                            if $I25
                              local.get $l5
                              block $B26 (result i32)
                                block $B27
                                  local.get $p1
                                  i32.load8_s offset=2
                                  call $f16
                                  i32.eqz
                                  br_if $B27
                                  local.get $l5
                                  i32.load offset=76
                                  local.tee $l7
                                  i32.load8_u offset=3
                                  i32.const 36
                                  i32.ne
                                  br_if $B27
                                  local.get $l7
                                  i32.load8_s offset=2
                                  i32.const 2
                                  i32.shl
                                  local.get $p4
                                  i32.add
                                  i32.const 192
                                  i32.sub
                                  i32.const 10
                                  i32.store
                                  local.get $l7
                                  i32.load8_s offset=2
                                  i32.const 3
                                  i32.shl
                                  local.get $p3
                                  i32.add
                                  i32.const 384
                                  i32.sub
                                  i32.load
                                  local.set $l8
                                  local.get $l7
                                  i32.const 4
                                  i32.add
                                  br $B26
                                end
                                local.get $l19
                                br_if $B7
                                local.get $p0
                                if $I28 (result i32)
                                  local.get $p2
                                  local.get $p2
                                  i32.load
                                  local.tee $p1
                                  i32.const 4
                                  i32.add
                                  i32.store
                                  local.get $p1
                                  i32.load
                                else
                                  i32.const 0
                                end
                                local.set $l8
                                local.get $l5
                                i32.load offset=76
                                i32.const 2
                                i32.add
                              end
                              local.tee $p1
                              i32.store offset=76
                              local.get $l8
                              i32.const -1
                              i32.xor
                              i32.const 31
                              i32.shr_u
                              br $B24
                            end
                            local.get $l5
                            local.get $p1
                            i32.const 1
                            i32.add
                            i32.store offset=76
                            local.get $l5
                            i32.const 76
                            i32.add
                            call $f19
                            local.set $l8
                            local.get $l5
                            i32.load offset=76
                            local.set $p1
                            i32.const 1
                          end
                          local.set $l20
                          loop $L29
                            local.get $l6
                            local.set $l7
                            i32.const 28
                            local.set $l15
                            local.get $p1
                            i32.load8_s
                            i32.const 65
                            i32.sub
                            i32.const 57
                            i32.gt_u
                            br_if $B2
                            local.get $l5
                            local.get $p1
                            i32.const 1
                            i32.add
                            local.tee $l16
                            i32.store offset=76
                            local.get $p1
                            i32.load8_s
                            local.set $l6
                            local.get $l16
                            local.set $p1
                            local.get $l6
                            local.get $l7
                            i32.const 58
                            i32.mul
                            i32.add
                            i32.const 1359
                            i32.add
                            i32.load8_u
                            local.tee $l6
                            i32.const 1
                            i32.sub
                            i32.const 8
                            i32.lt_u
                            br_if $L29
                          end
                          block $B30
                            block $B31
                              local.get $l6
                              i32.const 27
                              i32.ne
                              if $I32
                                local.get $l6
                                i32.eqz
                                br_if $B2
                                local.get $l17
                                i32.const 0
                                i32.ge_s
                                if $I33
                                  local.get $p4
                                  local.get $l17
                                  i32.const 2
                                  i32.shl
                                  i32.add
                                  local.get $l6
                                  i32.store
                                  local.get $l5
                                  local.get $p3
                                  local.get $l17
                                  i32.const 3
                                  i32.shl
                                  i32.add
                                  i64.load
                                  i64.store offset=64
                                  br $B31
                                end
                                local.get $p0
                                i32.eqz
                                br_if $B5
                                local.get $l5
                                i32.const -64
                                i32.sub
                                local.get $l6
                                local.get $p2
                                call $f20
                                local.get $l5
                                i32.load offset=76
                                local.set $l16
                                br $B30
                              end
                              local.get $l17
                              i32.const 0
                              i32.ge_s
                              br_if $B2
                            end
                            i32.const 0
                            local.set $p1
                            local.get $p0
                            i32.eqz
                            br_if $L4
                          end
                          local.get $l12
                          i32.const -65537
                          i32.and
                          local.tee $l14
                          local.get $l12
                          local.get $l12
                          i32.const 8192
                          i32.and
                          select
                          local.set $l6
                          i32.const 0
                          local.set $l12
                          i32.const 1024
                          local.set $l17
                          local.get $l18
                          local.set $l15
                          block $B34
                            block $B35
                              block $B36
                                block $B37 (result i32)
                                  block $B38
                                    block $B39
                                      block $B40
                                        block $B41
                                          block $B42 (result i32)
                                            block $B43
                                              block $B44
                                                block $B45
                                                  block $B46
                                                    block $B47
                                                      block $B48
                                                        block $B49
                                                          local.get $l16
                                                          i32.const 1
                                                          i32.sub
                                                          i32.load8_s
                                                          local.tee $p1
                                                          i32.const -33
                                                          i32.and
                                                          local.get $p1
                                                          local.get $p1
                                                          i32.const 15
                                                          i32.and
                                                          i32.const 3
                                                          i32.eq
                                                          select
                                                          local.get $p1
                                                          local.get $l7
                                                          select
                                                          local.tee $p1
                                                          i32.const 88
                                                          i32.sub
                                                          br_table $B45 $B6 $B6 $B6 $B6 $B6 $B6 $B6 $B6 $B35 $B6 $B34 $B43 $B35 $B35 $B35 $B6 $B43 $B6 $B6 $B6 $B6 $B47 $B44 $B46 $B6 $B6 $B40 $B6 $B48 $B6 $B6 $B45 $B49
                                                        end
                                                        block $B50
                                                          local.get $p1
                                                          i32.const 65
                                                          i32.sub
                                                          br_table $B35 $B6 $B38 $B6 $B35 $B35 $B35 $B50
                                                        end
                                                        local.get $p1
                                                        i32.const 83
                                                        i32.eq
                                                        br_if $B39
                                                        br $B6
                                                      end
                                                      local.get $l5
                                                      i64.load offset=64
                                                      local.set $l22
                                                      i32.const 1024
                                                      br $B42
                                                    end
                                                    i32.const 0
                                                    local.set $p1
                                                    block $B51
                                                      block $B52
                                                        block $B53
                                                          block $B54
                                                            block $B55
                                                              block $B56
                                                                block $B57
                                                                  local.get $l7
                                                                  i32.const 255
                                                                  i32.and
                                                                  br_table $B57 $B56 $B55 $B54 $B53 $L4 $B52 $B51 $L4
                                                                end
                                                                local.get $l5
                                                                i32.load offset=64
                                                                local.get $l11
                                                                i32.store
                                                                br $L4
                                                              end
                                                              local.get $l5
                                                              i32.load offset=64
                                                              local.get $l11
                                                              i32.store
                                                              br $L4
                                                            end
                                                            local.get $l5
                                                            i32.load offset=64
                                                            local.get $l11
                                                            i64.extend_i32_s
                                                            i64.store
                                                            br $L4
                                                          end
                                                          local.get $l5
                                                          i32.load offset=64
                                                          local.get $l11
                                                          i32.store16
                                                          br $L4
                                                        end
                                                        local.get $l5
                                                        i32.load offset=64
                                                        local.get $l11
                                                        i32.store8
                                                        br $L4
                                                      end
                                                      local.get $l5
                                                      i32.load offset=64
                                                      local.get $l11
                                                      i32.store
                                                      br $L4
                                                    end
                                                    local.get $l5
                                                    i32.load offset=64
                                                    local.get $l11
                                                    i64.extend_i32_s
                                                    i64.store
                                                    br $L4
                                                  end
                                                  local.get $l8
                                                  i32.const 8
                                                  local.get $l8
                                                  i32.const 8
                                                  i32.gt_u
                                                  select
                                                  local.set $l8
                                                  local.get $l6
                                                  i32.const 8
                                                  i32.or
                                                  local.set $l6
                                                  i32.const 120
                                                  local.set $p1
                                                end
                                                local.get $l18
                                                local.set $l14
                                                local.get $p1
                                                i32.const 32
                                                i32.and
                                                local.set $l7
                                                local.get $l5
                                                i64.load offset=64
                                                local.tee $l22
                                                i64.eqz
                                                i32.eqz
                                                if $I58
                                                  loop $L59
                                                    local.get $l14
                                                    i32.const 1
                                                    i32.sub
                                                    local.tee $l14
                                                    local.get $l22
                                                    i32.wrap_i64
                                                    i32.const 15
                                                    i32.and
                                                    i32.const 1888
                                                    i32.add
                                                    i32.load8_u
                                                    local.get $l7
                                                    i32.or
                                                    i32.store8
                                                    local.get $l22
                                                    i64.const 15
                                                    i64.gt_u
                                                    local.set $l9
                                                    local.get $l22
                                                    i64.const 4
                                                    i64.shr_u
                                                    local.set $l22
                                                    local.get $l9
                                                    br_if $L59
                                                  end
                                                end
                                                local.get $l14
                                                local.set $l9
                                                local.get $l5
                                                i64.load offset=64
                                                i64.eqz
                                                br_if $B41
                                                local.get $l6
                                                i32.const 8
                                                i32.and
                                                i32.eqz
                                                br_if $B41
                                                local.get $p1
                                                i32.const 4
                                                i32.shr_u
                                                i32.const 1024
                                                i32.add
                                                local.set $l17
                                                i32.const 2
                                                local.set $l12
                                                br $B41
                                              end
                                              local.get $l18
                                              local.set $p1
                                              local.get $l5
                                              i64.load offset=64
                                              local.tee $l22
                                              i64.eqz
                                              i32.eqz
                                              if $I60
                                                loop $L61
                                                  local.get $p1
                                                  i32.const 1
                                                  i32.sub
                                                  local.tee $p1
                                                  local.get $l22
                                                  i32.wrap_i64
                                                  i32.const 7
                                                  i32.and
                                                  i32.const 48
                                                  i32.or
                                                  i32.store8
                                                  local.get $l22
                                                  i64.const 7
                                                  i64.gt_u
                                                  local.set $l14
                                                  local.get $l22
                                                  i64.const 3
                                                  i64.shr_u
                                                  local.set $l22
                                                  local.get $l14
                                                  br_if $L61
                                                end
                                              end
                                              local.get $p1
                                              local.set $l9
                                              local.get $l6
                                              i32.const 8
                                              i32.and
                                              i32.eqz
                                              br_if $B41
                                              local.get $l8
                                              local.get $l18
                                              local.get $l9
                                              i32.sub
                                              local.tee $p1
                                              i32.const 1
                                              i32.add
                                              local.get $p1
                                              local.get $l8
                                              i32.lt_s
                                              select
                                              local.set $l8
                                              br $B41
                                            end
                                            local.get $l5
                                            i64.load offset=64
                                            local.tee $l22
                                            i64.const 0
                                            i64.lt_s
                                            if $I62
                                              local.get $l5
                                              i64.const 0
                                              local.get $l22
                                              i64.sub
                                              local.tee $l22
                                              i64.store offset=64
                                              i32.const 1
                                              local.set $l12
                                              i32.const 1024
                                              br $B42
                                            end
                                            local.get $l6
                                            i32.const 2048
                                            i32.and
                                            if $I63
                                              i32.const 1
                                              local.set $l12
                                              i32.const 1025
                                              br $B42
                                            end
                                            i32.const 1026
                                            i32.const 1024
                                            local.get $l6
                                            i32.const 1
                                            i32.and
                                            local.tee $l12
                                            select
                                          end
                                          local.set $l17
                                          local.get $l18
                                          local.set $l14
                                          block $B64
                                            local.get $l22
                                            i64.const 4294967296
                                            i64.lt_u
                                            if $I65
                                              local.get $l22
                                              local.set $l23
                                              br $B64
                                            end
                                            loop $L66
                                              local.get $l14
                                              i32.const 1
                                              i32.sub
                                              local.tee $l14
                                              local.get $l22
                                              local.get $l22
                                              i64.const 10
                                              i64.div_u
                                              local.tee $l23
                                              i64.const 10
                                              i64.mul
                                              i64.sub
                                              i32.wrap_i64
                                              i32.const 48
                                              i32.or
                                              i32.store8
                                              local.get $l22
                                              i64.const 42949672959
                                              i64.gt_u
                                              local.set $p1
                                              local.get $l23
                                              local.set $l22
                                              local.get $p1
                                              br_if $L66
                                            end
                                          end
                                          local.get $l23
                                          i32.wrap_i64
                                          local.tee $p1
                                          if $I67
                                            loop $L68
                                              local.get $l14
                                              i32.const 1
                                              i32.sub
                                              local.tee $l14
                                              local.get $p1
                                              local.get $p1
                                              i32.const 10
                                              i32.div_u
                                              local.tee $l9
                                              i32.const 10
                                              i32.mul
                                              i32.sub
                                              i32.const 48
                                              i32.or
                                              i32.store8
                                              local.get $p1
                                              i32.const 9
                                              i32.gt_u
                                              local.set $l7
                                              local.get $l9
                                              local.set $p1
                                              local.get $l7
                                              br_if $L68
                                            end
                                          end
                                          local.get $l14
                                          local.set $l9
                                        end
                                        local.get $l20
                                        i32.const 0
                                        local.get $l8
                                        i32.const 0
                                        i32.lt_s
                                        select
                                        br_if $B3
                                        local.get $l6
                                        i32.const -65537
                                        i32.and
                                        local.get $l6
                                        local.get $l20
                                        select
                                        local.set $l6
                                        block $B69
                                          local.get $l5
                                          i64.load offset=64
                                          local.tee $l22
                                          i64.const 0
                                          i64.ne
                                          br_if $B69
                                          local.get $l8
                                          br_if $B69
                                          local.get $l18
                                          local.tee $l9
                                          local.set $l15
                                          i32.const 0
                                          local.set $l8
                                          br $B6
                                        end
                                        local.get $l8
                                        local.get $l22
                                        i64.eqz
                                        local.get $l18
                                        local.get $l9
                                        i32.sub
                                        i32.add
                                        local.tee $p1
                                        local.get $p1
                                        local.get $l8
                                        i32.lt_s
                                        select
                                        local.set $l8
                                        br $B6
                                      end
                                      block $B70 (result i32)
                                        i32.const 2147483647
                                        local.get $l8
                                        local.get $l8
                                        i32.const 0
                                        i32.lt_s
                                        select
                                        local.tee $l15
                                        local.tee $l6
                                        i32.const 0
                                        i32.ne
                                        local.set $l7
                                        block $B71
                                          block $B72
                                            block $B73
                                              local.get $l5
                                              i32.load offset=64
                                              local.tee $p1
                                              i32.const 1155
                                              local.get $p1
                                              select
                                              local.tee $l9
                                              local.tee $p1
                                              i32.const 3
                                              i32.and
                                              i32.eqz
                                              br_if $B73
                                              local.get $l6
                                              i32.eqz
                                              br_if $B73
                                              loop $L74
                                                local.get $p1
                                                i32.load8_u
                                                i32.eqz
                                                br_if $B72
                                                local.get $l6
                                                i32.const 1
                                                i32.sub
                                                local.tee $l6
                                                i32.const 0
                                                i32.ne
                                                local.set $l7
                                                local.get $p1
                                                i32.const 1
                                                i32.add
                                                local.tee $p1
                                                i32.const 3
                                                i32.and
                                                i32.eqz
                                                br_if $B73
                                                local.get $l6
                                                br_if $L74
                                              end
                                            end
                                            local.get $l7
                                            i32.eqz
                                            br_if $B71
                                          end
                                          block $B75
                                            local.get $p1
                                            i32.load8_u
                                            i32.eqz
                                            br_if $B75
                                            local.get $l6
                                            i32.const 4
                                            i32.lt_u
                                            br_if $B75
                                            loop $L76
                                              local.get $p1
                                              i32.load
                                              local.tee $l7
                                              i32.const -1
                                              i32.xor
                                              local.get $l7
                                              i32.const 16843009
                                              i32.sub
                                              i32.and
                                              i32.const -2139062144
                                              i32.and
                                              br_if $B75
                                              local.get $p1
                                              i32.const 4
                                              i32.add
                                              local.set $p1
                                              local.get $l6
                                              i32.const 4
                                              i32.sub
                                              local.tee $l6
                                              i32.const 3
                                              i32.gt_u
                                              br_if $L76
                                            end
                                          end
                                          local.get $l6
                                          i32.eqz
                                          br_if $B71
                                          loop $L77
                                            local.get $p1
                                            local.get $p1
                                            i32.load8_u
                                            i32.eqz
                                            br_if $B70
                                            drop
                                            local.get $p1
                                            i32.const 1
                                            i32.add
                                            local.set $p1
                                            local.get $l6
                                            i32.const 1
                                            i32.sub
                                            local.tee $l6
                                            br_if $L77
                                          end
                                        end
                                        i32.const 0
                                      end
                                      local.tee $p1
                                      local.get $l9
                                      i32.sub
                                      local.get $l15
                                      local.get $p1
                                      select
                                      local.tee $p1
                                      local.get $l9
                                      i32.add
                                      local.set $l15
                                      local.get $l8
                                      i32.const 0
                                      i32.ge_s
                                      if $I78
                                        local.get $l14
                                        local.set $l6
                                        local.get $p1
                                        local.set $l8
                                        br $B6
                                      end
                                      local.get $l14
                                      local.set $l6
                                      local.get $p1
                                      local.set $l8
                                      local.get $l15
                                      i32.load8_u
                                      br_if $B3
                                      br $B6
                                    end
                                    local.get $l8
                                    if $I79
                                      local.get $l5
                                      i32.load offset=64
                                      br $B37
                                    end
                                    i32.const 0
                                    local.set $p1
                                    local.get $p0
                                    i32.const 32
                                    local.get $l13
                                    i32.const 0
                                    local.get $l6
                                    call $f21
                                    br $B36
                                  end
                                  local.get $l5
                                  i32.const 0
                                  i32.store offset=12
                                  local.get $l5
                                  local.get $l5
                                  i64.load offset=64
                                  i64.store32 offset=8
                                  local.get $l5
                                  local.get $l5
                                  i32.const 8
                                  i32.add
                                  i32.store offset=64
                                  i32.const -1
                                  local.set $l8
                                  local.get $l5
                                  i32.const 8
                                  i32.add
                                end
                                local.set $l10
                                i32.const 0
                                local.set $p1
                                block $B80
                                  loop $L81
                                    local.get $l10
                                    i32.load
                                    local.tee $l7
                                    i32.eqz
                                    br_if $B80
                                    block $B82
                                      local.get $l5
                                      i32.const 4
                                      i32.add
                                      local.get $l7
                                      call $f23
                                      local.tee $l7
                                      i32.const 0
                                      i32.lt_s
                                      local.tee $l9
                                      br_if $B82
                                      local.get $l7
                                      local.get $l8
                                      local.get $p1
                                      i32.sub
                                      i32.gt_u
                                      br_if $B82
                                      local.get $l10
                                      i32.const 4
                                      i32.add
                                      local.set $l10
                                      local.get $l8
                                      local.get $p1
                                      local.get $l7
                                      i32.add
                                      local.tee $p1
                                      i32.gt_u
                                      br_if $L81
                                      br $B80
                                    end
                                  end
                                  local.get $l9
                                  br_if $B1
                                end
                                i32.const 61
                                local.set $l15
                                local.get $p1
                                i32.const 0
                                i32.lt_s
                                br_if $B2
                                local.get $p0
                                i32.const 32
                                local.get $l13
                                local.get $p1
                                local.get $l6
                                call $f21
                                local.get $p1
                                i32.eqz
                                if $I83
                                  i32.const 0
                                  local.set $p1
                                  br $B36
                                end
                                i32.const 0
                                local.set $l7
                                local.get $l5
                                i32.load offset=64
                                local.set $l10
                                loop $L84
                                  local.get $l10
                                  i32.load
                                  local.tee $l9
                                  i32.eqz
                                  br_if $B36
                                  local.get $l5
                                  i32.const 4
                                  i32.add
                                  local.get $l9
                                  call $f23
                                  local.tee $l9
                                  local.get $l7
                                  i32.add
                                  local.tee $l7
                                  local.get $p1
                                  i32.gt_u
                                  br_if $B36
                                  local.get $p0
                                  local.get $l5
                                  i32.const 4
                                  i32.add
                                  local.get $l9
                                  call $f18
                                  local.get $l10
                                  i32.const 4
                                  i32.add
                                  local.set $l10
                                  local.get $p1
                                  local.get $l7
                                  i32.gt_u
                                  br_if $L84
                                end
                              end
                              local.get $p0
                              i32.const 32
                              local.get $l13
                              local.get $p1
                              local.get $l6
                              i32.const 8192
                              i32.xor
                              call $f21
                              local.get $l13
                              local.get $p1
                              local.get $p1
                              local.get $l13
                              i32.lt_s
                              select
                              local.set $p1
                              br $L4
                            end
                            local.get $l20
                            i32.const 0
                            local.get $l8
                            i32.const 0
                            i32.lt_s
                            select
                            br_if $B3
                            i32.const 61
                            local.set $l15
                            local.get $p0
                            local.get $l5
                            f64.load offset=64
                            local.get $l13
                            local.get $l8
                            local.get $l6
                            local.get $p1
                            i32.const 0
                            call_indirect $__indirect_function_table (type $t11)
                            local.tee $p1
                            i32.const 0
                            i32.ge_s
                            br_if $L4
                            br $B2
                          end
                          local.get $l5
                          local.get $l5
                          i64.load offset=64
                          i64.store8 offset=55
                          i32.const 1
                          local.set $l8
                          local.get $l21
                          local.set $l9
                          local.get $l14
                          local.set $l6
                          br $B6
                        end
                        local.get $l5
                        local.get $p1
                        i32.const 1
                        i32.add
                        local.tee $l6
                        i32.store offset=76
                        local.get $p1
                        i32.load8_u offset=1
                        local.set $l10
                        local.get $l6
                        local.set $p1
                        br $L9
                      end
                      unreachable
                    end
                    local.get $p0
                    br_if $B0
                    local.get $l19
                    i32.eqz
                    br_if $B5
                    i32.const 1
                    local.set $p1
                    loop $L85
                      local.get $p4
                      local.get $p1
                      i32.const 2
                      i32.shl
                      i32.add
                      i32.load
                      local.tee $l10
                      if $I86
                        local.get $p3
                        local.get $p1
                        i32.const 3
                        i32.shl
                        i32.add
                        local.get $l10
                        local.get $p2
                        call $f20
                        i32.const 1
                        local.set $l11
                        local.get $p1
                        i32.const 1
                        i32.add
                        local.tee $p1
                        i32.const 10
                        i32.ne
                        br_if $L85
                        br $B0
                      end
                    end
                    i32.const 1
                    local.set $l11
                    local.get $p1
                    i32.const 10
                    i32.ge_u
                    br_if $B0
                    loop $L87
                      local.get $p4
                      local.get $p1
                      i32.const 2
                      i32.shl
                      i32.add
                      i32.load
                      br_if $B7
                      local.get $p1
                      i32.const 1
                      i32.add
                      local.tee $p1
                      i32.const 10
                      i32.ne
                      br_if $L87
                    end
                    br $B0
                  end
                  i32.const 28
                  local.set $l15
                  br $B2
                end
                local.get $l15
                local.get $l9
                i32.sub
                local.tee $l16
                local.get $l8
                local.get $l8
                local.get $l16
                i32.lt_s
                select
                local.tee $l8
                i32.const 2147483647
                local.get $l12
                i32.sub
                i32.gt_s
                br_if $B3
                i32.const 61
                local.set $l15
                local.get $l8
                local.get $l12
                i32.add
                local.tee $l7
                local.get $l13
                local.get $l7
                local.get $l13
                i32.gt_s
                select
                local.tee $p1
                local.get $l10
                i32.gt_s
                br_if $B2
                local.get $p0
                i32.const 32
                local.get $p1
                local.get $l7
                local.get $l6
                call $f21
                local.get $p0
                local.get $l17
                local.get $l12
                call $f18
                local.get $p0
                i32.const 48
                local.get $p1
                local.get $l7
                local.get $l6
                i32.const 65536
                i32.xor
                call $f21
                local.get $p0
                i32.const 48
                local.get $l8
                local.get $l16
                i32.const 0
                call $f21
                local.get $p0
                local.get $l9
                local.get $l16
                call $f18
                local.get $p0
                i32.const 32
                local.get $p1
                local.get $l7
                local.get $l6
                i32.const 8192
                i32.xor
                call $f21
                br $L4
              end
            end
            i32.const 0
            local.set $l11
            br $B0
          end
          i32.const 61
          local.set $l15
        end
        i32.const 2064
        local.get $l15
        i32.store
      end
      i32.const -1
      local.set $l11
    end
    local.get $l5
    i32.const 80
    i32.add
    global.set $g0
    local.get $l11)
  (func $f18 (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p0
    i32.load8_u
    i32.const 32
    i32.and
    i32.eqz
    if $I0
      local.get $p1
      local.get $p2
      local.get $p0
      call $f11
      drop
    end)
  (func $f19 (type $t1) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    local.get $p0
    i32.load
    i32.load8_s
    call $f16
    i32.eqz
    if $I0
      i32.const 0
      return
    end
    loop $L1
      local.get $p0
      i32.load
      local.set $l3
      i32.const -1
      local.set $l1
      local.get $l2
      i32.const 214748364
      i32.le_u
      if $I2
        i32.const -1
        local.get $l3
        i32.load8_s
        i32.const 48
        i32.sub
        local.tee $l1
        local.get $l2
        i32.const 10
        i32.mul
        local.tee $l2
        i32.add
        local.get $l1
        i32.const 2147483647
        local.get $l2
        i32.sub
        i32.gt_s
        select
        local.set $l1
      end
      local.get $p0
      local.get $l3
      i32.const 1
      i32.add
      i32.store
      local.get $l1
      local.set $l2
      local.get $l3
      i32.load8_s offset=1
      call $f16
      br_if $L1
    end
    local.get $l1)
  (func $f20 (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                block $B6
                  block $B7
                    block $B8
                      block $B9
                        block $B10
                          block $B11
                            block $B12
                              block $B13
                                block $B14
                                  block $B15
                                    block $B16
                                      block $B17
                                        block $B18
                                          local.get $p1
                                          i32.const 9
                                          i32.sub
                                          br_table $B18 $B17 $B16 $B13 $B15 $B14 $B12 $B11 $B10 $B9 $B8 $B7 $B6 $B5 $B4 $B3 $B2 $B1 $B0
                                        end
                                        local.get $p2
                                        local.get $p2
                                        i32.load
                                        local.tee $p1
                                        i32.const 4
                                        i32.add
                                        i32.store
                                        local.get $p0
                                        local.get $p1
                                        i32.load
                                        i32.store
                                        return
                                      end
                                      local.get $p2
                                      local.get $p2
                                      i32.load
                                      local.tee $p1
                                      i32.const 4
                                      i32.add
                                      i32.store
                                      local.get $p0
                                      local.get $p1
                                      i64.load32_s
                                      i64.store
                                      return
                                    end
                                    local.get $p2
                                    local.get $p2
                                    i32.load
                                    local.tee $p1
                                    i32.const 4
                                    i32.add
                                    i32.store
                                    local.get $p0
                                    local.get $p1
                                    i64.load32_u
                                    i64.store
                                    return
                                  end
                                  local.get $p2
                                  local.get $p2
                                  i32.load
                                  local.tee $p1
                                  i32.const 4
                                  i32.add
                                  i32.store
                                  local.get $p0
                                  local.get $p1
                                  i64.load32_s
                                  i64.store
                                  return
                                end
                                local.get $p2
                                local.get $p2
                                i32.load
                                local.tee $p1
                                i32.const 4
                                i32.add
                                i32.store
                                local.get $p0
                                local.get $p1
                                i64.load32_u
                                i64.store
                                return
                              end
                              local.get $p2
                              local.get $p2
                              i32.load
                              i32.const 7
                              i32.add
                              i32.const -8
                              i32.and
                              local.tee $p1
                              i32.const 8
                              i32.add
                              i32.store
                              local.get $p0
                              local.get $p1
                              i64.load
                              i64.store
                              return
                            end
                            local.get $p2
                            local.get $p2
                            i32.load
                            local.tee $p1
                            i32.const 4
                            i32.add
                            i32.store
                            local.get $p0
                            local.get $p1
                            i64.load16_s
                            i64.store
                            return
                          end
                          local.get $p2
                          local.get $p2
                          i32.load
                          local.tee $p1
                          i32.const 4
                          i32.add
                          i32.store
                          local.get $p0
                          local.get $p1
                          i64.load16_u
                          i64.store
                          return
                        end
                        local.get $p2
                        local.get $p2
                        i32.load
                        local.tee $p1
                        i32.const 4
                        i32.add
                        i32.store
                        local.get $p0
                        local.get $p1
                        i64.load8_s
                        i64.store
                        return
                      end
                      local.get $p2
                      local.get $p2
                      i32.load
                      local.tee $p1
                      i32.const 4
                      i32.add
                      i32.store
                      local.get $p0
                      local.get $p1
                      i64.load8_u
                      i64.store
                      return
                    end
                    local.get $p2
                    local.get $p2
                    i32.load
                    i32.const 7
                    i32.add
                    i32.const -8
                    i32.and
                    local.tee $p1
                    i32.const 8
                    i32.add
                    i32.store
                    local.get $p0
                    local.get $p1
                    i64.load
                    i64.store
                    return
                  end
                  local.get $p2
                  local.get $p2
                  i32.load
                  local.tee $p1
                  i32.const 4
                  i32.add
                  i32.store
                  local.get $p0
                  local.get $p1
                  i64.load32_u
                  i64.store
                  return
                end
                local.get $p2
                local.get $p2
                i32.load
                i32.const 7
                i32.add
                i32.const -8
                i32.and
                local.tee $p1
                i32.const 8
                i32.add
                i32.store
                local.get $p0
                local.get $p1
                i64.load
                i64.store
                return
              end
              local.get $p2
              local.get $p2
              i32.load
              i32.const 7
              i32.add
              i32.const -8
              i32.and
              local.tee $p1
              i32.const 8
              i32.add
              i32.store
              local.get $p0
              local.get $p1
              i64.load
              i64.store
              return
            end
            local.get $p2
            local.get $p2
            i32.load
            local.tee $p1
            i32.const 4
            i32.add
            i32.store
            local.get $p0
            local.get $p1
            i64.load32_s
            i64.store
            return
          end
          local.get $p2
          local.get $p2
          i32.load
          local.tee $p1
          i32.const 4
          i32.add
          i32.store
          local.get $p0
          local.get $p1
          i64.load32_u
          i64.store
          return
        end
        local.get $p2
        local.get $p2
        i32.load
        i32.const 7
        i32.add
        i32.const -8
        i32.and
        local.tee $p1
        i32.const 8
        i32.add
        i32.store
        local.get $p0
        local.get $p1
        f64.load
        f64.store
        return
      end
      local.get $p0
      local.get $p2
      i32.const 0
      call_indirect $__indirect_function_table (type $t7)
    end)
  (func $f21 (type $t12) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32)
    global.get $g0
    i32.const 256
    i32.sub
    local.tee $l5
    global.set $g0
    block $B0
      local.get $p4
      i32.const 73728
      i32.and
      br_if $B0
      local.get $p2
      local.get $p3
      i32.le_s
      br_if $B0
      local.get $l5
      local.get $p1
      i32.const 255
      i32.and
      local.get $p2
      local.get $p3
      i32.sub
      local.tee $p2
      i32.const 256
      local.get $p2
      i32.const 256
      i32.lt_u
      local.tee $p3
      select
      call $f15
      local.get $p3
      i32.eqz
      if $I1
        loop $L2
          local.get $p0
          local.get $l5
          i32.const 256
          call $f18
          local.get $p2
          i32.const 256
          i32.sub
          local.tee $p2
          i32.const 255
          i32.gt_u
          br_if $L2
        end
      end
      local.get $p0
      local.get $l5
      local.get $p2
      call $f18
    end
    local.get $l5
    i32.const 256
    i32.add
    global.set $g0)
  (func $f22 (type $t1) (param $p0 i32) (result i32)
    local.get $p0
    i32.eqz
    if $I0
      i32.const 0
      return
    end
    i32.const 2064
    local.get $p0
    i32.store
    i32.const -1)
  (func $f23 (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.eqz
    if $I0
      i32.const 0
      return
    end
    block $B1 (result i32)
      block $B2
        local.get $p0
        if $I3 (result i32)
          local.get $p1
          i32.const 127
          i32.le_u
          br_if $B2
          block $B4
            i32.const 3256
            i32.load
            i32.load
            i32.eqz
            if $I5
              local.get $p1
              i32.const -128
              i32.and
              i32.const 57216
              i32.eq
              br_if $B2
              i32.const 2064
              i32.const 25
              i32.store
              br $B4
            end
            local.get $p1
            i32.const 2047
            i32.le_u
            if $I6
              local.get $p0
              local.get $p1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              local.get $p0
              local.get $p1
              i32.const 6
              i32.shr_u
              i32.const 192
              i32.or
              i32.store8
              i32.const 2
              br $B1
            end
            local.get $p1
            i32.const -8192
            i32.and
            i32.const 57344
            i32.ne
            local.get $p1
            i32.const 55296
            i32.ge_u
            i32.and
            i32.eqz
            if $I7
              local.get $p0
              local.get $p1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=2
              local.get $p0
              local.get $p1
              i32.const 12
              i32.shr_u
              i32.const 224
              i32.or
              i32.store8
              local.get $p0
              local.get $p1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              i32.const 3
              br $B1
            end
            local.get $p1
            i32.const 65536
            i32.sub
            i32.const 1048575
            i32.le_u
            if $I8
              local.get $p0
              local.get $p1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=3
              local.get $p0
              local.get $p1
              i32.const 18
              i32.shr_u
              i32.const 240
              i32.or
              i32.store8
              local.get $p0
              local.get $p1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=2
              local.get $p0
              local.get $p1
              i32.const 12
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              i32.const 4
              br $B1
            end
            i32.const 2064
            i32.const 25
            i32.store
          end
          i32.const -1
        else
          i32.const 1
        end
        br $B1
      end
      local.get $p0
      local.get $p1
      i32.store8
      i32.const 1
    end)
  (func $f24 (type $t4) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l10
    global.set $g0
    block $B0
      i32.const 3280
      i32.load
      local.tee $l5
      i32.const 6
      i32.shr_u
      local.tee $l0
      i32.const 3
      i32.and
      if $I1
        local.get $l0
        i32.const -1
        i32.xor
        i32.const 1
        i32.and
        i32.const 6
        i32.add
        local.tee $l3
        i32.const 3
        i32.shl
        local.tee $l2
        i32.const 3328
        i32.add
        i32.load
        local.tee $l1
        i32.const 8
        i32.add
        local.set $l0
        block $B2
          local.get $l1
          i32.load offset=8
          local.tee $l6
          local.get $l2
          i32.const 3320
          i32.add
          local.tee $l2
          i32.eq
          if $I3
            i32.const 3280
            local.get $l5
            i32.const -2
            local.get $l3
            i32.rotl
            i32.and
            i32.store
            br $B2
          end
          local.get $l6
          local.get $l2
          i32.store offset=12
          local.get $l2
          local.get $l6
          i32.store offset=8
        end
        local.get $l1
        local.get $l3
        i32.const 3
        i32.shl
        local.tee $l3
        i32.const 3
        i32.or
        i32.store offset=4
        local.get $l1
        local.get $l3
        i32.add
        i32.const 4
        i32.add
        local.tee $l1
        local.get $l1
        i32.load
        i32.const 1
        i32.or
        i32.store
        br $B0
      end
      block $B4
        block $B5
          block $B6
            block $B7
              block $B8
                block $B9
                  block $B10
                    block $B11
                      i32.const 3288
                      i32.load
                      local.tee $l9
                      i32.const 48
                      i32.ge_u
                      br_if $B11
                      local.get $l0
                      if $I12
                        block $B13
                          local.get $l0
                          i32.const 6
                          i32.shl
                          i32.const -128
                          i32.and
                          local.tee $l0
                          i32.const 0
                          local.get $l0
                          i32.sub
                          i32.and
                          i32.const 1
                          i32.sub
                          local.tee $l0
                          local.get $l0
                          i32.const 12
                          i32.shr_u
                          i32.const 16
                          i32.and
                          local.tee $l0
                          i32.shr_u
                          local.tee $l1
                          i32.const 5
                          i32.shr_u
                          i32.const 8
                          i32.and
                          local.tee $l3
                          local.get $l0
                          i32.or
                          local.get $l1
                          local.get $l3
                          i32.shr_u
                          local.tee $l0
                          i32.const 2
                          i32.shr_u
                          i32.const 4
                          i32.and
                          local.tee $l1
                          i32.or
                          local.get $l0
                          local.get $l1
                          i32.shr_u
                          local.tee $l0
                          i32.const 1
                          i32.shr_u
                          i32.const 2
                          i32.and
                          local.tee $l1
                          i32.or
                          local.get $l0
                          local.get $l1
                          i32.shr_u
                          local.tee $l0
                          i32.const 1
                          i32.shr_u
                          i32.const 1
                          i32.and
                          local.tee $l1
                          i32.or
                          local.get $l0
                          local.get $l1
                          i32.shr_u
                          i32.add
                          local.tee $l3
                          i32.const 3
                          i32.shl
                          local.tee $l2
                          i32.const 3328
                          i32.add
                          i32.load
                          local.tee $l1
                          i32.load offset=8
                          local.tee $l0
                          local.get $l2
                          i32.const 3320
                          i32.add
                          local.tee $l2
                          i32.eq
                          if $I14
                            i32.const 3280
                            local.get $l5
                            i32.const -2
                            local.get $l3
                            i32.rotl
                            i32.and
                            local.tee $l5
                            i32.store
                            br $B13
                          end
                          local.get $l0
                          local.get $l2
                          i32.store offset=12
                          local.get $l2
                          local.get $l0
                          i32.store offset=8
                        end
                        local.get $l1
                        i32.const 8
                        i32.add
                        local.set $l0
                        local.get $l1
                        i32.const 51
                        i32.store offset=4
                        local.get $l1
                        i32.const 48
                        i32.add
                        local.tee $l2
                        local.get $l3
                        i32.const 3
                        i32.shl
                        local.tee $l4
                        i32.const 48
                        i32.sub
                        local.tee $l3
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get $l1
                        local.get $l4
                        i32.add
                        local.get $l3
                        i32.store
                        local.get $l9
                        if $I15
                          local.get $l9
                          i32.const 3
                          i32.shr_u
                          local.tee $l4
                          i32.const 3
                          i32.shl
                          i32.const 3320
                          i32.add
                          local.set $l6
                          i32.const 3300
                          i32.load
                          local.set $l1
                          block $B16 (result i32)
                            local.get $l5
                            i32.const 1
                            local.get $l4
                            i32.shl
                            local.tee $l4
                            i32.and
                            i32.eqz
                            if $I17
                              i32.const 3280
                              local.get $l4
                              local.get $l5
                              i32.or
                              i32.store
                              local.get $l6
                              br $B16
                            end
                            local.get $l6
                            i32.load offset=8
                          end
                          local.set $l4
                          local.get $l6
                          local.get $l1
                          i32.store offset=8
                          local.get $l4
                          local.get $l1
                          i32.store offset=12
                          local.get $l1
                          local.get $l6
                          i32.store offset=12
                          local.get $l1
                          local.get $l4
                          i32.store offset=8
                        end
                        i32.const 3300
                        local.get $l2
                        i32.store
                        i32.const 3288
                        local.get $l3
                        i32.store
                        br $B0
                      end
                      i32.const 3284
                      i32.load
                      local.tee $l7
                      i32.eqz
                      br_if $B11
                      local.get $l7
                      i32.const 0
                      local.get $l7
                      i32.sub
                      i32.and
                      i32.const 1
                      i32.sub
                      local.tee $l0
                      local.get $l0
                      i32.const 12
                      i32.shr_u
                      i32.const 16
                      i32.and
                      local.tee $l0
                      i32.shr_u
                      local.tee $l1
                      i32.const 5
                      i32.shr_u
                      i32.const 8
                      i32.and
                      local.tee $l3
                      local.get $l0
                      i32.or
                      local.get $l1
                      local.get $l3
                      i32.shr_u
                      local.tee $l0
                      i32.const 2
                      i32.shr_u
                      i32.const 4
                      i32.and
                      local.tee $l1
                      i32.or
                      local.get $l0
                      local.get $l1
                      i32.shr_u
                      local.tee $l0
                      i32.const 1
                      i32.shr_u
                      i32.const 2
                      i32.and
                      local.tee $l1
                      i32.or
                      local.get $l0
                      local.get $l1
                      i32.shr_u
                      local.tee $l0
                      i32.const 1
                      i32.shr_u
                      i32.const 1
                      i32.and
                      local.tee $l1
                      i32.or
                      local.get $l0
                      local.get $l1
                      i32.shr_u
                      i32.add
                      i32.const 2
                      i32.shl
                      i32.const 3584
                      i32.add
                      i32.load
                      local.tee $l2
                      i32.load offset=4
                      i32.const -8
                      i32.and
                      i32.const 48
                      i32.sub
                      local.set $l1
                      local.get $l2
                      local.set $l3
                      loop $L18
                        block $B19
                          local.get $l3
                          i32.load offset=16
                          local.tee $l0
                          i32.eqz
                          if $I20
                            local.get $l3
                            i32.load offset=20
                            local.tee $l0
                            i32.eqz
                            br_if $B19
                          end
                          local.get $l0
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          i32.const 48
                          i32.sub
                          local.tee $l3
                          local.get $l1
                          local.get $l1
                          local.get $l3
                          i32.gt_u
                          local.tee $l3
                          select
                          local.set $l1
                          local.get $l0
                          local.get $l2
                          local.get $l3
                          select
                          local.set $l2
                          local.get $l0
                          local.set $l3
                          br $L18
                        end
                      end
                      local.get $l2
                      i32.load offset=24
                      local.set $l6
                      local.get $l2
                      local.get $l2
                      i32.load offset=12
                      local.tee $l4
                      i32.ne
                      if $I21
                        local.get $l2
                        i32.load offset=8
                        local.tee $l0
                        i32.const 3296
                        i32.load
                        i32.lt_u
                        drop
                        local.get $l0
                        local.get $l4
                        i32.store offset=12
                        local.get $l4
                        local.get $l0
                        i32.store offset=8
                        br $B4
                      end
                      local.get $l2
                      i32.const 20
                      i32.add
                      local.tee $l3
                      i32.load
                      local.tee $l0
                      i32.eqz
                      if $I22
                        local.get $l2
                        i32.load offset=16
                        local.tee $l0
                        i32.eqz
                        br_if $B10
                        local.get $l2
                        i32.const 16
                        i32.add
                        local.set $l3
                      end
                      loop $L23
                        local.get $l3
                        local.set $l8
                        local.get $l0
                        local.tee $l4
                        i32.const 20
                        i32.add
                        local.tee $l3
                        i32.load
                        local.tee $l0
                        br_if $L23
                        local.get $l4
                        i32.const 16
                        i32.add
                        local.set $l3
                        local.get $l4
                        i32.load offset=16
                        local.tee $l0
                        br_if $L23
                      end
                      local.get $l8
                      i32.const 0
                      i32.store
                      br $B4
                    end
                    i32.const 3288
                    i32.load
                    local.tee $l0
                    i32.const 48
                    i32.ge_u
                    if $I24
                      i32.const 3300
                      i32.load
                      local.set $l1
                      block $B25
                        local.get $l0
                        i32.const 48
                        i32.sub
                        local.tee $l3
                        i32.const 16
                        i32.ge_u
                        if $I26
                          i32.const 3288
                          local.get $l3
                          i32.store
                          i32.const 3300
                          local.get $l1
                          i32.const 48
                          i32.add
                          local.tee $l2
                          i32.store
                          local.get $l2
                          local.get $l3
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get $l0
                          local.get $l1
                          i32.add
                          local.get $l3
                          i32.store
                          local.get $l1
                          i32.const 51
                          i32.store offset=4
                          br $B25
                        end
                        i32.const 3300
                        i32.const 0
                        i32.store
                        i32.const 3288
                        i32.const 0
                        i32.store
                        local.get $l1
                        local.get $l0
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get $l0
                        local.get $l1
                        i32.add
                        i32.const 4
                        i32.add
                        local.tee $l0
                        local.get $l0
                        i32.load
                        i32.const 1
                        i32.or
                        i32.store
                      end
                      local.get $l1
                      i32.const 8
                      i32.add
                      local.set $l0
                      br $B0
                    end
                    i32.const 3292
                    i32.load
                    local.tee $l2
                    i32.const 48
                    i32.gt_u
                    if $I27
                      i32.const 3292
                      local.get $l2
                      i32.const 48
                      i32.sub
                      local.tee $l1
                      i32.store
                      i32.const 3304
                      i32.const 3304
                      i32.load
                      local.tee $l0
                      i32.const 48
                      i32.add
                      local.tee $l3
                      i32.store
                      local.get $l3
                      local.get $l1
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get $l0
                      i32.const 51
                      i32.store offset=4
                      local.get $l0
                      i32.const 8
                      i32.add
                      local.set $l0
                      br $B0
                    end
                    i32.const 0
                    local.set $l0
                    block $B28 (result i32)
                      i32.const 3752
                      i32.load
                      if $I29
                        i32.const 3760
                        i32.load
                        br $B28
                      end
                      i32.const 3764
                      i64.const -1
                      i64.store align=4
                      i32.const 3756
                      i64.const 17592186048512
                      i64.store align=4
                      i32.const 3752
                      local.get $l10
                      i32.const 12
                      i32.add
                      i32.const -16
                      i32.and
                      i32.const 1431655768
                      i32.xor
                      i32.store
                      i32.const 3772
                      i32.const 0
                      i32.store
                      i32.const 3724
                      i32.const 0
                      i32.store
                      i32.const 4096
                    end
                    local.tee $l1
                    i32.const 95
                    i32.add
                    local.tee $l5
                    i32.const 0
                    local.get $l1
                    i32.sub
                    local.tee $l8
                    i32.and
                    local.tee $l4
                    i32.const 48
                    i32.le_u
                    br_if $B0
                    i32.const 3720
                    i32.load
                    local.tee $l1
                    if $I30
                      i32.const 3712
                      i32.load
                      local.tee $l3
                      local.get $l4
                      i32.add
                      local.tee $l7
                      local.get $l3
                      i32.le_u
                      br_if $B0
                      local.get $l1
                      local.get $l7
                      i32.lt_u
                      br_if $B0
                    end
                    i32.const 3724
                    i32.load8_u
                    i32.const 4
                    i32.and
                    br_if $B7
                    block $B31
                      block $B32
                        i32.const 3304
                        i32.load
                        local.tee $l1
                        if $I33
                          i32.const 3728
                          local.set $l0
                          loop $L34
                            local.get $l1
                            local.get $l0
                            i32.load
                            local.tee $l3
                            i32.ge_u
                            if $I35
                              local.get $l3
                              local.get $l0
                              i32.load offset=4
                              i32.add
                              local.get $l1
                              i32.gt_u
                              br_if $B32
                            end
                            local.get $l0
                            i32.load offset=8
                            local.tee $l0
                            br_if $L34
                          end
                        end
                        i32.const 0
                        call $f25
                        local.tee $l2
                        i32.const -1
                        i32.eq
                        br_if $B8
                        local.get $l4
                        local.set $l5
                        i32.const 3756
                        i32.load
                        local.tee $l0
                        i32.const 1
                        i32.sub
                        local.tee $l1
                        local.get $l2
                        i32.and
                        if $I36
                          local.get $l4
                          local.get $l2
                          i32.sub
                          local.get $l1
                          local.get $l2
                          i32.add
                          i32.const 0
                          local.get $l0
                          i32.sub
                          i32.and
                          i32.add
                          local.set $l5
                        end
                        local.get $l5
                        i32.const 48
                        i32.le_u
                        br_if $B8
                        local.get $l5
                        i32.const 2147483646
                        i32.gt_u
                        br_if $B8
                        i32.const 3720
                        i32.load
                        local.tee $l0
                        if $I37
                          i32.const 3712
                          i32.load
                          local.tee $l1
                          local.get $l5
                          i32.add
                          local.tee $l3
                          local.get $l1
                          i32.le_u
                          br_if $B8
                          local.get $l0
                          local.get $l3
                          i32.lt_u
                          br_if $B8
                        end
                        local.get $l5
                        call $f25
                        local.tee $l0
                        local.get $l2
                        i32.ne
                        br_if $B31
                        br $B6
                      end
                      local.get $l5
                      local.get $l2
                      i32.sub
                      local.get $l8
                      i32.and
                      local.tee $l5
                      i32.const 2147483646
                      i32.gt_u
                      br_if $B8
                      local.get $l5
                      call $f25
                      local.tee $l2
                      local.get $l0
                      i32.load
                      local.get $l0
                      i32.load offset=4
                      i32.add
                      i32.eq
                      br_if $B9
                      local.get $l2
                      local.set $l0
                    end
                    block $B38
                      local.get $l0
                      i32.const -1
                      i32.eq
                      br_if $B38
                      local.get $l5
                      i32.const 96
                      i32.ge_u
                      br_if $B38
                      i32.const 3760
                      i32.load
                      local.tee $l1
                      i32.const 95
                      local.get $l5
                      i32.sub
                      i32.add
                      i32.const 0
                      local.get $l1
                      i32.sub
                      i32.and
                      local.tee $l1
                      i32.const 2147483646
                      i32.gt_u
                      if $I39
                        local.get $l0
                        local.set $l2
                        br $B6
                      end
                      local.get $l1
                      call $f25
                      i32.const -1
                      i32.ne
                      if $I40
                        local.get $l1
                        local.get $l5
                        i32.add
                        local.set $l5
                        local.get $l0
                        local.set $l2
                        br $B6
                      end
                      i32.const 0
                      local.get $l5
                      i32.sub
                      call $f25
                      drop
                      br $B8
                    end
                    local.get $l0
                    local.set $l2
                    local.get $l0
                    i32.const -1
                    i32.ne
                    br_if $B6
                    br $B8
                  end
                  i32.const 0
                  local.set $l4
                  br $B4
                end
                local.get $l2
                i32.const -1
                i32.ne
                br_if $B6
              end
              i32.const 3724
              i32.const 3724
              i32.load
              i32.const 4
              i32.or
              i32.store
            end
            local.get $l4
            i32.const 2147483646
            i32.gt_u
            br_if $B5
            local.get $l4
            call $f25
            local.set $l2
            i32.const 0
            call $f25
            local.set $l0
            local.get $l2
            i32.const -1
            i32.eq
            br_if $B5
            local.get $l0
            i32.const -1
            i32.eq
            br_if $B5
            local.get $l0
            local.get $l2
            i32.le_u
            br_if $B5
            local.get $l0
            local.get $l2
            i32.sub
            local.tee $l5
            i32.const 88
            i32.le_u
            br_if $B5
          end
          i32.const 3712
          i32.const 3712
          i32.load
          local.get $l5
          i32.add
          local.tee $l0
          i32.store
          i32.const 3716
          i32.load
          local.get $l0
          i32.lt_u
          if $I41
            i32.const 3716
            local.get $l0
            i32.store
          end
          block $B42
            block $B43
              block $B44
                i32.const 3304
                i32.load
                local.tee $l1
                if $I45
                  i32.const 3728
                  local.set $l0
                  loop $L46
                    local.get $l2
                    local.get $l0
                    i32.load
                    local.tee $l3
                    local.get $l0
                    i32.load offset=4
                    local.tee $l4
                    i32.add
                    i32.eq
                    br_if $B44
                    local.get $l0
                    i32.load offset=8
                    local.tee $l0
                    br_if $L46
                  end
                  br $B43
                end
                i32.const 3296
                i32.load
                local.tee $l0
                i32.const 0
                local.get $l0
                local.get $l2
                i32.le_u
                select
                i32.eqz
                if $I47
                  i32.const 3296
                  local.get $l2
                  i32.store
                end
                i32.const 0
                local.set $l0
                i32.const 3732
                local.get $l5
                i32.store
                i32.const 3728
                local.get $l2
                i32.store
                i32.const 3312
                i32.const -1
                i32.store
                i32.const 3316
                i32.const 3752
                i32.load
                i32.store
                i32.const 3740
                i32.const 0
                i32.store
                loop $L48
                  local.get $l0
                  i32.const 3
                  i32.shl
                  local.tee $l1
                  i32.const 3328
                  i32.add
                  local.get $l1
                  i32.const 3320
                  i32.add
                  local.tee $l3
                  i32.store
                  local.get $l1
                  i32.const 3332
                  i32.add
                  local.get $l3
                  i32.store
                  local.get $l0
                  i32.const 1
                  i32.add
                  local.tee $l0
                  i32.const 32
                  i32.ne
                  br_if $L48
                end
                i32.const 3304
                local.get $l2
                i32.const -8
                local.get $l2
                i32.sub
                i32.const 7
                i32.and
                i32.const 0
                local.get $l2
                i32.const 8
                i32.add
                i32.const 7
                i32.and
                select
                local.tee $l0
                i32.add
                local.tee $l1
                i32.store
                i32.const 3292
                local.get $l5
                local.get $l0
                i32.sub
                i32.const 40
                i32.sub
                local.tee $l0
                i32.store
                local.get $l1
                local.get $l0
                i32.const 1
                i32.or
                i32.store offset=4
                local.get $l2
                local.get $l5
                i32.add
                i32.const 36
                i32.sub
                i32.const 40
                i32.store
                i32.const 3308
                i32.const 3768
                i32.load
                i32.store
                br $B42
              end
              local.get $l0
              i32.load8_u offset=12
              i32.const 8
              i32.and
              br_if $B43
              local.get $l1
              local.get $l3
              i32.lt_u
              br_if $B43
              local.get $l1
              local.get $l2
              i32.ge_u
              br_if $B43
              local.get $l0
              local.get $l4
              local.get $l5
              i32.add
              i32.store offset=4
              i32.const 3304
              local.get $l1
              i32.const -8
              local.get $l1
              i32.sub
              i32.const 7
              i32.and
              i32.const 0
              local.get $l1
              i32.const 8
              i32.add
              i32.const 7
              i32.and
              select
              local.tee $l0
              i32.add
              local.tee $l3
              i32.store
              i32.const 3292
              i32.const 3292
              i32.load
              local.get $l5
              i32.add
              local.tee $l2
              local.get $l0
              i32.sub
              local.tee $l0
              i32.store
              local.get $l3
              local.get $l0
              i32.const 1
              i32.or
              i32.store offset=4
              local.get $l1
              local.get $l2
              i32.add
              i32.const 40
              i32.store offset=4
              i32.const 3308
              i32.const 3768
              i32.load
              i32.store
              br $B42
            end
            i32.const 3296
            i32.load
            local.get $l2
            i32.gt_u
            if $I49
              i32.const 3296
              local.get $l2
              i32.store
            end
            local.get $l2
            local.get $l5
            i32.add
            local.set $l4
            i32.const 3728
            local.set $l0
            block $B50
              block $B51
                block $B52
                  block $B53
                    block $B54
                      block $B55
                        loop $L56
                          local.get $l4
                          local.get $l0
                          i32.load
                          i32.ne
                          if $I57
                            local.get $l0
                            i32.load offset=8
                            local.tee $l0
                            br_if $L56
                            br $B55
                          end
                        end
                        local.get $l0
                        i32.load8_u offset=12
                        i32.const 8
                        i32.and
                        i32.eqz
                        br_if $B54
                      end
                      i32.const 3728
                      local.set $l0
                      loop $L58
                        local.get $l1
                        local.get $l0
                        i32.load
                        local.tee $l3
                        i32.ge_u
                        if $I59
                          local.get $l3
                          local.get $l0
                          i32.load offset=4
                          i32.add
                          local.tee $l3
                          local.get $l1
                          i32.gt_u
                          br_if $B53
                        end
                        local.get $l0
                        i32.load offset=8
                        local.set $l0
                        br $L58
                      end
                      unreachable
                    end
                    local.get $l0
                    local.get $l2
                    i32.store
                    local.get $l0
                    local.get $l0
                    i32.load offset=4
                    local.get $l5
                    i32.add
                    i32.store offset=4
                    local.get $l2
                    i32.const -8
                    local.get $l2
                    i32.sub
                    i32.const 7
                    i32.and
                    i32.const 0
                    local.get $l2
                    i32.const 8
                    i32.add
                    i32.const 7
                    i32.and
                    select
                    i32.add
                    local.tee $l5
                    i32.const 51
                    i32.store offset=4
                    local.get $l4
                    i32.const -8
                    local.get $l4
                    i32.sub
                    i32.const 7
                    i32.and
                    i32.const 0
                    local.get $l4
                    i32.const 8
                    i32.add
                    i32.const 7
                    i32.and
                    select
                    i32.add
                    local.tee $l4
                    local.get $l5
                    i32.const 48
                    i32.add
                    local.tee $l6
                    i32.sub
                    local.set $l3
                    local.get $l1
                    local.get $l4
                    i32.eq
                    if $I60
                      i32.const 3304
                      local.get $l6
                      i32.store
                      i32.const 3292
                      i32.const 3292
                      i32.load
                      local.get $l3
                      i32.add
                      local.tee $l0
                      i32.store
                      local.get $l6
                      local.get $l0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      br $B51
                    end
                    local.get $l4
                    i32.const 3300
                    i32.load
                    i32.eq
                    if $I61
                      i32.const 3300
                      local.get $l6
                      i32.store
                      i32.const 3288
                      i32.const 3288
                      i32.load
                      local.get $l3
                      i32.add
                      local.tee $l0
                      i32.store
                      local.get $l6
                      local.get $l0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get $l0
                      local.get $l6
                      i32.add
                      local.get $l0
                      i32.store
                      br $B51
                    end
                    local.get $l4
                    i32.load offset=4
                    local.tee $l0
                    i32.const 3
                    i32.and
                    i32.const 1
                    i32.eq
                    if $I62
                      local.get $l0
                      i32.const -8
                      i32.and
                      local.set $l9
                      block $B63
                        local.get $l0
                        i32.const 255
                        i32.le_u
                        if $I64
                          local.get $l4
                          i32.load offset=8
                          local.tee $l1
                          local.get $l0
                          i32.const 3
                          i32.shr_u
                          local.tee $l8
                          i32.const 3
                          i32.shl
                          i32.const 3320
                          i32.add
                          i32.eq
                          drop
                          local.get $l1
                          local.get $l4
                          i32.load offset=12
                          local.tee $l0
                          i32.eq
                          if $I65
                            i32.const 3280
                            i32.const 3280
                            i32.load
                            i32.const -2
                            local.get $l8
                            i32.rotl
                            i32.and
                            i32.store
                            br $B63
                          end
                          local.get $l1
                          local.get $l0
                          i32.store offset=12
                          local.get $l0
                          local.get $l1
                          i32.store offset=8
                          br $B63
                        end
                        local.get $l4
                        i32.load offset=24
                        local.set $l7
                        block $B66
                          local.get $l4
                          local.get $l4
                          i32.load offset=12
                          local.tee $l2
                          i32.ne
                          if $I67
                            local.get $l4
                            i32.load offset=8
                            local.tee $l0
                            local.get $l2
                            i32.store offset=12
                            local.get $l2
                            local.get $l0
                            i32.store offset=8
                            br $B66
                          end
                          block $B68
                            local.get $l4
                            i32.const 20
                            i32.add
                            local.tee $l0
                            i32.load
                            local.tee $l1
                            br_if $B68
                            local.get $l4
                            i32.const 16
                            i32.add
                            local.tee $l0
                            i32.load
                            local.tee $l1
                            br_if $B68
                            i32.const 0
                            local.set $l2
                            br $B66
                          end
                          loop $L69
                            local.get $l0
                            local.set $l8
                            local.get $l1
                            local.tee $l2
                            i32.const 20
                            i32.add
                            local.tee $l0
                            i32.load
                            local.tee $l1
                            br_if $L69
                            local.get $l2
                            i32.const 16
                            i32.add
                            local.set $l0
                            local.get $l2
                            i32.load offset=16
                            local.tee $l1
                            br_if $L69
                          end
                          local.get $l8
                          i32.const 0
                          i32.store
                        end
                        local.get $l7
                        i32.eqz
                        br_if $B63
                        block $B70
                          local.get $l4
                          local.get $l4
                          i32.load offset=28
                          local.tee $l1
                          i32.const 2
                          i32.shl
                          i32.const 3584
                          i32.add
                          local.tee $l0
                          i32.load
                          i32.eq
                          if $I71
                            local.get $l0
                            local.get $l2
                            i32.store
                            local.get $l2
                            br_if $B70
                            i32.const 3284
                            i32.const 3284
                            i32.load
                            i32.const -2
                            local.get $l1
                            i32.rotl
                            i32.and
                            i32.store
                            br $B63
                          end
                          local.get $l7
                          i32.const 16
                          i32.const 20
                          local.get $l7
                          i32.load offset=16
                          local.get $l4
                          i32.eq
                          select
                          i32.add
                          local.get $l2
                          i32.store
                          local.get $l2
                          i32.eqz
                          br_if $B63
                        end
                        local.get $l2
                        local.get $l7
                        i32.store offset=24
                        local.get $l4
                        i32.load offset=16
                        local.tee $l0
                        if $I72
                          local.get $l2
                          local.get $l0
                          i32.store offset=16
                          local.get $l0
                          local.get $l2
                          i32.store offset=24
                        end
                        local.get $l4
                        i32.load offset=20
                        local.tee $l0
                        i32.eqz
                        br_if $B63
                        local.get $l2
                        local.get $l0
                        i32.store offset=20
                        local.get $l0
                        local.get $l2
                        i32.store offset=24
                      end
                      local.get $l4
                      local.get $l9
                      i32.add
                      local.set $l4
                      local.get $l3
                      local.get $l9
                      i32.add
                      local.set $l3
                    end
                    local.get $l4
                    local.get $l4
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get $l6
                    local.get $l3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get $l3
                    local.get $l6
                    i32.add
                    local.get $l3
                    i32.store
                    local.get $l3
                    i32.const 255
                    i32.le_u
                    if $I73
                      local.get $l3
                      i32.const 3
                      i32.shr_u
                      local.tee $l1
                      i32.const 3
                      i32.shl
                      i32.const 3320
                      i32.add
                      local.set $l0
                      block $B74 (result i32)
                        i32.const 3280
                        i32.load
                        local.tee $l3
                        i32.const 1
                        local.get $l1
                        i32.shl
                        local.tee $l1
                        i32.and
                        i32.eqz
                        if $I75
                          i32.const 3280
                          local.get $l1
                          local.get $l3
                          i32.or
                          i32.store
                          local.get $l0
                          br $B74
                        end
                        local.get $l0
                        i32.load offset=8
                      end
                      local.set $l1
                      local.get $l0
                      local.get $l6
                      i32.store offset=8
                      local.get $l1
                      local.get $l6
                      i32.store offset=12
                      local.get $l6
                      local.get $l0
                      i32.store offset=12
                      local.get $l6
                      local.get $l1
                      i32.store offset=8
                      br $B51
                    end
                    i32.const 31
                    local.set $l0
                    local.get $l3
                    i32.const 16777215
                    i32.le_u
                    if $I76
                      local.get $l3
                      i32.const 8
                      i32.shr_u
                      local.tee $l0
                      local.get $l0
                      i32.const 1048320
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 8
                      i32.and
                      local.tee $l0
                      i32.shl
                      local.tee $l1
                      local.get $l1
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      local.tee $l1
                      i32.shl
                      local.tee $l2
                      local.get $l2
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      local.tee $l2
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      local.get $l0
                      local.get $l1
                      i32.or
                      local.get $l2
                      i32.or
                      i32.sub
                      local.tee $l0
                      i32.const 1
                      i32.shl
                      local.get $l3
                      local.get $l0
                      i32.const 21
                      i32.add
                      i32.shr_u
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 28
                      i32.add
                      local.set $l0
                    end
                    local.get $l6
                    local.get $l0
                    i32.store offset=28
                    local.get $l6
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get $l0
                    i32.const 2
                    i32.shl
                    i32.const 3584
                    i32.add
                    local.set $l1
                    block $B77
                      i32.const 3284
                      i32.load
                      local.tee $l2
                      i32.const 1
                      local.get $l0
                      i32.shl
                      local.tee $l4
                      i32.and
                      i32.eqz
                      if $I78
                        i32.const 3284
                        local.get $l2
                        local.get $l4
                        i32.or
                        i32.store
                        local.get $l1
                        local.get $l6
                        i32.store
                        local.get $l6
                        local.get $l1
                        i32.store offset=24
                        br $B77
                      end
                      local.get $l3
                      i32.const 0
                      i32.const 25
                      local.get $l0
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get $l0
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set $l0
                      local.get $l1
                      i32.load
                      local.set $l2
                      loop $L79
                        local.get $l2
                        local.tee $l1
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get $l3
                        i32.eq
                        br_if $B52
                        local.get $l0
                        i32.const 29
                        i32.shr_u
                        local.set $l2
                        local.get $l0
                        i32.const 1
                        i32.shl
                        local.set $l0
                        local.get $l1
                        local.get $l2
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        local.tee $l4
                        i32.load
                        local.tee $l2
                        br_if $L79
                      end
                      local.get $l4
                      local.get $l6
                      i32.store
                      local.get $l6
                      local.get $l1
                      i32.store offset=24
                    end
                    local.get $l6
                    local.get $l6
                    i32.store offset=12
                    local.get $l6
                    local.get $l6
                    i32.store offset=8
                    br $B51
                  end
                  i32.const 3304
                  local.get $l2
                  i32.const -8
                  local.get $l2
                  i32.sub
                  i32.const 7
                  i32.and
                  i32.const 0
                  local.get $l2
                  i32.const 8
                  i32.add
                  i32.const 7
                  i32.and
                  select
                  local.tee $l0
                  i32.add
                  local.tee $l8
                  i32.store
                  i32.const 3292
                  local.get $l5
                  local.get $l0
                  i32.sub
                  i32.const 40
                  i32.sub
                  local.tee $l0
                  i32.store
                  local.get $l8
                  local.get $l0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get $l4
                  i32.const 36
                  i32.sub
                  i32.const 40
                  i32.store
                  i32.const 3308
                  i32.const 3768
                  i32.load
                  i32.store
                  local.get $l1
                  local.get $l3
                  i32.const 39
                  local.get $l3
                  i32.sub
                  i32.const 7
                  i32.and
                  i32.const 0
                  local.get $l3
                  i32.const 39
                  i32.sub
                  i32.const 7
                  i32.and
                  select
                  i32.add
                  i32.const 47
                  i32.sub
                  local.tee $l0
                  local.get $l0
                  local.get $l1
                  i32.const 16
                  i32.add
                  i32.lt_u
                  select
                  local.tee $l4
                  i32.const 27
                  i32.store offset=4
                  local.get $l4
                  i32.const 3736
                  i64.load align=4
                  i64.store offset=16 align=4
                  local.get $l4
                  i32.const 3728
                  i64.load align=4
                  i64.store offset=8 align=4
                  i32.const 3736
                  local.get $l4
                  i32.const 8
                  i32.add
                  i32.store
                  i32.const 3732
                  local.get $l5
                  i32.store
                  i32.const 3728
                  local.get $l2
                  i32.store
                  i32.const 3740
                  i32.const 0
                  i32.store
                  local.get $l4
                  i32.const 24
                  i32.add
                  local.set $l0
                  loop $L80
                    local.get $l0
                    i32.const 7
                    i32.store offset=4
                    local.get $l0
                    i32.const 8
                    i32.add
                    local.set $l2
                    local.get $l0
                    i32.const 4
                    i32.add
                    local.set $l0
                    local.get $l2
                    local.get $l3
                    i32.lt_u
                    br_if $L80
                  end
                  local.get $l1
                  local.get $l4
                  i32.eq
                  br_if $B42
                  local.get $l4
                  local.get $l4
                  i32.load offset=4
                  i32.const -2
                  i32.and
                  i32.store offset=4
                  local.get $l1
                  local.get $l4
                  local.get $l1
                  i32.sub
                  local.tee $l5
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get $l4
                  local.get $l5
                  i32.store
                  local.get $l5
                  i32.const 255
                  i32.le_u
                  if $I81
                    local.get $l5
                    i32.const 3
                    i32.shr_u
                    local.tee $l3
                    i32.const 3
                    i32.shl
                    i32.const 3320
                    i32.add
                    local.set $l0
                    block $B82 (result i32)
                      i32.const 3280
                      i32.load
                      local.tee $l2
                      i32.const 1
                      local.get $l3
                      i32.shl
                      local.tee $l3
                      i32.and
                      i32.eqz
                      if $I83
                        i32.const 3280
                        local.get $l2
                        local.get $l3
                        i32.or
                        i32.store
                        local.get $l0
                        br $B82
                      end
                      local.get $l0
                      i32.load offset=8
                    end
                    local.set $l3
                    local.get $l0
                    local.get $l1
                    i32.store offset=8
                    local.get $l3
                    local.get $l1
                    i32.store offset=12
                    local.get $l1
                    local.get $l0
                    i32.store offset=12
                    local.get $l1
                    local.get $l3
                    i32.store offset=8
                    br $B42
                  end
                  i32.const 31
                  local.set $l0
                  local.get $l1
                  i64.const 0
                  i64.store offset=16 align=4
                  local.get $l5
                  i32.const 16777215
                  i32.le_u
                  if $I84
                    local.get $l5
                    i32.const 8
                    i32.shr_u
                    local.tee $l0
                    local.get $l0
                    i32.const 1048320
                    i32.add
                    i32.const 16
                    i32.shr_u
                    i32.const 8
                    i32.and
                    local.tee $l0
                    i32.shl
                    local.tee $l3
                    local.get $l3
                    i32.const 520192
                    i32.add
                    i32.const 16
                    i32.shr_u
                    i32.const 4
                    i32.and
                    local.tee $l3
                    i32.shl
                    local.tee $l2
                    local.get $l2
                    i32.const 245760
                    i32.add
                    i32.const 16
                    i32.shr_u
                    i32.const 2
                    i32.and
                    local.tee $l2
                    i32.shl
                    i32.const 15
                    i32.shr_u
                    local.get $l0
                    local.get $l3
                    i32.or
                    local.get $l2
                    i32.or
                    i32.sub
                    local.tee $l0
                    i32.const 1
                    i32.shl
                    local.get $l5
                    local.get $l0
                    i32.const 21
                    i32.add
                    i32.shr_u
                    i32.const 1
                    i32.and
                    i32.or
                    i32.const 28
                    i32.add
                    local.set $l0
                  end
                  local.get $l1
                  local.get $l0
                  i32.store offset=28
                  local.get $l0
                  i32.const 2
                  i32.shl
                  i32.const 3584
                  i32.add
                  local.set $l3
                  block $B85
                    i32.const 3284
                    i32.load
                    local.tee $l2
                    i32.const 1
                    local.get $l0
                    i32.shl
                    local.tee $l4
                    i32.and
                    i32.eqz
                    if $I86
                      i32.const 3284
                      local.get $l2
                      local.get $l4
                      i32.or
                      i32.store
                      local.get $l3
                      local.get $l1
                      i32.store
                      local.get $l1
                      local.get $l3
                      i32.store offset=24
                      br $B85
                    end
                    local.get $l5
                    i32.const 0
                    i32.const 25
                    local.get $l0
                    i32.const 1
                    i32.shr_u
                    i32.sub
                    local.get $l0
                    i32.const 31
                    i32.eq
                    select
                    i32.shl
                    local.set $l0
                    local.get $l3
                    i32.load
                    local.set $l2
                    loop $L87
                      local.get $l2
                      local.tee $l3
                      i32.load offset=4
                      i32.const -8
                      i32.and
                      local.get $l5
                      i32.eq
                      br_if $B50
                      local.get $l0
                      i32.const 29
                      i32.shr_u
                      local.set $l2
                      local.get $l0
                      i32.const 1
                      i32.shl
                      local.set $l0
                      local.get $l3
                      local.get $l2
                      i32.const 4
                      i32.and
                      i32.add
                      i32.const 16
                      i32.add
                      local.tee $l4
                      i32.load
                      local.tee $l2
                      br_if $L87
                    end
                    local.get $l4
                    local.get $l1
                    i32.store
                    local.get $l1
                    local.get $l3
                    i32.store offset=24
                  end
                  local.get $l1
                  local.get $l1
                  i32.store offset=12
                  local.get $l1
                  local.get $l1
                  i32.store offset=8
                  br $B42
                end
                local.get $l1
                i32.load offset=8
                local.tee $l0
                local.get $l6
                i32.store offset=12
                local.get $l1
                local.get $l6
                i32.store offset=8
                local.get $l6
                i32.const 0
                i32.store offset=24
                local.get $l6
                local.get $l1
                i32.store offset=12
                local.get $l6
                local.get $l0
                i32.store offset=8
              end
              local.get $l5
              i32.const 8
              i32.add
              local.set $l0
              br $B0
            end
            local.get $l3
            i32.load offset=8
            local.tee $l0
            local.get $l1
            i32.store offset=12
            local.get $l3
            local.get $l1
            i32.store offset=8
            local.get $l1
            i32.const 0
            i32.store offset=24
            local.get $l1
            local.get $l3
            i32.store offset=12
            local.get $l1
            local.get $l0
            i32.store offset=8
          end
          i32.const 3292
          i32.load
          local.tee $l0
          i32.const 48
          i32.le_u
          br_if $B5
          i32.const 3292
          local.get $l0
          i32.const 48
          i32.sub
          local.tee $l1
          i32.store
          i32.const 3304
          i32.const 3304
          i32.load
          local.tee $l0
          i32.const 48
          i32.add
          local.tee $l3
          i32.store
          local.get $l3
          local.get $l1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get $l0
          i32.const 51
          i32.store offset=4
          local.get $l0
          i32.const 8
          i32.add
          local.set $l0
          br $B0
        end
        i32.const 2064
        i32.const 48
        i32.store
        i32.const 0
        local.set $l0
        br $B0
      end
      block $B88
        local.get $l6
        i32.eqz
        br_if $B88
        block $B89
          local.get $l2
          i32.load offset=28
          local.tee $l3
          i32.const 2
          i32.shl
          i32.const 3584
          i32.add
          local.tee $l0
          i32.load
          local.get $l2
          i32.eq
          if $I90
            local.get $l0
            local.get $l4
            i32.store
            local.get $l4
            br_if $B89
            i32.const 3284
            local.get $l7
            i32.const -2
            local.get $l3
            i32.rotl
            i32.and
            i32.store
            br $B88
          end
          local.get $l6
          i32.const 16
          i32.const 20
          local.get $l6
          i32.load offset=16
          local.get $l2
          i32.eq
          select
          i32.add
          local.get $l4
          i32.store
          local.get $l4
          i32.eqz
          br_if $B88
        end
        local.get $l4
        local.get $l6
        i32.store offset=24
        local.get $l2
        i32.load offset=16
        local.tee $l0
        if $I91
          local.get $l4
          local.get $l0
          i32.store offset=16
          local.get $l0
          local.get $l4
          i32.store offset=24
        end
        local.get $l2
        i32.load offset=20
        local.tee $l0
        i32.eqz
        br_if $B88
        local.get $l4
        local.get $l0
        i32.store offset=20
        local.get $l0
        local.get $l4
        i32.store offset=24
      end
      block $B92
        local.get $l1
        i32.const 15
        i32.le_u
        if $I93
          local.get $l2
          local.get $l1
          i32.const 48
          i32.add
          local.tee $l0
          i32.const 3
          i32.or
          i32.store offset=4
          local.get $l0
          local.get $l2
          i32.add
          i32.const 4
          i32.add
          local.tee $l0
          local.get $l0
          i32.load
          i32.const 1
          i32.or
          i32.store
          br $B92
        end
        local.get $l2
        i32.const 51
        i32.store offset=4
        local.get $l2
        i32.const 48
        i32.add
        local.tee $l3
        local.get $l1
        i32.const 1
        i32.or
        i32.store offset=4
        local.get $l1
        local.get $l3
        i32.add
        local.get $l1
        i32.store
        local.get $l9
        if $I94
          local.get $l9
          i32.const 3
          i32.shr_u
          local.tee $l4
          i32.const 3
          i32.shl
          i32.const 3320
          i32.add
          local.set $l6
          i32.const 3300
          i32.load
          local.set $l0
          block $B95 (result i32)
            i32.const 1
            local.get $l4
            i32.shl
            local.tee $l4
            local.get $l5
            i32.and
            i32.eqz
            if $I96
              i32.const 3280
              local.get $l4
              local.get $l5
              i32.or
              i32.store
              local.get $l6
              br $B95
            end
            local.get $l6
            i32.load offset=8
          end
          local.set $l4
          local.get $l6
          local.get $l0
          i32.store offset=8
          local.get $l4
          local.get $l0
          i32.store offset=12
          local.get $l0
          local.get $l6
          i32.store offset=12
          local.get $l0
          local.get $l4
          i32.store offset=8
        end
        i32.const 3300
        local.get $l3
        i32.store
        i32.const 3288
        local.get $l1
        i32.store
      end
      local.get $l2
      i32.const 8
      i32.add
      local.set $l0
    end
    local.get $l10
    i32.const 16
    i32.add
    global.set $g0
    local.get $l0)
  (func $f25 (type $t1) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    i32.const 2060
    i32.load
    local.tee $l1
    local.get $p0
    i32.const 3
    i32.add
    i32.const -4
    i32.and
    local.tee $l2
    i32.add
    local.set $p0
    block $B0
      local.get $l2
      i32.const 0
      local.get $p0
      local.get $l1
      i32.le_u
      select
      br_if $B0
      memory.size
      i32.const 16
      i32.shl
      local.get $p0
      i32.lt_u
      br_if $B0
      i32.const 2060
      local.get $p0
      i32.store
      local.get $l1
      return
    end
    i32.const 2064
    i32.const 48
    i32.store
    i32.const -1)
  (func $stackSave (type $t4) (result i32)
    global.get $g0)
  (func $stackRestore (type $t2) (param $p0 i32)
    local.get $p0
    global.set $g0)
  (func $stackAlloc (type $t1) (param $p0 i32) (result i32)
    global.get $g0
    local.get $p0
    i32.sub
    i32.const -16
    i32.and
    local.tee $p0
    global.set $g0
    local.get $p0)
  (table $__indirect_function_table 5 5 funcref)
  (memory $memory 256 256)
  (global $g0 (mut i32) (i32.const 5246656))
  (export "memory" (memory 0))
  (export "_start" (func $_start))
  (export "__indirect_function_table" (table 0))
  (export "__errno_location" (func $__errno_location))
  (export "stackSave" (func $stackSave))
  (export "stackRestore" (func $stackRestore))
  (export "stackAlloc" (func $stackAlloc))
  (elem $e0 (i32.const 1) func $f4 $f8 $f13 $f14)
  (data $d0 (i32.const 1024) "-+   0X0x\00global const string\00dynamically (heap) allocated string\00stack-allocated (local) string\00next dynamically (heap) allocated\00(null)\00  in main()\00  in leaf()\00  in intermediate()\00    \09stack grows: %ld\0a\00    \09malloc has grown heap in: %ld but %d wasm requested\0a\00    %s, addr: %p (%lu)\0a\00    \09%s, addr: %p (%lu)\0a\00    stack value in leaf() function, addr: %p (%lu)\0a\00    argv[0]: %s, addr: %p (%lu)\0a\0a\00\00\00\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\00\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19")
  (data $d1 (i32.const 1505) "\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e")
  (data $d2 (i32.const 1563) "\0c")
  (data $d3 (i32.const 1575) "\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c")
  (data $d4 (i32.const 1621) "\10")
  (data $d5 (i32.const 1633) "\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10")
  (data $d6 (i32.const 1679) "\12")
  (data $d7 (i32.const 1691) "\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a")
  (data $d8 (i32.const 1746) "\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09")
  (data $d9 (i32.const 1795) "\14")
  (data $d10 (i32.const 1807) "\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14")
  (data $d11 (i32.const 1853) "\16")
  (data $d12 (i32.const 1865) "\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF")
  (data $d13 (i32.const 1904) "\0a\04\00\00\00\00\00\00\05")
  (data $d14 (i32.const 1924) "\02")
  (data $d15 (i32.const 1948) "\03\00\00\00\04\00\00\00(\08\00\00\00\04")
  (data $d16 (i32.const 1972) "\01")
  (data $d17 (i32.const 1988) "\ff\ff\ff\ff\0a")
  (data $d18 (i32.const 2056) "x\07\00\00\c0\0eP"))
