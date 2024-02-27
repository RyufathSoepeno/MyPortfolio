.class Lio/flutter/embedding/android/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/android/h;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/h;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/embedding/android/h$a;->a:Lio/flutter/embedding/android/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .registers 4

    iget-object v0, p0, Lio/flutter/embedding/android/h$a;->a:Lio/flutter/embedding/android/h;

    const-string v1, "onWindowFocusChanged"

    invoke-static {v0, v1}, Lio/flutter/embedding/android/h;->c2(Lio/flutter/embedding/android/h;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lio/flutter/embedding/android/h$a;->a:Lio/flutter/embedding/android/h;

    iget-object v0, v0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/d;->G(Z)V

    :cond_11
    return-void
.end method
