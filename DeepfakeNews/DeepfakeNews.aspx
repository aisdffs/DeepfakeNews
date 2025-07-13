<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeepfakeNews.aspx.cs" Inherits="DeepfakeNews.DeepfakeNews" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>真假难辨：AI深度伪造背后的信任危机</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body class="bg-white text-gray-900">
    <form id="form1" runat="server">

        <!-- ① Hero 双栏（左图右文） -->
        <section class="relative h-screen flex items-center justify-center text-white overflow-hidden">
  <!-- 🟦 你选择的 GIPHY AI 动图 -->
  <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExM2gxMTBvcmhjOWt1b3dma2ljdzN1bXZjYWM2anRkYmgyejQxMThwaiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/TaYmMYLtP0RvpDzgn4/giphy.gif" alt="AI Deepfake Homer" class="absolute w-full h-full object-cover z-0">

  <!-- 黑色半透明遮罩 -->
  <div class="absolute inset-0 bg-black bg-opacity-70 backdrop-blur-sm z-10"></div>

  <!-- 文字内容 -->
  <div class="z-20 px-6 text-center max-w-2xl">
    <h1 class="text-4xl md:text-5xl font-extrabold leading-tight mb-6">
      真假难辨：<br class="hidden md:inline" />
      <span class="text-yellow-400">AI深度伪造</span> 背后的信任危机
    </h1>
    <p class="text-lg text-gray-200 mb-8">
      案例｜数据｜舆情｜法规<br />
      深入理解“AI幻象”对现实的挑战
    </p>
    <a href="#timeline" class="inline-block px-6 py-3 bg-yellow-400 text-black font-semibold rounded-lg hover:bg-yellow-300 transition">
      📖 继续阅读
    </a>
  </div>
</section>


<!-- 模块一：什么是深度伪造 -->
<section class="py-16 px-4 bg-gradient-to-b from-blue-50 via-white to-blue-50">
  <div class="max-w-6xl mx-auto">
    <h2 class="text-3xl font-bold mb-10 text-center">什么是深度伪造？</h2>
    <div class="flex flex-col md:flex-row items-center gap-10">
      <div class="md:w-1/2 text-gray-700 leading-relaxed text-lg">
        <p>
          深度伪造（Deepfake）是一种基于生成对抗网络（GAN, Generative Adversarial Networks）的人工智能技术，通过对大量真实视频和音频数据进行训练，能够合成高度逼真的虚假图像、声音和视频。据2023年相关研究表明，深度伪造生成的视频中，专业人员识别错误率低于7%，几乎难以通过肉眼分辨真假。该技术能精准模拟人物的面部表情、语音语调和动作细节，使虚假内容在视觉和听觉上达到以假乱真的效果。
        </p>
        <p class="mt-6">
          生成对抗网络由两个主要部分组成：生成器负责制造“假”数据，判别器则负责区分数据的真伪。两者在训练过程中相互博弈，不断提升生成器的伪造能力。根据NVIDIA 2022年的技术报告，GAN技术已经能够捕捉极其细微的面部动态和声音特征，极大提升了深度伪造内容的真实感。深度伪造技术在影视特效、虚拟主播、数字娱乐等领域应用广泛，同时也带来了隐私泄露、信息安全和伦理风险等严峻挑战。
        </p>
      </div>
      <div class="md:w-1/2 flex flex-col items-center">
        <img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExOWc5ZDNza295Y2Y4c2VqdzA5b2x1cHU5dTFxNGxpbGQyZGtmY2hvaCZlcD12MV9naWZzX3NlYXJjaCZjdD1n/0hv8d4HrDVI6m7w7pF/giphy.gif" alt="Deepfake Demo GIF" class="rounded-lg shadow-lg max-w-full" />
        <p class="text-sm text-gray-500 mt-3">示例：AI换脸技术演示（动图）</p>
      </div>
    </div>
  </div>
</section>

