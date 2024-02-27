.class Lio/flutter/embedding/android/u$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/android/u;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/u;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lio/flutter/embedding/android/u$b;->a:Lio/flutter/embedding/android/u;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lio/flutter/embedding/android/u$b;->a:Lio/flutter/embedding/android/u;

    invoke-static {p1}, Lio/flutter/embedding/android/u;->f(Lio/flutter/embedding/android/u;)Lio/flutter/embedding/engine/a;

    move-result-object p1

    if-nez p1, :cond_c

    return-void

    :cond_c
    const-string p1, "FlutterView"

    const-string v0, "System settings changed. Sending user settings to Flutter."

    invoke-static {p1, v0}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/flutter/embedding/android/u$b;->a:Lio/flutter/embedding/android/u;

    invoke-virtual {p1}, Lio/flutter/embedding/android/u;->E()V

    return-void
.end method
