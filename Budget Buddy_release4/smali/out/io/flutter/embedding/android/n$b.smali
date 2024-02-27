.class Lio/flutter/embedding/android/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/android/n;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/n;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/embedding/android/n$b;->a:Lio/flutter/embedding/android/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .registers 1

    return-void
.end method

.method public i()V
    .registers 3

    const-string v0, "FlutterSurfaceView"

    const-string v1, "onFlutterUiDisplayed()"

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/n$b;->a:Lio/flutter/embedding/android/n;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lio/flutter/embedding/android/n$b;->a:Lio/flutter/embedding/android/n;

    invoke-static {v0}, Lio/flutter/embedding/android/n;->i(Lio/flutter/embedding/android/n;)Lq0/a;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lio/flutter/embedding/android/n$b;->a:Lio/flutter/embedding/android/n;

    invoke-static {v0}, Lio/flutter/embedding/android/n;->i(Lio/flutter/embedding/android/n;)Lq0/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lq0/a;->p(Lq0/b;)V

    :cond_1f
    return-void
.end method