<!-- 模块二：视频示范 -->
<section class="py-16 px-4 bg-gradient-to-b from-blue-50 via-white to-blue-50">
  <div class="max-w-6xl mx-auto">
    <h2 class="text-3xl font-bold text-center mb-12">视频示范：真实与深伪对比</h2>
    <div class="flex flex-col md:flex-row gap-12 justify-center">
      <!-- 视频卡片 1 -->
      <div class="bg-white rounded-xl p-4 flex flex-col items-center w-full md:w-1/2 shadow-md">
        <video controls playsinline class="rounded-lg w-full shadow-lg border border-gray-300">
          <source src="sp/WeChat_20250630030312.mp4" type="video/mp4" />
          您的浏览器不支持视频播放。
        </video>
        <h3 class="mt-4 text-lg font-semibold">马云深度伪造示范</h3>
        <p class="mt-1 text-gray-600 text-center text-sm max-w-xs">
          视频来源：
          <a href="https://www.douyin.com/user/self?from_tab_name=main&modal_id=7504530726726028554&showTab=like" target="_blank" class="text-blue-600 hover:underline">
            抖音 - 马云相关视频
          </a>
        </p>
      </div>

      <!-- 视频卡片 2 -->
      <div class="bg-white rounded-xl p-4 flex flex-col items-center w-full md:w-1/2 shadow-md">
        <video controls playsinline class="rounded-lg w-full shadow-lg border border-gray-300">
          <source src="sp/WeChat_20250630030318.mp4" type="video/mp4" />
          您的浏览器不支持视频播放。
        </video>
        <h3 class="mt-4 text-lg font-semibold">雷军深度伪造示范</h3>
        <p class="mt-1 text-gray-600 text-center text-sm max-w-xs">
          视频来源：
          <a href="https://www.douyin.com/user/self?from_tab_name=main&modal_id=7504530726726028554&showTab=like" target="_blank" class="text-blue-600 hover:underline">
            抖音 - 雷军相关视频
          </a>
        </p>
      </div>
    </div>
  </div>
</section>

<!-- 模块三：真实案例揭示 -->
<section class="py-16 px-4 bg-gradient-to-b from-blue-50 via-white to-blue-50">
  <div class="max-w-6xl mx-auto">
    <h2 class="text-3xl font-extrabold mb-12 text-center text-gray-900 tracking-wide">真实案例揭示：伪造不止娱乐，更多是“骗局”</h2>
    <div class="grid md:grid-cols-2 gap-10">

      <!-- 案例一 -->
      <div class="p-8 bg-white rounded-2xl shadow-md border-l-8 border-indigo-500 hover:shadow-xl transition-shadow duration-300">
        <h3 class="flex items-center gap-3 text-indigo-700 font-semibold text-2xl mb-6">
          <svg xmlns="http://www.w3.org/2000/svg" class="w-7 h-7 text-indigo-400" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
            <path stroke-linecap="round" stroke-linejoin="round" d="M12 8c-1.657 0-3 1.567-3 3.5S10.343 15 12 15s3-1.567 3-3.5S13.657 8 12 8z" />
            <path stroke-linecap="round" stroke-linejoin="round" d="M12 15v5m-6-5v5m12-5v5M4 13h16M4 8h16" />
          </svg>
          案例一：AI换脸语音诈骗
        </h3>
        <div class="space-y-4 text-gray-700 leading-relaxed">
          <p><span class="font-semibold text-indigo-600">被害人：</span>广东广州一位70岁老人</p>
          <p><span class="font-semibold text-indigo-600">手段：</span>诈骗分子利用深度伪造技术，合成其儿子的语音进行电话交流，同时伪造视频以增强可信度</p>
          <p><span class="font-semibold text-indigo-600">过程：</span>诈骗者冒充儿子，称遭遇交通事故需紧急筹款，成功骗取老人信任</p>
          <p><span class="font-semibold text-indigo-600">损失金额：</span><span class="text-red-600 font-extrabold text-lg">累计转账15万元人民币</span></p>
          <p><span class="font-semibold text-indigo-600">后续：</span>警方接警后介入调查，案件正在进一步侦办中</p>
          <p class="text-sm text-gray-400 italic">来源：南方都市报，2023年8月</p>
        </div>
      </div>

      <!-- 案例二 -->
      <div class="p-8 bg-white rounded-2xl shadow-md border-l-8 border-purple-500 hover:shadow-xl transition-shadow duration-300">
        <h3 class="flex items-center gap-3 text-purple-700 font-semibold text-2xl mb-6">
          <svg xmlns="http://www.w3.org/2000/svg" class="w-7 h-7 text-purple-400" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
            <path stroke-linecap="round" stroke-linejoin="round" d="M15 10l4.553-2.276A2 2 0 0122 9.618v4.764a2 2 0 01-2.447 1.894L15 14M4 6v12" />
            <path stroke-linecap="round" stroke-linejoin="round" d="M7 16V8m0 0L3 12m4-4l4 4" />
          </svg>
          案例二：明星被合成不雅视频引发名誉侵权
        </h3>
        <div class="space-y-4 text-gray-700 leading-relaxed">
          <p><span class="font-semibold text-purple-600">平台浏览量：</span><span class="text-red-600 font-extrabold text-lg">超过400万次观看</span></p>
          <p><span class="font-semibold text-purple-600">事件描述：</span>不法分子利用深度伪造技术，将知名女明星面部精准合成至不雅视频，制造虚假内容在网络传播</p>
          <p><span class="font-semibold text-purple-600">技术特点：</span>面部表情、嘴型及声音几乎无差别，欺骗性极强</p>
          <p><span class="font-semibold text-purple-600">影响范围：</span>相关视频在多个短视频平台、社交媒体广泛传播，严重损害明星个人声誉和公众形象</p>
          <p><span class="font-semibold text-purple-600">法律困境：</span>由于深度伪造技术的复杂性及取证难度，受害者维权成本高，相关法律法规尚在完善中</p>
          <p><span class="font-semibold text-purple-600">社会反响：</span>此类事件引发社会对深度伪造伦理与监管的广泛关注，推动多个监管机构启动专项治理行动</p>
          <p class="text-sm text-gray-400 italic">来源：人民日报数字传播研究院，2024年3月</p>
        </div>
      </div>

    </div>
  </div>
