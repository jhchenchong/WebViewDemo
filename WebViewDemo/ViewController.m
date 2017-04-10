//
//  ViewController.m
//  WebViewDemo
//
//  Created by 浪漫恋星空 on 2017/3/20.
//  Copyright © 2017年 浪漫恋星空. All rights reserved.
//

#import "ViewController.h"
#import "XKWebViewCell.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, assign) CGFloat webHeight;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    XKWebViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    
    cell.htmlString = @"<p>　　爱玩网百万稿费活动投稿，作者 浑沌七日死 ，未经授权请勿转载！</p><p>　　随着11月的悄然来临，2016年世界范围内最后一个大型游戏展览会——韩国的G-Star也登场了。G-Star作为韩国国内最大的展会、世界范围内第四大展览会，每年都会为玩家呈上众多的游戏大作以及养眼的COSER，但是，对于G-star的你真的了解吗？不妨先跟着笔者来了解一下G-star的历史和现状。</p><p>　　<b>G-Star的诞生：韩国游戏力量的整体展示</b></p><p>　　G-Star其实并不是一个简单的游戏展，它的诞生可以说是汇集了韩国国内所有的游戏力量而成。随着韩国游戏的发展，为了扩大韩国游戏的影响力，本着有备无患的心态，韩国G-Star组织委员会于2004年12月宣布将韩国游戏展示会、韩国街机游戏展、韩国数位内容博览会等三大展览会合并，统一为韩国国际游戏展示会，也就是现在的G-Star。可以说每一届的G-Star都是韩国游戏力量的整体展示。</p><img src=\"http://img6.cache.netease.com/game/2016/11/18/20161118153914a781e.jpg?w=750&h=20000&quality=75\" alt=\"在Gstar排队进场的韩国玩家\" /><p>　　从2005年11月整合开始，到如今G-Star走过了近11年的历史。作为韩国国内最大的展会，G-Star受到了众多硬件与软件商的喜爱，微软、英伟达、索尼等全球知名的大厂商们纷纷参与其中，这无疑也给G-Star增添了多样化的色彩。</p><p>　　随着G-Star的发展，当初组织委员会有备无患的前瞻之举亦展示出了它的效用。</p><p>　　2007年韩国游戏在中国溃败，韩国网游在中国的市场份额更是跌至到20%，这对于曾经雄霸过中国市场的韩国游戏厂商来说是不能接受的。为了挽回江河日下的韩国游戏市场，2007年的G-Star的主题便是“趣味游戏蓬勃产业”。主办方重点强化了展会的商务功能，政府招商的举措也是历届展会中最多的。这届展中举办了全球运营商出口洽谈会、G-Star投资洽谈会等招商会议，以促进韩国游戏的出口。B2B商务馆有63个企业参与，比前一年多出了30家，中国的盛大、腾讯、游戏蜗牛等厂商也都参展B2B馆。韩国政府部门和厂商借G-Star这个平台推销游戏来挽回收入下滑的急切心情可见一斑。</p><p>　　<b>G-Star与中国玩家：让人难以自拔的深坑</b></p><p>　　虽然贵为韩国国内第一展，但是由于中国厂商对于ChinaJoy的热捧，G-Star在国内玩家的印象中远远不如ChinaJoy的影响力大。真正让国内玩家有印象并且开始记住这个展会的还是2009年的G-Star。在这年的展览会上，韩国游戏商们展示出次时代级的《剑灵》、《炽焰帝国2》、《龙之谷》、《tear》等多款大作。众多大作云集引发了媒体的高潮，而国内的玩家在见识到如此优秀的画面后纷纷陷入深坑难以自拔。然而《剑灵》直到2013年11月28日才公测；而《TERA》更是被拖至于2014年12月11日才正式与玩家们见面。不得不说，09年的Gstar虽然惊艳，但是这个坑也太深了。</p><img src=\"http://img1.cache.netease.com/game/2016/11/18/20161118153916831cf.jpg?w=750&h=20000&quality=75\" alt=\"曾经剑灵初曝光就吸引了无数玩家的目光\" /><p>　　纵观G-Star的历史，2009的这一届被无数媒体认为是历届中最成功的一届展览会。在这次展会上，各厂商的次世代新作亮相，而暴雪这种世界级名厂的参展更是让展会本身的吸引力大增。同时各厂商也给玩家提供了尽情体验游戏的空间，并给与充分的帮助说明。比如说让Showgirl更多的扮演为玩家提供游戏说明的角色。</p><img src=\"http://img2.cache.netease.com/game/2016/11/18/201611181539198dc00.jpg?w=750&h=20000&quality=75\" alt=\"美丽的SG自然也是重点中的重点\" /><p>　　而彻底让玩家知晓G-Star大名的原因，则是在这次展会上首次实行了分级制度。展览会上分成了18禁、15禁以及通用展台。据媒体报道，成人网络游戏《剑灵》放映馆，《科南时代》、《TERA》试玩台在入口安排相关人员阻止没有入场卡片的游客入场。而15禁的《星际争霸2》展台也是需要玩家必须携带象征着15岁以上的黄色腕带才能入场。这次的分级制度引起了中国媒体的争相报道，这也让国内玩家对于《剑灵》、《TERA》等产品充满了好奇与迷之憧憬。而根据媒体爆料出来的画面来看，这过度性感的游戏人物形象更是引起了国内玩家的沸腾，以至于不少玩家掰着手指头等待这些游戏的测试。</p><p>　　<b>扎堆G-Star的中国厂商：从代理争夺到逆输出</b></p><p>　　其实说到参展厂商，国内的厂商诸如盛大、腾讯等，早在2007年就参展过G-Star。作为在中国过的颇为滋润的代理商，对于这个韩国最大的网游出口平台他们自然不可能错过。</p><p>　　最开始中国厂商参展G-Star除了与韩国游戏商探讨游戏发展、见识次时代游戏内容以外，最重要的自然是发现潜力股并谈妥游戏代理事宜。例如，腾讯虽然是在2011年5月才宣布代理《剑灵》的事宜，但有消息透露，其实早在《剑灵》亮相2009年的G-Star展会之后，腾讯就对它垂涎欲滴。只是谈判的过程一波三折，一直找NCSoft软磨硬泡，整整磨了一年多才成功拿下。</p><img src=\"http://img3.cache.netease.com/game/2016/11/16/20161116155821ea6f1.jpg?w=750&h=20000&quality=75\" alt="" /><p>　　然而随着游戏行业的人才交替，大量杰出的人才进入中国游戏圈后，国人自主研发的能力得到了迅速提升。在自研拥有了充足的实力后，国内游戏商参展G-Star的另外一个目的自然就是打入韩国市场。例如，2013 G-Star上，网易公布了当时最新的东方幻想风格的3DMMORPG《天谕》，并在展会现场提供了试玩；2015年腾讯在G-Star上发布CG的《天涯明月刀》更是惊艳了一票韩国观众。</p><img src=\"http://img6.cache.netease.com/game/2016/11/18/2016111815392119ca0.jpg?w=750&h=20000&quality=75\" alt=\"网易自研发游戏《战意》就曾经2015年在Gstar开启了发布会\" /><p>　　其实韩国市场一直属于一个成熟而丰硕的游戏市场，仅在2014年韩国游戏市场的规模就已经达到了99,706亿韩元（约582亿元人民币）。而且韩国游戏的市场与中国相似，主要是以PC为主的网络游戏和以手机为主的移动游戏，而不是日本、欧美这样的家用机市场。也正是如此，在同样经过韩国游戏十余年熏陶下的中韩玩家，对于优秀的游戏有着大多数相同的可接受点。</p><img src=\"http://img5.cache.netease.com/game/2016/11/18/20161118153923d3389.jpg?w=750&h=20000&quality=75\" alt=\"韩国游戏市场虽然增长陷入了停滞，但是成熟值得收割\" /><p>　　例如同样是走精品研发路线的《剑灵》、《天涯明月刀》就一样受到了中韩玩家的喜爱和追捧。而Gstar是韩国国内最大的游戏展，堪比ChinaJoy在我国游戏行业的影响力，在展会上发布的新游戏势必能够受到众多玩家关注，获得更多更大的曝光量。对于展会本身、玩家、游戏商来说是一个三赢局面，也正是如此，所以现在越来越多的国产厂商选择将自己新游戏在Gstar上进行发布。</p><p>　　其实在这一行为的背后还有着更深的意义。国内网游玩家对于韩国游戏一直有一种亦敌亦友、说不清道不明的感觉在背后。从《传奇》到《永恒之塔》再到《剑灵》，中国大部分90后80后玩家可以说都是在韩国游戏的熏陶下成长的，尽管很多玩家都在鄙视韩国网游，称其为泡菜游戏，然而在面对游戏时，身体却很老实的贴了上去。</p><p>　　由腾讯代理的《剑灵》国服，虽然游戏后劲不足玩家流失严重，不过游戏在前期却成功吸引了非常多玩家的目光。《剑灵》公测后两个月左右，腾讯就宣布同时在线玩家数突破了150W。由此可见，尽管玩家口中说着不要，但是面对韩国的次时代级游戏却依然控制不住双手陷了进去。</p><img src=\"http://img3.cache.netease.com/game/2016/11/18/201611181539257b9d3.jpg?w=750&h=20000&quality=75\" alt=\"腾讯为《剑灵》投入了大量的资本进行宣传，一度请来了少女时代代言\" /><p>　　对于国内玩家来说，民族自信心这个东西一直是隐隐存在的。对于韩国游戏十余年在国内的攻城拔寨的行为，很多网游玩家都是对于国产游戏的不争气而愤慨。其中更有不少玩家曾提出，什么时候我们国家也能出一款游戏在韩国的游戏市场中攻城拔寨呢？</p><p>　　事实上，近年来国内厂商也确实在朝着这一目标努力着。2015年，网易就曾将战略级PC网游《战意》定名后的首次亮相舞台交给了G-Star 2015游戏展。其实按照常理，正常情况下，国产战略级的端游都应该首发于中国的ChinaJoy。而这次网易却出乎意料的在Gstar首发，目标自然是着眼于Gstar的影响力，以及背后丰硕的韩国游戏市场。而游戏展之后，《战意》亮相韩国Gstar2015并饱受韩国玩家好评的消息传回国内不出意料的引发了国内玩家的新一轮热议。</p><img src=\"http://img5.cache.netease.com/game/2016/11/18/201611181539272cfb5.jpg?w=750&h=20000&quality=75\" alt=\"早在15年，网易就已经磨刀霍霍意图韩国游戏市场\" /><p>　　不管游戏的结果如何，仅仅是这一个“在韩国大受好评”报道就能引起国内玩家的热议。可以说国内不少厂商，很早就已经准确的挖掘到了网游玩家背后的那点小心思。《天谕》、《天涯明月刀》再到《战意》，越来越多的国产新游戏纷纷奔向Gstar的舞台，力图从这里开始打入韩国的游戏市场。因为他们知道，一旦自己的游戏在韩国市场成功后，荣归故里之际必然也是一呼百应。</p><p>　　<b><a class='u-link' href='http://play.163.com/special/100w/'>欢迎参加——爱玩网百万稿费活动：当金牌作者，开网易专栏，领丰厚稿费，得专属周边！</a></b></p><p>　　<a href=\"http://play.163.com/special/100w/\"><b></b></a><b><a class='u-link' href='http://play.163.com/16/0709/18/BRI658Q200314502.html'>详情请看这里</a></b></p><img src=\"http://img5.cache.netease.com/game/2016/4/11/201604111528227b5ab.jpg?w=750&h=20000&quality=75\" alt=\"\" /><p>　　</p><p>　　<!--link2--></p>";
    
    __weak typeof(self) weakSelf = self;
    cell.block = ^(CGFloat webHeight) {
        
        weakSelf.webHeight = webHeight;
        
        [weakSelf.tableView reloadData];
    };
    
    cell.imageClickBlock = ^(NSArray *imageArray, NSInteger index) {
        
        [[[UIAlertView alloc] initWithTitle:imageArray[index] message:[NSString stringWithFormat:@"第%ld张图片", index + 1] delegate:self cancelButtonTitle:@"取消" otherButtonTitles:nil, nil] show];
        
    };
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return self.webHeight;
}

- (UITableView *)tableView {
    
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        [_tableView registerClass:[XKWebViewCell class] forCellReuseIdentifier:@"cellID"];
    }
    return _tableView;
}


@end
