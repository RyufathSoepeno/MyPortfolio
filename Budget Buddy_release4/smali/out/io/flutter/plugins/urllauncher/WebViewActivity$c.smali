.class Lio/flutter/plugins/urllauncher/WebViewActivity$c;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/urllauncher/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugins/urllauncher/WebViewActivity;


# direct methods
.method constructor <init>(Lio/flutter/plugins/urllauncher/WebViewActivity;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/plugins/urllauncher/WebViewActivity$c;->a:Lio/flutter/plugins/urllauncher/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 5

    new-instance p1, Lio/flutter/plugins/urllauncher/WebViewActivity$c$a;

    invoke-direct {p1, p0}, Lio/flutter/plugins/urllauncher/WebViewActivity$c$a;-><init>(Lio/flutter/plugins/urllauncher/WebViewActivity$c;)V

    new-instance p2, Landroid/webkit/WebView;

    iget-object p3, p0, Lio/flutter/plugins/urllauncher/WebViewActivity$c;->a:Lio/flutter/plugins/urllauncher/WebViewActivity;

    iget-object p3, p3, Lio/flutter/plugins/urllauncher/WebViewActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1
.end method