</section>






        <!-- 保持时间线模块 -->
        <section class="py-16 px-4 bg-gradient-to-b from-blue-50 via-white to-blue-50">
  <div class="max-w-7xl mx-auto">
    <h2 class="text-3xl font-bold mb-12 text-center">深度伪造发展时间线</h2>
    <div class="grid md:grid-cols-3 gap-8">
      <!-- 2017 -->
      <div class="p-6 rounded-lg shadow-lg bg-blue-100 border-l-4 border-blue-500">
        <h3 class="text-xl font-bold text-blue-700 mb-2">2017 年</h3>
        <p class="text-gray-800">深度伪造首次在 Reddit 论坛出现，标志着技术进入公众视野。</p>
      </div>
      <!-- 2019 -->
      <div class="p-6 rounded-lg shadow-lg bg-purple-100 border-l-4 border-purple-500">
        <h3 class="text-xl font-bold text-purple-700 mb-2">2019 年</h3>
        <p class="text-gray-800">明星换脸视频风靡网络，AI深伪走进大众娱乐。</p>
      </div>
      <!-- 2022 -->
      <div class="p-6 rounded-lg shadow-lg bg-yellow-100 border-l-4 border-yellow-500">
        <h3 class="text-xl font-bold text-yellow-700 mb-2">2022 年</h3>
        <p class="text-gray-800">AI语音诈骗大规模爆发，技术风险首次集中爆发。</p>
      </div>
      <!-- 2023 -->
      <div class="p-6 rounded-lg shadow-lg bg-green-100 border-l-4 border-green-500">
        <h3 class="text-xl font-bold text-green-700 mb-2">2023 年</h3>
        <p class="text-gray-800">国家网信办出台《合成内容管理规定》，明确平台责任。</p>
      </div>
      <!-- 2024 -->
      <div class="p-6 rounded-lg shadow-lg bg-red-100 border-l-4 border-red-500">
        <h3 class="text-xl font-bold text-red-700 mb-2">2024 年</h3>
        <p class="text-gray-800">深伪内容激增，年增长率达 <span class="font-semibold text-red-600">380%</span>。</p>
      </div>
    </div>
  </div>
</section>



        <!-- 新增模块：识别深度伪造技巧 -->
<section class="py-16 px-4 bg-gradient-to-b from-blue-50 via-white to-blue-50">
  <div class="max-w-6xl mx-auto">
    <h2 class="text-3xl font-bold mb-12 text-center">如何识别深度伪造？实用技巧</h2>
    <div class="grid md:grid-cols-3 gap-12 text-gray-700 text-lg text-center">
      <div class="flex flex-col items-center bg-white rounded-xl border border-blue-200 p-6 shadow-sm hover:shadow-md transition-shadow duration-300">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-12 w-12 mb-4 text-blue-600" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"/><path d="M12 6v6l4 2"/></svg>
        <h3 class="font-semibold mb-2">观察面部细节</h3>
        <p>眨眼频率异常，嘴唇与声音不同步是常见伪造特征。</p>
      </div>
      <div class="flex flex-col items-center bg-white rounded-xl border border-blue-200 p-6 shadow-sm hover:shadow-md transition-shadow duration-300">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-12 w-12 mb-4 text-blue-600" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" viewBox="0 0 24 24"><path d="M3 3l18 18"/><path d="M21 3L3 21"/></svg>
        <h3 class="font-semibold mb-2">注意光影边缘</h3>
        <p>头发和眼睛边缘模糊，光影不自然是伪造常见瑕疵。</p>
      </div>
      <div class="flex flex-col items-center bg-white rounded-xl border border-blue-200 p-6 shadow-sm hover:shadow-md transition-shadow duration-300">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-12 w-12 mb-4 text-blue-600" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" viewBox="0 0 24 24"><path d="M12 20l9-5-9-5-9 5 9 5z"/></svg>
        <h3 class="font-semibold mb-2">核实来源渠道</h3>
        <p>通过多平台核查视频或音频真实性，避免单一来源误判。</p>
      </div>
    </div>
  </div>
