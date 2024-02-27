.class Lio/flutter/plugins/urllauncher/WebViewActivity$c$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/urllauncher/WebViewActivity$c;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugins/urllauncher/WebViewActivity$c;


# direct methods
.method constructor <init>(Lio/flutter/plugins/urllauncher/WebViewActivity$c;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/plugins/urllauncher/WebViewActivity$c$a;->a:Lio/flutter/plugins/urllauncher/WebViewActivity$c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 3

    iget-object p1, p0, Lio/flutter/plugins/urllauncher/WebViewActivity$c$a;->a:Lio/flutter/plugins/urllauncher/WebViewActivity$c;

    iget-object p1, p1, Lio/flutter/plugins/urllauncher/WebViewActivity$c;->a:Lio/flutter/plugins/urllauncher/WebViewActivity;

    iget-object p1, p1, Lio/flutter/plugins/urllauncher/WebViewActivity;->g:Landroid/webkit/WebView;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    iget-object p1, p0, Lio/flutter/plugins/urllauncher/WebViewActivity$c$a;->a:Lio/flutter/plugins/urllauncher/WebViewActivity$c;

    iget-object p1, p1, Lio/flutter/plugins/urllauncher/WebViewActivity$c;->a:Lio/flutter/plugins/urllauncher/WebViewActivity;

    iget-object p1, p1, Lio/flutter/plugins/urllauncher/WebViewActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
