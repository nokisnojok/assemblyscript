(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (table $0 2 funcref)
 (elem (i32.const 0) $null $getter-call/C#get:x~anonymous|0)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $getter-call/test))
 (start $start)
 (func $~lib/memory/memory.allocate (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.tee $1
  local.get $0
  i32.const 1
  local.get $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  local.tee $0
  current_memory
  local.tee $2
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $2
   local.get $0
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $3
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/runtime/assertUnregistered (; 2 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 48
  i32.le_u
  if
   i32.const 0
   i32.const 16
   i32.const 188
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const -1520547049
  i32.ne
  if
   i32.const 0
   i32.const 16
   i32.const 189
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $getter-call/C#constructor (; 3 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 8
  call $~lib/memory/memory.allocate
  local.tee $0
  i32.const -1520547049
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 8
  i32.add
  local.tee $0
  call $~lib/runtime/assertUnregistered
  local.get $0
  i32.const 8
  i32.sub
  i32.const 1
  i32.store
  local.get $0
 )
 (func $getter-call/C#get:x~anonymous|0 (; 4 ;) (type $FUNCSIG$i) (result i32)
  i32.const 42
 )
 (func $getter-call/test (; 5 ;) (type $FUNCSIG$i) (result i32)
  block (result i32)
   call $getter-call/C#constructor
  end
  drop
  i32.const 0
  global.set $~lib/argc
  i32.const 1
  call_indirect (type $FUNCSIG$i)
 )
 (func $start (; 6 ;) (type $FUNCSIG$v)
  i32.const 48
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $null (; 7 ;) (type $FUNCSIG$v)
  nop
 )
)