</section>

<section class="bg-gradient-to-b from-blue-50 via-white to-blue-50 py-16 px-4">
  <div class="max-w-7xl mx-auto bg-white rounded-2xl shadow-lg px-8 py-12">
    <div class="text-center mb-12">
      <h2 class="text-4xl font-extrabold text-gray-900 mb-4">🔍 数据视角解读深伪现象</h2>
      <p class="text-gray-600 text-lg">借助问卷与公开数据，还原公众态度与舆论趋势</p>
    </div>

    <div class="flex flex-wrap gap-10 justify-center">
    <!-- 左侧竖排，饼图和折线图 -->
    <div style="flex: 1 1 320px; max-width: 380px; display: flex; flex-direction: column; gap: 50px;">
      <div>
        <h3 class="text-2xl font-bold text-center mb-4">公众识别深伪能力调查</h3>
        <canvas id="pieChart"></canvas>
        <p class="text-sm text-gray-500 mt-4 text-center">
          数据来源：2023年中国互联网发展报告（CNNIC 第52次）
        </p>
      </div>

      <div>
        <h3 class="text-2xl font-bold text-center mb-4">AI伪造相关舆情热度趋势</h3>
        <canvas id="lineChart"></canvas>
        <p class="text-sm text-gray-500 mt-4 text-center">
          数据采集口径：以“AI伪造”“深度合成”等关键词抓取<br />
          统计平台：主流社交平台与主流媒体（2021-2024年）
        </p>
      </div>
    </div>

    <!-- 右侧热力地图 -->
    <div style="flex: 1 1 600px; max-width: 700px;">
      <h3 class="text-2xl font-bold text-center mb-4">全国AI伪造舆情热度分布图</h3>
      <div id="chinaMap" style="width: 100%; height: 520px; border-radius: 12px; box-shadow: 0 2px 10px rgb(0 0 0 / 0.15);"></div>
      <p class="text-sm text-gray-500 mt-4 text-center">
        数据统计：基于2022~2023关键词“AI伪造”“深度合成”抓取公开数据<br />
        平台范围：微博、知乎、头条、百度指数等
      </p>
    </div>
  </div>
</section>

<!-- 引入Chart.js 和 ECharts -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/echarts@5/dist/echarts.min.js"></script>

