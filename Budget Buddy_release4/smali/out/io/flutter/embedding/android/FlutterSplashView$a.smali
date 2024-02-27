.class Lio/flutter/embedding/android/FlutterSplashView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/android/u$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterSplashView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/android/FlutterSplashView;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/FlutterSplashView;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterSplashView$a;->a:Lio/flutter/embedding/android/FlutterSplashView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b(Lio/flutter/embedding/engine/a;)V
    .registers 4

    iget-object p1, p0, Lio/flutter/embedding/android/FlutterSplashView$a;->a:Lio/flutter/embedding/android/FlutterSplashView;

    invoke-static {p1}, Lio/flutter/embedding/android/FlutterSplashView;->a(Lio/flutter/embedding/android/FlutterSplashView;)Lio/flutter/embedding/android/u;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/flutter/embedding/android/u;->A(Lio/flutter/embedding/android/u$f;)V

    iget-object p1, p0, Lio/flutter/embedding/android/FlutterSplashView$a;->a:Lio/flutter/embedding/android/FlutterSplashView;

    invoke-static {p1}, Lio/flutter/embedding/android/FlutterSplashView;->a(Lio/flutter/embedding/android/FlutterSplashView;)Lio/flutter/embedding/android/u;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterSplashView$a;->a:Lio/flutter/embedding/android/FlutterSplashView;

    invoke-static {v1}, Lio/flutter/embedding/android/FlutterSplashView;->b(Lio/flutter/embedding/android/FlutterSplashView;)Lio/flutter/embedding/android/h0;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/flutter/embedding/android/FlutterSplashView;->g(Lio/flutter/embedding/android/u;Lio/flutter/embedding/android/h0;)V

    return-void
.end method
