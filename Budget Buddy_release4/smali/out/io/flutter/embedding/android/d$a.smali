.class Lio/flutter/embedding/android/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/android/d;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/d;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/embedding/android/d$a;->a:Lio/flutter/embedding/android/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/android/d$a;->a:Lio/flutter/embedding/android/d;

    invoke-static {v0}, Lio/flutter/embedding/android/d;->a(Lio/flutter/embedding/android/d;)Lio/flutter/embedding/android/d$d;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->d()V

    iget-object v0, p0, Lio/flutter/embedding/android/d$a;->a:Lio/flutter/embedding/android/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/flutter/embedding/android/d;->c(Lio/flutter/embedding/android/d;Z)Z

    return-void
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/android/d$a;->a:Lio/flutter/embedding/android/d;

    invoke-static {v0}, Lio/flutter/embedding/android/d;->a(Lio/flutter/embedding/android/d;)Lio/flutter/embedding/android/d$d;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->i()V

    iget-object v0, p0, Lio/flutter/embedding/android/d$a;->a:Lio/flutter/embedding/android/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/flutter/embedding/android/d;->c(Lio/flutter/embedding/android/d;Z)Z

    iget-object v0, p0, Lio/flutter/embedding/android/d$a;->a:Lio/flutter/embedding/android/d;

    invoke-static {v0, v1}, Lio/flutter/embedding/android/d;->d(Lio/flutter/embedding/android/d;Z)Z

    return-void
.end method