<script>
    // 饼图初始化
    const pieCtx = document.getElementById('pieChart').getContext('2d');
    new Chart(pieCtx, {
        type: 'pie',
        data: {
            labels: ['很容易识别', '偶尔能分辨', '很难判断'],
            datasets: [{
                label: '分辨真假比例',
                data: [6.5, 20.9, 72.6],
                backgroundColor: ['#2563EB', '#3B82F6', '#93C5FD'],
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: { position: 'bottom' }
            }
        }
    });

    // 折线图初始化
    const lineCtx = document.getElementById('lineChart').getContext('2d');
    new Chart(lineCtx, {
        type: 'line',
        data: {
            labels: ['2021', '2022', '2023', '2024'],
            datasets: [{
                label: '热点话题次数',
                data: [7540, 13460, 29000, 35000],
                fill: false,
                borderColor: '#2563EB',
                tension: 0.1
            }]
        },
        options: {
            responsive: true,
            scales: {
                y: { beginAtZero: true }
            }
        }
    });

    // 地图初始化
    const mapDom = document.getElementById('chinaMap');
    const mapChart = echarts.init(mapDom);

    // 中国地图geojson地址
    fetch('./china.json')
        .then(res => res.json())
        .then(geoJson => {
            echarts.registerMap('china', geoJson);

            // 舆情热度数据，未覆盖地区赋0
            const data = [
                { name: '北京市', value: 1300 },
                { name: '广东省', value: 1220 },
                { name: '上海市', value: 1100 },
                { name: '浙江省', value: 940 },
                { name: '四川省', value: 880 },
                { name: '湖北省', value: 780 },
                { name: '辽宁省', value: 640 },
                { name: '江苏省', value: 710 }
            ];

            // 获取所有省份，补充无数据省份value为0
            const allProvinces = geoJson.features.map(f => f.properties.name);
            const completeData = allProvinces.map(name => {
                const found = data.find(d => d.name === name);
                return { name, value: found ? found.value : 0 };
            });

            mapChart.setOption({
                tooltip: {
                    trigger: 'item',
                    formatter: params => {
                        if (params.value === 0) {
                            return `${params.name}<br/>无数据`;
                        }
                        return `${params.name}<br/>舆情热度值: ${params.value}`;
                    }
                },
                visualMap: {
                    min: 0,
                    max: 1500,
                    left: 'left',
                    bottom: '10%',
                    text: ['高', '低'],
                    calculable: true,
                    inRange: {
                        color: ['#d1eaff', '#60a5fa', '#1e40af']
                    }
                },
                series: [
                    {
                        name: 'AI伪造热度',
                        type: 'map',
                        map: 'china',
                        roam: true,
                        label: { show: true, fontSize: 10 },
                        data: completeData,
                        emphasis: {
                            label: { show: true, fontWeight: 'bold' }
                        }
                    },
                    {
                        name: '热力气泡',
                        type: 'scatter',
                        coordinateSystem: 'geo',
                        data: data.map(item => {
                            // 省会城市经纬度，简化版，可以根据需要扩充
                            const coordsMap = {
                                '北京市': [116.4074, 39.9042],
                                '广东省': [113.2644, 23.1291],
                                '上海市': [121.4737, 31.2304],
                                '浙江省': [120.1536, 30.2875],
                                '四川省': [104.0665, 30.5728],
                                '湖北省': [114.3054, 30.5931],
                                '辽宁省': [123.4291, 41.7968],
                                '江苏省': [118.7969, 32.0603]
                            };
                            return {
                                name: item.name,
                                value: [...(coordsMap[item.name] || [0, 0]), item.value],
                                symbolSize: Math.sqrt(item.value) / 2,
                                itemStyle: {
                                    color: '#ff5722',
                                    shadowBlur: 10,
                                    shadowColor: 'rgba(255,87,34,0.7)'
                                }
                            };
                        }),
                        tooltip: {
                            formatter: params => `${params.name}<br/>热度气泡: ${params.value[2]}`
                        }
                    }
                ]
            });
        })
        .catch(err => {
            console.error(err);
            mapDom.innerText = '地图加载失败，请检查网络或CDN访问权限';
        });
</script>





 <section class="py-16 px-4 bg-gradient-to-b from-blue-50 via-white to-blue-50">
  <div class="max-w-6xl mx-auto text-center">
    <h2 class="text-3xl font-extrabold text-gray-900 mb-12">📜 国内外治理法规对比</h2>
    <div class="grid md:grid-cols-3 gap-8 text-left">
      
      <!-- 中国 -->
      <div class="bg-red-50 border-t-4 border-red-500 rounded-xl shadow-md p-6">
        <h3 class="text-xl font-bold text-red-700 mb-2">🇨🇳 中国</h3>
        <p class="text-gray-800 font-semibold mb-1">代表法规：</p>
        <p class="text-gray-700 mb-3">《网络信息内容生态治理规定》《合成内容管理规定》</p>
        <p class="text-gray-800 font-semibold mb-1">特点：</p>
        <ul class="list-disc list-inside text-gray-700 space-y-1">
          <li>要求 <strong>内容标识</strong> 和 <strong>水印添加</strong></li>
          <li>平台需履行 <strong>内容审核责任</strong></li>
        </ul>
        <p class="mt-4 text-sm text-red-600">⚠️ 法规细化程度仍有提升空间</p>
      </div>

      <!-- 欧盟 -->
      <div class="bg-blue-50 border-t-4 border-blue-500 rounded-xl shadow-md p-6">
        <h3 class="text-xl font-bold text-blue-700 mb-2">🇪🇺 欧盟</h3>
        <p class="text-gray-800 font-semibold mb-1">代表法规：</p>
        <p class="text-gray-700 mb-3">《人工智能法案》（AI Act）草案</p>
        <p class="text-gray-800 font-semibold mb-1">特点：</p>
        <ul class="list-disc list-inside text-gray-700 space-y-1">
          <li><strong>强制打水印</strong> 和显式告知用户内容为合成</li>
          <li>拟设 <strong>高风险AI分类管理</strong> 机制</li>
        </ul>
        <p class="mt-4 text-sm text-blue-600">🔍 法规覆盖全面，执行细则持续完善中</p>
      </div>

      <!-- 美国 -->
      <div class="bg-green-50 border-t-4 border-green-500 rounded-xl shadow-md p-6">
        <h3 class="text-xl font-bold text-green-700 mb-2">🇺🇸 美国</h3>
        <p class="text-gray-800 font-semibold mb-1">代表法规：</p>
        <p class="text-gray-700 mb-3">各州立法（如德州/加州）</p>
        <p class="text-gray-800 font-semibold mb-1">特点：</p>
        <ul class="list-disc list-inside text-gray-700 space-y-1">
          <li><strong>禁止深伪用于选举干预、金融诈骗</strong></li>
          <li>强调 <strong>刑事责任</strong> 和平台协助取证</li>
        </ul>
        <p class="mt-4 text-sm text-green-600">🧩 州法不一，全国层面立法仍待统一</p>
      </div>

    </div>
  </div>
</section>


<section class="py-16 px-4 bg-gradient-to-b from-blue-50 via-white to-blue-50">
  <div class="max-w-5xl mx-auto">
    <h2 class="text-3xl font-bold mb-10 text-center text-gray-800">🔍 你能识破深伪陷阱吗？</h2>

    <div class="space-y-10" id="questions-container">
      <!-- 问题1 -->
      <div class="p-6 bg-blue-50 rounded-lg shadow-md">
        <h3 class="text-lg font-semibold mb-4">🧠 问题 1：以下哪一项是深度伪造视频的典型特征？</h3>
        <div class="space-y-3">
          <button type="button" onclick="checkAnswer(1, 'A', this)" class="quiz-btn block w-full text-left bg-white p-4 rounded-md border hover:bg-blue-100 transition">A. 声音微弱</button>
          <button type="button" onclick="checkAnswer(1, 'B', this)" class="quiz-btn block w-full text-left bg-white p-4 rounded-md border hover:bg-blue-100 transition">B. 嘴型和语音略有不同步</button>
          <button type="button" onclick="checkAnswer(1, 'C', this)" class="quiz-btn block w-full text-left bg-white p-4 rounded-md border hover:bg-blue-100 transition">C. 背景虚化</button>
        </div>
        <div id="result-1" class="mt-4 text-sm font-medium transition-opacity duration-300 opacity-0"></div>
      </div>

      <!-- 问题2 -->
      <div class="p-6 bg-green-50 rounded-lg shadow-md">
        <h3 class="text-lg font-semibold mb-4">🧠 问题 2：你接到朋友发来视频通话借钱请求，你应该？</h3>
        <div class="space-y-3">
          <button type="button" onclick="checkAnswer(2, 'A', this)" class="quiz-btn block w-full text-left bg-white p-4 rounded-md border hover:bg-green-100 transition">A. 立刻转账，视频是真人</button>
          <button type="button" onclick="checkAnswer(2, 'B', this)" class="quiz-btn block w-full text-left bg-white p-4 rounded-md border hover:bg-green-100 transition">B. 看对方表情真不真就可以</button>
          <button type="button" onclick="checkAnswer(2, 'C', this)" class="quiz-btn block w-full text-left bg-white p-4 rounded-md border hover:bg-green-100 transition">C. 另起通话或语音验证身份</button>
        </div>
        <div id="result-2" class="mt-4 text-sm font-medium transition-opacity duration-300 opacity-0"></div>
      </div>

      <!-- 问题3 -->
      <div class="p-6 bg-yellow-50 rounded-lg shadow-md">
        <h3 class="text-lg font-semibold mb-4">🧠 问题 3：以下哪种方式有助于防范AI深伪诈骗？</h3>
        <div class="space-y-3">
          <button type="button" onclick="checkAnswer(3, 'A', this)" class="quiz-btn block w-full text-left bg-white p-4 rounded-md border hover:bg-yellow-100 transition">A. 相信看起来“熟悉”的人</button>
          <button type="button" onclick="checkAnswer(3, 'B', this)" class="quiz-btn block w-full text-left bg-white p-4 rounded-md border hover:bg-yellow-100 transition">B. 学习识别伪造痕迹</button>
          <button type="button" onclick="checkAnswer(3, 'C', this)" class="quiz-btn block w-full text-left bg-white p-4 rounded-md border hover:bg-yellow-100 transition">C. 不接视频电话</button>
        </div>
        <div id="result-3" class="mt-4 text-sm font-medium transition-opacity duration-300 opacity-0"></div>
      </div>
    </div>

    <div class="text-center mt-12">
      <button id="showStatsBtn" type="button" onclick="submitAndShowStatistics()" class="px-6 py-3 bg-indigo-600 text-white rounded-md hover:bg-indigo-700 transition">📊 查看答题统计</button>
    </div>

    <div id="statsContainer" class="max-w-3xl mx-auto mt-10 hidden">
      <h3 class="text-2xl font-semibold mb-6 text-center text-gray-700">答题统计结果</h3>
      <canvas id="statsChart" width="600" height="400"></canvas>
    </div>
  </div>
</section>

<!-- Chart.js 图表 -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>
    const answers = { 1: 'B', 2: 'C', 3: 'B' };
    const userSelections = {};

    function checkAnswer(q, selected, btn) {
        const explanations = {
            1: '✔️ 正确！深伪视频常出现“嘴型和语音略不同步”的特征。',
            2: '✔️ 很好！确认身份时应另起通话或语音验证，切勿轻信画面。',
            3: '✔️ 没错！提高识别能力，是预防深伪诈骗的关键。'
        };

        const resultEl = document.getElementById('result-' + q);
        const btns = btn.parentElement.querySelectorAll('button');
        btns.forEach(b => {
            b.disabled = true;
            b.classList.remove('hover:bg-blue-100', 'hover:bg-green-100', 'hover:bg-yellow-100');
            b.classList.remove('bg-blue-100', 'bg-green-100', 'bg-yellow-100');
        });

        if (selected === answers[q]) {
            resultEl.textContent = explanations[q];
            resultEl.className = 'text-green-700 mt-4 text-sm font-medium transition-opacity duration-300 opacity-100';
            btn.classList.add('bg-green-200');
        } else {
            resultEl.textContent = '❌ 错误选项，再想一想哦～';
            resultEl.className = 'text-red-600 mt-4 text-sm font-medium transition-opacity duration-300 opacity-100';
            btn.classList.add('bg-red-200');
        }

        userSelections[q] = selected;
    }

    function submitAndShowStatistics() {
        if (Object.keys(userSelections).length < 3) {
            alert('请先完成所有题目！');
            return;
        }

        fetch('SubmitAnswers.aspx', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(userSelections)
        })
            .then(response => {
                if (!response.ok) throw new Error('提交失败');
                return response.json();
            })
            .then(data => {
                showChart(data);
            })
            .catch(error => {
                alert('❌ 无法加载统计数据，请检查网络或后端接口');
                console.error(error);
            });
    }

    function showChart(data) {
        const statsContainer = document.getElementById('statsContainer');
        const ctx = document.getElementById('statsChart').getContext('2d');
        statsContainer.classList.remove('hidden');

        const chartData = {
            labels: ['A', 'B', 'C'],
            datasets: [
                {
                    label: '问题1',
                    data: [data["1"]["A"], data["1"]["B"], data["1"]["C"]],
                    backgroundColor: 'rgba(59, 130, 246, 0.6)'
                },
                {
                    label: '问题2',
                    data: [data["2"]["A"], data["2"]["B"], data["2"]["C"]],
                    backgroundColor: 'rgba(34, 197, 94, 0.6)'
                },
                {
                    label: '问题3',
                    data: [data["3"]["A"], data["3"]["B"], data["3"]["C"]],
                    backgroundColor: 'rgba(202, 138, 4, 0.6)'
                }
            ]
        };

        const chartOptions = {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: {
                        stepSize: 1
                    }
                }
            }
        };

        if (window.myChart) {
            window.myChart.destroy();
        }

        window.myChart = new Chart(ctx, {
            type: 'bar',
            data: chartData,
            options: chartOptions
        });
    }
