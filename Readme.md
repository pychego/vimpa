### Easy-align

动作命令 ga

#### =

`gaip=`                第一个等号位置对齐

`gaip2=`               第二个等号位置对齐

`gaip*=`               所有的等号位置对齐

`gaip**=`              在上一条基础上其余字符左/右对齐

`gaip<Enter>*=`        右对齐

`gaip<Enter><Enter>*=` 居中


空格对齐相似，csv对齐多个一个`,`也对齐，`gaip<Right>*,`

### multiple-cursor

`<c-N>`         begin to multiple-cursor-mode

`n`or`N`        change next or previous word

`q`             skip current and get next occurrence

`Q`             remove current cursor

`a`,`A`,`i`,`I` can use as usual. At this mode, cursor can
control many word.
