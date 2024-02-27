.class Lio/flutter/embedding/android/u$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/b;


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
.method constructor <init>(Lio/flutter/embedding/android/u;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/embedding/android/u$c;->a:Lio/flutter/embedding/android/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/android/u$c;->a:Lio/flutter/embedding/android/u;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/flutter/embedding/android/u;->g(Lio/flutter/embedding/android/u;Z)Z

    iget-object v0, p0, Lio/flutter/embedding/android/u$c;->a:Lio/flutter/embedding/android/u;

    invoke-static {v0}, Lio/flutter/embedding/android/u;->h(Lio/flutter/embedding/android/u;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq0/b;

    invoke-interface {v1}, Lq0/b;->d()V

    goto :goto_10

    :cond_20
    return-void
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/android/u$c;->a:Lio/flutter/embedding/android/u;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/flutter/embedding/android/u;->g(Lio/flutter/embedding/android/u;Z)Z

    iget-object v0, p0, Lio/flutter/embedding/android/u$c;->a:Lio/flutter/embedding/android/u;

    invoke-static {v0}, Lio/flutter/embedding/android/u;->h(Lio/flutter/embedding/android/u;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq0/b;

    invoke-interface {v1}, Lq0/b;->i()V

    goto :goto_10

    :cond_20
    return-void
.end method