</script>





<!-- 六、建议总结（三栏图标+文字） -->
<section class="py-20 px-4 bg-gradient-to-b from-blue-50 via-white to-blue-50" id="advice">
  <div class="max-w-6xl mx-auto text-center">
    <h2 class="text-3xl font-extrabold text-gray-900 mb-12">🔧 我们的建议</h2>
    <div class="grid md:grid-cols-3 gap-10">
      <!-- 技术建议卡片 -->
      <div class="bg-white rounded-2xl shadow-md border-t-4 border-blue-500 p-6 hover:shadow-xl transition-all duration-300">
        <div class="mb-4 flex items-center justify-center w-14 h-14 rounded-full bg-blue-100 text-blue-700 mx-auto">
          <svg xmlns="http://www.w3.org/2000/svg" class="w-7 h-7" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19l-7-7 7-7M20 19V5" />
          </svg>
        </div>
        <h3 class="text-xl font-bold mb-2 text-blue-700">推广 AI 溯源技术</h3>
        <p class="text-gray-700">依靠 <strong>自动识别伪造痕迹</strong> 的算法，提升对深伪内容的检测能力。</p>
        <p class="text-sm text-blue-500 font-semibold mt-4">➡️ 技术是第一道防线</p>
      </div>

      <!-- 法律建议卡片 -->
      <div class="bg-white rounded-2xl shadow-md border-t-4 border-green-500 p-6 hover:shadow-xl transition-all duration-300">
        <div class="mb-4 flex items-center justify-center w-14 h-14 rounded-full bg-green-100 text-green-700 mx-auto">
          <svg xmlns="http://www.w3.org/2000/svg" class="w-7 h-7" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <circle cx="12" cy="12" r="10" />
            <path d="M12 6v6l4 2" />
          </svg>
        </div>
        <h3 class="text-xl font-bold mb-2 text-green-700">细化深伪法律边界</h3>
        <p class="text-gray-700">明确 <strong>合成内容使用范围</strong>，提升违法成本，推动法规落地。</p>
        <p class="text-sm text-green-500 font-semibold mt-4">➡️ 法律需与技术并行</p>
      </div>

      <!-- 教育建议卡片 -->
      <div class="bg-white rounded-2xl shadow-md border-t-4 border-purple-500 p-6 hover:shadow-xl transition-all duration-300">
        <div class="mb-4 flex items-center justify-center w-14 h-14 rounded-full bg-purple-100 text-purple-700 mx-auto">
          <svg xmlns="http://www.w3.org/2000/svg" class="w-7 h-7" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path d="M12 20l9-5-9-5-9 5 9 5z" />
          </svg>
        </div>
        <h3 class="text-xl font-bold mb-2 text-purple-700">加强数智素养教育</h3>
        <p class="text-gray-700">推动 <strong>AI 辨识能力普及</strong>，从学校、媒体到大众全面提升防范意识。</p>
        <p class="text-sm text-purple-500 font-semibold mt-4">➡️ 公民素养是关键</p>
      </div>
    </div>
  </div>
