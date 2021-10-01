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

### vim-surround

`"Hello world!" `变成`'Hello world!'`:     `cs"'` ，光标只需在句子里面即可

```html
<q>Hello world!</q>    # 按 cs'<q>
```

删除单引号：`ds'`

#### 添加新环绕

1. 可视模式，选中之后，`S'`

2. - 普通模式，动作命令 `ys`, `ysiw'`,在当前单词加引号
   - `yss'` 在当前句子家环绕，这个很强大

和vim-repeat一起用，很强大









