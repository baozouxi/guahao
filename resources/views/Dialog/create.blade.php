<!--导航-->
<div class="guide">
    <ul class="left">
        <li><span class="icon">Ă</span><a href="javascript:void(0);" onclick="getChange(0);fastH(this,'main')" url="{{ route('index',['s'=>'1']) }}">首页</a><span class="ider">&gt;</span></li>
        <li><a href="javascript:void(0);" onclick="fastH(this,'main')" url="dia.asp?s=1">对话列表</a><span class="ider">&gt;</span></li>
        <li>新增回拨</li>
    </ul>
</div>
<div id="wrap" class="wrap">
    <!--整体内容-->
    <div id="container" class="container">
        <div class="top">
            <h3 class="left"><span class="icon">ŷ</span>新增对话</h3>
            <p class="nlink right"><a href="javascript:void(0);" onclick="fastH(this,'main')" url="dia.asp?s=1" id="ref_url" title="返回" class="config"><span class="icon">ĭ</span>返回</a></p>
        </div>
        <div id="box" class="box">
            <div id="tip" class="tip"><span class="icon" style="cursor:pointer;" onclick="hide(&quot;tip&quot;);">ź</span><i class="icon">Ź</i> 没对话零到诊可以不填,没对话有到诊直接选择日期提交即可！</div>
            <form id="form_sub" name="form_sub" method="post" action="javascript:fastP('{{ route('dialog.store') }}');">
            @foreach($ways as $way)                
                <label class="inline">{{ $way->name }}</label>
                <input type="text" name="{{ $way->id }}" id="dia_{{ $way->id }}" class="input" value="0" style="width:195px;" autocomplete="off" disableautocomplete="" onblur="this.style.backgroundColor='#fff';" onfocus="this.style.backgroundColor='#FFFEF1';">
            @endforeach
                {{ csrf_field() }}

                <label class="inline"><em>*</em>日期：</label>
                <input type="text" name="date" id="dateline" class="Wdate" value="" style="width: 193px; background-color: rgb(255, 255, 255);" autocomplete="off" disableautocomplete="" onblur="this.style.backgroundColor='#fff';" onfocus="this.style.backgroundColor='#FFFEF1';" readonly="">
                <script>
                $('dateline').className = 'Wdate';
                $('dateline').onfocus = function() {
                    WdatePicker({
                        doubleCalendar: false,
                        dateFmt: 'yyyy-MM-dd',
                        maxDate: '%y-%M-{%d}'
                    });
                }
                </script>
                <label class="inline">备注信息：</label>
                <textarea name="content" id="content" class="textarea" style="width: 500px; height: 100px; background-color: rgb(255, 255, 255);" onblur="this.style.backgroundColor='#fff';" onfocus="this.style.backgroundColor='#FFFEF1';"></textarea>
                <label class="inline"></label>
                <label class="inline"></label>
                <div name="msg" id="msg" style="width:484px;" class="msg">请稍后..</div>
                <label class="inline"></label>
                <button type="submit" id="submit" class="submit"><span class="icon">Ż</span>保存</button>
                <button type="reset" class="button"><span class="icon">ň</span>重置</button>
                <button type="button" onclick="To($('back_url').value,'main');" class="button"><span class="icon">ĭ</span>返回</button>
            </form>
        </div>
    </div>
</div>
