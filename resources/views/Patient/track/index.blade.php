
    <!--导航-->
    <div class="guide">
        <ul class="left">
            <li><span class="icon">Ă</span><a href="javascript:void(0);" onclick="getChange(0);fastH(this,'main')" url="{{ route('index',['s'=>'1']) }}">首页</a><span class="ider">&gt;</span></li>
                {!! guideHtml('患者回访', route('patienttrack.index')) !!}
                {!! guideHtml('列表') !!}
        </ul>
        <p class="nlink right">
            {{--<a href="javascript:void(0);" onclick="fastH(this);set_title('取消跟踪');" url="reply.asp?n=2" class="call"><span class="icon">Ū</span>取消跟踪</a>--}}

            <a href="javascript:void(0);" onclick="fastH(this,'main');set_title('今日回访');" url="{{ route('patientTrackToday') }}" class="sms"><span class="icon">ğ</span>今日回访</a></p>
    </div>
    <div id="wrap" class="wrap">
        <!--整体内容-->
        <div id="container" class="container">
            <div class="top">
                <h3 class="left"><span class="icon">į</span>回访列表</h3>
                <p class="nlink right"></p>
            </div>
            <div class="fun none" id="fun">
                <div id="fun-n" class="right"></div>
            </div>
            <div id="box" class="box">
                <table cellspacing="1" cellpadding="0">
                    <thead>
                        <tr>
                            <th width="120">
                                <center><a href="javascript:void(0);" url="reply.asp?t=dateline&amp;go=desc" title="按回访时间排序" onclick="fastH(this)">回访时间</a></center>
                            </th>
                            <th width="80">
                                <center><a href="javascript:void(0);" url="reply.asp?t=aid&amp;go=desc" title="按姓名排序" onclick="fastH(this)">姓名</a></center>
                            </th>
                            <th width="*"><a href="javascript:void(0);" url="reply.asp?t=state&amp;go=desc" title="按内容排序" onclick="fastH(this)">内容</a></th>
                            <th width="100">
                                <center><a href="javascript:void(0);" url="reply.asp?t=uid&amp;go=desc" title="按操作员排序" onclick="fastH(this)">操作员</a></center>
                            </th>
                        </tr>
                    </thead>
                    <tbody id="tablebg">

                    @foreach($tracks as $key => $item)
                        @if(is_int($key/2))
                            <tr class="t1">
                        @else
                            <tr class="t2">
                        @endif
                            <td>
                                <center>{{ formatDate($item->add_time) }}</center>
                            </td>
                            <td>
                                <center><a href="javascript:void(0);" title="“{{ $item->name }}”的回访记录" onclick="msgbox(this,850);" url="{{ route('patienttrack.show',['id'=>$item->patient_id]) }}">{{ $item->name }}</a></center>
                            </td>
                            <td>{{ $item->content }}&nbsp;</td>
                            <td>
                                <center>{{ $item->admin_id  }}</center>
                            </td>
                        </tr>
                    @endforeach
                        <tr class="t1">
                            <td colspan="4">&nbsp;&nbsp;记录:<i>1</i>条</td>
                        </tr>
                    </tbody>
                </table>
                <input type="hidden" name="this_url" id="this_url" value="/reply.asp">
            </div>
        </div>
    </div>