</section>

<!-- 结语 + 团队信息模块 -->
<section class="bg-white py-20 px-6 text-center rounded-2xl shadow-lg max-w-5xl mx-auto mt-20">
  <h2 class="text-3xl font-extrabold text-gray-900 mb-6">感谢您的关注！</h2>
  <p class="max-w-3xl mx-auto text-gray-700 mb-10 leading-relaxed text-lg">
    深度伪造技术带来了前所未有的挑战，也推动了技术、法律与社会多方协作。希望本项目能帮助您更好地认识并防范深伪风险。
  </p>

  <div class="mb-10">
    <h3 class="text-2xl font-semibold mb-3">👥 团队信息</h3>
    <p class="text-gray-800 text-lg">坤坤数据新闻项目团队</p>
  </div>

  <!-- 这里是新增的“下载本页为PDF”按钮 -->
  <button id="downloadPdfBtn" 
    class="inline-block bg-yellow-400 text-black font-semibold rounded-xl px-8 py-3 hover:bg-yellow-300 transition cursor-pointer">
    📥 下载本页为PDF
  </button>
</section>

<!-- 需要引入html2pdf.js库，并写脚本 -->
<script src="https://cdn.jsdelivr.net/npm/html2pdf.js@0.10.1/dist/html2pdf.bundle.min.js"></script>
<script>
    document.getElementById('downloadPdfBtn').addEventListener('click', () => {
        // 这里我们把整个section内容转成pdf下载
        const element = document.querySelector('section.bg-white');
        const opt = {
            margin: 0.5,
            filename: 'Deepfake_Report_Webpage.pdf',
            image: { type: 'jpeg', quality: 0.98 },
            html2canvas: { scale: 2 },
            jsPDF: { unit: 'in', format: 'a4', orientation: 'portrait' }
        };
        html2pdf().set(opt).from(element).save();
    });
</script>


<!-- Footer -->
<footer class="bg-gray-900 text-white text-center py-6 mt-16">
  <p class="text-sm tracking-wide">&copy; 2025 数据新闻项目团队 - 深度伪造观察</p>
</footer>
</form>
   

</body>
</html>
