.class Lio/flutter/embedding/android/u$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/android/u;->D(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lq0/a;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lio/flutter/embedding/android/u;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/u;Lq0/a;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lio/flutter/embedding/android/u$e;->c:Lio/flutter/embedding/android/u;

    iput-object p2, p0, Lio/flutter/embedding/android/u$e;->a:Lq0/a;

    iput-object p3, p0, Lio/flutter/embedding/android/u$e;->b:Ljava/lang/Runnable;

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

    iget-object v0, p0, Lio/flutter/embedding/android/u$e;->a:Lq0/a;

    invoke-virtual {v0, p0}, Lq0/a;->p(Lq0/b;)V

    iget-object v0, p0, Lio/flutter/embedding/android/u$e;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lio/flutter/embedding/android/u$e;->c:Lio/flutter/embedding/android/u;

    iget-object v1, v0, Lio/flutter/embedding/android/u;->h:Lq0/c;

    instance-of v1, v1, Lio/flutter/embedding/android/m;

    if-nez v1, :cond_26

    invoke-static {v0}, Lio/flutter/embedding/android/u;->i(Lio/flutter/embedding/android/u;)Lio/flutter/embedding/android/m;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lio/flutter/embedding/android/u$e;->c:Lio/flutter/embedding/android/u;

    invoke-static {v0}, Lio/flutter/embedding/android/u;->i(Lio/flutter/embedding/android/u;)Lio/flutter/embedding/android/m;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/android/m;->a()V

    iget-object v0, p0, Lio/flutter/embedding/android/u$e;->c:Lio/flutter/embedding/android/u;

    invoke-static {v0}, Lio/flutter/embedding/android/u;->j(Lio/flutter/embedding/android/u;)V

    :cond_26
    return-void
.end method
