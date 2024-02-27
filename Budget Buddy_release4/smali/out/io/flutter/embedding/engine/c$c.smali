.class Lio/flutter/embedding/engine/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ls0/n;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ls0/l;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ls0/m;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ls0/o;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lk0/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/lifecycle/f;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/c$c;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/c$c;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/c$c;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/c$c;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/c$c;->g:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/c$c;->h:Ljava/util/Set;

    iput-object p1, p0, Lio/flutter/embedding/engine/c$c;->a:Landroid/app/Activity;

    new-instance p1, Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;

    invoke-direct {p1, p2}, Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;-><init>(Landroidx/lifecycle/f;)V

    iput-object p1, p0, Lio/flutter/embedding/engine/c$c;->b:Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/c$c;->b:Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;

    return-object v0
.end method

.method public b(Ls0/l;)V
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/engine/c$c;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method c(IILandroid/content/Intent;)Z
    .registers 8

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lio/flutter/embedding/engine/c$c;->d:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_c
    const/4 v2, 0x0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls0/l;

    invoke-interface {v3, p1, p2, p3}, Ls0/l;->a(IILandroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_21

    if-eqz v2, :cond_c

    :cond_21
    const/4 v2, 0x1

    goto :goto_d

    :cond_23
    return v2
.end method

.method d(Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lio/flutter/embedding/engine/c$c;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls0/m;

    invoke-interface {v1, p1}, Ls0/m;->b(Landroid/content/Intent;)Z

    goto :goto_6

    :cond_16
    return-void
.end method

.method e(I[Ljava/lang/String;[I)Z
    .registers 8

    iget-object v0, p0, Lio/flutter/embedding/engine/c$c;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    const/4 v2, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls0/n;

    invoke-interface {v3, p1, p2, p3}, Ls0/n;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    move-result v3

    if-nez v3, :cond_1c

    if-eqz v2, :cond_7

    :cond_1c
    const/4 v2, 0x1

    goto :goto_8

    :cond_1e
    return v2
.end method

.method public f()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/c$c;->a:Landroid/app/Activity;

    return-object v0
.end method

.method g(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lio/flutter/embedding/engine/c$c;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk0/c$a;

    invoke-interface {v1, p1}, Lk0/c$a;->c(Landroid/os/Bundle;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method h(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lio/flutter/embedding/engine/c$c;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk0/c$a;

    invoke-interface {v1, p1}, Lk0/c$a;->d(Landroid/os/Bundle;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method i()V
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/engine/c$c;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls0/o;

    invoke-interface {v1}, Ls0/o;->e()V

    goto :goto_6

    :cond_16
    return-void
.end method
