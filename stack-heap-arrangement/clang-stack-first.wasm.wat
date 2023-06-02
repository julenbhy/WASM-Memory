(module
  (type $t0 (func (param i32 i32 i32) (result i32)))
  (type $t1 (func (param i32 i32) (result i32)))
  (type $t2 (func (param i32) (result i32)))
  (type $t3 (func (param i32)))
  (type $t4 (func (param i32 i64 i32) (result i64)))
  (type $t5 (func (param i32 i32 i32)))
  (type $t6 (func (param i32 i64 i32 i32) (result i32)))
  (type $t7 (func (param i32 i32 i32 i32) (result i32)))
  (type $t8 (func))
  (type $t9 (func (param i32 i32)))
  (type $t10 (func (param f64 i32) (result f64)))
  (type $t11 (func (param i32 i32 i32 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "args_get" (func $wasi_snapshot_preview1.args_get (type $t1)))
  (import "wasi_snapshot_preview1" "args_sizes_get" (func $wasi_snapshot_preview1.args_sizes_get (type $t1)))
  (import "wasi_snapshot_preview1" "fd_close" (func $wasi_snapshot_preview1.fd_close (type $t2)))
  (import "wasi_snapshot_preview1" "fd_fdstat_get" (func $wasi_snapshot_preview1.fd_fdstat_get (type $t1)))
  (import "wasi_snapshot_preview1" "fd_seek" (func $wasi_snapshot_preview1.fd_seek (type $t6)))
  (import "wasi_snapshot_preview1" "fd_write" (func $wasi_snapshot_preview1.fd_write (type $t7)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $wasi_snapshot_preview1.proc_exit (type $t3)))
  (func $_start (type $t8)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64)
    block $B0
      i32.const 68608
      i32.load
      i32.eqz
      if $I1
        i32.const 68608
        i32.const 1
        i32.store
        block $B2 (result i32)
          global.get $g0
          i32.const 16
          i32.sub
          local.tee $l1
          global.set $g0
          block $B3
            block $B4
              block $B5
                block $B6
                  local.get $l1
                  i32.const 8
                  i32.add
                  local.get $l1
                  i32.const 12
                  i32.add
                  call $wasi_snapshot_preview1.args_sizes_get
                  i32.const 65535
                  i32.and
                  i32.eqz
                  if $I7
                    local.get $l1
                    i32.load offset=8
                    i32.const 1
                    i32.add
                    local.tee $l0
                    i32.eqz
                    br_if $B6
                    local.get $l1
                    i32.load offset=12
                    call $f8
                    local.tee $l2
                    i32.eqz
                    br_if $B5
                    block $B8
                      block $B9 (result i32)
                        i32.const 0
                        local.get $l0
                        i32.eqz
                        br_if $B9
                        drop
                        local.get $l0
                        i64.extend_i32_u
                        i64.const 2
                        i64.shl
                        local.tee $l7
                        i32.wrap_i64
                        local.tee $l3
                        local.get $l0
                        i32.const 4
                        i32.or
                        i32.const 65536
                        i32.lt_u
                        br_if $B9
                        drop
                        i32.const -1
                        local.get $l3
                        local.get $l7
                        i64.const 32
                        i64.shr_u
                        i32.wrap_i64
                        select
                      end
                      local.tee $l3
                      call $f8
                      local.tee $l0
                      i32.eqz
                      br_if $B8
                      local.get $l0
                      i32.const 4
                      i32.sub
                      i32.load8_u
                      i32.const 3
                      i32.and
                      i32.eqz
                      br_if $B8
                      local.get $l0
                      i32.const 0
                      local.get $l3
                      call $f29
                      drop
                    end
                    local.get $l0
                    i32.eqz
                    br_if $B4
                    local.get $l0
                    local.get $l2
                    call $wasi_snapshot_preview1.args_get
                    i32.const 65535
                    i32.and
                    br_if $B3
                    local.get $l1
                    i32.load offset=8
                    drop
                    i32.const 65711
                    call $f17
                    local.get $l0
                    i32.load
                    local.set $l6
                    global.get $g0
                    i32.const 80
                    i32.sub
                    local.tee $l2
                    global.set $g0
                    local.get $l2
                    local.get $l2
                    i32.store offset=4
                    local.get $l2
                    local.get $l2
                    i32.store
                    i32.const 65967
                    local.get $l2
                    call $f13
                    local.get $l2
                    i32.const 39
                    i32.add
                    i32.const 65648
                    i64.load align=1
                    i64.store align=1
                    local.get $l2
                    i32.const 32
                    i32.add
                    i32.const 65641
                    i64.load align=1
                    i64.store
                    local.get $l2
                    i32.const 65633
                    i64.load align=1
                    i64.store offset=24
                    local.get $l2
                    i32.const 65625
                    i64.load align=1
                    i64.store offset=16
                    i32.const 42
                    call $f8
                    local.tee $l3
                    i32.const 32
                    i32.add
                    i32.const 65621
                    i32.load align=1
                    i32.store align=1
                    local.get $l3
                    i32.const 24
                    i32.add
                    i32.const 65613
                    i64.load align=1
                    i64.store align=1
                    local.get $l3
                    i32.const 16
                    i32.add
                    i32.const 65605
                    i64.load align=1
                    i64.store align=1
                    local.get $l3
                    i32.const 8
                    i32.add
                    i32.const 65597
                    i64.load align=1
                    i64.store align=1
                    local.get $l3
                    i32.const 65589
                    i64.load align=1
                    i64.store align=1
                    i32.const 42
                    call $f8
                    local.tee $l4
                    i32.const 32
                    i32.add
                    i32.const 65692
                    i32.load16_u align=1
                    i32.store16 align=1
                    local.get $l4
                    i32.const 24
                    i32.add
                    i32.const 65684
                    i64.load align=1
                    i64.store align=1
                    local.get $l4
                    i32.const 16
                    i32.add
                    i32.const 65676
                    i64.load align=1
                    i64.store align=1
                    local.get $l4
                    i32.const 8
                    i32.add
                    i32.const 65668
                    i64.load align=1
                    i64.store align=1
                    local.get $l4
                    i32.const 65660
                    i64.load align=1
                    i64.store align=1
                    i32.const 65735
                    call $f17
                    global.get $g0
                    i32.const 128
                    i32.sub
                    local.tee $l0
                    global.set $g0
                    local.get $l0
                    i32.const 42
                    i32.store offset=124
                    i32.const 65723
                    call $f17
                    local.get $l0
                    i32.const 68352
                    i32.load
                    local.tee $l5
                    i32.store offset=112
                    local.get $l0
                    local.get $l5
                    i32.store offset=116
                    local.get $l0
                    local.get $l5
                    i32.store offset=120
                    i32.const 66012
                    local.get $l0
                    i32.const 112
                    i32.add
                    call $f13
                    local.get $l0
                    local.get $l2
                    i32.const 16
                    i32.add
                    local.tee $l5
                    i32.store offset=104
                    local.get $l0
                    local.get $l5
                    i32.store offset=100
                    local.get $l0
                    local.get $l5
                    i32.store offset=96
                    i32.const 66012
                    local.get $l0
                    i32.const 96
                    i32.add
                    call $f13
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
                    i32.const 66061
                    local.get $l0
                    i32.const 80
                    i32.add
                    call $f13
                    local.get $l0
                    local.get $l0
                    i32.const 124
                    i32.add
                    local.get $l5
                    i32.sub
                    i32.store offset=64
                    i32.const 65755
                    local.get $l0
                    i32.const -64
                    i32.sub
                    call $f13
                    local.get $l0
                    local.get $l3
                    i32.store offset=56
                    local.get $l0
                    local.get $l3
                    i32.store offset=52
                    local.get $l0
                    local.get $l3
                    i32.store offset=48
                    i32.const 66012
                    local.get $l0
                    i32.const 48
                    i32.add
                    call $f13
                    local.get $l0
                    local.get $l4
                    i32.store offset=40
                    local.get $l0
                    local.get $l4
                    i32.store offset=36
                    local.get $l0
                    local.get $l4
                    i32.store offset=32
                    i32.const 66036
                    local.get $l0
                    i32.const 32
                    i32.add
                    call $f13
                    local.get $l0
                    i32.const 42
                    i32.store offset=20
                    local.get $l0
                    local.get $l4
                    local.get $l3
                    i32.sub
                    i32.store offset=16
                    i32.const 65778
                    local.get $l0
                    i32.const 16
                    i32.add
                    call $f13
                    local.get $l0
                    local.get $l6
                    i32.store offset=8
                    local.get $l0
                    local.get $l6
                    i32.store offset=4
                    local.get $l0
                    local.get $l6
                    i32.store
                    i32.const 66113
                    local.get $l0
                    call $f13
                    local.get $l0
                    i32.const 128
                    i32.add
                    global.set $g0
                    local.get $l2
                    i32.const 80
                    i32.add
                    global.set $g0
                    local.get $l1
                    i32.const 16
                    i32.add
                    global.set $g0
                    i32.const 0
                    br $B2
                  end
                  i32.const 71
                  call $f10
                  unreachable
                end
                i32.const 70
                call $f10
                unreachable
              end
              i32.const 70
              call $f10
              unreachable
            end
            local.get $l2
            call $f9
            i32.const 70
            call $f10
            unreachable
          end
          local.get $l2
          call $f9
          local.get $l0
          call $f9
          i32.const 71
          call $f10
          unreachable
        end
        local.set $l0
        i32.const 69112
        i32.load
        local.tee $l1
        if $I10
          loop $L11
            local.get $l1
            i32.load offset=20
            local.get $l1
            i32.load offset=24
            i32.ne
            if $I12
              local.get $l1
              i32.const 0
              i32.const 0
              local.get $l1
              i32.load offset=32
              call_indirect $T0 (type $t0)
              drop
            end
            local.get $l1
            i32.load offset=4
            local.tee $l3
            local.get $l1
            i32.load offset=8
            local.tee $l2
            i32.ne
            if $I13
              local.get $l1
              local.get $l3
              local.get $l2
              i32.sub
              i64.extend_i32_s
              i32.const 1
              local.get $l1
              i32.load offset=36
              call_indirect $T0 (type $t4)
              drop
            end
            local.get $l1
            i32.load offset=52
            local.tee $l1
            br_if $L11
          end
        end
        block $B14
          i32.const 69116
          i32.load
          local.tee $l1
          i32.eqz
          br_if $B14
          local.get $l1
          i32.load offset=20
          local.get $l1
          i32.load offset=24
          i32.ne
          if $I15
            local.get $l1
            i32.const 0
            i32.const 0
            local.get $l1
            i32.load offset=32
            call_indirect $T0 (type $t0)
            drop
          end
          local.get $l1
          i32.load offset=4
          local.tee $l3
          local.get $l1
          i32.load offset=8
          local.tee $l2
          i32.eq
          br_if $B14
          local.get $l1
          local.get $l3
          local.get $l2
          i32.sub
          i64.extend_i32_s
          i32.const 1
          local.get $l1
          i32.load offset=36
          call_indirect $T0 (type $t4)
          drop
        end
        block $B16
          i32.const 68472
          i32.load
          local.tee $l1
          i32.eqz
          br_if $B16
          local.get $l1
          i32.load offset=20
          local.get $l1
          i32.load offset=24
          i32.ne
          if $I17
            local.get $l1
            i32.const 0
            i32.const 0
            local.get $l1
            i32.load offset=32
            call_indirect $T0 (type $t0)
            drop
          end
          local.get $l1
          i32.load offset=4
          local.tee $l3
          local.get $l1
          i32.load offset=8
          local.tee $l2
          i32.eq
          br_if $B16
          local.get $l1
          local.get $l3
          local.get $l2
          i32.sub
          i64.extend_i32_s
          i32.const 1
          local.get $l1
          i32.load offset=36
          call_indirect $T0 (type $t4)
          drop
        end
        block $B18
          i32.const 68592
          i32.load
          local.tee $l1
          i32.eqz
          br_if $B18
          local.get $l1
          i32.load offset=20
          local.get $l1
          i32.load offset=24
          i32.ne
          if $I19
            local.get $l1
            i32.const 0
            i32.const 0
            local.get $l1
            i32.load offset=32
            call_indirect $T0 (type $t0)
            drop
          end
          local.get $l1
          i32.load offset=4
          local.tee $l3
          local.get $l1
          i32.load offset=8
          local.tee $l2
          i32.eq
          br_if $B18
          local.get $l1
          local.get $l3
          local.get $l2
          i32.sub
          i64.extend_i32_s
          i32.const 1
          local.get $l1
          i32.load offset=36
          call_indirect $T0 (type $t4)
          drop
        end
        local.get $l0
        br_if $B0
        return
      end
      unreachable
    end
    local.get $l0
    call $f11
    unreachable)
  (func $f8 (type $t2) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l11
    global.set $g0
    block $B0
      i32.const 68636
      i32.load
      local.tee $l7
      br_if $B0
      block $B1
        i32.const 69084
        i32.load
        local.tee $l2
        if $I2
          i32.const 69088
          i32.load
          drop
          br $B1
        end
        i32.const 69096
        i64.const -1
        i64.store align=4
        i32.const 69088
        i64.const 281474976776192
        i64.store align=4
        i32.const 69084
        local.get $l11
        i32.const 8
        i32.add
        i32.const -16
        i32.and
        i32.const 1431655768
        i32.xor
        local.tee $l2
        i32.store
        i32.const 69104
        i32.const 0
        i32.store
        i32.const 69056
        i32.const 0
        i32.store
      end
      i32.const 0
      local.set $l7
      i32.const 60880
      local.tee $l4
      i32.const 89
      i32.lt_u
      br_if $B0
      i32.const 69064
      local.get $l4
      i32.store
      i32.const 69060
      i32.const 70192
      i32.store
      i32.const 68628
      i32.const 70192
      i32.store
      i32.const 68648
      local.get $l2
      i32.store
      i32.const 68644
      i32.const -1
      i32.store
      loop $L3
        local.get $l1
        i32.const 68672
        i32.add
        local.get $l1
        i32.const 68660
        i32.add
        local.tee $l2
        i32.store
        local.get $l2
        local.get $l1
        i32.const 68652
        i32.add
        local.tee $l3
        i32.store
        local.get $l1
        i32.const 68664
        i32.add
        local.get $l3
        i32.store
        local.get $l1
        i32.const 68680
        i32.add
        local.get $l1
        i32.const 68668
        i32.add
        local.tee $l3
        i32.store
        local.get $l3
        local.get $l2
        i32.store
        local.get $l1
        i32.const 68688
        i32.add
        local.get $l1
        i32.const 68676
        i32.add
        local.tee $l2
        i32.store
        local.get $l2
        local.get $l3
        i32.store
        local.get $l1
        i32.const 68684
        i32.add
        local.get $l2
        i32.store
        local.get $l1
        i32.const 32
        i32.add
        local.tee $l1
        i32.const 256
        i32.ne
        br_if $L3
      end
      i32.const 8
      local.tee $l1
      i32.const 70192
      i32.add
      local.tee $l7
      i32.const 4
      i32.add
      local.get $l4
      i32.const 56
      i32.sub
      local.tee $l2
      local.get $l1
      i32.sub
      local.tee $l1
      i32.const 1
      i32.or
      i32.store
      i32.const 68640
      i32.const 69100
      i32.load
      i32.store
      i32.const 68624
      local.get $l1
      i32.store
      i32.const 68636
      local.get $l7
      i32.store
      local.get $l2
      i32.const 70192
      i32.add
      i32.const 56
      i32.store offset=4
    end
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
                          local.get $p0
                          i32.const 236
                          i32.le_u
                          if $I15
                            i32.const 68612
                            i32.load
                            local.tee $l6
                            i32.const 16
                            local.get $p0
                            i32.const 19
                            i32.add
                            i32.const -16
                            i32.and
                            local.get $p0
                            i32.const 11
                            i32.lt_u
                            select
                            local.tee $l4
                            i32.const 3
                            i32.shr_u
                            local.tee $l2
                            i32.shr_u
                            local.tee $l1
                            i32.const 3
                            i32.and
                            if $I16
                              block $B17
                                local.get $l1
                                i32.const 1
                                i32.and
                                local.get $l2
                                i32.or
                                i32.const 1
                                i32.xor
                                local.tee $l3
                                i32.const 3
                                i32.shl
                                local.tee $l2
                                i32.const 68652
                                i32.add
                                local.tee $l1
                                local.get $l2
                                i32.const 68660
                                i32.add
                                i32.load
                                local.tee $l2
                                i32.load offset=8
                                local.tee $l4
                                i32.eq
                                if $I18
                                  i32.const 68612
                                  local.get $l6
                                  i32.const -2
                                  local.get $l3
                                  i32.rotl
                                  i32.and
                                  i32.store
                                  br $B17
                                end
                                local.get $l1
                                local.get $l4
                                i32.store offset=8
                                local.get $l4
                                local.get $l1
                                i32.store offset=12
                              end
                              local.get $l2
                              i32.const 8
                              i32.add
                              local.set $l1
                              local.get $l2
                              local.get $l3
                              i32.const 3
                              i32.shl
                              local.tee $l3
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get $l2
                              local.get $l3
                              i32.add
                              local.tee $l2
                              local.get $l2
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              br $B4
                            end
                            local.get $l4
                            i32.const 68620
                            i32.load
                            local.tee $l9
                            i32.le_u
                            br_if $B14
                            local.get $l1
                            if $I19
                              block $B20
                                local.get $l1
                                local.get $l2
                                i32.shl
                                i32.const 2
                                local.get $l2
                                i32.shl
                                local.tee $l1
                                i32.const 0
                                local.get $l1
                                i32.sub
                                i32.or
                                i32.and
                                local.tee $l1
                                i32.const 0
                                local.get $l1
                                i32.sub
                                i32.and
                                i32.ctz
                                local.tee $l2
                                i32.const 3
                                i32.shl
                                local.tee $l1
                                i32.const 68652
                                i32.add
                                local.tee $l3
                                local.get $l1
                                i32.const 68660
                                i32.add
                                i32.load
                                local.tee $l1
                                i32.load offset=8
                                local.tee $p0
                                i32.eq
                                if $I21
                                  i32.const 68612
                                  local.get $l6
                                  i32.const -2
                                  local.get $l2
                                  i32.rotl
                                  i32.and
                                  local.tee $l6
                                  i32.store
                                  br $B20
                                end
                                local.get $l3
                                local.get $p0
                                i32.store offset=8
                                local.get $p0
                                local.get $l3
                                i32.store offset=12
                              end
                              local.get $l1
                              local.get $l4
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get $l1
                              local.get $l2
                              i32.const 3
                              i32.shl
                              local.tee $l2
                              i32.add
                              local.get $l2
                              local.get $l4
                              i32.sub
                              local.tee $l3
                              i32.store
                              local.get $l1
                              local.get $l4
                              i32.add
                              local.tee $p0
                              local.get $l3
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get $l9
                              if $I22
                                local.get $l9
                                i32.const -8
                                i32.and
                                i32.const 68652
                                i32.add
                                local.set $l4
                                i32.const 68632
                                i32.load
                                local.set $l2
                                block $B23 (result i32)
                                  local.get $l6
                                  i32.const 1
                                  local.get $l9
                                  i32.const 3
                                  i32.shr_u
                                  i32.shl
                                  local.tee $l5
                                  i32.and
                                  i32.eqz
                                  if $I24
                                    i32.const 68612
                                    local.get $l5
                                    local.get $l6
                                    i32.or
                                    i32.store
                                    local.get $l4
                                    br $B23
                                  end
                                  local.get $l4
                                  i32.load offset=8
                                end
                                local.tee $l5
                                local.get $l2
                                i32.store offset=12
                                local.get $l4
                                local.get $l2
                                i32.store offset=8
                                local.get $l2
                                local.get $l4
                                i32.store offset=12
                                local.get $l2
                                local.get $l5
                                i32.store offset=8
                              end
                              local.get $l1
                              i32.const 8
                              i32.add
                              local.set $l1
                              i32.const 68632
                              local.get $p0
                              i32.store
                              i32.const 68620
                              local.get $l3
                              i32.store
                              br $B4
                            end
                            i32.const 68616
                            i32.load
                            local.tee $l8
                            i32.eqz
                            br_if $B14
                            local.get $l8
                            i32.const 0
                            local.get $l8
                            i32.sub
                            i32.and
                            i32.ctz
                            i32.const 2
                            i32.shl
                            i32.const 68916
                            i32.add
                            i32.load
                            local.tee $p0
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get $l4
                            i32.sub
                            local.set $l2
                            local.get $p0
                            local.set $l3
                            loop $L25
                              block $B26
                                local.get $l3
                                i32.load offset=16
                                local.tee $l1
                                i32.eqz
                                if $I27
                                  local.get $l3
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee $l1
                                  i32.eqz
                                  br_if $B26
                                end
                                local.get $l1
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get $l4
                                i32.sub
                                local.tee $l3
                                local.get $l2
                                local.get $l2
                                local.get $l3
                                i32.gt_u
                                local.tee $l3
                                select
                                local.set $l2
                                local.get $l1
                                local.get $p0
                                local.get $l3
                                select
                                local.set $p0
                                local.get $l1
                                local.set $l3
                                br $L25
                              end
                            end
                            local.get $p0
                            i32.load offset=24
                            local.set $l10
                            local.get $p0
                            local.get $p0
                            i32.load offset=12
                            local.tee $l5
                            i32.ne
                            if $I28
                              local.get $p0
                              i32.load offset=8
                              local.tee $l1
                              i32.const 68628
                              i32.load
                              i32.lt_u
                              drop
                              local.get $l5
                              local.get $l1
                              i32.store offset=8
                              local.get $l1
                              local.get $l5
                              i32.store offset=12
                              br $B5
                            end
                            local.get $p0
                            i32.const 20
                            i32.add
                            local.tee $l3
                            i32.load
                            local.tee $l1
                            i32.eqz
                            if $I29
                              local.get $p0
                              i32.load offset=16
                              local.tee $l1
                              i32.eqz
                              br_if $B13
                              local.get $p0
                              i32.const 16
                              i32.add
                              local.set $l3
                            end
                            loop $L30
                              local.get $l3
                              local.set $l7
                              local.get $l1
                              local.tee $l5
                              i32.const 20
                              i32.add
                              local.tee $l3
                              i32.load
                              local.tee $l1
                              br_if $L30
                              local.get $l5
                              i32.const 16
                              i32.add
                              local.set $l3
                              local.get $l5
                              i32.load offset=16
                              local.tee $l1
                              br_if $L30
                            end
                            local.get $l7
                            i32.const 0
                            i32.store
                            br $B5
                          end
                          i32.const -1
                          local.set $l4
                          local.get $p0
                          i32.const -65
                          i32.gt_u
                          br_if $B14
                          local.get $p0
                          i32.const 19
                          i32.add
                          local.tee $l1
                          i32.const -16
                          i32.and
                          local.set $l4
                          i32.const 68616
                          i32.load
                          local.tee $l8
                          i32.eqz
                          br_if $B14
                          i32.const 0
                          local.get $l4
                          i32.sub
                          local.set $l2
                          block $B31
                            block $B32
                              block $B33
                                block $B34 (result i32)
                                  i32.const 0
                                  local.get $l4
                                  i32.const 256
                                  i32.lt_u
                                  br_if $B34
                                  drop
                                  i32.const 31
                                  local.get $l4
                                  i32.const 16777215
                                  i32.gt_u
                                  br_if $B34
                                  drop
                                  local.get $l4
                                  i32.const 38
                                  local.get $l1
                                  i32.const 8
                                  i32.shr_u
                                  i32.clz
                                  local.tee $l1
                                  i32.sub
                                  i32.shr_u
                                  i32.const 1
                                  i32.and
                                  local.get $l1
                                  i32.const 1
                                  i32.shl
                                  i32.sub
                                  i32.const 62
                                  i32.add
                                end
                                local.tee $l9
                                i32.const 2
                                i32.shl
                                i32.const 68916
                                i32.add
                                i32.load
                                local.tee $l3
                                i32.eqz
                                if $I35
                                  i32.const 0
                                  local.set $l1
                                  br $B33
                                end
                                i32.const 0
                                local.set $l1
                                local.get $l4
                                i32.const 0
                                i32.const 25
                                local.get $l9
                                i32.const 1
                                i32.shr_u
                                i32.sub
                                local.get $l9
                                i32.const 31
                                i32.eq
                                select
                                i32.shl
                                local.set $p0
                                loop $L36
                                  block $B37
                                    local.get $l3
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get $l4
                                    i32.sub
                                    local.tee $l6
                                    local.get $l2
                                    i32.ge_u
                                    br_if $B37
                                    local.get $l3
                                    local.set $l5
                                    local.get $l6
                                    local.tee $l2
                                    br_if $B37
                                    i32.const 0
                                    local.set $l2
                                    local.get $l3
                                    local.set $l1
                                    br $B32
                                  end
                                  local.get $l1
                                  local.get $l3
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee $l6
                                  local.get $l6
                                  local.get $l3
                                  local.get $p0
                                  i32.const 29
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  i32.load
                                  local.tee $l3
                                  i32.eq
                                  select
                                  local.get $l1
                                  local.get $l6
                                  select
                                  local.set $l1
                                  local.get $p0
                                  i32.const 1
                                  i32.shl
                                  local.set $p0
                                  local.get $l3
                                  br_if $L36
                                end
                              end
                              local.get $l1
                              local.get $l5
                              i32.or
                              i32.eqz
                              if $I38
                                i32.const 0
                                local.set $l5
                                i32.const 2
                                local.get $l9
                                i32.shl
                                local.tee $l1
                                i32.const 0
                                local.get $l1
                                i32.sub
                                i32.or
                                local.get $l8
                                i32.and
                                local.tee $l1
                                i32.eqz
                                br_if $B14
                                local.get $l1
                                i32.const 0
                                local.get $l1
                                i32.sub
                                i32.and
                                i32.ctz
                                i32.const 2
                                i32.shl
                                i32.const 68916
                                i32.add
                                i32.load
                                local.set $l1
                              end
                              local.get $l1
                              i32.eqz
                              br_if $B31
                            end
                            loop $L39
                              local.get $l1
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get $l4
                              i32.sub
                              local.tee $l6
                              local.get $l2
                              i32.lt_u
                              local.set $p0
                              local.get $l6
                              local.get $l2
                              local.get $p0
                              select
                              local.set $l2
                              local.get $l1
                              local.get $l5
                              local.get $p0
                              select
                              local.set $l5
                              local.get $l1
                              i32.load offset=16
                              local.tee $l3
                              if $I40 (result i32)
                                local.get $l3
                              else
                                local.get $l1
                                i32.const 20
                                i32.add
                                i32.load
                              end
                              local.tee $l1
                              br_if $L39
                            end
                          end
                          local.get $l5
                          i32.eqz
                          br_if $B14
                          local.get $l2
                          i32.const 68620
                          i32.load
                          local.get $l4
                          i32.sub
                          i32.ge_u
                          br_if $B14
                          local.get $l5
                          i32.load offset=24
                          local.set $l7
                          local.get $l5
                          local.get $l5
                          i32.load offset=12
                          local.tee $p0
                          i32.ne
                          if $I41
                            local.get $l5
                            i32.load offset=8
                            local.tee $l1
                            i32.const 68628
                            i32.load
                            i32.lt_u
                            drop
                            local.get $p0
                            local.get $l1
                            i32.store offset=8
                            local.get $l1
                            local.get $p0
                            i32.store offset=12
                            br $B6
                          end
                          local.get $l5
                          i32.const 20
                          i32.add
                          local.tee $l3
                          i32.load
                          local.tee $l1
                          i32.eqz
                          if $I42
                            local.get $l5
                            i32.load offset=16
                            local.tee $l1
                            i32.eqz
                            br_if $B12
                            local.get $l5
                            i32.const 16
                            i32.add
                            local.set $l3
                          end
                          loop $L43
                            local.get $l3
                            local.set $l6
                            local.get $l1
                            local.tee $p0
                            i32.const 20
                            i32.add
                            local.tee $l3
                            i32.load
                            local.tee $l1
                            br_if $L43
                            local.get $p0
                            i32.const 16
                            i32.add
                            local.set $l3
                            local.get $p0
                            i32.load offset=16
                            local.tee $l1
                            br_if $L43
                          end
                          local.get $l6
                          i32.const 0
                          i32.store
                          br $B6
                        end
                        local.get $l4
                        i32.const 68620
                        i32.load
                        local.tee $l1
                        i32.le_u
                        if $I44
                          i32.const 68632
                          i32.load
                          local.set $l2
                          block $B45
                            local.get $l1
                            local.get $l4
                            i32.sub
                            local.tee $l3
                            i32.const 16
                            i32.ge_u
                            if $I46
                              local.get $l2
                              local.get $l4
                              i32.add
                              local.tee $p0
                              local.get $l3
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get $l1
                              local.get $l2
                              i32.add
                              local.get $l3
                              i32.store
                              local.get $l2
                              local.get $l4
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              br $B45
                            end
                            local.get $l2
                            local.get $l1
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get $l1
                            local.get $l2
                            i32.add
                            local.tee $l1
                            local.get $l1
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            i32.const 0
                            local.set $p0
                            i32.const 0
                            local.set $l3
                          end
                          i32.const 68620
                          local.get $l3
                          i32.store
                          i32.const 68632
                          local.get $p0
                          i32.store
                          local.get $l2
                          i32.const 8
                          i32.add
                          local.set $l1
                          br $B4
                        end
                        local.get $l4
                        i32.const 68624
                        i32.load
                        local.tee $l3
                        i32.lt_u
                        if $I47
                          local.get $l4
                          local.get $l7
                          i32.add
                          local.tee $l1
                          local.get $l3
                          local.get $l4
                          i32.sub
                          local.tee $l2
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          i32.const 68636
                          local.get $l1
                          i32.store
                          i32.const 68624
                          local.get $l2
                          i32.store
                          local.get $l7
                          local.get $l4
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get $l7
                          i32.const 8
                          i32.add
                          local.set $l1
                          br $B4
                        end
                        i32.const 0
                        local.set $l1
                        local.get $l4
                        local.get $l4
                        i32.const 71
                        i32.add
                        local.tee $l9
                        block $B48 (result i32)
                          i32.const 69084
                          i32.load
                          if $I49
                            i32.const 69092
                            i32.load
                            br $B48
                          end
                          i32.const 69096
                          i64.const -1
                          i64.store align=4
                          i32.const 69088
                          i64.const 281474976776192
                          i64.store align=4
                          i32.const 69084
                          local.get $l11
                          i32.const 12
                          i32.add
                          i32.const -16
                          i32.and
                          i32.const 1431655768
                          i32.xor
                          i32.store
                          i32.const 69104
                          i32.const 0
                          i32.store
                          i32.const 69056
                          i32.const 0
                          i32.store
                          i32.const 65536
                        end
                        local.tee $l2
                        i32.add
                        local.tee $p0
                        i32.const 0
                        local.get $l2
                        i32.sub
                        local.tee $l6
                        i32.and
                        local.tee $l5
                        i32.ge_u
                        if $I50
                          i32.const 69108
                          i32.const 48
                          i32.store
                          br $B4
                        end
                        block $B51
                          i32.const 69052
                          i32.load
                          local.tee $l1
                          i32.eqz
                          br_if $B51
                          i32.const 69044
                          i32.load
                          local.tee $l2
                          local.get $l5
                          i32.add
                          local.tee $l8
                          local.get $l2
                          i32.gt_u
                          local.get $l1
                          local.get $l8
                          i32.ge_u
                          i32.and
                          br_if $B51
                          i32.const 0
                          local.set $l1
                          i32.const 69108
                          i32.const 48
                          i32.store
                          br $B4
                        end
                        i32.const 69056
                        i32.load8_u
                        i32.const 4
                        i32.and
                        br_if $B9
                        block $B52
                          block $B53
                            local.get $l7
                            if $I54
                              i32.const 69060
                              local.set $l1
                              loop $L55
                                local.get $l7
                                local.get $l1
                                i32.load
                                local.tee $l2
                                i32.ge_u
                                if $I56
                                  local.get $l2
                                  local.get $l1
                                  i32.load offset=4
                                  i32.add
                                  local.get $l7
                                  i32.gt_u
                                  br_if $B53
                                end
                                local.get $l1
                                i32.load offset=8
                                local.tee $l1
                                br_if $L55
                              end
                            end
                            i32.const 0
                            call $f12
                            local.tee $p0
                            i32.const -1
                            i32.eq
                            br_if $B10
                            local.get $l5
                            local.set $l6
                            i32.const 69088
                            i32.load
                            local.tee $l1
                            i32.const 1
                            i32.sub
                            local.tee $l2
                            local.get $p0
                            i32.and
                            if $I57
                              local.get $l5
                              local.get $p0
                              i32.sub
                              local.get $p0
                              local.get $l2
                              i32.add
                              i32.const 0
                              local.get $l1
                              i32.sub
                              i32.and
                              i32.add
                              local.set $l6
                            end
                            local.get $l4
                            local.get $l6
                            i32.ge_u
                            br_if $B10
                            local.get $l6
                            i32.const 2147483646
                            i32.gt_u
                            br_if $B10
                            i32.const 69052
                            i32.load
                            local.tee $l1
                            if $I58
                              i32.const 69044
                              i32.load
                              local.tee $l2
                              local.get $l6
                              i32.add
                              local.tee $l3
                              local.get $l2
                              i32.le_u
                              br_if $B10
                              local.get $l1
                              local.get $l3
                              i32.lt_u
                              br_if $B10
                            end
                            local.get $l6
                            call $f12
                            local.tee $l1
                            local.get $p0
                            i32.ne
                            br_if $B52
                            br $B8
                          end
                          local.get $p0
                          local.get $l3
                          i32.sub
                          local.get $l6
                          i32.and
                          local.tee $l6
                          i32.const 2147483646
                          i32.gt_u
                          br_if $B10
                          local.get $l6
                          call $f12
                          local.tee $p0
                          local.get $l1
                          i32.load
                          local.get $l1
                          i32.load offset=4
                          i32.add
                          i32.eq
                          br_if $B11
                          local.get $p0
                          local.set $l1
                        end
                        block $B59
                          local.get $l1
                          i32.const -1
                          i32.eq
                          br_if $B59
                          local.get $l4
                          i32.const 72
                          i32.add
                          local.get $l6
                          i32.le_u
                          br_if $B59
                          i32.const 69092
                          i32.load
                          local.tee $l2
                          local.get $l9
                          local.get $l6
                          i32.sub
                          i32.add
                          i32.const 0
                          local.get $l2
                          i32.sub
                          i32.and
                          local.tee $l2
                          i32.const 2147483646
                          i32.gt_u
                          if $I60
                            local.get $l1
                            local.set $p0
                            br $B8
                          end
                          local.get $l2
                          call $f12
                          i32.const -1
                          i32.ne
                          if $I61
                            local.get $l2
                            local.get $l6
                            i32.add
                            local.set $l6
                            local.get $l1
                            local.set $p0
                            br $B8
                          end
                          i32.const 0
                          local.get $l6
                          i32.sub
                          call $f12
                          drop
                          br $B10
                        end
                        local.get $l1
                        local.set $p0
                        local.get $l1
                        i32.const -1
                        i32.ne
                        br_if $B8
                        br $B10
                      end
                      i32.const 0
                      local.set $l5
                      br $B5
                    end
                    i32.const 0
                    local.set $p0
                    br $B6
                  end
                  local.get $p0
                  i32.const -1
                  i32.ne
                  br_if $B8
                end
                i32.const 69056
                i32.const 69056
                i32.load
                i32.const 4
                i32.or
                i32.store
              end
              local.get $l5
              i32.const 2147483646
              i32.gt_u
              br_if $B7
              local.get $l5
              call $f12
              local.set $p0
              i32.const 0
              call $f12
              local.set $l1
              local.get $p0
              i32.const -1
              i32.eq
              br_if $B7
              local.get $l1
              i32.const -1
              i32.eq
              br_if $B7
              local.get $p0
              local.get $l1
              i32.ge_u
              br_if $B7
              local.get $l1
              local.get $p0
              i32.sub
              local.tee $l6
              local.get $l4
              i32.const 56
              i32.add
              i32.le_u
              br_if $B7
            end
            i32.const 69044
            i32.const 69044
            i32.load
            local.get $l6
            i32.add
            local.tee $l1
            i32.store
            i32.const 69048
            i32.load
            local.get $l1
            i32.lt_u
            if $I62
              i32.const 69048
              local.get $l1
              i32.store
            end
            block $B63
              block $B64
                block $B65
                  i32.const 68636
                  i32.load
                  local.tee $l2
                  if $I66
                    i32.const 69060
                    local.set $l1
                    loop $L67
                      local.get $p0
                      local.get $l1
                      i32.load
                      local.tee $l3
                      local.get $l1
                      i32.load offset=4
                      local.tee $l5
                      i32.add
                      i32.eq
                      br_if $B65
                      local.get $l1
                      i32.load offset=8
                      local.tee $l1
                      br_if $L67
                    end
                    br $B64
                  end
                  i32.const 68628
                  i32.load
                  local.tee $l1
                  i32.const 0
                  local.get $p0
                  local.get $l1
                  i32.ge_u
                  select
                  i32.eqz
                  if $I68
                    i32.const 68628
                    local.get $p0
                    i32.store
                  end
                  i32.const 0
                  local.set $l1
                  i32.const 69064
                  local.get $l6
                  i32.store
                  i32.const 69060
                  local.get $p0
                  i32.store
                  i32.const 68644
                  i32.const -1
                  i32.store
                  i32.const 68648
                  i32.const 69084
                  i32.load
                  i32.store
                  i32.const 69072
                  i32.const 0
                  i32.store
                  loop $L69
                    local.get $l1
                    i32.const 68672
                    i32.add
                    local.get $l1
                    i32.const 68660
                    i32.add
                    local.tee $l2
                    i32.store
                    local.get $l2
                    local.get $l1
                    i32.const 68652
                    i32.add
                    local.tee $l3
                    i32.store
                    local.get $l1
                    i32.const 68664
                    i32.add
                    local.get $l3
                    i32.store
                    local.get $l1
                    i32.const 68680
                    i32.add
                    local.get $l1
                    i32.const 68668
                    i32.add
                    local.tee $l3
                    i32.store
                    local.get $l3
                    local.get $l2
                    i32.store
                    local.get $l1
                    i32.const 68688
                    i32.add
                    local.get $l1
                    i32.const 68676
                    i32.add
                    local.tee $l2
                    i32.store
                    local.get $l2
                    local.get $l3
                    i32.store
                    local.get $l1
                    i32.const 68684
                    i32.add
                    local.get $l2
                    i32.store
                    local.get $l1
                    i32.const 32
                    i32.add
                    local.tee $l1
                    i32.const 256
                    i32.ne
                    br_if $L69
                  end
                  local.get $p0
                  i32.const -8
                  local.get $p0
                  i32.sub
                  i32.const 15
                  i32.and
                  i32.const 0
                  local.get $p0
                  i32.const 8
                  i32.add
                  i32.const 15
                  i32.and
                  select
                  local.tee $l1
                  i32.add
                  local.tee $l2
                  local.get $l6
                  i32.const 56
                  i32.sub
                  local.tee $l3
                  local.get $l1
                  i32.sub
                  local.tee $l1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  i32.const 68640
                  i32.const 69100
                  i32.load
                  i32.store
                  i32.const 68624
                  local.get $l1
                  i32.store
                  i32.const 68636
                  local.get $l2
                  i32.store
                  local.get $p0
                  local.get $l3
                  i32.add
                  i32.const 56
                  i32.store offset=4
                  br $B63
                end
                local.get $l1
                i32.load8_u offset=12
                i32.const 8
                i32.and
                br_if $B64
                local.get $l2
                local.get $l3
                i32.lt_u
                br_if $B64
                local.get $p0
                local.get $l2
                i32.le_u
                br_if $B64
                local.get $l2
                i32.const -8
                local.get $l2
                i32.sub
                i32.const 15
                i32.and
                i32.const 0
                local.get $l2
                i32.const 8
                i32.add
                i32.const 15
                i32.and
                select
                local.tee $l3
                i32.add
                local.tee $p0
                i32.const 68624
                i32.load
                local.get $l6
                i32.add
                local.tee $l7
                local.get $l3
                i32.sub
                local.tee $l3
                i32.const 1
                i32.or
                i32.store offset=4
                local.get $l1
                local.get $l5
                local.get $l6
                i32.add
                i32.store offset=4
                i32.const 68640
                i32.const 69100
                i32.load
                i32.store
                i32.const 68624
                local.get $l3
                i32.store
                i32.const 68636
                local.get $p0
                i32.store
                local.get $l2
                local.get $l7
                i32.add
                i32.const 56
                i32.store offset=4
                br $B63
              end
              i32.const 68628
              i32.load
              local.get $p0
              i32.gt_u
              if $I70
                i32.const 68628
                local.get $p0
                i32.store
              end
              local.get $p0
              local.get $l6
              i32.add
              local.set $l3
              i32.const 69060
              local.set $l1
              block $B71
                block $B72
                  block $B73
                    block $B74
                      block $B75
                        block $B76
                          loop $L77
                            local.get $l3
                            local.get $l1
                            i32.load
                            i32.ne
                            if $I78
                              local.get $l1
                              i32.load offset=8
                              local.tee $l1
                              br_if $L77
                              br $B76
                            end
                          end
                          local.get $l1
                          i32.load8_u offset=12
                          i32.const 8
                          i32.and
                          i32.eqz
                          br_if $B75
                        end
                        i32.const 69060
                        local.set $l1
                        loop $L79
                          local.get $l2
                          local.get $l1
                          i32.load
                          local.tee $l3
                          i32.ge_u
                          if $I80
                            local.get $l3
                            local.get $l1
                            i32.load offset=4
                            i32.add
                            local.tee $l3
                            local.get $l2
                            i32.gt_u
                            br_if $B74
                          end
                          local.get $l1
                          i32.load offset=8
                          local.set $l1
                          br $L79
                        end
                        unreachable
                      end
                      local.get $l1
                      local.get $p0
                      i32.store
                      local.get $l1
                      local.get $l1
                      i32.load offset=4
                      local.get $l6
                      i32.add
                      i32.store offset=4
                      local.get $p0
                      i32.const -8
                      local.get $p0
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get $p0
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      local.tee $l7
                      local.get $l4
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get $l3
                      i32.const -8
                      local.get $l3
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get $l3
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      local.tee $l6
                      local.get $l4
                      local.get $l7
                      i32.add
                      local.tee $l4
                      i32.sub
                      local.set $l1
                      local.get $l2
                      local.get $l6
                      i32.eq
                      if $I81
                        i32.const 68636
                        local.get $l4
                        i32.store
                        i32.const 68624
                        i32.const 68624
                        i32.load
                        local.get $l1
                        i32.add
                        local.tee $l1
                        i32.store
                        local.get $l4
                        local.get $l1
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br $B72
                      end
                      i32.const 68632
                      i32.load
                      local.get $l6
                      i32.eq
                      if $I82
                        i32.const 68632
                        local.get $l4
                        i32.store
                        i32.const 68620
                        i32.const 68620
                        i32.load
                        local.get $l1
                        i32.add
                        local.tee $l1
                        i32.store
                        local.get $l4
                        local.get $l1
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get $l1
                        local.get $l4
                        i32.add
                        local.get $l1
                        i32.store
                        br $B72
                      end
                      local.get $l6
                      i32.load offset=4
                      local.tee $l2
                      i32.const 3
                      i32.and
                      i32.const 1
                      i32.eq
                      if $I83
                        local.get $l2
                        i32.const -8
                        i32.and
                        local.set $l9
                        block $B84
                          local.get $l2
                          i32.const 255
                          i32.le_u
                          if $I85
                            local.get $l6
                            i32.load offset=8
                            local.tee $l3
                            local.get $l2
                            i32.const 3
                            i32.shr_u
                            local.tee $l5
                            i32.const 3
                            i32.shl
                            i32.const 68652
                            i32.add
                            i32.eq
                            drop
                            local.get $l3
                            local.get $l6
                            i32.load offset=12
                            local.tee $l2
                            i32.eq
                            if $I86
                              i32.const 68612
                              i32.const 68612
                              i32.load
                              i32.const -2
                              local.get $l5
                              i32.rotl
                              i32.and
                              i32.store
                              br $B84
                            end
                            local.get $l2
                            local.get $l3
                            i32.store offset=8
                            local.get $l3
                            local.get $l2
                            i32.store offset=12
                            br $B84
                          end
                          local.get $l6
                          i32.load offset=24
                          local.set $l8
                          block $B87
                            local.get $l6
                            local.get $l6
                            i32.load offset=12
                            local.tee $p0
                            i32.ne
                            if $I88
                              local.get $p0
                              local.get $l6
                              i32.load offset=8
                              local.tee $l2
                              i32.store offset=8
                              local.get $l2
                              local.get $p0
                              i32.store offset=12
                              br $B87
                            end
                            block $B89
                              local.get $l6
                              i32.const 20
                              i32.add
                              local.tee $l2
                              i32.load
                              local.tee $l3
                              br_if $B89
                              local.get $l6
                              i32.const 16
                              i32.add
                              local.tee $l2
                              i32.load
                              local.tee $l3
                              br_if $B89
                              i32.const 0
                              local.set $p0
                              br $B87
                            end
                            loop $L90
                              local.get $l2
                              local.set $l5
                              local.get $l3
                              local.tee $p0
                              i32.const 20
                              i32.add
                              local.tee $l2
                              i32.load
                              local.tee $l3
                              br_if $L90
                              local.get $p0
                              i32.const 16
                              i32.add
                              local.set $l2
                              local.get $p0
                              i32.load offset=16
                              local.tee $l3
                              br_if $L90
                            end
                            local.get $l5
                            i32.const 0
                            i32.store
                          end
                          local.get $l8
                          i32.eqz
                          br_if $B84
                          block $B91
                            local.get $l6
                            i32.load offset=28
                            local.tee $l3
                            i32.const 2
                            i32.shl
                            i32.const 68916
                            i32.add
                            local.tee $l2
                            i32.load
                            local.get $l6
                            i32.eq
                            if $I92
                              local.get $l2
                              local.get $p0
                              i32.store
                              local.get $p0
                              br_if $B91
                              i32.const 68616
                              i32.const 68616
                              i32.load
                              i32.const -2
                              local.get $l3
                              i32.rotl
                              i32.and
                              i32.store
                              br $B84
                            end
                            local.get $l8
                            i32.const 16
                            i32.const 20
                            local.get $l8
                            i32.load offset=16
                            local.get $l6
                            i32.eq
                            select
                            i32.add
                            local.get $p0
                            i32.store
                            local.get $p0
                            i32.eqz
                            br_if $B84
                          end
                          local.get $p0
                          local.get $l8
                          i32.store offset=24
                          local.get $l6
                          i32.load offset=16
                          local.tee $l2
                          if $I93
                            local.get $p0
                            local.get $l2
                            i32.store offset=16
                            local.get $l2
                            local.get $p0
                            i32.store offset=24
                          end
                          local.get $l6
                          i32.load offset=20
                          local.tee $l2
                          i32.eqz
                          br_if $B84
                          local.get $p0
                          i32.const 20
                          i32.add
                          local.get $l2
                          i32.store
                          local.get $l2
                          local.get $p0
                          i32.store offset=24
                        end
                        local.get $l6
                        local.get $l9
                        i32.add
                        local.tee $l6
                        i32.load offset=4
                        local.set $l2
                        local.get $l1
                        local.get $l9
                        i32.add
                        local.set $l1
                      end
                      local.get $l6
                      local.get $l2
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get $l1
                      local.get $l4
                      i32.add
                      local.get $l1
                      i32.store
                      local.get $l4
                      local.get $l1
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get $l1
                      i32.const 255
                      i32.le_u
                      if $I94
                        local.get $l1
                        i32.const -8
                        i32.and
                        i32.const 68652
                        i32.add
                        local.set $l2
                        block $B95 (result i32)
                          i32.const 68612
                          i32.load
                          local.tee $l3
                          i32.const 1
                          local.get $l1
                          i32.const 3
                          i32.shr_u
                          i32.shl
                          local.tee $l1
                          i32.and
                          i32.eqz
                          if $I96
                            i32.const 68612
                            local.get $l1
                            local.get $l3
                            i32.or
                            i32.store
                            local.get $l2
                            br $B95
                          end
                          local.get $l2
                          i32.load offset=8
                        end
                        local.tee $l1
                        local.get $l4
                        i32.store offset=12
                        local.get $l2
                        local.get $l4
                        i32.store offset=8
                        local.get $l4
                        local.get $l2
                        i32.store offset=12
                        local.get $l4
                        local.get $l1
                        i32.store offset=8
                        br $B72
                      end
                      i32.const 31
                      local.set $l2
                      local.get $l1
                      i32.const 16777215
                      i32.le_u
                      if $I97
                        local.get $l1
                        i32.const 38
                        local.get $l1
                        i32.const 8
                        i32.shr_u
                        i32.clz
                        local.tee $l2
                        i32.sub
                        i32.shr_u
                        i32.const 1
                        i32.and
                        local.get $l2
                        i32.const 1
                        i32.shl
                        i32.sub
                        i32.const 62
                        i32.add
                        local.set $l2
                      end
                      local.get $l4
                      local.get $l2
                      i32.store offset=28
                      local.get $l4
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get $l2
                      i32.const 2
                      i32.shl
                      i32.const 68916
                      i32.add
                      local.set $l3
                      i32.const 68616
                      i32.load
                      local.tee $p0
                      i32.const 1
                      local.get $l2
                      i32.shl
                      local.tee $l5
                      i32.and
                      i32.eqz
                      if $I98
                        local.get $l3
                        local.get $l4
                        i32.store
                        i32.const 68616
                        local.get $p0
                        local.get $l5
                        i32.or
                        i32.store
                        local.get $l4
                        local.get $l3
                        i32.store offset=24
                        local.get $l4
                        local.get $l4
                        i32.store offset=8
                        local.get $l4
                        local.get $l4
                        i32.store offset=12
                        br $B72
                      end
                      local.get $l1
                      i32.const 0
                      i32.const 25
                      local.get $l2
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get $l2
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set $l2
                      local.get $l3
                      i32.load
                      local.set $p0
                      loop $L99
                        local.get $p0
                        local.tee $l3
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get $l1
                        i32.eq
                        br_if $B73
                        local.get $l2
                        i32.const 29
                        i32.shr_u
                        local.set $p0
                        local.get $l2
                        i32.const 1
                        i32.shl
                        local.set $l2
                        local.get $l3
                        local.get $p0
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        local.tee $l5
                        i32.load
                        local.tee $p0
                        br_if $L99
                      end
                      local.get $l5
                      local.get $l4
                      i32.store
                      local.get $l4
                      local.get $l3
                      i32.store offset=24
                      local.get $l4
                      local.get $l4
                      i32.store offset=12
                      local.get $l4
                      local.get $l4
                      i32.store offset=8
                      br $B72
                    end
                    local.get $p0
                    i32.const -8
                    local.get $p0
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get $p0
                    i32.const 8
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    local.tee $l1
                    i32.add
                    local.tee $l7
                    local.get $l6
                    i32.const 56
                    i32.sub
                    local.tee $l5
                    local.get $l1
                    i32.sub
                    local.tee $l1
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get $p0
                    local.get $l5
                    i32.add
                    i32.const 56
                    i32.store offset=4
                    local.get $l2
                    local.get $l3
                    i32.const 55
                    local.get $l3
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get $l3
                    i32.const 55
                    i32.sub
                    i32.const 15
                    i32.and
                    select
                    i32.add
                    i32.const 63
                    i32.sub
                    local.tee $l5
                    local.get $l5
                    local.get $l2
                    i32.const 16
                    i32.add
                    i32.lt_u
                    select
                    local.tee $l5
                    i32.const 35
                    i32.store offset=4
                    i32.const 68640
                    i32.const 69100
                    i32.load
                    i32.store
                    i32.const 68624
                    local.get $l1
                    i32.store
                    i32.const 68636
                    local.get $l7
                    i32.store
                    local.get $l5
                    i32.const 16
                    i32.add
                    i32.const 69068
                    i64.load align=4
                    i64.store align=4
                    local.get $l5
                    i32.const 69060
                    i64.load align=4
                    i64.store offset=8 align=4
                    i32.const 69068
                    local.get $l5
                    i32.const 8
                    i32.add
                    i32.store
                    i32.const 69064
                    local.get $l6
                    i32.store
                    i32.const 69060
                    local.get $p0
                    i32.store
                    i32.const 69072
                    i32.const 0
                    i32.store
                    local.get $l5
                    i32.const 36
                    i32.add
                    local.set $l1
                    loop $L100
                      local.get $l1
                      i32.const 7
                      i32.store
                      local.get $l1
                      i32.const 4
                      i32.add
                      local.tee $l1
                      local.get $l3
                      i32.lt_u
                      br_if $L100
                    end
                    local.get $l2
                    local.get $l5
                    i32.eq
                    br_if $B63
                    local.get $l5
                    local.get $l5
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get $l5
                    local.get $l5
                    local.get $l2
                    i32.sub
                    local.tee $p0
                    i32.store
                    local.get $l2
                    local.get $p0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get $p0
                    i32.const 255
                    i32.le_u
                    if $I101
                      local.get $p0
                      i32.const -8
                      i32.and
                      i32.const 68652
                      i32.add
                      local.set $l1
                      block $B102 (result i32)
                        i32.const 68612
                        i32.load
                        local.tee $l3
                        i32.const 1
                        local.get $p0
                        i32.const 3
                        i32.shr_u
                        i32.shl
                        local.tee $p0
                        i32.and
                        i32.eqz
                        if $I103
                          i32.const 68612
                          local.get $p0
                          local.get $l3
                          i32.or
                          i32.store
                          local.get $l1
                          br $B102
                        end
                        local.get $l1
                        i32.load offset=8
                      end
                      local.tee $l3
                      local.get $l2
                      i32.store offset=12
                      local.get $l1
                      local.get $l2
                      i32.store offset=8
                      local.get $l2
                      local.get $l1
                      i32.store offset=12
                      local.get $l2
                      local.get $l3
                      i32.store offset=8
                      br $B63
                    end
                    i32.const 31
                    local.set $l1
                    local.get $p0
                    i32.const 16777215
                    i32.le_u
                    if $I104
                      local.get $p0
                      i32.const 38
                      local.get $p0
                      i32.const 8
                      i32.shr_u
                      i32.clz
                      local.tee $l1
                      i32.sub
                      i32.shr_u
                      i32.const 1
                      i32.and
                      local.get $l1
                      i32.const 1
                      i32.shl
                      i32.sub
                      i32.const 62
                      i32.add
                      local.set $l1
                    end
                    local.get $l2
                    local.get $l1
                    i32.store offset=28
                    local.get $l2
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get $l1
                    i32.const 2
                    i32.shl
                    i32.const 68916
                    i32.add
                    local.set $l3
                    i32.const 68616
                    i32.load
                    local.tee $l5
                    i32.const 1
                    local.get $l1
                    i32.shl
                    local.tee $l6
                    i32.and
                    i32.eqz
                    if $I105
                      local.get $l3
                      local.get $l2
                      i32.store
                      i32.const 68616
                      local.get $l5
                      local.get $l6
                      i32.or
                      i32.store
                      local.get $l2
                      local.get $l3
                      i32.store offset=24
                      local.get $l2
                      local.get $l2
                      i32.store offset=8
                      local.get $l2
                      local.get $l2
                      i32.store offset=12
                      br $B63
                    end
                    local.get $p0
                    i32.const 0
                    i32.const 25
                    local.get $l1
                    i32.const 1
                    i32.shr_u
                    i32.sub
                    local.get $l1
                    i32.const 31
                    i32.eq
                    select
                    i32.shl
                    local.set $l1
                    local.get $l3
                    i32.load
                    local.set $l5
                    loop $L106
                      local.get $l5
                      local.tee $l3
                      i32.load offset=4
                      i32.const -8
                      i32.and
                      local.get $p0
                      i32.eq
                      br_if $B71
                      local.get $l1
                      i32.const 29
                      i32.shr_u
                      local.set $l5
                      local.get $l1
                      i32.const 1
                      i32.shl
                      local.set $l1
                      local.get $l3
                      local.get $l5
                      i32.const 4
                      i32.and
                      i32.add
                      i32.const 16
                      i32.add
                      local.tee $l6
                      i32.load
                      local.tee $l5
                      br_if $L106
                    end
                    local.get $l6
                    local.get $l2
                    i32.store
                    local.get $l2
                    local.get $l3
                    i32.store offset=24
                    local.get $l2
                    local.get $l2
                    i32.store offset=12
                    local.get $l2
                    local.get $l2
                    i32.store offset=8
                    br $B63
                  end
                  local.get $l3
                  i32.load offset=8
                  local.tee $l1
                  local.get $l4
                  i32.store offset=12
                  local.get $l3
                  local.get $l4
                  i32.store offset=8
                  local.get $l4
                  i32.const 0
                  i32.store offset=24
                  local.get $l4
                  local.get $l3
                  i32.store offset=12
                  local.get $l4
                  local.get $l1
                  i32.store offset=8
                end
                local.get $l7
                i32.const 8
                i32.add
                local.set $l1
                br $B4
              end
              local.get $l3
              i32.load offset=8
              local.tee $l1
              local.get $l2
              i32.store offset=12
              local.get $l3
              local.get $l2
              i32.store offset=8
              local.get $l2
              i32.const 0
              i32.store offset=24
              local.get $l2
              local.get $l3
              i32.store offset=12
              local.get $l2
              local.get $l1
              i32.store offset=8
            end
            i32.const 68624
            i32.load
            local.tee $l1
            local.get $l4
            i32.le_u
            br_if $B7
            i32.const 68636
            i32.load
            local.tee $l2
            local.get $l4
            i32.add
            local.tee $l3
            local.get $l1
            local.get $l4
            i32.sub
            local.tee $l1
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 68624
            local.get $l1
            i32.store
            i32.const 68636
            local.get $l3
            i32.store
            local.get $l2
            local.get $l4
            i32.const 3
            i32.or
            i32.store offset=4
            local.get $l2
            i32.const 8
            i32.add
            local.set $l1
            br $B4
          end
          i32.const 0
          local.set $l1
          i32.const 69108
          i32.const 48
          i32.store
          br $B4
        end
        block $B107
          local.get $l7
          i32.eqz
          br_if $B107
          block $B108
            local.get $l5
            i32.load offset=28
            local.tee $l3
            i32.const 2
            i32.shl
            i32.const 68916
            i32.add
            local.tee $l1
            i32.load
            local.get $l5
            i32.eq
            if $I109
              local.get $l1
              local.get $p0
              i32.store
              local.get $p0
              br_if $B108
              i32.const 68616
              local.get $l8
              i32.const -2
              local.get $l3
              i32.rotl
              i32.and
              local.tee $l8
              i32.store
              br $B107
            end
            local.get $l7
            i32.const 16
            i32.const 20
            local.get $l7
            i32.load offset=16
            local.get $l5
            i32.eq
            select
            i32.add
            local.get $p0
            i32.store
            local.get $p0
            i32.eqz
            br_if $B107
          end
          local.get $p0
          local.get $l7
          i32.store offset=24
          local.get $l5
          i32.load offset=16
          local.tee $l1
          if $I110
            local.get $p0
            local.get $l1
            i32.store offset=16
            local.get $l1
            local.get $p0
            i32.store offset=24
          end
          local.get $l5
          i32.const 20
          i32.add
          i32.load
          local.tee $l1
          i32.eqz
          br_if $B107
          local.get $p0
          i32.const 20
          i32.add
          local.get $l1
          i32.store
          local.get $l1
          local.get $p0
          i32.store offset=24
        end
        block $B111
          local.get $l2
          i32.const 15
          i32.le_u
          if $I112
            local.get $l5
            local.get $l2
            local.get $l4
            i32.add
            local.tee $l1
            i32.const 3
            i32.or
            i32.store offset=4
            local.get $l1
            local.get $l5
            i32.add
            local.tee $l1
            local.get $l1
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br $B111
          end
          local.get $l4
          local.get $l5
          i32.add
          local.tee $p0
          local.get $l2
          i32.const 1
          i32.or
          i32.store offset=4
          local.get $l5
          local.get $l4
          i32.const 3
          i32.or
          i32.store offset=4
          local.get $p0
          local.get $l2
          i32.add
          local.get $l2
          i32.store
          local.get $l2
          i32.const 255
          i32.le_u
          if $I113
            local.get $l2
            i32.const -8
            i32.and
            i32.const 68652
            i32.add
            local.set $l1
            block $B114 (result i32)
              i32.const 68612
              i32.load
              local.tee $l3
              i32.const 1
              local.get $l2
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee $l2
              i32.and
              i32.eqz
              if $I115
                i32.const 68612
                local.get $l2
                local.get $l3
                i32.or
                i32.store
                local.get $l1
                br $B114
              end
              local.get $l1
              i32.load offset=8
            end
            local.tee $l2
            local.get $p0
            i32.store offset=12
            local.get $l1
            local.get $p0
            i32.store offset=8
            local.get $p0
            local.get $l1
            i32.store offset=12
            local.get $p0
            local.get $l2
            i32.store offset=8
            br $B111
          end
          i32.const 31
          local.set $l1
          local.get $l2
          i32.const 16777215
          i32.le_u
          if $I116
            local.get $l2
            i32.const 38
            local.get $l2
            i32.const 8
            i32.shr_u
            i32.clz
            local.tee $l1
            i32.sub
            i32.shr_u
            i32.const 1
            i32.and
            local.get $l1
            i32.const 1
            i32.shl
            i32.sub
            i32.const 62
            i32.add
            local.set $l1
          end
          local.get $p0
          local.get $l1
          i32.store offset=28
          local.get $p0
          i64.const 0
          i64.store offset=16 align=4
          local.get $l1
          i32.const 2
          i32.shl
          i32.const 68916
          i32.add
          local.set $l3
          local.get $l8
          i32.const 1
          local.get $l1
          i32.shl
          local.tee $l4
          i32.and
          i32.eqz
          if $I117
            local.get $l3
            local.get $p0
            i32.store
            i32.const 68616
            local.get $l4
            local.get $l8
            i32.or
            i32.store
            local.get $p0
            local.get $l3
            i32.store offset=24
            local.get $p0
            local.get $p0
            i32.store offset=8
            local.get $p0
            local.get $p0
            i32.store offset=12
            br $B111
          end
          local.get $l2
          i32.const 0
          i32.const 25
          local.get $l1
          i32.const 1
          i32.shr_u
          i32.sub
          local.get $l1
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set $l1
          local.get $l3
          i32.load
          local.set $l4
          block $B118
            loop $L119
              local.get $l4
              local.tee $l3
              i32.load offset=4
              i32.const -8
              i32.and
              local.get $l2
              i32.eq
              br_if $B118
              local.get $l1
              i32.const 29
              i32.shr_u
              local.set $l4
              local.get $l1
              i32.const 1
              i32.shl
              local.set $l1
              local.get $l3
              local.get $l4
              i32.const 4
              i32.and
              i32.add
              i32.const 16
              i32.add
              local.tee $l6
              i32.load
              local.tee $l4
              br_if $L119
            end
            local.get $l6
            local.get $p0
            i32.store
            local.get $p0
            local.get $l3
            i32.store offset=24
            local.get $p0
            local.get $p0
            i32.store offset=12
            local.get $p0
            local.get $p0
            i32.store offset=8
            br $B111
          end
          local.get $l3
          i32.load offset=8
          local.tee $l1
          local.get $p0
          i32.store offset=12
          local.get $l3
          local.get $p0
          i32.store offset=8
          local.get $p0
          i32.const 0
          i32.store offset=24
          local.get $p0
          local.get $l3
          i32.store offset=12
          local.get $p0
          local.get $l1
          i32.store offset=8
        end
        local.get $l5
        i32.const 8
        i32.add
        local.set $l1
        br $B4
      end
      block $B120
        local.get $l10
        i32.eqz
        br_if $B120
        block $B121
          local.get $p0
          i32.load offset=28
          local.tee $l3
          i32.const 2
          i32.shl
          i32.const 68916
          i32.add
          local.tee $l1
          i32.load
          local.get $p0
          i32.eq
          if $I122
            local.get $l1
            local.get $l5
            i32.store
            local.get $l5
            br_if $B121
            i32.const 68616
            local.get $l8
            i32.const -2
            local.get $l3
            i32.rotl
            i32.and
            i32.store
            br $B120
          end
          local.get $l10
          i32.const 16
          i32.const 20
          local.get $l10
          i32.load offset=16
          local.get $p0
          i32.eq
          select
          i32.add
          local.get $l5
          i32.store
          local.get $l5
          i32.eqz
          br_if $B120
        end
        local.get $l5
        local.get $l10
        i32.store offset=24
        local.get $p0
        i32.load offset=16
        local.tee $l1
        if $I123
          local.get $l5
          local.get $l1
          i32.store offset=16
          local.get $l1
          local.get $l5
          i32.store offset=24
        end
        local.get $p0
        i32.const 20
        i32.add
        i32.load
        local.tee $l1
        i32.eqz
        br_if $B120
        local.get $l5
        i32.const 20
        i32.add
        local.get $l1
        i32.store
        local.get $l1
        local.get $l5
        i32.store offset=24
      end
      block $B124
        local.get $l2
        i32.const 15
        i32.le_u
        if $I125
          local.get $p0
          local.get $l2
          local.get $l4
          i32.add
          local.tee $l1
          i32.const 3
          i32.or
          i32.store offset=4
          local.get $p0
          local.get $l1
          i32.add
          local.tee $l1
          local.get $l1
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br $B124
        end
        local.get $p0
        local.get $l4
        i32.add
        local.tee $l3
        local.get $l2
        i32.const 1
        i32.or
        i32.store offset=4
        local.get $p0
        local.get $l4
        i32.const 3
        i32.or
        i32.store offset=4
        local.get $l2
        local.get $l3
        i32.add
        local.get $l2
        i32.store
        local.get $l9
        if $I126
          local.get $l9
          i32.const -8
          i32.and
          i32.const 68652
          i32.add
          local.set $l4
          i32.const 68632
          i32.load
          local.set $l1
          block $B127 (result i32)
            i32.const 1
            local.get $l9
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee $l5
            local.get $l6
            i32.and
            i32.eqz
            if $I128
              i32.const 68612
              local.get $l5
              local.get $l6
              i32.or
              i32.store
              local.get $l4
              br $B127
            end
            local.get $l4
            i32.load offset=8
          end
          local.tee $l5
          local.get $l1
          i32.store offset=12
          local.get $l4
          local.get $l1
          i32.store offset=8
          local.get $l1
          local.get $l4
          i32.store offset=12
          local.get $l1
          local.get $l5
          i32.store offset=8
        end
        i32.const 68632
        local.get $l3
        i32.store
        i32.const 68620
        local.get $l2
        i32.store
      end
      local.get $p0
      i32.const 8
      i32.add
      local.set $l1
    end
    local.get $l11
    i32.const 16
    i32.add
    global.set $g0
    local.get $l1)
  (func $f9 (type $t3) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    block $B0
      local.get $p0
      local.tee $l3
      i32.eqz
      br_if $B0
      local.get $l3
      i32.const 8
      i32.sub
      local.tee $l2
      local.get $l3
      i32.const 4
      i32.sub
      i32.load
      local.tee $l1
      i32.const -8
      i32.and
      local.tee $l3
      i32.add
      local.set $l5
      block $B1
        local.get $l1
        i32.const 1
        i32.and
        br_if $B1
        local.get $l1
        i32.const 3
        i32.and
        i32.eqz
        br_if $B0
        local.get $l2
        local.get $l2
        i32.load
        local.tee $l1
        i32.sub
        local.tee $l2
        i32.const 68628
        i32.load
        i32.lt_u
        br_if $B0
        local.get $l1
        local.get $l3
        i32.add
        local.set $l3
        i32.const 68632
        i32.load
        local.get $l2
        i32.ne
        if $I2
          local.get $l1
          i32.const 255
          i32.le_u
          if $I3
            local.get $l2
            i32.load offset=8
            local.tee $l4
            local.get $l1
            i32.const 3
            i32.shr_u
            local.tee $l7
            i32.const 3
            i32.shl
            i32.const 68652
            i32.add
            i32.eq
            drop
            local.get $l4
            local.get $l2
            i32.load offset=12
            local.tee $l1
            i32.eq
            if $I4
              i32.const 68612
              i32.const 68612
              i32.load
              i32.const -2
              local.get $l7
              i32.rotl
              i32.and
              i32.store
              br $B1
            end
            local.get $l1
            local.get $l4
            i32.store offset=8
            local.get $l4
            local.get $l1
            i32.store offset=12
            br $B1
          end
          local.get $l2
          i32.load offset=24
          local.set $l6
          block $B5
            local.get $l2
            local.get $l2
            i32.load offset=12
            local.tee $p0
            i32.ne
            if $I6
              local.get $p0
              local.get $l2
              i32.load offset=8
              local.tee $l1
              i32.store offset=8
              local.get $l1
              local.get $p0
              i32.store offset=12
              br $B5
            end
            block $B7
              local.get $l2
              i32.const 20
              i32.add
              local.tee $l1
              i32.load
              local.tee $l4
              br_if $B7
              local.get $l2
              i32.const 16
              i32.add
              local.tee $l1
              i32.load
              local.tee $l4
              br_if $B7
              i32.const 0
              local.set $p0
              br $B5
            end
            loop $L8
              local.get $l1
              local.set $l7
              local.get $l4
              local.tee $p0
              i32.const 20
              i32.add
              local.tee $l1
              i32.load
              local.tee $l4
              br_if $L8
              local.get $p0
              i32.const 16
              i32.add
              local.set $l1
              local.get $p0
              i32.load offset=16
              local.tee $l4
              br_if $L8
            end
            local.get $l7
            i32.const 0
            i32.store
          end
          local.get $l6
          i32.eqz
          br_if $B1
          block $B9
            local.get $l2
            i32.load offset=28
            local.tee $l4
            i32.const 2
            i32.shl
            i32.const 68916
            i32.add
            local.tee $l1
            i32.load
            local.get $l2
            i32.eq
            if $I10
              local.get $l1
              local.get $p0
              i32.store
              local.get $p0
              br_if $B9
              i32.const 68616
              i32.const 68616
              i32.load
              i32.const -2
              local.get $l4
              i32.rotl
              i32.and
              i32.store
              br $B1
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
            local.get $p0
            i32.store
            local.get $p0
            i32.eqz
            br_if $B1
          end
          local.get $p0
          local.get $l6
          i32.store offset=24
          local.get $l2
          i32.load offset=16
          local.tee $l1
          if $I11
            local.get $p0
            local.get $l1
            i32.store offset=16
            local.get $l1
            local.get $p0
            i32.store offset=24
          end
          local.get $l2
          i32.load offset=20
          local.tee $l1
          i32.eqz
          br_if $B1
          local.get $p0
          i32.const 20
          i32.add
          local.get $l1
          i32.store
          local.get $l1
          local.get $p0
          i32.store offset=24
          br $B1
        end
        local.get $l5
        i32.load offset=4
        local.tee $l1
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if $B1
        local.get $l5
        local.get $l1
        i32.const -2
        i32.and
        i32.store offset=4
        i32.const 68620
        local.get $l3
        i32.store
        local.get $l2
        local.get $l3
        i32.add
        local.get $l3
        i32.store
        local.get $l2
        local.get $l3
        i32.const 1
        i32.or
        i32.store offset=4
        br $B0
      end
      local.get $l2
      local.get $l5
      i32.ge_u
      br_if $B0
      local.get $l5
      i32.load offset=4
      local.tee $l1
      i32.const 1
      i32.and
      i32.eqz
      br_if $B0
      block $B12
        local.get $l1
        i32.const 2
        i32.and
        i32.eqz
        if $I13
          i32.const 68636
          i32.load
          local.get $l5
          i32.eq
          if $I14
            i32.const 68636
            local.get $l2
            i32.store
            i32.const 68624
            i32.const 68624
            i32.load
            local.get $l3
            i32.add
            local.tee $l3
            i32.store
            local.get $l2
            local.get $l3
            i32.const 1
            i32.or
            i32.store offset=4
            local.get $l2
            i32.const 68632
            i32.load
            i32.ne
            br_if $B0
            i32.const 68620
            i32.const 0
            i32.store
            i32.const 68632
            i32.const 0
            i32.store
            br $B0
          end
          i32.const 68632
          i32.load
          local.get $l5
          i32.eq
          if $I15
            i32.const 68632
            local.get $l2
            i32.store
            i32.const 68620
            i32.const 68620
            i32.load
            local.get $l3
            i32.add
            local.tee $l3
            i32.store
            local.get $l2
            local.get $l3
            i32.const 1
            i32.or
            i32.store offset=4
            local.get $l2
            local.get $l3
            i32.add
            local.get $l3
            i32.store
            br $B0
          end
          local.get $l1
          i32.const -8
          i32.and
          local.get $l3
          i32.add
          local.set $l3
          block $B16
            local.get $l1
            i32.const 255
            i32.le_u
            if $I17
              local.get $l5
              i32.load offset=8
              local.tee $l4
              local.get $l1
              i32.const 3
              i32.shr_u
              local.tee $l7
              i32.const 3
              i32.shl
              i32.const 68652
              i32.add
              i32.eq
              drop
              local.get $l4
              local.get $l5
              i32.load offset=12
              local.tee $l1
              i32.eq
              if $I18
                i32.const 68612
                i32.const 68612
                i32.load
                i32.const -2
                local.get $l7
                i32.rotl
                i32.and
                i32.store
                br $B16
              end
              local.get $l1
              local.get $l4
              i32.store offset=8
              local.get $l4
              local.get $l1
              i32.store offset=12
              br $B16
            end
            local.get $l5
            i32.load offset=24
            local.set $l6
            block $B19
              local.get $l5
              local.get $l5
              i32.load offset=12
              local.tee $p0
              i32.ne
              if $I20
                local.get $l5
                i32.load offset=8
                local.tee $l1
                i32.const 68628
                i32.load
                i32.lt_u
                drop
                local.get $p0
                local.get $l1
                i32.store offset=8
                local.get $l1
                local.get $p0
                i32.store offset=12
                br $B19
              end
              block $B21
                local.get $l5
                i32.const 20
                i32.add
                local.tee $l1
                i32.load
                local.tee $l4
                br_if $B21
                local.get $l5
                i32.const 16
                i32.add
                local.tee $l1
                i32.load
                local.tee $l4
                br_if $B21
                i32.const 0
                local.set $p0
                br $B19
              end
              loop $L22
                local.get $l1
                local.set $l7
                local.get $l4
                local.tee $p0
                i32.const 20
                i32.add
                local.tee $l1
                i32.load
                local.tee $l4
                br_if $L22
                local.get $p0
                i32.const 16
                i32.add
                local.set $l1
                local.get $p0
                i32.load offset=16
                local.tee $l4
                br_if $L22
              end
              local.get $l7
              i32.const 0
              i32.store
            end
            local.get $l6
            i32.eqz
            br_if $B16
            block $B23
              local.get $l5
              i32.load offset=28
              local.tee $l4
              i32.const 2
              i32.shl
              i32.const 68916
              i32.add
              local.tee $l1
              i32.load
              local.get $l5
              i32.eq
              if $I24
                local.get $l1
                local.get $p0
                i32.store
                local.get $p0
                br_if $B23
                i32.const 68616
                i32.const 68616
                i32.load
                i32.const -2
                local.get $l4
                i32.rotl
                i32.and
                i32.store
                br $B16
              end
              local.get $l6
              i32.const 16
              i32.const 20
              local.get $l6
              i32.load offset=16
              local.get $l5
              i32.eq
              select
              i32.add
              local.get $p0
              i32.store
              local.get $p0
              i32.eqz
              br_if $B16
            end
            local.get $p0
            local.get $l6
            i32.store offset=24
            local.get $l5
            i32.load offset=16
            local.tee $l1
            if $I25
              local.get $p0
              local.get $l1
              i32.store offset=16
              local.get $l1
              local.get $p0
              i32.store offset=24
            end
            local.get $l5
            i32.load offset=20
            local.tee $l1
            i32.eqz
            br_if $B16
            local.get $p0
            i32.const 20
            i32.add
            local.get $l1
            i32.store
            local.get $l1
            local.get $p0
            i32.store offset=24
          end
          local.get $l2
          local.get $l3
          i32.add
          local.get $l3
          i32.store
          local.get $l2
          local.get $l3
          i32.const 1
          i32.or
          i32.store offset=4
          local.get $l2
          i32.const 68632
          i32.load
          i32.ne
          br_if $B12
          i32.const 68620
          local.get $l3
          i32.store
          br $B0
        end
        local.get $l5
        local.get $l1
        i32.const -2
        i32.and
        i32.store offset=4
        local.get $l2
        local.get $l3
        i32.add
        local.get $l3
        i32.store
        local.get $l2
        local.get $l3
        i32.const 1
        i32.or
        i32.store offset=4
      end
      local.get $l3
      i32.const 255
      i32.le_u
      if $I26
        local.get $l3
        i32.const -8
        i32.and
        i32.const 68652
        i32.add
        local.set $l1
        block $B27 (result i32)
          i32.const 68612
          i32.load
          local.tee $l4
          i32.const 1
          local.get $l3
          i32.const 3
          i32.shr_u
          i32.shl
          local.tee $l3
          i32.and
          i32.eqz
          if $I28
            i32.const 68612
            local.get $l3
            local.get $l4
            i32.or
            i32.store
            local.get $l1
            br $B27
          end
          local.get $l1
          i32.load offset=8
        end
        local.tee $l3
        local.get $l2
        i32.store offset=12
        local.get $l1
        local.get $l2
        i32.store offset=8
        local.get $l2
        local.get $l1
        i32.store offset=12
        local.get $l2
        local.get $l3
        i32.store offset=8
        br $B0
      end
      i32.const 31
      local.set $l1
      local.get $l3
      i32.const 16777215
      i32.le_u
      if $I29
        local.get $l3
        i32.const 38
        local.get $l3
        i32.const 8
        i32.shr_u
        i32.clz
        local.tee $l1
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        local.get $l1
        i32.const 1
        i32.shl
        i32.sub
        i32.const 62
        i32.add
        local.set $l1
      end
      local.get $l2
      local.get $l1
      i32.store offset=28
      local.get $l2
      i64.const 0
      i64.store offset=16 align=4
      local.get $l1
      i32.const 2
      i32.shl
      i32.const 68916
      i32.add
      local.set $l4
      block $B30
        i32.const 68616
        i32.load
        local.tee $p0
        i32.const 1
        local.get $l1
        i32.shl
        local.tee $l5
        i32.and
        i32.eqz
        if $I31
          local.get $l4
          local.get $l2
          i32.store
          i32.const 68616
          local.get $p0
          local.get $l5
          i32.or
          i32.store
          local.get $l2
          local.get $l4
          i32.store offset=24
          local.get $l2
          local.get $l2
          i32.store offset=8
          local.get $l2
          local.get $l2
          i32.store offset=12
          br $B30
        end
        local.get $l3
        i32.const 0
        i32.const 25
        local.get $l1
        i32.const 1
        i32.shr_u
        i32.sub
        local.get $l1
        i32.const 31
        i32.eq
        select
        i32.shl
        local.set $l1
        local.get $l4
        i32.load
        local.set $p0
        block $B32
          loop $L33
            local.get $p0
            local.tee $l4
            i32.load offset=4
            i32.const -8
            i32.and
            local.get $l3
            i32.eq
            br_if $B32
            local.get $l1
            i32.const 29
            i32.shr_u
            local.set $p0
            local.get $l1
            i32.const 1
            i32.shl
            local.set $l1
            local.get $l4
            local.get $p0
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee $l5
            i32.load
            local.tee $p0
            br_if $L33
          end
          local.get $l5
          local.get $l2
          i32.store
          local.get $l2
          local.get $l4
          i32.store offset=24
          local.get $l2
          local.get $l2
          i32.store offset=12
          local.get $l2
          local.get $l2
          i32.store offset=8
          br $B30
        end
        local.get $l4
        i32.load offset=8
        local.tee $l3
        local.get $l2
        i32.store offset=12
        local.get $l4
        local.get $l2
        i32.store offset=8
        local.get $l2
        i32.const 0
        i32.store offset=24
        local.get $l2
        local.get $l4
        i32.store offset=12
        local.get $l2
        local.get $l3
        i32.store offset=8
      end
      i32.const 68644
      i32.const 68644
      i32.load
      i32.const 1
      i32.sub
      local.tee $l2
      i32.const -1
      local.get $l2
      select
      i32.store
    end)
  (func $f10 (type $t3) (param $p0 i32)
    local.get $p0
    call $f11
    unreachable)
  (func $f11 (type $t3) (param $p0 i32)
    local.get $p0
    call $wasi_snapshot_preview1.proc_exit
    unreachable)
  (func $f12 (type $t2) (param $p0 i32) (result i32)
    local.get $p0
    i32.eqz
    if $I0
      memory.size
      i32.const 16
      i32.shl
      return
    end
    block $B1
      local.get $p0
      i32.const 65535
      i32.and
      br_if $B1
      local.get $p0
      i32.const 0
      i32.lt_s
      br_if $B1
      local.get $p0
      i32.const 16
      i32.shr_u
      memory.grow
      local.tee $p0
      i32.const -1
      i32.eq
      if $I2
        i32.const 69108
        i32.const 48
        i32.store
        i32.const -1
        return
      end
      local.get $p0
      i32.const 16
      i32.shl
      return
    end
    unreachable)
  (func $f13 (type $t9) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
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
    i32.const 192
    i32.add
    i64.const 0
    i64.store
    local.get $l2
    i32.const 184
    i32.add
    i64.const 0
    i64.store
    local.get $l2
    i32.const 176
    i32.add
    i64.const 0
    i64.store
    local.get $l2
    i64.const 0
    i64.store offset=168
    local.get $l2
    i64.const 0
    i64.store offset=160
    local.get $l2
    local.get $p1
    i32.store offset=200
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
    call $f25
    i32.const 0
    i32.lt_s
    if $I0 (result i32)
      i32.const -1
    else
      i32.const 68360
      i32.load
      local.set $l5
      i32.const 68420
      i32.load
      i32.const 0
      i32.le_s
      if $I1
        i32.const 68360
        local.get $l5
        i32.const -33
        i32.and
        i32.store
      end
      block $B2 (result i32)
        block $B3
          block $B4
            i32.const 68404
            i32.load
            i32.eqz
            if $I5
              i32.const 68404
              i32.const 80
              i32.store
              i32.const 68384
              i32.const 0
              i32.store
              i32.const 68376
              i64.const 0
              i64.store
              i32.const 68400
              i32.load
              local.set $l3
              i32.const 68400
              local.get $l2
              i32.store
              br $B4
            end
            i32.const 68376
            i32.load
            br_if $B3
          end
          i32.const -1
          i32.const 68360
          call $f14
          br_if $B2
          drop
        end
        i32.const 68360
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
        call $f25
      end
      local.set $p1
      local.get $l5
      i32.const 32
      i32.and
      local.set $p0
      local.get $l3
      if $I6 (result i32)
        i32.const 68360
        i32.const 0
        i32.const 0
        i32.const 68392
        i32.load
        call_indirect $T0 (type $t0)
        drop
        i32.const 68404
        i32.const 0
        i32.store
        i32.const 68400
        local.get $l3
        i32.store
        i32.const 68384
        i32.const 0
        i32.store
        i32.const 68380
        i32.load
        drop
        i32.const 68376
        i64.const 0
        i64.store
        i32.const 0
      else
        local.get $p1
      end
      drop
      i32.const 68360
      i32.const 68360
      i32.load
      local.get $p0
      i32.or
      i32.store
      i32.const 0
    end
    drop
    local.get $l2
    i32.const 208
    i32.add
    global.set $g0
    local.get $l4
    i32.const 16
    i32.add
    global.set $g0)
  (func $f14 (type $t2) (param $p0 i32) (result i32)
    (local $l1 i32)
    local.get $p0
    local.get $p0
    i32.load offset=60
    local.tee $l1
    i32.const 1
    i32.sub
    local.get $l1
    i32.or
    i32.store offset=60
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
    i32.load offset=40
    local.tee $l1
    i32.store offset=24
    local.get $p0
    local.get $l1
    i32.store offset=20
    local.get $p0
    local.get $l1
    local.get $p0
    i32.load offset=44
    i32.add
    i32.store offset=16
    i32.const 0)
  (func $f15 (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    block $B0
      local.get $p1
      local.get $p2
      i32.load offset=16
      local.tee $l3
      if $I1 (result i32)
        local.get $l3
      else
        local.get $p2
        call $f14
        br_if $B0
        local.get $p2
        i32.load offset=16
      end
      local.get $p2
      i32.load offset=20
      local.tee $l4
      i32.sub
      i32.gt_u
      if $I2
        local.get $p2
        local.get $p0
        local.get $p1
        local.get $p2
        i32.load offset=32
        call_indirect $T0 (type $t0)
        drop
        return
      end
      block $B3
        local.get $p2
        i32.load offset=64
        i32.const 0
        i32.lt_s
        br_if $B3
        local.get $p0
        local.set $l5
        i32.const 0
        local.set $l3
        loop $L4
          local.get $p1
          local.get $l3
          i32.eq
          br_if $B3
          local.get $l3
          i32.const 1
          i32.add
          local.set $l3
          local.get $l5
          i32.const 1
          i32.sub
          local.tee $l5
          local.get $p1
          i32.add
          local.tee $l6
          i32.load8_u
          i32.const 10
          i32.ne
          br_if $L4
        end
        local.get $p2
        local.get $p0
        local.get $p1
        local.get $l3
        i32.sub
        i32.const 1
        i32.add
        local.tee $p0
        local.get $p2
        i32.load offset=32
        call_indirect $T0 (type $t0)
        local.get $p0
        i32.lt_u
        br_if $B0
        local.get $l3
        i32.const 1
        i32.sub
        local.set $p1
        local.get $l6
        i32.const 1
        i32.add
        local.set $p0
        local.get $p2
        i32.load offset=20
        local.set $l4
      end
      local.get $l4
      local.get $p0
      local.get $p1
      call $f28
      local.get $p2
      local.get $p2
      i32.load offset=20
      local.get $p1
      i32.add
      i32.store offset=20
    end)
  (func $f16 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    i32.const -1
    i32.const 0
    block $B0 (result i32)
      block $B1
        block $B2
          local.get $p0
          local.tee $l3
          i32.const 3
          i32.and
          i32.eqz
          br_if $B2
          local.get $l3
          i32.load8_u
          i32.eqz
          br_if $B1
          local.get $l3
          i32.const 1
          i32.add
          local.tee $p0
          i32.const 3
          i32.and
          i32.eqz
          br_if $B2
          local.get $p0
          i32.load8_u
          i32.eqz
          br_if $B1
          local.get $l3
          i32.const 2
          i32.add
          local.tee $p0
          i32.const 3
          i32.and
          i32.eqz
          br_if $B2
          local.get $p0
          i32.load8_u
          i32.eqz
          br_if $B1
          local.get $l3
          i32.const 3
          i32.add
          local.tee $p0
          i32.const 3
          i32.and
          i32.eqz
          br_if $B2
          local.get $p0
          i32.load8_u
          i32.eqz
          br_if $B1
          local.get $l3
          i32.const 4
          i32.add
          local.set $p0
        end
        local.get $p0
        i32.const 5
        i32.sub
        local.set $p0
        loop $L3
          local.get $p0
          i32.const 5
          i32.add
          local.set $l2
          local.get $p0
          i32.const 4
          i32.add
          local.set $p0
          local.get $l2
          i32.load
          local.tee $l2
          i32.const -1
          i32.xor
          local.get $l2
          i32.const 16843009
          i32.sub
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if $L3
        end
        loop $L4
          local.get $p0
          i32.const 1
          i32.add
          local.tee $p0
          i32.load8_u
          br_if $L4
        end
      end
      local.get $p0
      local.get $l3
      i32.sub
      local.set $p0
      block $B5
        local.get $p0
        local.get $p1
        i32.load offset=16
        local.tee $l2
        if $I6 (result i32)
          local.get $l2
        else
          local.get $p1
          call $f14
          br_if $B5
          local.get $p1
          i32.load offset=16
        end
        local.get $p1
        i32.load offset=20
        local.tee $l6
        i32.sub
        i32.gt_u
        if $I7
          local.get $p1
          local.get $l3
          local.get $p0
          local.get $p1
          i32.load offset=32
          call_indirect $T0 (type $t0)
          local.set $l4
          br $B5
        end
        block $B8 (result i32)
          local.get $p0
          local.get $p1
          i32.load offset=64
          i32.const 0
          i32.lt_s
          br_if $B8
          drop
          local.get $p0
          local.get $l3
          i32.add
          local.set $l4
          i32.const 0
          local.set $l2
          loop $L9
            local.get $p0
            local.get $p0
            local.get $l2
            i32.add
            i32.eqz
            br_if $B8
            drop
            local.get $l2
            i32.const 1
            i32.sub
            local.tee $l2
            local.get $l4
            i32.add
            local.tee $l7
            i32.load8_u
            i32.const 10
            i32.ne
            br_if $L9
          end
          local.get $p1
          local.get $l3
          local.get $p0
          local.get $l2
          i32.add
          i32.const 1
          i32.add
          local.tee $l5
          local.get $p1
          i32.load offset=32
          call_indirect $T0 (type $t0)
          local.tee $l4
          local.get $l5
          i32.lt_u
          br_if $B5
          local.get $l7
          i32.const 1
          i32.add
          local.set $l3
          local.get $p1
          i32.load offset=20
          local.set $l6
          local.get $l2
          i32.const -1
          i32.xor
        end
        local.set $l2
        local.get $l6
        local.get $l3
        local.get $l2
        call $f28
        local.get $p1
        local.get $p1
        i32.load offset=20
        local.get $l2
        i32.add
        i32.store offset=20
        local.get $l2
        local.get $l5
        i32.add
        local.set $l4
      end
      local.get $p0
      local.get $p0
      local.get $l4
      i32.eq
      br_if $B0
      drop
      local.get $l4
    end
    local.get $p0
    i32.ne
    select)
  (func $f17 (type $t3) (param $p0 i32)
    (local $l1 i32)
    local.get $p0
    i32.const 68360
    call $f16
    i32.const 0
    i32.lt_s
    if $I0
      return
    end
    block $B1
      i32.const 68424
      i32.load
      i32.const 10
      i32.eq
      br_if $B1
      i32.const 68380
      i32.load
      local.tee $p0
      i32.const 68376
      i32.load
      i32.eq
      br_if $B1
      i32.const 68380
      local.get $p0
      i32.const 1
      i32.add
      i32.store
      local.get $p0
      i32.const 10
      i32.store8
      return
    end
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $p0
    global.set $g0
    local.get $p0
    i32.const 10
    i32.store8 offset=15
    block $B2
      block $B3
        i32.const 68376
        i32.load
        local.tee $l1
        if $I4 (result i32)
          local.get $l1
        else
          i32.const 68360
          call $f14
          br_if $B2
          i32.const 68376
          i32.load
        end
        i32.const 68380
        i32.load
        local.tee $l1
        i32.eq
        br_if $B3
        i32.const 68424
        i32.load
        i32.const 10
        i32.eq
        br_if $B3
        i32.const 68380
        local.get $l1
        i32.const 1
        i32.add
        i32.store
        local.get $l1
        i32.const 10
        i32.store8
        br $B2
      end
      i32.const 68360
      local.get $p0
      i32.const 15
      i32.add
      i32.const 1
      i32.const 68392
      i32.load
      call_indirect $T0 (type $t0)
      i32.const 1
      i32.ne
      br_if $B2
      local.get $p0
      i32.load8_u offset=15
      drop
    end
    local.get $p0
    i32.const 16
    i32.add
    global.set $g0)
  (func $f18 (type $t2) (param $p0 i32) (result i32)
    local.get $p0
    i32.load offset=56
    call $wasi_snapshot_preview1.fd_close
    i32.const 65535
    i32.and
    local.tee $p0
    if $I0 (result i32)
      i32.const 69108
      local.get $p0
      i32.store
      i32.const -1
    else
      i32.const 0
    end)
  (func $f19 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    i32.const -1
    local.set $l4
    block $B0
      local.get $p2
      i32.const 0
      i32.lt_s
      if $I1
        i32.const 69108
        i32.const 28
        i32.store
        br $B0
      end
      local.get $p0
      local.get $p1
      local.get $p2
      local.get $l3
      i32.const 12
      i32.add
      call $wasi_snapshot_preview1.fd_write
      i32.const 65535
      i32.and
      local.tee $p2
      if $I2
        i32.const 69108
        local.get $p2
        i32.store
        br $B0
      end
      local.get $l3
      i32.load offset=12
      local.set $l4
    end
    local.get $l3
    i32.const 16
    i32.add
    global.set $g0
    local.get $l4)
  (func $f20 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p2
    i32.store offset=12
    local.get $l3
    local.get $p1
    i32.store offset=8
    local.get $l3
    local.get $p0
    i32.load offset=24
    local.tee $p1
    i32.store
    local.get $l3
    local.get $p0
    i32.load offset=20
    local.get $p1
    i32.sub
    local.tee $p1
    i32.store offset=4
    i32.const 2
    local.set $l5
    block $B0 (result i32)
      local.get $p1
      local.get $p2
      i32.add
      local.tee $l8
      local.get $p0
      i32.load offset=56
      local.get $l3
      i32.const 2
      call $f19
      local.tee $p1
      i32.ne
      if $I1
        local.get $l3
        local.set $l4
        loop $L2
          local.get $p1
          i32.const 0
          i32.lt_s
          if $I3
            local.get $p0
            i32.const 0
            i32.store offset=24
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
            local.get $l5
            i32.const 2
            i32.eq
            br_if $B0
            drop
            local.get $p2
            local.get $l4
            i32.load offset=4
            i32.sub
            br $B0
          end
          local.get $l4
          local.get $p1
          local.get $l4
          i32.load offset=4
          local.tee $l6
          i32.gt_u
          local.tee $l7
          i32.const 3
          i32.shl
          i32.add
          local.tee $l9
          local.get $p1
          local.get $l6
          i32.const 0
          local.get $l7
          select
          i32.sub
          local.tee $l6
          local.get $l9
          i32.load
          i32.add
          i32.store
          local.get $l4
          i32.const 12
          i32.const 4
          local.get $l7
          select
          i32.add
          local.tee $l4
          local.get $l4
          i32.load
          local.get $l6
          i32.sub
          i32.store
          local.get $l8
          local.get $p1
          i32.sub
          local.tee $l8
          local.get $p0
          i32.load offset=56
          local.get $l9
          local.tee $l4
          local.get $l5
          local.get $l7
          i32.sub
          local.tee $l5
          call $f19
          local.tee $p1
          i32.ne
          br_if $L2
        end
      end
      local.get $p0
      local.get $p0
      i32.load offset=40
      local.tee $p1
      i32.store offset=24
      local.get $p0
      local.get $p1
      i32.store offset=20
      local.get $p0
      local.get $p1
      local.get $p0
      i32.load offset=44
      i32.add
      i32.store offset=16
      local.get $p2
    end
    local.set $p1
    local.get $l3
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (func $f21 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32)
    local.get $p0
    i32.const 1
    i32.store offset=32
    block $B0
      local.get $p0
      i32.load8_u
      i32.const 64
      i32.and
      br_if $B0
      local.get $p0
      i32.load offset=56
      local.set $l3
      global.get $g0
      i32.const 32
      i32.sub
      local.tee $l4
      global.set $g0
      block $B1 (result i32)
        block $B2
          local.get $l3
          local.get $l4
          i32.const 8
          i32.add
          call $wasi_snapshot_preview1.fd_fdstat_get
          i32.const 65535
          i32.and
          local.tee $l3
          br_if $B2
          i32.const 59
          local.set $l3
          local.get $l4
          i32.load8_u offset=8
          i32.const 2
          i32.ne
          br_if $B2
          local.get $l4
          i32.load8_u offset=16
          i32.const 36
          i32.and
          br_if $B2
          i32.const 1
          br $B1
        end
        i32.const 69108
        local.get $l3
        i32.store
        i32.const 0
      end
      local.set $l3
      local.get $l4
      i32.const 32
      i32.add
      global.set $g0
      local.get $l3
      br_if $B0
      local.get $p0
      i32.const -1
      i32.store offset=64
    end
    local.get $p0
    local.get $p1
    local.get $p2
    call $f20)
  (func $f22 (type $t4) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    (local $l3 i32)
    local.get $p0
    i32.load offset=56
    local.set $l3
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $p0
    global.set $g0
    block $B0 (result i64)
      local.get $l3
      local.get $p1
      local.get $p2
      i32.const 255
      i32.and
      local.get $p0
      i32.const 8
      i32.add
      call $wasi_snapshot_preview1.fd_seek
      i32.const 65535
      i32.and
      local.tee $p2
      if $I1
        i32.const 69108
        i32.const 70
        local.get $p2
        local.get $p2
        i32.const 76
        i32.eq
        select
        i32.store
        i64.const -1
        br $B0
      end
      local.get $p0
      i64.load offset=8
    end
    local.set $p1
    local.get $p0
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (func $f23 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.eqz
    if $I0
      i32.const 0
      return
    end
    local.get $p0
    if $I1 (result i32)
      block $B2 (result i32)
        local.get $p1
        i32.const 127
        i32.le_u
        if $I3
          local.get $p0
          local.get $p1
          i32.store8
          i32.const 1
          br $B2
        end
        block $B4
          i32.const 70152
          i32.load
          i32.eqz
          if $I5
            local.get $p1
            i32.const -128
            i32.and
            i32.const 57216
            i32.ne
            if $I6
              i32.const 69108
              i32.const 25
              i32.store
              br $B4
            end
            local.get $p0
            local.get $p1
            i32.store8
            i32.const 1
            br $B2
          end
          local.get $p1
          i32.const 2047
          i32.le_u
          if $I7
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
            br $B2
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
          if $I8
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
            br $B2
          end
          local.get $p1
          i32.const 65536
          i32.sub
          i32.const 1048575
          i32.le_u
          if $I9
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
            br $B2
          end
          i32.const 69108
          i32.const 25
          i32.store
        end
        i32.const -1
      end
    else
      i32.const 1
    end)
  (func $f24 (type $t10) (param $p0 f64) (param $p1 i32) (result f64)
    (local $l2 i32) (local $l3 i64)
    local.get $p0
    i64.reinterpret_f64
    local.tee $l3
    i64.const 52
    i64.shr_u
    i32.wrap_i64
    i32.const 2047
    i32.and
    local.tee $l2
    i32.const 2047
    i32.ne
    if $I0 (result f64)
      local.get $l2
      i32.eqz
      if $I1
        local.get $p0
        f64.const 0x0p+0 (;=0;)
        f64.eq
        if $I2
          local.get $p1
          i32.const 0
          i32.store
          local.get $p0
          return
        end
        local.get $p0
        f64.const 0x1p+64 (;=1.84467e+19;)
        f64.mul
        local.get $p1
        call $f24
        local.set $p0
        local.get $p1
        local.get $p1
        i32.load
        i32.const -64
        i32.add
        i32.store
        local.get $p0
        return
      end
      local.get $p1
      local.get $l2
      i32.const 1022
      i32.sub
      i32.store
      local.get $l3
      i64.const -9218868437227405313
      i64.and
      i64.const 4602678819172646912
      i64.or
      f64.reinterpret_i64
    else
      local.get $p0
    end)
  (func $f25 (type $t11) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i32) (local $l23 i32) (local $l24 i32) (local $l25 i32) (local $l26 i32) (local $l27 i32) (local $l28 i32) (local $l29 i32) (local $l30 i32) (local $l31 i32) (local $l32 i32) (local $l33 i32) (local $l34 i32) (local $l35 i32) (local $l36 i32) (local $l37 i32) (local $l38 i32) (local $l39 i32) (local $l40 f64) (local $l41 f64) (local $l42 i64) (local $l43 i64)
    global.get $g0
    i32.const 880
    i32.sub
    local.tee $l7
    global.set $g0
    local.get $l7
    i32.const 80
    i32.add
    local.set $l24
    i32.const -112
    local.get $l7
    i32.sub
    local.set $l32
    local.get $l7
    i32.const 3988
    i32.sub
    local.set $l33
    local.get $l7
    i32.const 55
    i32.add
    local.set $l34
    local.get $l7
    i32.const 80
    i32.add
    i32.const -2
    i32.xor
    local.set $l35
    local.get $l7
    i32.const 79
    i32.add
    local.set $l36
    local.get $l7
    i32.const 80
    i32.add
    i32.const 8
    i32.or
    local.set $l31
    local.get $l7
    i32.const 80
    i32.add
    i32.const 9
    i32.or
    local.set $l29
    i32.const -78
    local.get $l7
    i32.sub
    local.set $l37
    local.get $l7
    i32.const 78
    i32.add
    local.set $l38
    local.get $l7
    i32.const 56
    i32.add
    local.set $l21
    block $B0
      block $B1
        loop $L2
          block $B3
            local.get $p1
            local.set $l10
            local.get $l5
            local.get $l18
            i32.const 2147483647
            i32.xor
            i32.gt_s
            br_if $B3
            local.get $l5
            local.get $l18
            i32.add
            local.set $l18
            block $B4
              block $B5
                block $B6
                  block $B7
                    block $B8
                      block $B9
                        block $B10
                          block $B11
                            local.get $l10
                            i32.load8_u
                            local.tee $l5
                            if $I12
                              loop $L13
                                block $B14
                                  block $B15
                                    local.get $l5
                                    i32.const 255
                                    i32.and
                                    local.tee $l5
                                    if $I16
                                      local.get $l5
                                      i32.const 37
                                      i32.ne
                                      br_if $B14
                                      local.get $p1
                                      local.tee $l6
                                      local.set $l5
                                      loop $L17
                                        local.get $l5
                                        i32.load8_u offset=1
                                        i32.const 37
                                        i32.ne
                                        if $I18
                                          local.get $l5
                                          local.set $p1
                                          br $B15
                                        end
                                        local.get $l6
                                        i32.const 1
                                        i32.add
                                        local.set $l6
                                        local.get $l5
                                        i32.load8_u offset=2
                                        local.set $l8
                                        local.get $l5
                                        i32.const 2
                                        i32.add
                                        local.tee $p1
                                        local.set $l5
                                        local.get $l8
                                        i32.const 37
                                        i32.eq
                                        br_if $L17
                                      end
                                      br $B15
                                    end
                                    local.get $p1
                                    local.set $l6
                                  end
                                  local.get $l6
                                  local.get $l10
                                  i32.sub
                                  local.tee $l5
                                  local.get $l18
                                  i32.const 2147483647
                                  i32.xor
                                  local.tee $l6
                                  i32.gt_s
                                  br_if $B3
                                  block $B19
                                    local.get $p0
                                    i32.eqz
                                    br_if $B19
                                    local.get $p0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if $B19
                                    local.get $l10
                                    local.get $l5
                                    local.get $p0
                                    call $f15
                                  end
                                  local.get $l5
                                  br_if $L2
                                  local.get $p1
                                  i32.const 1
                                  i32.add
                                  local.set $l5
                                  i32.const -1
                                  local.set $l16
                                  block $B20
                                    local.get $p1
                                    i32.load8_s offset=1
                                    local.tee $l9
                                    i32.const 48
                                    i32.sub
                                    local.tee $l8
                                    i32.const 9
                                    i32.gt_u
                                    br_if $B20
                                    local.get $p1
                                    i32.load8_u offset=2
                                    i32.const 36
                                    i32.ne
                                    br_if $B20
                                    local.get $p1
                                    i32.const 3
                                    i32.add
                                    local.set $l5
                                    local.get $p1
                                    i32.load8_s offset=3
                                    local.set $l9
                                    i32.const 1
                                    local.set $l25
                                    local.get $l8
                                    local.set $l16
                                  end
                                  i32.const 0
                                  local.set $l11
                                  block $B21
                                    local.get $l9
                                    i32.const 32
                                    i32.sub
                                    local.tee $p1
                                    i32.const 31
                                    i32.gt_u
                                    br_if $B21
                                    i32.const 1
                                    local.get $p1
                                    i32.shl
                                    local.tee $p1
                                    i32.const 75913
                                    i32.and
                                    i32.eqz
                                    br_if $B21
                                    local.get $l5
                                    i32.const 1
                                    i32.add
                                    local.set $l8
                                    loop $L22
                                      local.get $p1
                                      local.get $l11
                                      i32.or
                                      local.set $l11
                                      local.get $l8
                                      local.tee $l5
                                      i32.load8_s
                                      local.tee $l9
                                      i32.const 32
                                      i32.sub
                                      local.tee $p1
                                      i32.const 32
                                      i32.ge_u
                                      br_if $B21
                                      local.get $l5
                                      i32.const 1
                                      i32.add
                                      local.set $l8
                                      i32.const 1
                                      local.get $p1
                                      i32.shl
                                      local.tee $p1
                                      i32.const 75913
                                      i32.and
                                      br_if $L22
                                    end
                                  end
                                  local.get $l9
                                  i32.const 42
                                  i32.eq
                                  if $I23
                                    block $B24 (result i32)
                                      block $B25
                                        local.get $l5
                                        i32.load8_s offset=1
                                        i32.const 48
                                        i32.sub
                                        local.tee $p1
                                        i32.const 9
                                        i32.gt_u
                                        br_if $B25
                                        local.get $l5
                                        i32.load8_u offset=2
                                        i32.const 36
                                        i32.ne
                                        br_if $B25
                                        local.get $p4
                                        local.get $p1
                                        i32.const 2
                                        i32.shl
                                        i32.add
                                        i32.const 10
                                        i32.store
                                        local.get $l5
                                        i32.const 3
                                        i32.add
                                        local.set $l8
                                        i32.const 1
                                        local.set $l25
                                        local.get $l5
                                        i32.load8_s offset=1
                                        i32.const 3
                                        i32.shl
                                        local.get $p3
                                        i32.add
                                        i32.const 384
                                        i32.sub
                                        i32.load
                                        br $B24
                                      end
                                      local.get $l25
                                      br_if $B10
                                      local.get $l5
                                      i32.const 1
                                      i32.add
                                      local.set $l8
                                      local.get $p0
                                      i32.eqz
                                      if $I26
                                        i32.const 0
                                        local.set $l25
                                        i32.const 0
                                        local.set $l15
                                        br $B11
                                      end
                                      local.get $p2
                                      local.get $p2
                                      i32.load
                                      local.tee $p1
                                      i32.const 4
                                      i32.add
                                      i32.store
                                      i32.const 0
                                      local.set $l25
                                      local.get $p1
                                      i32.load
                                    end
                                    local.tee $l15
                                    i32.const 0
                                    i32.ge_s
                                    br_if $B11
                                    i32.const 0
                                    local.get $l15
                                    i32.sub
                                    local.set $l15
                                    local.get $l11
                                    i32.const 8192
                                    i32.or
                                    local.set $l11
                                    br $B11
                                  end
                                  i32.const 0
                                  local.set $l15
                                  local.get $l9
                                  i32.const 48
                                  i32.sub
                                  local.tee $p1
                                  i32.const 9
                                  i32.gt_u
                                  if $I27
                                    local.get $l5
                                    local.set $l8
                                    br $B11
                                  end
                                  loop $L28
                                    local.get $l15
                                    i32.const 214748364
                                    i32.le_u
                                    if $I29
                                      i32.const -1
                                      local.get $l15
                                      i32.const 10
                                      i32.mul
                                      local.tee $l8
                                      local.get $p1
                                      i32.add
                                      local.get $p1
                                      local.get $l8
                                      i32.const 2147483647
                                      i32.xor
                                      i32.gt_u
                                      select
                                      local.set $l15
                                      local.get $l5
                                      i32.load8_s offset=1
                                      local.set $p1
                                      local.get $l5
                                      i32.const 1
                                      i32.add
                                      local.tee $l8
                                      local.set $l5
                                      local.get $p1
                                      i32.const 48
                                      i32.sub
                                      local.tee $p1
                                      i32.const 10
                                      i32.lt_u
                                      br_if $L28
                                      local.get $l15
                                      i32.const 0
                                      i32.lt_s
                                      br_if $B3
                                      br $B11
                                    end
                                    local.get $l5
                                    i32.load8_s offset=1
                                    local.set $p1
                                    i32.const -1
                                    local.set $l15
                                    local.get $l5
                                    i32.const 1
                                    i32.add
                                    local.set $l5
                                    local.get $p1
                                    i32.const 48
                                    i32.sub
                                    local.tee $p1
                                    i32.const 10
                                    i32.lt_u
                                    br_if $L28
                                  end
                                  br $B3
                                end
                                local.get $p1
                                i32.load8_u offset=1
                                local.set $l5
                                local.get $p1
                                i32.const 1
                                i32.add
                                local.set $p1
                                br $L13
                              end
                              unreachable
                            end
                            local.get $p0
                            br_if $B0
                            local.get $l25
                            i32.eqz
                            if $I30
                              i32.const 0
                              local.set $l18
                              br $B0
                            end
                            block $B31
                              local.get $p4
                              i32.load offset=4
                              local.tee $p1
                              i32.eqz
                              if $I32
                                i32.const 1
                                local.set $p1
                                br $B31
                              end
                              local.get $p3
                              i32.const 8
                              i32.add
                              local.get $p1
                              local.get $p2
                              call $f26
                              local.get $p4
                              i32.load offset=8
                              local.tee $p1
                              i32.eqz
                              if $I33
                                i32.const 2
                                local.set $p1
                                br $B31
                              end
                              local.get $p3
                              i32.const 16
                              i32.add
                              local.get $p1
                              local.get $p2
                              call $f26
                              local.get $p4
                              i32.load offset=12
                              local.tee $p1
                              i32.eqz
                              if $I34
                                i32.const 3
                                local.set $p1
                                br $B31
                              end
                              local.get $p3
                              i32.const 24
                              i32.add
                              local.get $p1
                              local.get $p2
                              call $f26
                              local.get $p4
                              i32.load offset=16
                              local.tee $p1
                              i32.eqz
                              if $I35
                                i32.const 4
                                local.set $p1
                                br $B31
                              end
                              local.get $p3
                              i32.const 32
                              i32.add
                              local.get $p1
                              local.get $p2
                              call $f26
                              local.get $p4
                              i32.load offset=20
                              local.tee $p1
                              i32.eqz
                              if $I36
                                i32.const 5
                                local.set $p1
                                br $B31
                              end
                              local.get $p3
                              i32.const 40
                              i32.add
                              local.get $p1
                              local.get $p2
                              call $f26
                              local.get $p4
                              i32.load offset=24
                              local.tee $p1
                              i32.eqz
                              if $I37
                                i32.const 6
                                local.set $p1
                                br $B31
                              end
                              local.get $p3
                              i32.const 48
                              i32.add
                              local.get $p1
                              local.get $p2
                              call $f26
                              local.get $p4
                              i32.load offset=28
                              local.tee $p1
                              i32.eqz
                              if $I38
                                i32.const 7
                                local.set $p1
                                br $B31
                              end
                              local.get $p3
                              i32.const 56
                              i32.add
                              local.get $p1
                              local.get $p2
                              call $f26
                              local.get $p4
                              i32.load offset=32
                              local.tee $p1
                              i32.eqz
                              if $I39
                                i32.const 8
                                local.set $p1
                                br $B31
                              end
                              local.get $p3
                              i32.const -64
                              i32.sub
                              local.get $p1
                              local.get $p2
                              call $f26
                              local.get $p4
                              i32.load offset=36
                              local.tee $p1
                              i32.eqz
                              if $I40
                                i32.const 9
                                local.set $p1
                                br $B31
                              end
                              local.get $p3
                              i32.const 72
                              i32.add
                              local.get $p1
                              local.get $p2
                              call $f26
                              i32.const 1
                              local.set $l18
                              br $B0
                            end
                            local.get $p1
                            i32.const 2
                            i32.shl
                            local.set $p1
                            loop $L41
                              local.get $p1
                              local.get $p4
                              i32.add
                              i32.load
                              br_if $B10
                              local.get $p1
                              i32.const 4
                              i32.add
                              local.tee $p1
                              i32.const 40
                              i32.ne
                              br_if $L41
                            end
                            i32.const 1
                            local.set $l18
                            br $B0
                          end
                          i32.const 0
                          local.set $l5
                          i32.const -1
                          local.set $l9
                          block $B42
                            local.get $l8
                            i32.load8_u
                            i32.const 46
                            i32.ne
                            if $I43
                              local.get $l8
                              local.set $p1
                              i32.const 0
                              local.set $l12
                              br $B42
                            end
                            local.get $l8
                            i32.load8_s offset=1
                            local.tee $l9
                            i32.const 42
                            i32.eq
                            if $I44
                              block $B45 (result i32)
                                block $B46
                                  local.get $l8
                                  i32.load8_s offset=2
                                  i32.const 48
                                  i32.sub
                                  local.tee $p1
                                  i32.const 9
                                  i32.gt_u
                                  br_if $B46
                                  local.get $l8
                                  i32.load8_u offset=3
                                  i32.const 36
                                  i32.ne
                                  br_if $B46
                                  local.get $p4
                                  local.get $p1
                                  i32.const 2
                                  i32.shl
                                  i32.add
                                  i32.const 10
                                  i32.store
                                  local.get $l8
                                  i32.const 4
                                  i32.add
                                  local.set $p1
                                  local.get $l8
                                  i32.load8_s offset=2
                                  i32.const 3
                                  i32.shl
                                  local.get $p3
                                  i32.add
                                  i32.const 384
                                  i32.sub
                                  i32.load
                                  br $B45
                                end
                                local.get $l25
                                br_if $B10
                                local.get $l8
                                i32.const 2
                                i32.add
                                local.set $p1
                                i32.const 0
                                local.get $p0
                                i32.eqz
                                br_if $B45
                                drop
                                local.get $p2
                                local.get $p2
                                i32.load
                                local.tee $l8
                                i32.const 4
                                i32.add
                                i32.store
                                local.get $l8
                                i32.load
                              end
                              local.tee $l9
                              i32.const -1
                              i32.xor
                              i32.const 31
                              i32.shr_u
                              local.set $l12
                              br $B42
                            end
                            local.get $l8
                            i32.const 1
                            i32.add
                            local.set $p1
                            local.get $l9
                            i32.const 48
                            i32.sub
                            local.tee $l13
                            i32.const 9
                            i32.gt_u
                            if $I47
                              i32.const 1
                              local.set $l12
                              i32.const 0
                              local.set $l9
                              br $B42
                            end
                            i32.const 0
                            local.set $l17
                            local.get $p1
                            local.set $l8
                            loop $L48
                              i32.const -1
                              local.set $l9
                              local.get $l17
                              i32.const 214748364
                              i32.le_u
                              if $I49
                                i32.const -1
                                local.get $l17
                                i32.const 10
                                i32.mul
                                local.tee $p1
                                local.get $l13
                                i32.add
                                local.get $l13
                                local.get $p1
                                i32.const 2147483647
                                i32.xor
                                i32.gt_u
                                select
                                local.set $l9
                              end
                              i32.const 1
                              local.set $l12
                              local.get $l8
                              i32.load8_s offset=1
                              local.set $l13
                              local.get $l9
                              local.set $l17
                              local.get $l8
                              i32.const 1
                              i32.add
                              local.tee $p1
                              local.set $l8
                              local.get $l13
                              i32.const 48
                              i32.sub
                              local.tee $l13
                              i32.const 10
                              i32.lt_u
                              br_if $L48
                            end
                          end
                          loop $L50
                            local.get $l5
                            local.set $l8
                            local.get $p1
                            i32.load8_s
                            local.tee $l5
                            i32.const 123
                            i32.sub
                            i32.const -58
                            i32.lt_u
                            br_if $B10
                            local.get $p1
                            i32.const 1
                            i32.add
                            local.set $p1
                            local.get $l5
                            local.get $l8
                            i32.const 58
                            i32.mul
                            i32.add
                            i32.const 67807
                            i32.add
                            i32.load8_u
                            local.tee $l5
                            i32.const 1
                            i32.sub
                            i32.const 8
                            i32.lt_u
                            br_if $L50
                          end
                          block $B51
                            block $B52
                              local.get $l5
                              i32.const 27
                              i32.ne
                              if $I53
                                local.get $l5
                                i32.eqz
                                br_if $B10
                                local.get $l16
                                i32.const 0
                                i32.ge_s
                                if $I54
                                  local.get $p4
                                  local.get $l16
                                  i32.const 2
                                  i32.shl
                                  i32.add
                                  local.get $l5
                                  i32.store
                                  local.get $l7
                                  local.get $p3
                                  local.get $l16
                                  i32.const 3
                                  i32.shl
                                  i32.add
                                  i64.load
                                  i64.store offset=56
                                  br $B52
                                end
                                local.get $p0
                                i32.eqz
                                if $I55
                                  i32.const 0
                                  local.set $l18
                                  br $B0
                                end
                                local.get $l7
                                i32.const 56
                                i32.add
                                local.get $l5
                                local.get $p2
                                call $f26
                                br $B51
                              end
                              local.get $l16
                              i32.const 0
                              i32.ge_s
                              br_if $B10
                            end
                            i32.const 0
                            local.set $l5
                            local.get $p0
                            i32.eqz
                            br_if $L2
                          end
                          local.get $l11
                          i32.const -65537
                          i32.and
                          local.tee $l17
                          local.get $l11
                          local.get $l11
                          i32.const 8192
                          i32.and
                          select
                          local.set $l14
                          block $B56
                            block $B57
                              block $B58 (result i32)
                                block $B59
                                  block $B60
                                    block $B61 (result i32)
                                      block $B62 (result i32)
                                        block $B63
                                          block $B64
                                            block $B65
                                              block $B66
                                                block $B67 (result i32)
                                                  block $B68
                                                    block $B69
                                                      block $B70
                                                        block $B71
                                                          block $B72
                                                            block $B73
                                                              local.get $p1
                                                              i32.const 1
                                                              i32.sub
                                                              i32.load8_s
                                                              local.tee $l5
                                                              i32.const -33
                                                              i32.and
                                                              local.get $l5
                                                              local.get $l5
                                                              i32.const 15
                                                              i32.and
                                                              i32.const 3
                                                              i32.eq
                                                              select
                                                              local.get $l5
                                                              local.get $l8
                                                              select
                                                              local.tee $l19
                                                              i32.const 65
                                                              i32.sub
                                                              br_table $B56 $B9 $B59 $B9 $B56 $B56 $B56 $B9 $B9 $B9 $B9 $B9 $B9 $B9 $B9 $B9 $B9 $B9 $B60 $B9 $B9 $B9 $B9 $B70 $B9 $B9 $B9 $B9 $B9 $B9 $B9 $B9 $B56 $B9 $B65 $B68 $B56 $B56 $B56 $B9 $B68 $B9 $B9 $B9 $B64 $B72 $B69 $B71 $B9 $B9 $B63 $B9 $B73 $B9 $B9 $B70 $B9
                                                            end
                                                            i32.const 0
                                                            local.set $l13
                                                            local.get $l7
                                                            i64.load offset=56
                                                            local.set $l42
                                                            i32.const 65536
                                                            br $B67
                                                          end
                                                          i32.const 0
                                                          local.set $l5
                                                          block $B74
                                                            block $B75
                                                              block $B76
                                                                block $B77
                                                                  block $B78
                                                                    block $B79
                                                                      block $B80
                                                                        local.get $l8
                                                                        i32.const 255
                                                                        i32.and
                                                                        br_table $B80 $B79 $B78 $B77 $B76 $L2 $B75 $B74 $L2
                                                                      end
                                                                      local.get $l7
                                                                      i32.load offset=56
                                                                      local.get $l18
                                                                      i32.store
                                                                      br $L2
                                                                    end
                                                                    local.get $l7
                                                                    i32.load offset=56
                                                                    local.get $l18
                                                                    i32.store
                                                                    br $L2
                                                                  end
                                                                  local.get $l7
                                                                  i32.load offset=56
                                                                  local.get $l18
                                                                  i64.extend_i32_s
                                                                  i64.store
                                                                  br $L2
                                                                end
                                                                local.get $l7
                                                                i32.load offset=56
                                                                local.get $l18
                                                                i32.store16
                                                                br $L2
                                                              end
                                                              local.get $l7
                                                              i32.load offset=56
                                                              local.get $l18
                                                              i32.store8
                                                              br $L2
                                                            end
                                                            local.get $l7
                                                            i32.load offset=56
                                                            local.get $l18
                                                            i32.store
                                                            br $L2
                                                          end
                                                          local.get $l7
                                                          i32.load offset=56
                                                          local.get $l18
                                                          i64.extend_i32_s
                                                          i64.store
                                                          br $L2
                                                        end
                                                        local.get $l9
                                                        i32.const 8
                                                        local.get $l9
                                                        i32.const 8
                                                        i32.gt_u
                                                        select
                                                        local.set $l9
                                                        local.get $l14
                                                        i32.const 8
                                                        i32.or
                                                        local.set $l14
                                                        i32.const 120
                                                        local.set $l19
                                                      end
                                                      i32.const 0
                                                      local.set $l13
                                                      i32.const 65536
                                                      local.set $l16
                                                      local.get $l7
                                                      i64.load offset=56
                                                      local.tee $l42
                                                      i64.eqz
                                                      if $I81
                                                        local.get $l21
                                                        local.set $l10
                                                        br $B66
                                                      end
                                                      local.get $l19
                                                      i32.const 32
                                                      i32.and
                                                      local.set $l8
                                                      local.get $l21
                                                      local.set $l10
                                                      loop $L82
                                                        local.get $l10
                                                        i32.const 1
                                                        i32.sub
                                                        local.tee $l10
                                                        local.get $l42
                                                        i32.wrap_i64
                                                        i32.const 15
                                                        i32.and
                                                        i32.const 68336
                                                        i32.add
                                                        i32.load8_u
                                                        local.get $l8
                                                        i32.or
                                                        i32.store8
                                                        local.get $l42
                                                        i64.const 15
                                                        i64.gt_u
                                                        local.set $l5
                                                        local.get $l42
                                                        i64.const 4
                                                        i64.shr_u
                                                        local.set $l42
                                                        local.get $l5
                                                        br_if $L82
                                                      end
                                                      local.get $l14
                                                      i32.const 8
                                                      i32.and
                                                      i32.eqz
                                                      br_if $B66
                                                      local.get $l19
                                                      i32.const 4
                                                      i32.shr_s
                                                      i32.const 65536
                                                      i32.add
                                                      local.set $l16
                                                      i32.const 2
                                                      local.set $l13
                                                      br $B66
                                                    end
                                                    local.get $l21
                                                    local.set $l10
                                                    local.get $l7
                                                    i64.load offset=56
                                                    local.tee $l42
                                                    i64.eqz
                                                    i32.eqz
                                                    if $I83
                                                      loop $L84
                                                        local.get $l10
                                                        i32.const 1
                                                        i32.sub
                                                        local.tee $l10
                                                        local.get $l42
                                                        i32.wrap_i64
                                                        i32.const 7
                                                        i32.and
                                                        i32.const 48
                                                        i32.or
                                                        i32.store8
                                                        local.get $l42
                                                        i64.const 7
                                                        i64.gt_u
                                                        local.set $l5
                                                        local.get $l42
                                                        i64.const 3
                                                        i64.shr_u
                                                        local.set $l42
                                                        local.get $l5
                                                        br_if $L84
                                                      end
                                                    end
                                                    i32.const 0
                                                    local.set $l13
                                                    i32.const 65536
                                                    local.set $l16
                                                    local.get $l14
                                                    i32.const 8
                                                    i32.and
                                                    i32.eqz
                                                    br_if $B66
                                                    local.get $l9
                                                    local.get $l21
                                                    local.get $l10
                                                    i32.sub
                                                    local.tee $l5
                                                    i32.const 1
                                                    i32.add
                                                    local.get $l5
                                                    local.get $l9
                                                    i32.lt_s
                                                    select
                                                    local.set $l9
                                                    br $B66
                                                  end
                                                  local.get $l7
                                                  i64.load offset=56
                                                  local.tee $l42
                                                  i64.const 0
                                                  i64.lt_s
                                                  if $I85
                                                    local.get $l7
                                                    i64.const 0
                                                    local.get $l42
                                                    i64.sub
                                                    local.tee $l42
                                                    i64.store offset=56
                                                    i32.const 1
                                                    local.set $l13
                                                    i32.const 65536
                                                    br $B67
                                                  end
                                                  local.get $l14
                                                  i32.const 2048
                                                  i32.and
                                                  if $I86
                                                    i32.const 1
                                                    local.set $l13
                                                    i32.const 65537
                                                    br $B67
                                                  end
                                                  i32.const 65538
                                                  i32.const 65536
                                                  local.get $l14
                                                  i32.const 1
                                                  i32.and
                                                  local.tee $l13
                                                  select
                                                end
                                                local.set $l16
                                                block $B87
                                                  local.get $l42
                                                  i64.const 4294967296
                                                  i64.lt_u
                                                  if $I88
                                                    local.get $l42
                                                    local.set $l43
                                                    local.get $l21
                                                    local.set $l10
                                                    br $B87
                                                  end
                                                  local.get $l21
                                                  local.set $l10
                                                  loop $L89
                                                    local.get $l10
                                                    i32.const 1
                                                    i32.sub
                                                    local.tee $l10
                                                    local.get $l42
                                                    local.get $l42
                                                    i64.const 10
                                                    i64.div_u
                                                    local.tee $l43
                                                    i64.const 10
                                                    i64.mul
                                                    i64.sub
                                                    i32.wrap_i64
                                                    i32.const 48
                                                    i32.or
                                                    i32.store8
                                                    local.get $l42
                                                    i64.const 42949672959
                                                    i64.gt_u
                                                    local.set $l5
                                                    local.get $l43
                                                    local.set $l42
                                                    local.get $l5
                                                    br_if $L89
                                                  end
                                                end
                                                local.get $l43
                                                i32.wrap_i64
                                                local.tee $l5
                                                i32.eqz
                                                br_if $B66
                                                loop $L90
                                                  local.get $l10
                                                  i32.const 1
                                                  i32.sub
                                                  local.tee $l10
                                                  local.get $l5
                                                  local.get $l5
                                                  i32.const 10
                                                  i32.div_u
                                                  local.tee $l8
                                                  i32.const 10
                                                  i32.mul
                                                  i32.sub
                                                  i32.const 48
                                                  i32.or
                                                  i32.store8
                                                  local.get $l5
                                                  i32.const 9
                                                  i32.gt_u
                                                  local.set $l11
                                                  local.get $l8
                                                  local.set $l5
                                                  local.get $l11
                                                  br_if $L90
                                                end
                                              end
                                              local.get $l12
                                              i32.const 0
                                              local.get $l9
                                              i32.const 0
                                              i32.lt_s
                                              select
                                              br_if $B3
                                              local.get $l14
                                              i32.const -65537
                                              i32.and
                                              local.get $l14
                                              local.get $l12
                                              select
                                              local.set $l17
                                              block $B91
                                                local.get $l7
                                                i64.load offset=56
                                                local.tee $l42
                                                i64.const 0
                                                i64.ne
                                                br_if $B91
                                                i32.const 0
                                                local.set $l11
                                                local.get $l9
                                                br_if $B91
                                                local.get $l21
                                                local.tee $l10
                                                local.set $l5
                                                br $B8
                                              end
                                              local.get $l9
                                              local.get $l42
                                              i64.eqz
                                              local.get $l21
                                              local.get $l10
                                              i32.sub
                                              i32.add
                                              local.tee $l5
                                              local.get $l5
                                              local.get $l9
                                              i32.lt_s
                                              select
                                              local.set $l11
                                              local.get $l21
                                              local.set $l5
                                              br $B8
                                            end
                                            local.get $l7
                                            local.get $l7
                                            i64.load offset=56
                                            i64.store8 offset=55
                                            i32.const 0
                                            local.set $l13
                                            i32.const 65536
                                            local.set $l16
                                            i32.const 1
                                            local.set $l11
                                            local.get $l34
                                            local.set $l10
                                            local.get $l21
                                            local.set $l5
                                            br $B8
                                          end
                                          i32.const 69108
                                          i32.load
                                          local.set $l10
                                          i32.const 70176
                                          i32.load
                                          local.tee $l5
                                          if $I92 (result i32)
                                            local.get $l5
                                          else
                                            i32.const 70176
                                            i32.const 70152
                                            i32.store
                                            i32.const 70152
                                          end
                                          i32.load offset=20
                                          drop
                                          i32.const 0
                                          local.get $l10
                                          local.get $l10
                                          i32.const 76
                                          i32.gt_u
                                          select
                                          i32.const 1
                                          i32.shl
                                          i32.const 67712
                                          i32.add
                                          i32.load16_u
                                          i32.const 66147
                                          i32.add
                                          br $B62
                                        end
                                        local.get $l7
                                        i32.load offset=56
                                        local.tee $l5
                                        i32.const 65704
                                        local.get $l5
                                        select
                                      end
                                      local.tee $l10
                                      local.set $l5
                                      local.get $l9
                                      i32.const 2147483647
                                      local.get $l9
                                      i32.const 2147483647
                                      i32.lt_u
                                      select
                                      local.tee $l8
                                      local.tee $l16
                                      i32.const 0
                                      i32.ne
                                      local.set $l11
                                      block $B93
                                        block $B94
                                          block $B95
                                            block $B96
                                              local.get $l5
                                              i32.const 3
                                              i32.and
                                              i32.eqz
                                              br_if $B96
                                              local.get $l16
                                              i32.eqz
                                              br_if $B96
                                              local.get $l5
                                              i32.load8_u
                                              i32.eqz
                                              if $I97
                                                local.get $l5
                                                local.set $l14
                                                local.get $l16
                                                local.set $l12
                                                br $B94
                                              end
                                              local.get $l16
                                              i32.const 1
                                              i32.sub
                                              local.tee $l12
                                              i32.const 0
                                              i32.ne
                                              local.set $l11
                                              local.get $l5
                                              i32.const 1
                                              i32.add
                                              local.tee $l14
                                              i32.const 3
                                              i32.and
                                              i32.eqz
                                              br_if $B95
                                              local.get $l12
                                              i32.eqz
                                              br_if $B95
                                              local.get $l14
                                              i32.load8_u
                                              i32.eqz
                                              br_if $B94
                                              local.get $l16
                                              i32.const 2
                                              i32.sub
                                              local.tee $l12
                                              i32.const 0
                                              i32.ne
                                              local.set $l11
                                              local.get $l5
                                              i32.const 2
                                              i32.add
                                              local.tee $l14
                                              i32.const 3
                                              i32.and
                                              i32.eqz
                                              br_if $B95
                                              local.get $l12
                                              i32.eqz
                                              br_if $B95
                                              local.get $l14
                                              i32.load8_u
                                              i32.eqz
                                              br_if $B94
                                              local.get $l16
                                              i32.const 3
                                              i32.sub
                                              local.tee $l12
                                              i32.const 0
                                              i32.ne
                                              local.set $l11
                                              local.get $l5
                                              i32.const 3
                                              i32.add
                                              local.tee $l14
                                              i32.const 3
                                              i32.and
                                              i32.eqz
                                              br_if $B95
                                              local.get $l12
                                              i32.eqz
                                              br_if $B95
                                              local.get $l14
                                              i32.load8_u
                                              i32.eqz
                                              br_if $B94
                                              local.get $l5
                                              i32.const 4
                                              i32.add
                                              local.set $l14
                                              local.get $l16
                                              i32.const 4
                                              i32.sub
                                              local.tee $l12
                                              i32.const 0
                                              i32.ne
                                              local.set $l11
                                              br $B95
                                            end
                                            local.get $l16
                                            local.set $l12
                                            local.get $l5
                                            local.set $l14
                                          end
                                          local.get $l11
                                          i32.eqz
                                          br_if $B93
                                          block $B98
                                            local.get $l14
                                            i32.load8_u
                                            i32.eqz
                                            br_if $B98
                                            local.get $l12
                                            i32.const 4
                                            i32.lt_u
                                            br_if $B98
                                            loop $L99
                                              local.get $l14
                                              i32.load
                                              local.tee $l16
                                              i32.const -1
                                              i32.xor
                                              local.get $l16
                                              i32.const 16843009
                                              i32.sub
                                              i32.and
                                              i32.const -2139062144
                                              i32.and
                                              br_if $B94
                                              local.get $l14
                                              i32.const 4
                                              i32.add
                                              local.set $l14
                                              local.get $l12
                                              i32.const 4
                                              i32.sub
                                              local.tee $l12
                                              i32.const 3
                                              i32.gt_u
                                              br_if $L99
                                            end
                                          end
                                          local.get $l12
                                          i32.eqz
                                          br_if $B93
                                        end
                                        loop $L100
                                          local.get $l14
                                          local.get $l14
                                          i32.load8_u
                                          i32.eqz
                                          br_if $B61
                                          drop
                                          local.get $l14
                                          i32.const 1
                                          i32.add
                                          local.set $l14
                                          local.get $l12
                                          i32.const 1
                                          i32.sub
                                          local.tee $l12
                                          br_if $L100
                                        end
                                      end
                                      i32.const 0
                                    end
                                    local.tee $l5
                                    local.get $l10
                                    i32.sub
                                    local.get $l8
                                    local.get $l5
                                    select
                                    local.tee $l11
                                    local.get $l10
                                    i32.add
                                    local.set $l5
                                    i32.const 0
                                    local.set $l13
                                    i32.const 65536
                                    local.set $l16
                                    local.get $l9
                                    i32.const 0
                                    i32.ge_s
                                    br_if $B8
                                    local.get $l5
                                    i32.load8_u
                                    i32.eqz
                                    br_if $B8
                                    br $B3
                                  end
                                  local.get $l7
                                  i32.load offset=56
                                  local.tee $l10
                                  local.get $l9
                                  br_if $B58
                                  drop
                                  i32.const 0
                                  local.set $l5
                                  br $B57
                                end
                                local.get $l7
                                i32.const 0
                                i32.store offset=12
                                local.get $l7
                                local.get $l7
                                i64.load offset=56
                                i64.store32 offset=8
                                local.get $l7
                                local.get $l7
                                i32.const 8
                                i32.add
                                i32.store offset=56
                                i32.const -1
                                local.set $l9
                                local.get $l7
                                i32.const 8
                                i32.add
                              end
                              local.set $l10
                              i32.const 0
                              local.set $l5
                              local.get $l10
                              local.set $l6
                              block $B101
                                loop $L102
                                  local.get $l6
                                  i32.load
                                  local.tee $l8
                                  i32.eqz
                                  br_if $B101
                                  block $B103
                                    local.get $l7
                                    i32.const 4
                                    i32.add
                                    local.get $l8
                                    call $f23
                                    local.tee $l8
                                    i32.const 0
                                    i32.lt_s
                                    local.tee $l11
                                    br_if $B103
                                    local.get $l8
                                    local.get $l9
                                    local.get $l5
                                    i32.sub
                                    i32.gt_u
                                    br_if $B103
                                    local.get $l6
                                    i32.const 4
                                    i32.add
                                    local.set $l6
                                    local.get $l9
                                    local.get $l5
                                    local.get $l8
                                    i32.add
                                    local.tee $l5
                                    i32.gt_u
                                    br_if $L102
                                    br $B101
                                  end
                                end
                                local.get $l11
                                br_if $B1
                              end
                              local.get $l5
                              i32.const 0
                              i32.lt_s
                              br_if $B3
                            end
                            block $B104
                              local.get $l14
                              i32.const 73728
                              i32.and
                              local.tee $l11
                              br_if $B104
                              local.get $l5
                              local.get $l15
                              i32.ge_s
                              br_if $B104
                              local.get $l7
                              i32.const 112
                              i32.add
                              i32.const 32
                              local.get $l15
                              local.get $l5
                              i32.sub
                              local.tee $l6
                              i32.const 256
                              local.get $l6
                              i32.const 256
                              i32.lt_u
                              local.tee $l8
                              select
                              call $f29
                              drop
                              local.get $l8
                              i32.eqz
                              if $I105
                                loop $L106
                                  local.get $p0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  i32.eqz
                                  if $I107
                                    local.get $l7
                                    i32.const 112
                                    i32.add
                                    i32.const 256
                                    local.get $p0
                                    call $f15
                                  end
                                  local.get $l6
                                  i32.const 256
                                  i32.sub
                                  local.tee $l6
                                  i32.const 255
                                  i32.gt_u
                                  br_if $L106
                                end
                              end
                              local.get $p0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if $B104
                              local.get $l7
                              i32.const 112
                              i32.add
                              local.get $l6
                              local.get $p0
                              call $f15
                            end
                            block $B108
                              local.get $l5
                              i32.eqz
                              br_if $B108
                              i32.const 0
                              local.set $l6
                              loop $L109
                                local.get $l10
                                i32.load
                                local.tee $l8
                                i32.eqz
                                br_if $B108
                                local.get $l7
                                i32.const 4
                                i32.add
                                local.get $l8
                                call $f23
                                local.tee $l8
                                local.get $l6
                                i32.add
                                local.tee $l6
                                local.get $l5
                                i32.gt_u
                                br_if $B108
                                local.get $p0
                                i32.load8_u
                                i32.const 32
                                i32.and
                                i32.eqz
                                if $I110
                                  local.get $l7
                                  i32.const 4
                                  i32.add
                                  local.get $l8
                                  local.get $p0
                                  call $f15
                                end
                                local.get $l10
                                i32.const 4
                                i32.add
                                local.set $l10
                                local.get $l5
                                local.get $l6
                                i32.gt_u
                                br_if $L109
                              end
                            end
                            block $B111
                              local.get $l11
                              i32.const 8192
                              i32.ne
                              br_if $B111
                              local.get $l5
                              local.get $l15
                              i32.ge_s
                              br_if $B111
                              local.get $l7
                              i32.const 112
                              i32.add
                              i32.const 32
                              local.get $l15
                              local.get $l5
                              i32.sub
                              local.tee $l6
                              i32.const 256
                              local.get $l6
                              i32.const 256
                              i32.lt_u
                              local.tee $l8
                              select
                              call $f29
                              drop
                              local.get $l8
                              i32.eqz
                              if $I112
                                loop $L113
                                  local.get $p0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  i32.eqz
                                  if $I114
                                    local.get $l7
                                    i32.const 112
                                    i32.add
                                    i32.const 256
                                    local.get $p0
                                    call $f15
                                  end
                                  local.get $l6
                                  i32.const 256
                                  i32.sub
                                  local.tee $l6
                                  i32.const 255
                                  i32.gt_u
                                  br_if $L113
                                end
                              end
                              local.get $p0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if $B111
                              local.get $l7
                              i32.const 112
                              i32.add
                              local.get $l6
                              local.get $p0
                              call $f15
                            end
                            local.get $l15
                            local.get $l5
                            local.get $l5
                            local.get $l15
                            i32.lt_s
                            select
                            local.set $l5
                            br $L2
                          end
                          local.get $l12
                          i32.const 0
                          local.get $l9
                          i32.const 0
                          i32.lt_s
                          select
                          br_if $B3
                          local.get $l7
                          f64.load offset=56
                          local.set $l40
                          local.get $l7
                          i32.const 0
                          i32.store offset=108
                          block $B115 (result i32)
                            local.get $l40
                            i64.reinterpret_f64
                            i64.const 0
                            i64.lt_s
                            if $I116
                              local.get $l40
                              f64.neg
                              local.set $l40
                              i32.const 1
                              local.set $l23
                              i32.const 65546
                              local.set $l26
                              i32.const 0
                              br $B115
                            end
                            local.get $l14
                            i32.const 2048
                            i32.and
                            if $I117
                              i32.const 1
                              local.set $l23
                              i32.const 65549
                              local.set $l26
                              i32.const 0
                              br $B115
                            end
                            i32.const 65552
                            i32.const 65547
                            local.get $l14
                            i32.const 1
                            i32.and
                            local.tee $l23
                            select
                            local.set $l26
                            local.get $l23
                            i32.eqz
                          end
                          local.set $l30
                          local.get $l40
                          f64.abs
                          f64.const inf (;=inf;)
                          f64.lt
                          i32.eqz
                          if $I118
                            local.get $l23
                            i32.const 3
                            i32.add
                            local.set $l6
                            block $B119
                              local.get $l14
                              i32.const 8192
                              i32.and
                              br_if $B119
                              local.get $l6
                              local.get $l15
                              i32.ge_s
                              br_if $B119
                              local.get $l7
                              i32.const 624
                              i32.add
                              i32.const 32
                              local.get $l15
                              local.get $l6
                              i32.sub
                              local.tee $l5
                              i32.const 256
                              local.get $l5
                              i32.const 256
                              i32.lt_u
                              local.tee $l8
                              select
                              call $f29
                              drop
                              local.get $l8
                              i32.eqz
                              if $I120
                                loop $L121
                                  local.get $p0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  i32.eqz
                                  if $I122
                                    local.get $l7
                                    i32.const 624
                                    i32.add
                                    i32.const 256
                                    local.get $p0
                                    call $f15
                                  end
                                  local.get $l5
                                  i32.const 256
                                  i32.sub
                                  local.tee $l5
                                  i32.const 255
                                  i32.gt_u
                                  br_if $L121
                                end
                              end
                              local.get $p0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if $B119
                              local.get $l7
                              i32.const 624
                              i32.add
                              local.get $l5
                              local.get $p0
                              call $f15
                            end
                            local.get $p0
                            i32.load
                            local.tee $l5
                            i32.const 32
                            i32.and
                            if $I123 (result i32)
                              local.get $l5
                            else
                              local.get $l26
                              local.get $l23
                              local.get $p0
                              call $f15
                              local.get $p0
                              i32.load
                            end
                            i32.const 32
                            i32.and
                            i32.eqz
                            if $I124
                              i32.const 65565
                              i32.const 65694
                              local.get $l19
                              i32.const 32
                              i32.and
                              local.tee $l5
                              select
                              i32.const 65656
                              i32.const 65698
                              local.get $l5
                              select
                              local.get $l40
                              local.get $l40
                              f64.ne
                              select
                              i32.const 3
                              local.get $p0
                              call $f15
                            end
                            block $B125
                              local.get $l14
                              i32.const 73728
                              i32.and
                              i32.const 8192
                              i32.ne
                              br_if $B125
                              local.get $l6
                              local.get $l15
                              i32.ge_s
                              br_if $B125
                              local.get $l7
                              i32.const 624
                              i32.add
                              i32.const 32
                              local.get $l15
                              local.get $l6
                              i32.sub
                              local.tee $l5
                              i32.const 256
                              local.get $l5
                              i32.const 256
                              i32.lt_u
                              local.tee $l8
                              select
                              call $f29
                              drop
                              local.get $l8
                              i32.eqz
                              if $I126
                                loop $L127
                                  local.get $p0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  i32.eqz
                                  if $I128
                                    local.get $l7
                                    i32.const 624
                                    i32.add
                                    i32.const 256
                                    local.get $p0
                                    call $f15
                                  end
                                  local.get $l5
                                  i32.const 256
                                  i32.sub
                                  local.tee $l5
                                  i32.const 255
                                  i32.gt_u
                                  br_if $L127
                                end
                              end
                              local.get $p0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if $B125
                              local.get $l7
                              i32.const 624
                              i32.add
                              local.get $l5
                              local.get $p0
                              call $f15
                            end
                            local.get $l6
                            local.get $l15
                            local.get $l6
                            local.get $l15
                            i32.gt_s
                            select
                            local.set $l5
                            br $L2
                          end
                          block $B129 (result i32)
                            block $B130
                              local.get $l40
                              local.get $l7
                              i32.const 108
                              i32.add
                              call $f24
                              local.tee $l40
                              local.get $l40
                              f64.add
                              local.tee $l40
                              f64.const 0x0p+0 (;=0;)
                              f64.ne
                              if $I131
                                local.get $l7
                                local.get $l7
                                i32.load offset=108
                                local.tee $l5
                                i32.const 1
                                i32.sub
                                i32.store offset=108
                                local.get $l19
                                i32.const 32
                                i32.or
                                local.tee $l22
                                i32.const 97
                                i32.ne
                                br_if $B130
                                br $B5
                              end
                              local.get $l19
                              i32.const 32
                              i32.or
                              local.tee $l22
                              i32.const 97
                              i32.eq
                              br_if $B5
                              local.get $l7
                              i32.load offset=108
                              local.set $l10
                              i32.const 6
                              local.get $l9
                              local.get $l9
                              i32.const 0
                              i32.lt_s
                              select
                              br $B129
                            end
                            local.get $l7
                            local.get $l5
                            i32.const 29
                            i32.sub
                            local.tee $l10
                            i32.store offset=108
                            local.get $l40
                            f64.const 0x1p+28 (;=2.68435e+08;)
                            f64.mul
                            local.set $l40
                            i32.const 6
                            local.get $l9
                            local.get $l9
                            i32.const 0
                            i32.lt_s
                            select
                          end
                          local.set $l12
                          i32.const 0
                          i32.const 72
                          local.get $l10
                          i32.const 0
                          i32.lt_s
                          local.tee $l27
                          select
                          i32.const 2
                          i32.shl
                          local.tee $l28
                          local.get $l7
                          i32.const 112
                          i32.add
                          i32.add
                          local.tee $l16
                          local.set $l6
                          loop $L132
                            local.get $l6
                            block $B133 (result i32)
                              local.get $l40
                              f64.const 0x1p+32 (;=4.29497e+09;)
                              f64.lt
                              local.get $l40
                              f64.const 0x0p+0 (;=0;)
                              f64.ge
                              i32.and
                              if $I134
                                local.get $l40
                                i32.trunc_f64_u
                                br $B133
                              end
                              i32.const 0
                            end
                            local.tee $l5
                            i32.store
                            local.get $l6
                            i32.const 4
                            i32.add
                            local.set $l6
                            local.get $l40
                            local.get $l5
                            f64.convert_i32_u
                            f64.sub
                            f64.const 0x1.dcd65p+29 (;=1e+09;)
                            f64.mul
                            local.tee $l40
                            f64.const 0x0p+0 (;=0;)
                            f64.ne
                            br_if $L132
                          end
                          block $B135
                            local.get $l10
                            i32.const 0
                            i32.le_s
                            if $I136
                              local.get $l6
                              local.set $l5
                              local.get $l16
                              local.set $l8
                              br $B135
                            end
                            local.get $l16
                            local.set $l8
                            loop $L137
                              local.get $l10
                              i32.const 29
                              local.get $l10
                              i32.const 29
                              i32.lt_s
                              select
                              local.set $l10
                              block $B138
                                local.get $l6
                                i32.const 4
                                i32.sub
                                local.tee $l5
                                local.get $l8
                                i32.lt_u
                                br_if $B138
                                local.get $l10
                                i64.extend_i32_u
                                local.set $l43
                                i64.const 0
                                local.set $l42
                                loop $L139
                                  local.get $l5
                                  local.get $l42
                                  i64.const 4294967295
                                  i64.and
                                  local.get $l5
                                  i64.load32_u
                                  local.get $l43
                                  i64.shl
                                  i64.add
                                  local.tee $l42
                                  local.get $l42
                                  i64.const 1000000000
                                  i64.div_u
                                  local.tee $l42
                                  i64.const 1000000000
                                  i64.mul
                                  i64.sub
                                  i64.store32
                                  local.get $l5
                                  i32.const 4
                                  i32.sub
                                  local.tee $l5
                                  local.get $l8
                                  i32.ge_u
                                  br_if $L139
                                end
                                local.get $l42
                                i32.wrap_i64
                                local.tee $l5
                                i32.eqz
                                br_if $B138
                                local.get $l8
                                i32.const 4
                                i32.sub
                                local.tee $l8
                                local.get $l5
                                i32.store
                              end
                              loop $L140
                                local.get $l8
                                local.get $l6
                                local.tee $l5
                                i32.lt_u
                                if $I141
                                  local.get $l5
                                  i32.const 4
                                  i32.sub
                                  local.tee $l6
                                  i32.load
                                  i32.eqz
                                  br_if $L140
                                end
                              end
                              local.get $l7
                              local.get $l7
                              i32.load offset=108
                              local.get $l10
                              i32.sub
                              local.tee $l10
                              i32.store offset=108
                              local.get $l5
                              local.set $l6
                              local.get $l10
                              i32.const 0
                              i32.gt_s
                              br_if $L137
                            end
                          end
                          local.get $l10
                          i32.const 0
                          i32.lt_s
                          if $I142
                            local.get $l12
                            i32.const 25
                            i32.add
                            i32.const 9
                            i32.div_u
                            i32.const 1
                            i32.add
                            local.set $l20
                            loop $L143
                              i32.const 0
                              local.get $l10
                              i32.sub
                              local.tee $l6
                              i32.const 9
                              local.get $l6
                              i32.const 9
                              i32.lt_s
                              select
                              local.set $l9
                              block $B144
                                local.get $l5
                                local.get $l8
                                i32.le_u
                                if $I145
                                  local.get $l8
                                  i32.load
                                  local.set $l6
                                  br $B144
                                end
                                i32.const 1000000000
                                local.get $l9
                                i32.shr_u
                                local.set $l17
                                i32.const -1
                                local.get $l9
                                i32.shl
                                i32.const -1
                                i32.xor
                                local.set $l13
                                i32.const 0
                                local.set $l10
                                local.get $l8
                                local.set $l6
                                loop $L146
                                  local.get $l6
                                  local.get $l6
                                  i32.load
                                  local.tee $l11
                                  local.get $l9
                                  i32.shr_u
                                  local.get $l10
                                  i32.add
                                  i32.store
                                  local.get $l11
                                  local.get $l13
                                  i32.and
                                  local.get $l17
                                  i32.mul
                                  local.set $l10
                                  local.get $l6
                                  i32.const 4
                                  i32.add
                                  local.tee $l6
                                  local.get $l5
                                  i32.lt_u
                                  br_if $L146
                                end
                                local.get $l8
                                i32.load
                                local.set $l6
                                local.get $l10
                                i32.eqz
                                br_if $B144
                                local.get $l5
                                local.get $l10
                                i32.store
                                local.get $l5
                                i32.const 4
                                i32.add
                                local.set $l5
                              end
                              local.get $l7
                              local.get $l7
                              i32.load offset=108
                              local.get $l9
                              i32.add
                              local.tee $l10
                              i32.store offset=108
                              local.get $l16
                              local.get $l8
                              local.get $l6
                              i32.eqz
                              i32.const 2
                              i32.shl
                              i32.add
                              local.tee $l8
                              local.get $l22
                              i32.const 102
                              i32.eq
                              select
                              local.tee $l6
                              local.get $l20
                              i32.const 2
                              i32.shl
                              i32.add
                              local.get $l5
                              local.get $l5
                              local.get $l6
                              i32.sub
                              i32.const 2
                              i32.shr_s
                              local.get $l20
                              i32.gt_s
                              select
                              local.set $l5
                              local.get $l10
                              i32.const 0
                              i32.lt_s
                              br_if $L143
                            end
                          end
                          i32.const 0
                          local.set $l11
                          block $B147
                            local.get $l5
                            local.get $l8
                            i32.le_u
                            br_if $B147
                            local.get $l16
                            local.get $l8
                            i32.sub
                            i32.const 2
                            i32.shr_s
                            i32.const 9
                            i32.mul
                            local.set $l11
                            local.get $l8
                            i32.load
                            local.tee $l10
                            i32.const 10
                            i32.lt_u
                            br_if $B147
                            i32.const 10
                            local.set $l6
                            loop $L148
                              local.get $l11
                              i32.const 1
                              i32.add
                              local.set $l11
                              local.get $l10
                              local.get $l6
                              i32.const 10
                              i32.mul
                              local.tee $l6
                              i32.ge_u
                              br_if $L148
                            end
                          end
                          local.get $l12
                          i32.const 0
                          local.get $l11
                          local.get $l22
                          i32.const 102
                          i32.eq
                          select
                          i32.sub
                          local.get $l22
                          i32.const 103
                          i32.eq
                          local.tee $l13
                          local.get $l12
                          i32.const 0
                          i32.ne
                          i32.and
                          i32.sub
                          local.tee $l6
                          local.get $l5
                          local.get $l16
                          i32.sub
                          i32.const 2
                          i32.shr_s
                          i32.const 9
                          i32.mul
                          i32.const 9
                          i32.sub
                          i32.lt_s
                          if $I149
                            local.get $l6
                            i32.const 9216
                            i32.add
                            local.tee $l10
                            i32.const 9
                            i32.div_s
                            local.tee $l9
                            i32.const 2
                            i32.shl
                            local.tee $l39
                            local.get $l7
                            i32.const 1
                            i32.const 73
                            local.get $l27
                            select
                            i32.const 2
                            i32.shl
                            local.tee $l27
                            i32.add
                            i32.add
                            i32.const 3984
                            i32.sub
                            local.set $l17
                            i32.const 10
                            local.set $l6
                            block $B150
                              local.get $l10
                              local.get $l9
                              i32.const 9
                              i32.mul
                              i32.sub
                              local.tee $l9
                              i32.const 7
                              i32.gt_s
                              br_if $B150
                              i32.const 8
                              local.get $l9
                              i32.sub
                              local.tee $l20
                              i32.const 7
                              i32.and
                              local.set $l10
                              local.get $l9
                              i32.const 1
                              i32.sub
                              i32.const 7
                              i32.ge_u
                              if $I151
                                local.get $l20
                                i32.const -8
                                i32.and
                                local.set $l9
                                loop $L152
                                  local.get $l6
                                  i32.const 100000000
                                  i32.mul
                                  local.set $l6
                                  local.get $l9
                                  i32.const 8
                                  i32.sub
                                  local.tee $l9
                                  br_if $L152
                                end
                              end
                              local.get $l10
                              i32.eqz
                              br_if $B150
                              loop $L153
                                local.get $l6
                                i32.const 10
                                i32.mul
                                local.set $l6
                                local.get $l10
                                i32.const 1
                                i32.sub
                                local.tee $l10
                                br_if $L153
                              end
                            end
                            block $B154
                              local.get $l17
                              i32.load
                              local.tee $l10
                              local.get $l10
                              local.get $l6
                              i32.div_u
                              local.tee $l22
                              local.get $l6
                              i32.mul
                              i32.sub
                              local.tee $l9
                              i32.eqz
                              local.get $l17
                              i32.const 4
                              i32.add
                              local.tee $l20
                              local.get $l5
                              i32.eq
                              i32.and
                              br_if $B154
                              block $B155
                                local.get $l22
                                i32.const 1
                                i32.and
                                i32.eqz
                                if $I156
                                  f64.const 0x1p+53 (;=9.0072e+15;)
                                  local.set $l40
                                  local.get $l6
                                  i32.const 1000000000
                                  i32.ne
                                  br_if $B155
                                  local.get $l8
                                  local.get $l17
                                  i32.ge_u
                                  br_if $B155
                                  local.get $l17
                                  i32.const 4
                                  i32.sub
                                  i32.load8_u
                                  i32.const 1
                                  i32.and
                                  i32.eqz
                                  br_if $B155
                                end
                                f64.const 0x1.0000000000001p+53 (;=9.0072e+15;)
                                local.set $l40
                              end
                              f64.const 0x1p-1 (;=0.5;)
                              f64.const 0x1p+0 (;=1;)
                              f64.const 0x1.8p+0 (;=1.5;)
                              local.get $l5
                              local.get $l20
                              i32.eq
                              select
                              f64.const 0x1.8p+0 (;=1.5;)
                              local.get $l9
                              local.get $l6
                              i32.const 1
                              i32.shr_u
                              local.tee $l20
                              i32.eq
                              select
                              local.get $l9
                              local.get $l20
                              i32.lt_u
                              select
                              local.set $l41
                              block $B157
                                local.get $l30
                                br_if $B157
                                local.get $l26
                                i32.load8_u
                                i32.const 45
                                i32.ne
                                br_if $B157
                                local.get $l41
                                f64.neg
                                local.set $l41
                                local.get $l40
                                f64.neg
                                local.set $l40
                              end
                              local.get $l17
                              local.get $l10
                              local.get $l9
                              i32.sub
                              local.tee $l10
                              i32.store
                              local.get $l40
                              local.get $l41
                              f64.add
                              local.get $l40
                              f64.eq
                              br_if $B154
                              local.get $l17
                              local.get $l6
                              local.get $l10
                              i32.add
                              local.tee $l6
                              i32.store
                              local.get $l6
                              i32.const 1000000000
                              i32.ge_u
                              if $I158
                                local.get $l33
                                local.get $l27
                                local.get $l39
                                i32.add
                                i32.add
                                local.set $l6
                                loop $L159
                                  local.get $l6
                                  i32.const 4
                                  i32.add
                                  i32.const 0
                                  i32.store
                                  local.get $l6
                                  local.get $l8
                                  i32.lt_u
                                  if $I160
                                    local.get $l8
                                    i32.const 4
                                    i32.sub
                                    local.tee $l8
                                    i32.const 0
                                    i32.store
                                  end
                                  local.get $l6
                                  local.get $l6
                                  i32.load
                                  i32.const 1
                                  i32.add
                                  local.tee $l10
                                  i32.store
                                  local.get $l6
                                  i32.const 4
                                  i32.sub
                                  local.set $l6
                                  local.get $l10
                                  i32.const 999999999
                                  i32.gt_u
                                  br_if $L159
                                end
                                local.get $l6
                                i32.const 4
                                i32.add
                                local.set $l17
                              end
                              local.get $l16
                              local.get $l8
                              i32.sub
                              i32.const 2
                              i32.shr_s
                              i32.const 9
                              i32.mul
                              local.set $l11
                              local.get $l8
                              i32.load
                              local.tee $l10
                              i32.const 10
                              i32.lt_u
                              br_if $B154
                              i32.const 10
                              local.set $l6
                              loop $L161
                                local.get $l11
                                i32.const 1
                                i32.add
                                local.set $l11
                                local.get $l10
                                local.get $l6
                                i32.const 10
                                i32.mul
                                local.tee $l6
                                i32.ge_u
                                br_if $L161
                              end
                            end
                            local.get $l17
                            i32.const 4
                            i32.add
                            local.tee $l6
                            local.get $l5
                            local.get $l5
                            local.get $l6
                            i32.gt_u
                            select
                            local.set $l5
                          end
                          local.get $l5
                          local.get $l32
                          i32.add
                          local.get $l28
                          i32.sub
                          local.set $l6
                          loop $L162
                            block $B163
                              local.get $l6
                              local.set $l10
                              local.get $l5
                              local.tee $l17
                              local.get $l8
                              i32.le_u
                              local.tee $l9
                              br_if $B163
                              local.get $l10
                              i32.const 4
                              i32.sub
                              local.set $l6
                              local.get $l17
                              i32.const 4
                              i32.sub
                              local.tee $l5
                              i32.load
                              i32.eqz
                              br_if $L162
                            end
                          end
                          block $B164
                            local.get $l13
                            i32.eqz
                            if $I165
                              local.get $l14
                              i32.const 8
                              i32.and
                              local.set $l20
                              br $B164
                            end
                            local.get $l11
                            i32.const -1
                            i32.xor
                            i32.const -1
                            local.get $l12
                            i32.const 1
                            local.get $l12
                            select
                            local.tee $l5
                            local.get $l11
                            i32.gt_s
                            local.get $l11
                            i32.const -5
                            i32.gt_s
                            i32.and
                            local.tee $l6
                            select
                            local.get $l5
                            i32.add
                            local.set $l12
                            i32.const -1
                            i32.const -2
                            local.get $l6
                            select
                            local.get $l19
                            i32.add
                            local.set $l19
                            local.get $l14
                            i32.const 8
                            i32.and
                            local.tee $l20
                            br_if $B164
                            i32.const -9
                            local.set $l5
                            block $B166
                              local.get $l9
                              br_if $B166
                              local.get $l17
                              i32.const 4
                              i32.sub
                              i32.load
                              local.tee $l9
                              i32.eqz
                              br_if $B166
                              i32.const 0
                              local.set $l5
                              local.get $l9
                              i32.const 10
                              i32.rem_u
                              br_if $B166
                              i32.const 10
                              local.set $l6
                              loop $L167
                                local.get $l5
                                i32.const 1
                                i32.sub
                                local.set $l5
                                local.get $l9
                                local.get $l6
                                i32.const 10
                                i32.mul
                                local.tee $l6
                                i32.rem_u
                                i32.eqz
                                br_if $L167
                              end
                            end
                            local.get $l10
                            i32.const 2
                            i32.shr_s
                            i32.const 9
                            i32.mul
                            i32.const 9
                            i32.sub
                            local.set $l6
                            local.get $l19
                            i32.const -33
                            i32.and
                            i32.const 70
                            i32.eq
                            if $I168
                              i32.const 0
                              local.set $l20
                              local.get $l12
                              local.get $l5
                              local.get $l6
                              i32.add
                              local.tee $l5
                              i32.const 0
                              local.get $l5
                              i32.const 0
                              i32.gt_s
                              select
                              local.tee $l5
                              local.get $l5
                              local.get $l12
                              i32.gt_s
                              select
                              local.set $l12
                              br $B164
                            end
                            i32.const 0
                            local.set $l20
                            local.get $l12
                            local.get $l6
                            local.get $l11
                            i32.add
                            local.get $l5
                            i32.add
                            local.tee $l5
                            i32.const 0
                            local.get $l5
                            i32.const 0
                            i32.gt_s
                            select
                            local.tee $l5
                            local.get $l5
                            local.get $l12
                            i32.gt_s
                            select
                            local.set $l12
                          end
                          local.get $l12
                          i32.const 2147483645
                          i32.const 2147483646
                          local.get $l12
                          local.get $l20
                          i32.or
                          local.tee $l30
                          select
                          i32.gt_s
                          br_if $B3
                          local.get $l12
                          local.get $l30
                          i32.const 0
                          i32.ne
                          i32.add
                          i32.const 1
                          i32.add
                          local.set $l22
                          block $B169
                            local.get $l19
                            i32.const -33
                            i32.and
                            i32.const 70
                            i32.ne
                            local.tee $l27
                            i32.eqz
                            if $I170
                              local.get $l11
                              local.get $l22
                              i32.const 2147483647
                              i32.xor
                              i32.gt_s
                              br_if $B3
                              local.get $l11
                              i32.const 0
                              local.get $l11
                              i32.const 0
                              i32.gt_s
                              select
                              local.set $l5
                              br $B169
                            end
                            block $B171
                              local.get $l11
                              i32.eqz
                              if $I172
                                local.get $l24
                                local.tee $l10
                                local.set $l6
                                br $B171
                              end
                              local.get $l11
                              local.get $l11
                              i32.const 31
                              i32.shr_s
                              local.tee $l5
                              i32.xor
                              local.get $l5
                              i32.sub
                              local.set $l5
                              local.get $l24
                              local.tee $l10
                              local.set $l6
                              loop $L173
                                local.get $l6
                                i32.const 1
                                i32.sub
                                local.tee $l6
                                local.get $l5
                                local.get $l5
                                i32.const 10
                                i32.div_u
                                local.tee $l9
                                i32.const 10
                                i32.mul
                                i32.sub
                                i32.const 48
                                i32.or
                                i32.store8
                                local.get $l10
                                i32.const 1
                                i32.sub
                                local.set $l10
                                local.get $l5
                                i32.const 9
                                i32.gt_u
                                local.set $l13
                                local.get $l9
                                local.set $l5
                                local.get $l13
                                br_if $L173
                              end
                            end
                            local.get $l24
                            local.get $l10
                            i32.sub
                            i32.const 1
                            i32.le_s
                            if $I174
                              local.get $l6
                              local.get $l38
                              local.get $l10
                              i32.sub
                              i32.add
                              local.tee $l6
                              i32.const 48
                              local.get $l10
                              local.get $l37
                              i32.add
                              call $f29
                              drop
                            end
                            local.get $l6
                            i32.const 2
                            i32.sub
                            local.tee $l28
                            local.get $l19
                            i32.store8
                            local.get $l6
                            i32.const 1
                            i32.sub
                            i32.const 45
                            i32.const 43
                            local.get $l11
                            i32.const 0
                            i32.lt_s
                            select
                            i32.store8
                            local.get $l24
                            local.get $l28
                            i32.sub
                            local.tee $l5
                            local.get $l22
                            i32.const 2147483647
                            i32.xor
                            i32.gt_s
                            br_if $B3
                          end
                          local.get $l5
                          local.get $l22
                          i32.add
                          local.tee $l5
                          local.get $l23
                          i32.const 2147483647
                          i32.xor
                          i32.gt_s
                          br_if $B3
                          local.get $l5
                          local.get $l23
                          i32.add
                          local.set $l13
                          block $B175
                            local.get $l14
                            i32.const 73728
                            i32.and
                            local.tee $l14
                            br_if $B175
                            local.get $l13
                            local.get $l15
                            i32.ge_s
                            br_if $B175
                            local.get $l7
                            i32.const 624
                            i32.add
                            i32.const 32
                            local.get $l15
                            local.get $l13
                            i32.sub
                            local.tee $l5
                            i32.const 256
                            local.get $l5
                            i32.const 256
                            i32.lt_u
                            local.tee $l6
                            select
                            call $f29
                            drop
                            local.get $l6
                            i32.eqz
                            if $I176
                              loop $L177
                                local.get $p0
                                i32.load8_u
                                i32.const 32
                                i32.and
                                i32.eqz
                                if $I178
                                  local.get $l7
                                  i32.const 624
                                  i32.add
                                  i32.const 256
                                  local.get $p0
                                  call $f15
                                end
                                local.get $l5
                                i32.const 256
                                i32.sub
                                local.tee $l5
                                i32.const 255
                                i32.gt_u
                                br_if $L177
                              end
                            end
                            local.get $p0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if $B175
                            local.get $l7
                            i32.const 624
                            i32.add
                            local.get $l5
                            local.get $p0
                            call $f15
                          end
                          local.get $p0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          i32.eqz
                          if $I179
                            local.get $l26
                            local.get $l23
                            local.get $p0
                            call $f15
                          end
                          block $B180
                            local.get $l14
                            i32.const 65536
                            i32.ne
                            br_if $B180
                            local.get $l13
                            local.get $l15
                            i32.ge_s
                            br_if $B180
                            local.get $l7
                            i32.const 624
                            i32.add
                            i32.const 48
                            local.get $l15
                            local.get $l13
                            i32.sub
                            local.tee $l5
                            i32.const 256
                            local.get $l5
                            i32.const 256
                            i32.lt_u
                            local.tee $l6
                            select
                            call $f29
                            drop
                            local.get $l6
                            i32.eqz
                            if $I181
                              loop $L182
                                local.get $p0
                                i32.load8_u
                                i32.const 32
                                i32.and
                                i32.eqz
                                if $I183
                                  local.get $l7
                                  i32.const 624
                                  i32.add
                                  i32.const 256
                                  local.get $p0
                                  call $f15
                                end
                                local.get $l5
                                i32.const 256
                                i32.sub
                                local.tee $l5
                                i32.const 255
                                i32.gt_u
                                br_if $L182
                              end
                            end
                            local.get $p0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if $B180
                            local.get $l7
                            i32.const 624
                            i32.add
                            local.get $l5
                            local.get $p0
                            call $f15
                          end
                          local.get $l27
                          br_if $B7
                          local.get $l16
                          local.get $l8
                          local.get $l8
                          local.get $l16
                          i32.gt_u
                          select
                          local.tee $l11
                          local.set $l9
                          loop $L184
                            block $B185
                              block $B186
                                block $B187
                                  local.get $l9
                                  i32.load
                                  local.tee $l5
                                  if $I188
                                    i32.const 8
                                    local.set $l6
                                    loop $L189
                                      local.get $l7
                                      i32.const 80
                                      i32.add
                                      local.get $l6
                                      i32.add
                                      local.get $l5
                                      local.get $l5
                                      i32.const 10
                                      i32.div_u
                                      local.tee $l8
                                      i32.const 10
                                      i32.mul
                                      i32.sub
                                      i32.const 48
                                      i32.or
                                      i32.store8
                                      local.get $l6
                                      i32.const 1
                                      i32.sub
                                      local.set $l6
                                      local.get $l5
                                      i32.const 9
                                      i32.gt_u
                                      local.set $l10
                                      local.get $l8
                                      local.set $l5
                                      local.get $l10
                                      br_if $L189
                                    end
                                    local.get $l6
                                    i32.const 1
                                    i32.add
                                    local.tee $l8
                                    local.get $l7
                                    i32.const 80
                                    i32.add
                                    i32.add
                                    local.set $l5
                                    local.get $l9
                                    local.get $l11
                                    i32.ne
                                    if $I190
                                      local.get $l6
                                      i32.const 2
                                      i32.add
                                      i32.const 2
                                      i32.lt_s
                                      br_if $B185
                                      br $B186
                                    end
                                    local.get $l6
                                    i32.const 8
                                    i32.ne
                                    br_if $B185
                                    br $B187
                                  end
                                  i32.const 9
                                  local.set $l8
                                  local.get $l9
                                  local.get $l11
                                  i32.ne
                                  br_if $B186
                                end
                                local.get $l7
                                i32.const 48
                                i32.store8 offset=88
                                local.get $l31
                                local.set $l5
                                br $B185
                              end
                              local.get $l7
                              i32.const 80
                              i32.add
                              local.get $l8
                              local.get $l7
                              i32.const 80
                              i32.add
                              i32.add
                              local.tee $l6
                              i32.const 1
                              i32.sub
                              local.tee $l5
                              local.get $l7
                              i32.const 80
                              i32.add
                              local.get $l5
                              i32.lt_u
                              select
                              local.tee $l5
                              i32.const 48
                              local.get $l6
                              local.get $l5
                              i32.sub
                              call $f29
                              drop
                            end
                            local.get $p0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            i32.eqz
                            if $I191
                              local.get $l5
                              local.get $l29
                              local.get $l5
                              i32.sub
                              local.get $p0
                              call $f15
                            end
                            local.get $l9
                            i32.const 4
                            i32.add
                            local.tee $l9
                            local.get $l16
                            i32.le_u
                            br_if $L184
                          end
                          block $B192
                            local.get $l30
                            i32.eqz
                            br_if $B192
                            local.get $p0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if $B192
                            i32.const 65702
                            i32.const 1
                            local.get $p0
                            call $f15
                          end
                          block $B193
                            local.get $l9
                            local.get $l17
                            i32.ge_u
                            if $I194
                              local.get $l12
                              local.set $l5
                              br $B193
                            end
                            local.get $l12
                            i32.const 0
                            i32.le_s
                            if $I195
                              local.get $l12
                              local.set $l5
                              br $B193
                            end
                            loop $L196
                              block $B197
                                block $B198
                                  local.get $l9
                                  i32.load
                                  local.tee $l5
                                  i32.eqz
                                  if $I199
                                    local.get $l29
                                    local.tee $l6
                                    local.set $l8
                                    br $B198
                                  end
                                  local.get $l29
                                  local.tee $l8
                                  local.set $l6
                                  loop $L200
                                    local.get $l6
                                    i32.const 1
                                    i32.sub
                                    local.tee $l6
                                    local.get $l5
                                    local.get $l5
                                    i32.const 10
                                    i32.div_u
                                    local.tee $l10
                                    i32.const 10
                                    i32.mul
                                    i32.sub
                                    i32.const 48
                                    i32.or
                                    i32.store8
                                    local.get $l8
                                    i32.const 1
                                    i32.sub
                                    local.set $l8
                                    local.get $l5
                                    i32.const 9
                                    i32.gt_u
                                    local.set $l11
                                    local.get $l10
                                    local.set $l5
                                    local.get $l11
                                    br_if $L200
                                  end
                                  local.get $l6
                                  local.get $l7
                                  i32.const 80
                                  i32.add
                                  i32.le_u
                                  br_if $B197
                                end
                                local.get $l6
                                local.get $l7
                                i32.const 80
                                i32.add
                                i32.add
                                local.get $l8
                                i32.sub
                                local.tee $l6
                                i32.const 48
                                local.get $l8
                                local.get $l7
                                i32.const 80
                                i32.add
                                i32.sub
                                call $f29
                                drop
                              end
                              local.get $p0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              i32.eqz
                              if $I201
                                local.get $l6
                                local.get $l12
                                i32.const 9
                                local.get $l12
                                i32.const 9
                                i32.lt_s
                                select
                                local.get $p0
                                call $f15
                              end
                              local.get $l12
                              i32.const 9
                              i32.sub
                              local.set $l5
                              local.get $l9
                              i32.const 4
                              i32.add
                              local.tee $l9
                              local.get $l17
                              i32.ge_u
                              br_if $B193
                              local.get $l12
                              i32.const 9
                              i32.gt_s
                              local.set $l6
                              local.get $l5
                              local.set $l12
                              local.get $l6
                              br_if $L196
                            end
                          end
                          local.get $p0
                          local.get $l5
                          i32.const 9
                          i32.add
                          i32.const 9
                          call $f27
                          br $B6
                        end
                        i32.const 69108
                        i32.const 28
                        i32.store
                        br $B1
                      end
                      i32.const 0
                      local.set $l13
                      i32.const 65536
                      local.set $l16
                      local.get $l21
                      local.set $l5
                      local.get $l14
                      local.set $l17
                      local.get $l9
                      local.set $l11
                    end
                    local.get $l11
                    local.get $l5
                    local.get $l10
                    i32.sub
                    local.tee $l9
                    local.get $l9
                    local.get $l11
                    i32.lt_s
                    select
                    local.tee $l12
                    local.get $l13
                    i32.const 2147483647
                    i32.xor
                    i32.gt_s
                    br_if $B3
                    local.get $l15
                    local.get $l12
                    local.get $l13
                    i32.add
                    local.tee $l8
                    local.get $l8
                    local.get $l15
                    i32.lt_s
                    select
                    local.tee $l5
                    local.get $l6
                    i32.gt_s
                    br_if $B3
                    block $B202
                      local.get $l17
                      i32.const 73728
                      i32.and
                      local.tee $l17
                      br_if $B202
                      local.get $l8
                      local.get $l15
                      i32.ge_s
                      br_if $B202
                      local.get $l7
                      i32.const 112
                      i32.add
                      i32.const 32
                      local.get $l5
                      local.get $l8
                      i32.sub
                      local.tee $l6
                      i32.const 256
                      local.get $l6
                      i32.const 256
                      i32.lt_u
                      local.tee $l14
                      select
                      call $f29
                      drop
                      local.get $l14
                      i32.eqz
                      if $I203
                        loop $L204
                          local.get $p0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          i32.eqz
                          if $I205
                            local.get $l7
                            i32.const 112
                            i32.add
                            i32.const 256
                            local.get $p0
                            call $f15
                          end
                          local.get $l6
                          i32.const 256
                          i32.sub
                          local.tee $l6
                          i32.const 255
                          i32.gt_u
                          br_if $L204
                        end
                      end
                      local.get $p0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if $B202
                      local.get $l7
                      i32.const 112
                      i32.add
                      local.get $l6
                      local.get $p0
                      call $f15
                    end
                    local.get $p0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    i32.eqz
                    if $I206
                      local.get $l16
                      local.get $l13
                      local.get $p0
                      call $f15
                    end
                    block $B207
                      local.get $l17
                      i32.const 65536
                      i32.ne
                      br_if $B207
                      local.get $l8
                      local.get $l15
                      i32.ge_s
                      br_if $B207
                      local.get $l7
                      i32.const 112
                      i32.add
                      i32.const 48
                      local.get $l5
                      local.get $l8
                      i32.sub
                      local.tee $l6
                      i32.const 256
                      local.get $l6
                      i32.const 256
                      i32.lt_u
                      local.tee $l13
                      select
                      call $f29
                      drop
                      local.get $l13
                      i32.eqz
                      if $I208
                        loop $L209
                          local.get $p0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          i32.eqz
                          if $I210
                            local.get $l7
                            i32.const 112
                            i32.add
                            i32.const 256
                            local.get $p0
                            call $f15
                          end
                          local.get $l6
                          i32.const 256
                          i32.sub
                          local.tee $l6
                          i32.const 255
                          i32.gt_u
                          br_if $L209
                        end
                      end
                      local.get $p0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if $B207
                      local.get $l7
                      i32.const 112
                      i32.add
                      local.get $l6
                      local.get $p0
                      call $f15
                    end
                    block $B211
                      local.get $l9
                      local.get $l11
                      i32.ge_s
                      br_if $B211
                      local.get $l7
                      i32.const 112
                      i32.add
                      i32.const 48
                      local.get $l12
                      local.get $l9
                      i32.sub
                      local.tee $l6
                      i32.const 256
                      local.get $l6
                      i32.const 256
                      i32.lt_u
                      local.tee $l11
                      select
                      call $f29
                      drop
                      local.get $l11
                      i32.eqz
                      if $I212
                        loop $L213
                          local.get $p0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          i32.eqz
                          if $I214
                            local.get $l7
                            i32.const 112
                            i32.add
                            i32.const 256
                            local.get $p0
                            call $f15
                          end
                          local.get $l6
                          i32.const 256
                          i32.sub
                          local.tee $l6
                          i32.const 255
                          i32.gt_u
                          br_if $L213
                        end
                      end
                      local.get $p0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if $B211
                      local.get $l7
                      i32.const 112
                      i32.add
                      local.get $l6
                      local.get $p0
                      call $f15
                    end
                    local.get $p0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    i32.eqz
                    if $I215
                      local.get $l10
                      local.get $l9
                      local.get $p0
                      call $f15
                    end
                    local.get $l17
                    i32.const 8192
                    i32.ne
                    br_if $L2
                    local.get $l8
                    local.get $l15
                    i32.ge_s
                    br_if $L2
                    local.get $l7
                    i32.const 112
                    i32.add
                    i32.const 32
                    local.get $l5
                    local.get $l8
                    i32.sub
                    local.tee $l6
                    i32.const 256
                    local.get $l6
                    i32.const 256
                    i32.lt_u
                    local.tee $l8
                    select
                    call $f29
                    drop
                    local.get $l8
                    i32.eqz
                    if $I216
                      loop $L217
                        local.get $p0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        i32.eqz
                        if $I218
                          local.get $l7
                          i32.const 112
                          i32.add
                          i32.const 256
                          local.get $p0
                          call $f15
                        end
                        local.get $l6
                        i32.const 256
                        i32.sub
                        local.tee $l6
                        i32.const 255
                        i32.gt_u
                        br_if $L217
                      end
                    end
                    local.get $p0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    br_if $L2
                    local.get $l7
                    i32.const 112
                    i32.add
                    local.get $l6
                    local.get $p0
                    call $f15
                    br $L2
                  end
                  block $B219
                    local.get $l12
                    i32.const 0
                    i32.lt_s
                    br_if $B219
                    local.get $l17
                    local.get $l8
                    i32.const 4
                    i32.add
                    local.get $l8
                    local.get $l17
                    i32.lt_u
                    select
                    local.set $l17
                    local.get $l8
                    local.set $l9
                    loop $L220
                      block $B221 (result i32)
                        block $B222
                          local.get $l9
                          i32.load
                          local.tee $l5
                          i32.eqz
                          br_if $B222
                          i32.const 0
                          local.set $l6
                          loop $L223
                            local.get $l6
                            local.get $l7
                            i32.add
                            i32.const 88
                            i32.add
                            local.get $l5
                            local.get $l5
                            i32.const 10
                            i32.div_u
                            local.tee $l10
                            i32.const 10
                            i32.mul
                            i32.sub
                            i32.const 48
                            i32.or
                            i32.store8
                            local.get $l6
                            i32.const 1
                            i32.sub
                            local.set $l6
                            local.get $l5
                            i32.const 9
                            i32.gt_u
                            local.set $l11
                            local.get $l10
                            local.set $l5
                            local.get $l11
                            br_if $L223
                          end
                          local.get $l6
                          i32.eqz
                          br_if $B222
                          local.get $l6
                          local.get $l7
                          i32.add
                          i32.const 89
                          i32.add
                          br $B221
                        end
                        local.get $l7
                        i32.const 48
                        i32.store8 offset=88
                        local.get $l31
                      end
                      local.set $l5
                      block $B224
                        local.get $l8
                        local.get $l9
                        i32.ne
                        if $I225
                          local.get $l5
                          local.get $l7
                          i32.const 80
                          i32.add
                          i32.le_u
                          br_if $B224
                          local.get $l7
                          i32.const 80
                          i32.add
                          i32.const 48
                          local.get $l5
                          local.get $l7
                          i32.const 80
                          i32.add
                          i32.sub
                          call $f29
                          drop
                          local.get $l7
                          i32.const 80
                          i32.add
                          local.set $l5
                          br $B224
                        end
                        local.get $p0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        i32.eqz
                        if $I226
                          local.get $l5
                          i32.const 1
                          local.get $p0
                          call $f15
                        end
                        local.get $l5
                        i32.const 1
                        i32.add
                        local.set $l5
                        local.get $l20
                        i32.eqz
                        local.get $l12
                        i32.const 0
                        i32.le_s
                        i32.and
                        br_if $B224
                        local.get $p0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        br_if $B224
                        i32.const 65702
                        i32.const 1
                        local.get $p0
                        call $f15
                      end
                      local.get $l29
                      local.get $l5
                      i32.sub
                      local.set $l6
                      local.get $p0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      i32.eqz
                      if $I227
                        local.get $l5
                        local.get $l12
                        local.get $l6
                        local.get $l6
                        local.get $l12
                        i32.gt_s
                        select
                        local.get $p0
                        call $f15
                      end
                      local.get $l12
                      local.get $l6
                      i32.sub
                      local.set $l12
                      local.get $l9
                      i32.const 4
                      i32.add
                      local.tee $l9
                      local.get $l17
                      i32.ge_u
                      br_if $B219
                      local.get $l12
                      i32.const 0
                      i32.ge_s
                      br_if $L220
                    end
                  end
                  local.get $p0
                  local.get $l12
                  i32.const 18
                  i32.add
                  i32.const 18
                  call $f27
                  local.get $p0
                  i32.load8_u
                  i32.const 32
                  i32.and
                  br_if $B6
                  local.get $l28
                  local.get $l24
                  local.get $l28
                  i32.sub
                  local.get $p0
                  call $f15
                end
                local.get $l14
                i32.const 8192
                i32.ne
                br_if $B4
                local.get $l13
                local.get $l15
                i32.ge_s
                br_if $B4
                local.get $l7
                i32.const 624
                i32.add
                i32.const 32
                local.get $l15
                local.get $l13
                i32.sub
                local.tee $l5
                i32.const 256
                local.get $l5
                i32.const 256
                i32.lt_u
                local.tee $l6
                select
                call $f29
                drop
                local.get $l6
                i32.eqz
                if $I228
                  loop $L229
                    local.get $p0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    i32.eqz
                    if $I230
                      local.get $l7
                      i32.const 624
                      i32.add
                      i32.const 256
                      local.get $p0
                      call $f15
                    end
                    local.get $l5
                    i32.const 256
                    i32.sub
                    local.tee $l5
                    i32.const 255
                    i32.gt_u
                    br_if $L229
                  end
                end
                local.get $p0
                i32.load8_u
                i32.const 32
                i32.and
                br_if $B4
                local.get $l7
                i32.const 624
                i32.add
                local.get $l5
                local.get $p0
                call $f15
                br $B4
              end
              local.get $l26
              local.get $l19
              i32.const 26
              i32.shl
              i32.const 31
              i32.shr_s
              i32.const 9
              i32.and
              i32.add
              local.set $l16
              block $B231
                local.get $l9
                i32.const 11
                i32.gt_u
                br_if $B231
                block $B232
                  i32.const 12
                  local.get $l9
                  i32.sub
                  local.tee $l5
                  i32.const 7
                  i32.and
                  local.tee $l6
                  i32.eqz
                  if $I233
                    f64.const 0x1p+4 (;=16;)
                    local.set $l41
                    br $B232
                  end
                  local.get $l9
                  i32.const 12
                  i32.sub
                  local.set $l5
                  f64.const 0x1p+4 (;=16;)
                  local.set $l41
                  loop $L234
                    local.get $l5
                    i32.const 1
                    i32.add
                    local.set $l5
                    local.get $l41
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    local.set $l41
                    local.get $l6
                    i32.const 1
                    i32.sub
                    local.tee $l6
                    br_if $L234
                  end
                  i32.const 0
                  local.get $l5
                  i32.sub
                  local.set $l5
                end
                local.get $l9
                i32.const 5
                i32.sub
                i32.const 7
                i32.ge_u
                if $I235
                  loop $L236
                    local.get $l41
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    local.set $l41
                    local.get $l5
                    i32.const 8
                    i32.sub
                    local.tee $l5
                    br_if $L236
                  end
                end
                local.get $l16
                i32.load8_u
                i32.const 45
                i32.eq
                if $I237
                  local.get $l41
                  local.get $l40
                  f64.neg
                  local.get $l41
                  f64.sub
                  f64.add
                  f64.neg
                  local.set $l40
                  br $B231
                end
                local.get $l40
                local.get $l41
                f64.add
                local.get $l41
                f64.sub
                local.set $l40
              end
              block $B238 (result i32)
                block $B239
                  local.get $l7
                  i32.load offset=108
                  local.tee $l11
                  i32.eqz
                  br_if $B239
                  local.get $l11
                  local.get $l11
                  i32.const 31
                  i32.shr_s
                  local.tee $l5
                  i32.xor
                  local.get $l5
                  i32.sub
                  local.set $l5
                  i32.const 0
                  local.set $l6
                  loop $L240
                    local.get $l6
                    local.get $l7
                    i32.add
                    i32.const 79
                    i32.add
                    local.get $l5
                    local.get $l5
                    i32.const 10
                    i32.div_u
                    local.tee $l8
                    i32.const 10
                    i32.mul
                    i32.sub
                    i32.const 48
                    i32.or
                    i32.store8
                    local.get $l6
                    i32.const 1
                    i32.sub
                    local.set $l6
                    local.get $l5
                    i32.const 9
                    i32.gt_u
                    local.set $l10
                    local.get $l8
                    local.set $l5
                    local.get $l10
                    br_if $L240
                  end
                  local.get $l6
                  i32.eqz
                  br_if $B239
                  local.get $l6
                  local.get $l7
                  i32.add
                  i32.const 80
                  i32.add
                  br $B238
                end
                local.get $l7
                i32.const 48
                i32.store8 offset=79
                local.get $l36
              end
              local.set $l5
              local.get $l23
              i32.const 2
              i32.or
              local.set $l12
              local.get $l19
              i32.const 32
              i32.and
              local.set $l8
              local.get $l5
              i32.const 2
              i32.sub
              local.tee $l17
              local.get $l19
              i32.const 15
              i32.add
              i32.store8
              local.get $l5
              i32.const 1
              i32.sub
              i32.const 45
              i32.const 43
              local.get $l11
              i32.const 0
              i32.lt_s
              select
              i32.store8
              local.get $l14
              i32.const 8
              i32.and
              local.set $l10
              local.get $l7
              i32.const 80
              i32.add
              local.set $l6
              loop $L241
                local.get $l6
                local.tee $l5
                block $B242 (result i32)
                  local.get $l40
                  f64.abs
                  f64.const 0x1p+31 (;=2.14748e+09;)
                  f64.lt
                  if $I243
                    local.get $l40
                    i32.trunc_f64_s
                    br $B242
                  end
                  i32.const -2147483648
                end
                local.tee $l6
                i32.const 68336
                i32.add
                i32.load8_u
                local.get $l8
                i32.or
                i32.store8
                local.get $l40
                local.get $l6
                f64.convert_i32_s
                f64.sub
                f64.const 0x1p+4 (;=16;)
                f64.mul
                local.set $l40
                block $B244
                  local.get $l5
                  i32.const 1
                  i32.add
                  local.tee $l6
                  local.get $l7
                  i32.const 80
                  i32.add
                  i32.sub
                  i32.const 1
                  i32.ne
                  br_if $B244
                  block $B245
                    local.get $l10
                    br_if $B245
                    local.get $l9
                    i32.const 0
                    i32.gt_s
                    br_if $B245
                    local.get $l40
                    f64.const 0x0p+0 (;=0;)
                    f64.eq
                    br_if $B244
                  end
                  local.get $l5
                  i32.const 46
                  i32.store8 offset=1
                  local.get $l5
                  i32.const 2
                  i32.add
                  local.set $l6
                end
                local.get $l40
                f64.const 0x0p+0 (;=0;)
                f64.ne
                br_if $L241
              end
              i32.const 2147483645
              local.get $l24
              local.get $l17
              i32.sub
              local.tee $l11
              local.get $l12
              i32.add
              local.tee $l5
              i32.sub
              local.get $l9
              i32.lt_s
              br_if $B3
              local.get $l9
              i32.const 2
              i32.add
              local.get $l6
              local.get $l7
              i32.const 80
              i32.add
              i32.sub
              local.tee $l8
              local.get $l6
              local.get $l35
              i32.add
              local.get $l9
              i32.lt_s
              select
              local.get $l8
              local.get $l9
              select
              local.tee $l10
              local.get $l5
              i32.add
              local.set $l13
              block $B246
                local.get $l14
                i32.const 73728
                i32.and
                local.tee $l6
                br_if $B246
                local.get $l13
                local.get $l15
                i32.ge_s
                br_if $B246
                local.get $l7
                i32.const 624
                i32.add
                i32.const 32
                local.get $l15
                local.get $l13
                i32.sub
                local.tee $l5
                i32.const 256
                local.get $l5
                i32.const 256
                i32.lt_u
                local.tee $l9
                select
                call $f29
                drop
                local.get $l9
                i32.eqz
                if $I247
                  loop $L248
                    local.get $p0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    i32.eqz
                    if $I249
                      local.get $l7
                      i32.const 624
                      i32.add
                      i32.const 256
                      local.get $p0
                      call $f15
                    end
                    local.get $l5
                    i32.const 256
                    i32.sub
                    local.tee $l5
                    i32.const 255
                    i32.gt_u
                    br_if $L248
                  end
                end
                local.get $p0
                i32.load8_u
                i32.const 32
                i32.and
                br_if $B246
                local.get $l7
                i32.const 624
                i32.add
                local.get $l5
                local.get $p0
                call $f15
              end
              local.get $p0
              i32.load8_u
              i32.const 32
              i32.and
              i32.eqz
              if $I250
                local.get $l16
                local.get $l12
                local.get $p0
                call $f15
              end
              block $B251
                local.get $l6
                i32.const 65536
                i32.ne
                br_if $B251
                local.get $l13
                local.get $l15
                i32.ge_s
                br_if $B251
                local.get $l7
                i32.const 624
                i32.add
                i32.const 48
                local.get $l15
                local.get $l13
                i32.sub
                local.tee $l5
                i32.const 256
                local.get $l5
                i32.const 256
                i32.lt_u
                local.tee $l9
                select
                call $f29
                drop
                local.get $l9
                i32.eqz
                if $I252
                  loop $L253
                    local.get $p0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    i32.eqz
                    if $I254
                      local.get $l7
                      i32.const 624
                      i32.add
                      i32.const 256
                      local.get $p0
                      call $f15
                    end
                    local.get $l5
                    i32.const 256
                    i32.sub
                    local.tee $l5
                    i32.const 255
                    i32.gt_u
                    br_if $L253
                  end
                end
                local.get $p0
                i32.load8_u
                i32.const 32
                i32.and
                br_if $B251
                local.get $l7
                i32.const 624
                i32.add
                local.get $l5
                local.get $p0
                call $f15
              end
              local.get $p0
              i32.load8_u
              i32.const 32
              i32.and
              i32.eqz
              if $I255
                local.get $l7
                i32.const 80
                i32.add
                local.get $l8
                local.get $p0
                call $f15
              end
              block $B256
                local.get $l10
                local.get $l8
                i32.sub
                local.tee $l5
                i32.const 0
                i32.le_s
                br_if $B256
                local.get $l7
                i32.const 624
                i32.add
                i32.const 48
                local.get $l5
                i32.const 256
                local.get $l5
                i32.const 256
                i32.lt_u
                local.tee $l8
                select
                call $f29
                drop
                local.get $l8
                i32.eqz
                if $I257
                  loop $L258
                    local.get $p0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    i32.eqz
                    if $I259
                      local.get $l7
                      i32.const 624
                      i32.add
                      i32.const 256
                      local.get $p0
                      call $f15
                    end
                    local.get $l5
                    i32.const 256
                    i32.sub
                    local.tee $l5
                    i32.const 255
                    i32.gt_u
                    br_if $L258
                  end
                end
                local.get $p0
                i32.load8_u
                i32.const 32
                i32.and
                br_if $B256
                local.get $l7
                i32.const 624
                i32.add
                local.get $l5
                local.get $p0
                call $f15
              end
              local.get $p0
              i32.load8_u
              i32.const 32
              i32.and
              i32.eqz
              if $I260
                local.get $l17
                local.get $l11
                local.get $p0
                call $f15
              end
              local.get $l6
              i32.const 8192
              i32.ne
              br_if $B4
              local.get $l13
              local.get $l15
              i32.ge_s
              br_if $B4
              local.get $l7
              i32.const 624
              i32.add
              i32.const 32
              local.get $l15
              local.get $l13
              i32.sub
              local.tee $l5
              i32.const 256
              local.get $l5
              i32.const 256
              i32.lt_u
              local.tee $l6
              select
              call $f29
              drop
              local.get $l6
              i32.eqz
              if $I261
                loop $L262
                  local.get $p0
                  i32.load8_u
                  i32.const 32
                  i32.and
                  i32.eqz
                  if $I263
                    local.get $l7
                    i32.const 624
                    i32.add
                    i32.const 256
                    local.get $p0
                    call $f15
                  end
                  local.get $l5
                  i32.const 256
                  i32.sub
                  local.tee $l5
                  i32.const 255
                  i32.gt_u
                  br_if $L262
                end
              end
              local.get $p0
              i32.load8_u
              i32.const 32
              i32.and
              br_if $B4
              local.get $l7
              i32.const 624
              i32.add
              local.get $l5
              local.get $p0
              call $f15
            end
            local.get $l13
            local.get $l15
            local.get $l13
            local.get $l15
            i32.gt_s
            select
            local.tee $l5
            i32.const 0
            i32.ge_s
            br_if $L2
          end
        end
        i32.const 69108
        i32.const 61
        i32.store
      end
      i32.const -1
      local.set $l18
    end
    local.get $l7
    i32.const 880
    i32.add
    global.set $g0
    local.get $l18)
  (func $f26 (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
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
                                          br_table $B1 $B18 $B17 $B14 $B16 $B15 $B13 $B12 $B11 $B10 $B9 $B8 $B7 $B6 $B5 $B4 $B3 $B2 $B0
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
        i32.const 65836
        i32.const 68480
        call $f16
        drop
        unreachable
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
    end)
  (func $f27 (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 256
    i32.sub
    local.tee $l3
    global.set $g0
    block $B0
      local.get $p1
      local.get $p2
      i32.le_s
      br_if $B0
      local.get $l3
      i32.const 48
      local.get $p1
      local.get $p2
      i32.sub
      local.tee $p2
      i32.const 256
      local.get $p2
      i32.const 256
      i32.lt_u
      local.tee $l4
      select
      call $f29
      local.set $p1
      local.get $l4
      i32.eqz
      if $I1
        loop $L2
          local.get $p0
          i32.load8_u
          i32.const 32
          i32.and
          i32.eqz
          if $I3
            local.get $p1
            i32.const 256
            local.get $p0
            call $f15
          end
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
      i32.load8_u
      i32.const 32
      i32.and
      br_if $B0
      local.get $p1
      local.get $p2
      local.get $p0
      call $f15
    end
    local.get $l3
    i32.const 256
    i32.add
    global.set $g0)
  (func $f28 (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    block $B0
      block $B1
        local.get $p2
        i32.const 32
        i32.le_u
        if $I2
          local.get $p1
          i32.const 3
          i32.and
          i32.eqz
          br_if $B1
          local.get $p2
          i32.eqz
          br_if $B1
          local.get $p0
          local.get $p1
          i32.load8_u
          i32.store8
          local.get $p2
          i32.const 1
          i32.sub
          local.set $l5
          local.get $p0
          i32.const 1
          i32.add
          local.set $l3
          local.get $p1
          i32.const 1
          i32.add
          local.tee $l4
          i32.const 3
          i32.and
          i32.eqz
          br_if $B0
          local.get $l5
          i32.eqz
          br_if $B0
          local.get $p0
          local.get $p1
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get $p2
          i32.const 2
          i32.sub
          local.set $l5
          local.get $p0
          i32.const 2
          i32.add
          local.set $l3
          local.get $p1
          i32.const 2
          i32.add
          local.tee $l4
          i32.const 3
          i32.and
          i32.eqz
          br_if $B0
          local.get $l5
          i32.eqz
          br_if $B0
          local.get $p0
          local.get $p1
          i32.load8_u offset=2
          i32.store8 offset=2
          local.get $p2
          i32.const 3
          i32.sub
          local.set $l5
          local.get $p0
          i32.const 3
          i32.add
          local.set $l3
          local.get $p1
          i32.const 3
          i32.add
          local.tee $l4
          i32.const 3
          i32.and
          i32.eqz
          br_if $B0
          local.get $l5
          i32.eqz
          br_if $B0
          local.get $p0
          local.get $p1
          i32.load8_u offset=3
          i32.store8 offset=3
          local.get $p2
          i32.const 4
          i32.sub
          local.set $l5
          local.get $p0
          i32.const 4
          i32.add
          local.set $l3
          local.get $p1
          i32.const 4
          i32.add
          local.set $l4
          br $B0
        end
        local.get $p0
        local.get $p1
        local.get $p2
        memory.copy
        return
      end
      local.get $p2
      local.set $l5
      local.get $p0
      local.set $l3
      local.get $p1
      local.set $l4
    end
    block $B3
      local.get $l3
      i32.const 3
      i32.and
      local.tee $p2
      i32.eqz
      if $I4
        block $B5
          local.get $l5
          i32.const 16
          i32.lt_u
          if $I6
            local.get $l5
            local.set $p2
            br $B5
          end
          local.get $l5
          i32.const 16
          i32.sub
          local.tee $p2
          i32.const 16
          i32.and
          i32.eqz
          if $I7
            local.get $l3
            local.get $l4
            i64.load align=4
            i64.store align=4
            local.get $l3
            local.get $l4
            i64.load offset=8 align=4
            i64.store offset=8 align=4
            local.get $l3
            i32.const 16
            i32.add
            local.set $l3
            local.get $l4
            i32.const 16
            i32.add
            local.set $l4
            local.get $p2
            local.set $l5
          end
          local.get $p2
          i32.const 16
          i32.lt_u
          br_if $B5
          local.get $l5
          local.set $p2
          loop $L8
            local.get $l3
            local.get $l4
            i64.load align=4
            i64.store align=4
            local.get $l3
            local.get $l4
            i64.load offset=8 align=4
            i64.store offset=8 align=4
            local.get $l3
            local.get $l4
            i64.load offset=16 align=4
            i64.store offset=16 align=4
            local.get $l3
            local.get $l4
            i64.load offset=24 align=4
            i64.store offset=24 align=4
            local.get $l3
            i32.const 32
            i32.add
            local.set $l3
            local.get $l4
            i32.const 32
            i32.add
            local.set $l4
            local.get $p2
            i32.const 32
            i32.sub
            local.tee $p2
            i32.const 15
            i32.gt_u
            br_if $L8
          end
        end
        local.get $p2
        i32.const 8
        i32.ge_u
        if $I9
          local.get $l3
          local.get $l4
          i64.load align=4
          i64.store align=4
          local.get $l4
          i32.const 8
          i32.add
          local.set $l4
          local.get $l3
          i32.const 8
          i32.add
          local.set $l3
        end
        local.get $p2
        i32.const 4
        i32.and
        if $I10
          local.get $l3
          local.get $l4
          i32.load
          i32.store
          local.get $l4
          i32.const 4
          i32.add
          local.set $l4
          local.get $l3
          i32.const 4
          i32.add
          local.set $l3
        end
        local.get $p2
        i32.const 2
        i32.and
        if $I11
          local.get $l3
          local.get $l4
          i32.load16_u align=1
          i32.store16 align=1
          local.get $l4
          i32.const 2
          i32.add
          local.set $l4
          local.get $l3
          i32.const 2
          i32.add
          local.set $l3
        end
        local.get $p2
        i32.const 1
        i32.and
        i32.eqz
        br_if $B3
        local.get $l3
        local.get $l4
        i32.load8_u
        i32.store8
        return
      end
      block $B12
        block $B13
          block $B14 (result i32)
            block $B15
              local.get $l5
              i32.const 32
              i32.ge_u
              if $I16
                block $B17
                  block $B18
                    local.get $p2
                    i32.const 1
                    i32.sub
                    br_table $B15 $B18 $B17 $B3
                  end
                  local.get $l3
                  local.get $l4
                  i32.load
                  i32.store16 align=1
                  local.get $l3
                  local.get $l4
                  i32.const 2
                  i32.add
                  i32.load align=2
                  i32.store offset=2
                  local.get $l3
                  local.get $l4
                  i32.const 6
                  i32.add
                  i64.load align=2
                  i64.store offset=6 align=4
                  local.get $l4
                  i32.const 18
                  i32.add
                  local.set $p1
                  i32.const 14
                  local.set $p0
                  local.get $l4
                  i32.const 14
                  i32.add
                  i32.load align=2
                  local.set $l4
                  i32.const 14
                  local.set $l5
                  local.get $l3
                  i32.const 18
                  i32.add
                  br $B14
                end
                local.get $l3
                local.get $l4
                i32.load
                i32.store8
                local.get $l3
                local.get $l4
                i32.const 1
                i32.add
                i32.load align=1
                i32.store offset=1
                local.get $l3
                local.get $l4
                i32.const 5
                i32.add
                i64.load align=1
                i64.store offset=5 align=4
                local.get $l4
                i32.const 17
                i32.add
                local.set $p1
                i32.const 13
                local.set $p0
                local.get $l4
                i32.const 13
                i32.add
                i32.load align=1
                local.set $l4
                i32.const 15
                local.set $l5
                local.get $l3
                i32.const 17
                i32.add
                br $B14
              end
              block $B19 (result i32)
                local.get $l5
                i32.const 16
                i32.lt_u
                if $I20
                  local.get $l3
                  local.set $p2
                  local.get $l4
                  br $B19
                end
                local.get $l3
                local.get $l4
                i32.load8_u
                i32.store8
                local.get $l3
                local.get $l4
                i32.load offset=1 align=1
                i32.store offset=1 align=1
                local.get $l3
                local.get $l4
                i64.load offset=5 align=1
                i64.store offset=5 align=1
                local.get $l3
                local.get $l4
                i32.load16_u offset=13 align=1
                i32.store16 offset=13 align=1
                local.get $l3
                local.get $l4
                i32.load8_u offset=15
                i32.store8 offset=15
                local.get $l3
                i32.const 16
                i32.add
                local.set $p2
                local.get $l4
                i32.const 16
                i32.add
              end
              local.set $p1
              local.get $l5
              i32.const 8
              i32.and
              br_if $B13
              br $B12
            end
            local.get $l3
            local.get $l4
            i32.load
            local.tee $p2
            i32.store8
            local.get $l3
            local.get $p2
            i32.const 16
            i32.shr_u
            i32.store8 offset=2
            local.get $l3
            local.get $p2
            i32.const 8
            i32.shr_u
            i32.store8 offset=1
            local.get $l3
            local.get $l4
            i32.const 3
            i32.add
            i32.load align=1
            i32.store offset=3
            local.get $l3
            local.get $l4
            i32.const 7
            i32.add
            i64.load align=1
            i64.store offset=7 align=4
            local.get $l4
            i32.const 19
            i32.add
            local.set $p1
            i32.const 15
            local.set $p0
            local.get $l4
            i32.const 15
            i32.add
            i32.load align=1
            local.set $l4
            i32.const 13
            local.set $l5
            local.get $l3
            i32.const 19
            i32.add
          end
          local.set $p2
          local.get $p0
          local.get $l3
          i32.add
          local.get $l4
          i32.store
        end
        local.get $p2
        local.get $p1
        i64.load align=1
        i64.store align=1
        local.get $p2
        i32.const 8
        i32.add
        local.set $p2
        local.get $p1
        i32.const 8
        i32.add
        local.set $p1
      end
      local.get $l5
      i32.const 4
      i32.and
      if $I21
        local.get $p2
        local.get $p1
        i32.load align=1
        i32.store align=1
        local.get $p2
        i32.const 4
        i32.add
        local.set $p2
        local.get $p1
        i32.const 4
        i32.add
        local.set $p1
      end
      local.get $l5
      i32.const 2
      i32.and
      if $I22
        local.get $p2
        local.get $p1
        i32.load16_u align=1
        i32.store16 align=1
        local.get $p2
        i32.const 2
        i32.add
        local.set $p2
        local.get $p1
        i32.const 2
        i32.add
        local.set $p1
      end
      local.get $l5
      i32.const 1
      i32.and
      i32.eqz
      br_if $B3
      local.get $p2
      local.get $p1
      i32.load8_u
      i32.store8
    end)
  (func $f29 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64)
    local.get $p2
    i32.const 33
    i32.ge_u
    if $I0
      local.get $p0
      local.get $p1
      local.get $p2
      memory.fill
      local.get $p0
      return
    end
    block $B1
      local.get $p2
      i32.eqz
      br_if $B1
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
      br_if $B1
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
      br_if $B1
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
      br_if $B1
      local.get $p0
      i32.const 0
      local.get $p0
      i32.sub
      i32.const 3
      i32.and
      local.tee $l5
      i32.add
      local.tee $l4
      local.get $p1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee $l3
      i32.store
      local.get $l4
      local.get $p2
      local.get $l5
      i32.sub
      i32.const -4
      i32.and
      local.tee $p1
      i32.add
      local.tee $p2
      i32.const 4
      i32.sub
      local.get $l3
      i32.store
      local.get $p1
      i32.const 9
      i32.lt_u
      br_if $B1
      local.get $l4
      local.get $l3
      i32.store offset=8
      local.get $l4
      local.get $l3
      i32.store offset=4
      local.get $p2
      i32.const 8
      i32.sub
      local.get $l3
      i32.store
      local.get $p2
      i32.const 12
      i32.sub
      local.get $l3
      i32.store
      local.get $p1
      i32.const 25
      i32.lt_u
      br_if $B1
      local.get $l4
      local.get $l3
      i32.store offset=24
      local.get $l4
      local.get $l3
      i32.store offset=20
      local.get $l4
      local.get $l3
      i32.store offset=16
      local.get $l4
      local.get $l3
      i32.store offset=12
      local.get $p2
      i32.const 16
      i32.sub
      local.get $l3
      i32.store
      local.get $p2
      i32.const 20
      i32.sub
      local.get $l3
      i32.store
      local.get $p2
      i32.const 24
      i32.sub
      local.get $l3
      i32.store
      local.get $p2
      i32.const 28
      i32.sub
      local.get $l3
      i32.store
      local.get $p1
      local.get $l4
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee $p2
      i32.sub
      local.tee $p1
      i32.const 32
      i32.lt_u
      br_if $B1
      local.get $l3
      i64.extend_i32_u
      i64.const 4294967297
      i64.mul
      local.set $l6
      local.get $p2
      local.get $l4
      i32.add
      local.set $p2
      loop $L2
        local.get $p2
        local.get $l6
        i64.store offset=24
        local.get $p2
        local.get $l6
        i64.store offset=16
        local.get $p2
        local.get $l6
        i64.store offset=8
        local.get $p2
        local.get $l6
        i64.store
        local.get $p2
        i32.const 32
        i32.add
        local.set $p2
        local.get $p1
        i32.const 32
        i32.sub
        local.tee $p1
        i32.const 31
        i32.gt_u
        br_if $L2
      end
    end
    local.get $p0)
  (table $T0 5 5 funcref)
  (memory $memory 2)
  (global $g0 (mut i32) (i32.const 65536))
  (export "memory" (memory 0))
  (export "_start" (func $_start))
  (elem $e0 (i32.const 1) func $f20 $f18 $f21 $f22)
  (data $d0 (i32.const 65536) "-+   0X0x\00-0X+0X 0X-0x+0x 0x\00nan\00global const string\00dynamically (heap) allocated string\00stack-allocated (local) string\00inf\00next dynamically (heap) allocated\00NAN\00INF\00.\00(null)\00  in main()\00  in leaf()\00  in intermediate()\00    \09stack grows: %ld\0a\00    \09malloc has grown heap in: %ld but %d wasm requested\0a\00Support for formatting long double values is currently disabled.\0aTo enable it, add -lc-printscan-long-double to the link command.\0a\00    \09stack at the beginning, addr :%p (%lu)\0a\00    %s, addr: %p (%lu)\0a\00    \09%s, addr: %p (%lu)\0a\00    stack value in leaf() function, addr: %p (%lu)\0a\00    argv[0]: %s, addr: %p (%lu)\0a\0a\00Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient")
  (data $d1 (i32.const 67714) "u\02N\00\d6\01\e2\04\b9\04\18\01\8e\05\ed\02\16\04\f2\00\97\03\01\038\05\af\01\82\01O\03/\04\1e\00\d4\05\a2\00\12\03\1e\03\c2\01\de\03\08\00\ac\05\00\01d\02\f1\01e\054\02\8c\02\cf\02-\03L\04\e3\05\9f\02\f8\04\1c\05\08\05\b1\02K\05\15\02x\00R\02<\03\f1\03\e4\00\c3\03}\04\cc\00\aa\03y\05$\02n\01m\03\22\04\ab\04D\00\fb\01\ae\00\83\03`\00\e5\01\07\04\94\04^\04+\00X\019\01\92\00\c2\05\9b\01C\02F\01\f6\05\00\00\00\00\00\00\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\1b\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19")
  (data $d2 (i32.const 67953) "\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e")
  (data $d3 (i32.const 68011) "\0c")
  (data $d4 (i32.const 68023) "\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c")
  (data $d5 (i32.const 68069) "\10")
  (data $d6 (i32.const 68081) "\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10")
  (data $d7 (i32.const 68127) "\12")
  (data $d8 (i32.const 68139) "\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a")
  (data $d9 (i32.const 68194) "\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09")
  (data $d10 (i32.const 68243) "\14")
  (data $d11 (i32.const 68255) "\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14")
  (data $d12 (i32.const 68301) "\16")
  (data $d13 (i32.const 68313) "\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF")
  (data $d14 (i32.const 68352) "!\00\01\00\00\00\00\00\05")
  (data $d15 (i32.const 68372) "\02")
  (data $d16 (i32.const 68392) "\03\00\00\00\04\00\00\00\08\0e\01\00\00\04")
  (data $d17 (i32.const 68416) "\01\00\00\00\00\00\00\00\0a")
  (data $d18 (i32.const 68472) "\08\0b\01\00\00\00\00\00\05")
  (data $d19 (i32.const 68492) "\02")
  (data $d20 (i32.const 68512) "\01\00\00\00\04\00\00\00,\12\01")
  (data $d21 (i32.const 68536) "\02\00\00\00\00\00\00\00\ff\ff\ff\ff")
  (data $d22 (i32.const 68592) "\80\0b\01"))
