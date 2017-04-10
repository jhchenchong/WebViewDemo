//
//  XKWebViewCell.m
//  WebViewDemo
//
//  Created by 浪漫恋星空 on 2017/3/20.
//  Copyright © 2017年 浪漫恋星空. All rights reserved.
//

#import "XKWebViewCell.h"

@interface XKWebViewCell ()<UIWebViewDelegate>

@property (nonatomic, weak) UIWebView *webView;

@property (nonatomic, assign) CGFloat webViewHeight;

@property (nonatomic, strong) NSArray *imageArray;

@end

@implementation XKWebViewCell

- (void)dealloc {
    
    _webView.delegate = nil;
    
    [_webView loadHTMLString:@"" baseURL:nil];
    
    _htmlString = nil;
    
    _webView = nil;
    
    _webViewHeight = 0;
}

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        [self initUserInterface];
    }
    return self;
}

- (void)initUserInterface {
    
    UIWebView *webView = [[UIWebView alloc] init];
    
    webView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    
    webView.delegate = self;
    
    webView.backgroundColor = [UIColor whiteColor];
    
    webView.scrollView.bounces = NO;
    
    webView.scalesPageToFit = NO;
    
    webView.scrollView.scrollEnabled = NO;
    
    webView.scrollView.scrollsToTop = NO;
    
    [self addSubview:webView];
    
    _webView = webView;
}



// 加载html标签
- (void)loadWebHtml {
    
    NSURL *cssURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"News" ofType:@"css"]];
    
    [_webView loadHTMLString:[self handleWithHtmlBody:_htmlString] baseURL:cssURL];
}

// 处理请求回来的html标签 将静态的css文件嵌入进去
- (NSString *)handleWithHtmlBody:(NSString *)htmlBody {
    
    NSString *html = [htmlBody stringByReplacingOccurrencesOfString:@"\t" withString:@""];
    
    NSString *cssName = @"News.css";
    
    NSMutableString *htmlString =[[NSMutableString alloc]initWithString:@"<html>"];
    
    [htmlString appendString:@"<head><meta charset=\"UTF-8\">"];
    [htmlString appendString:@"<link rel =\"stylesheet\" href = \""];
    [htmlString appendString:cssName];
    [htmlString appendString:@"\" type=\"text/css\" />"];
    [htmlString appendString:@"</head>"];
    [htmlString appendString:@"<body>"];
    [htmlString appendString:html];
    [htmlString appendString:@"</body>"];
    [htmlString appendString:@"</html>"];
    
    return htmlString;
}

#pragma mark -- 协议方法

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    
    NSString *string = [NSString stringWithFormat:@"document.getElementsByTagName('body')[0].style.webkitTextSizeAdjust= '%@'",@"100%"];
    
    [webView stringByEvaluatingJavaScriptFromString:string];
    
    _webViewHeight = [[webView stringByEvaluatingJavaScriptFromString:@"document.body.scrollHeight"] floatValue];
    
    self.webView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, self.webViewHeight);
    
    if (self.block) {
        
        self.block(self.webViewHeight);
    }
    
    
    [self.webView stringByEvaluatingJavaScriptFromString:@"function assignImageClickAction(){var imgs=document.getElementsByTagName('img');var length=imgs.length;for(var i=0; i < length;i++){img=imgs[i];if(\"ad\" ==img.getAttribute(\"flag\")){var parent = this.parentNode;if(parent.nodeName.toLowerCase() != \"a\")return;}img.onclick=function(){window.location.href='image-preview:'+this.src}}}"];
    
    [self.webView stringByEvaluatingJavaScriptFromString:@"assignImageClickAction();"];
    
    [self getImgs];
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    
    if ([request.URL isEqual:@"about:blank"]) {
        
        return YES;
    }
    
    /// 拦截图片点击事件 将图片点击事件传递给控制器让控制器去做相关操作。
    if ([request.URL.scheme isEqualToString: @"image-preview"]) {
        
        NSString *url = [request.URL.absoluteString substringFromIndex:14];
        
        NSInteger index = [self.imageArray indexOfObject:url];
        
        if (self.imageClickBlock) {
            
            self.imageClickBlock(self.imageArray, index);
        }
        
        return NO;
    }
    
    if ( navigationType == UIWebViewNavigationTypeLinkClicked ) {
        
        NSString *str = request.URL.absoluteString;
        
        NSLog(@"%@",str);
        
        return NO;
    }
    
    return YES;
}

#pragma mark -- 私有方法
- (NSArray *)getImgs
{
    NSMutableArray *arrImgURL = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < [self nodeCountOfTag:@"img"]; i++) {
        
        NSString *jsString = [NSString stringWithFormat:@"document.getElementsByTagName('img')[%d].src", i];
        NSString *string = [self.webView stringByEvaluatingJavaScriptFromString:jsString];
        
        [arrImgURL addObject:string];
    }
    self.imageArray = arrImgURL;
    
    return arrImgURL;
}

- (NSInteger)nodeCountOfTag:(NSString *)tag {
    
    /// 获取html中标签的集合 返回标签的个数 如果是图片的话 传入“img”;
    NSString *jsString = [NSString stringWithFormat:@"document.getElementsByTagName('%@').length", tag];
    
    int count =  [[self.webView stringByEvaluatingJavaScriptFromString:jsString] intValue];
    
    return count;
}

#pragma mark -- setter
- (void)setHtmlString:(NSString *)htmlString {
    
    if (_htmlString != htmlString) {
        
        _htmlString = htmlString;
        
        [self loadWebHtml];
    }
}

@end
