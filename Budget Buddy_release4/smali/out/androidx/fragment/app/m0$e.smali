.class Landroidx/fragment/app/m0$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/m0$e$b;,
        Landroidx/fragment/app/m0$e$c;
    }
.end annotation


# instance fields
.field private a:Landroidx/fragment/app/m0$e$c;

.field private b:Landroidx/fragment/app/m0$e$b;

.field private final c:Landroidx/fragment/app/Fragment;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/core/os/e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z


# direct methods
.method constructor <init>(Landroidx/fragment/app/m0$e$c;Landroidx/fragment/app/m0$e$b;Landroidx/fragment/app/Fragment;Landroidx/core/os/e;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/m0$e;->d:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/m0$e;->e:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/m0$e;->f:Z

    iput-boolean v0, p0, Landroidx/fragment/app/m0$e;->g:Z

    iput-object p1, p0, Landroidx/fragment/app/m0$e;->a:Landroidx/fragment/app/m0$e$c;

    iput-object p2, p0, Landroidx/fragment/app/m0$e;->b:Landroidx/fragment/app/m0$e$b;

    iput-object p3, p0, Landroidx/fragment/app/m0$e;->c:Landroidx/fragment/app/Fragment;

    new-instance p1, Landroidx/fragment/app/m0$e$a;

    invoke-direct {p1, p0}, Landroidx/fragment/app/m0$e$a;-><init>(Landroidx/fragment/app/m0$e;)V

    invoke-virtual {p4, p1}, Landroidx/core/os/e;->c(Landroidx/core/os/e$b;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/m0$e;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final b()V
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/m0$e;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/m0$e;->f:Z

    iget-object v0, p0, Landroidx/fragment/app/m0$e;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroidx/fragment/app/m0$e;->c()V

    goto :goto_31

    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/m0$e;->e:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/os/e;

    invoke-virtual {v1}, Landroidx/core/os/e;->a()V

    goto :goto_21

    :cond_31
    :goto_31
    return-void
.end method

.method public c()V
    .registers 3

    iget-boolean v0, p0, Landroidx/fragment/app/m0$e;->g:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has called complete."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/m0$e;->g:Z

    iget-object v0, p0, Landroidx/fragment/app/m0$e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_30

    :cond_40
    return-void
.end method

.method public final d(Landroidx/core/os/e;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/m0$e;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Landroidx/fragment/app/m0$e;->e:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Landroidx/fragment/app/m0$e;->c()V

    :cond_13
    return-void
.end method

.method public e()Landroidx/fragment/app/m0$e$c;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/m0$e;->a:Landroidx/fragment/app/m0$e$c;

    return-object v0
.end method

.method public final f()Landroidx/fragment/app/Fragment;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/m0$e;->c:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method g()Landroidx/fragment/app/m0$e$b;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/m0$e;->b:Landroidx/fragment/app/m0$e$b;

    return-object v0
.end method

.method final h()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/fragment/app/m0$e;->f:Z

    return v0
.end method

.method final i()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/fragment/app/m0$e;->g:Z

    return v0
.end method

.method public final j(Landroidx/core/os/e;)V
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/m0$e;->l()V

    iget-object v0, p0, Landroidx/fragment/app/m0$e;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final k(Landroidx/fragment/app/m0$e$c;Landroidx/fragment/app/m0$e$b;)V
    .registers 8

    sget-object v0, Landroidx/fragment/app/m0$c;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const-string v1, "SpecialEffectsController: For fragment "

    const-string v2, "FragmentManager"

    const/4 v3, 0x2

    if-eq p2, v0, :cond_8b

    const-string v0, " mFinalState = "

    if-eq p2, v3, :cond_51

    const/4 v4, 0x3

    if-eq p2, v4, :cond_19

    goto/16 :goto_c1

    :cond_19
    iget-object p2, p0, Landroidx/fragment/app/m0$e;->a:Landroidx/fragment/app/m0$e$c;

    sget-object v4, Landroidx/fragment/app/m0$e$c;->e:Landroidx/fragment/app/m0$e$c;

    if-eq p2, v4, :cond_c1

    invoke-static {v3}, Landroidx/fragment/app/x;->I0(I)Z

    move-result p2

    if-eqz p2, :cond_4e

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/m0$e;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/m0$e;->a:Landroidx/fragment/app/m0$e$c;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    iput-object p1, p0, Landroidx/fragment/app/m0$e;->a:Landroidx/fragment/app/m0$e$c;

    goto :goto_c1

    :cond_51
    invoke-static {v3}, Landroidx/fragment/app/x;->I0(I)Z

    move-result p1

    if-eqz p1, :cond_82

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/fragment/app/m0$e;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/fragment/app/m0$e;->a:Landroidx/fragment/app/m0$e$c;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " -> REMOVED. mLifecycleImpact  = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/fragment/app/m0$e;->b:Landroidx/fragment/app/m0$e$b;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to REMOVING."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    sget-object p1, Landroidx/fragment/app/m0$e$c;->e:Landroidx/fragment/app/m0$e$c;

    iput-object p1, p0, Landroidx/fragment/app/m0$e;->a:Landroidx/fragment/app/m0$e$c;

    sget-object p1, Landroidx/fragment/app/m0$e$b;->g:Landroidx/fragment/app/m0$e$b;

    :goto_88
    iput-object p1, p0, Landroidx/fragment/app/m0$e;->b:Landroidx/fragment/app/m0$e$b;

    goto :goto_c1

    :cond_8b
    iget-object p1, p0, Landroidx/fragment/app/m0$e;->a:Landroidx/fragment/app/m0$e$c;

    sget-object p2, Landroidx/fragment/app/m0$e$c;->e:Landroidx/fragment/app/m0$e$c;

    if-ne p1, p2, :cond_c1

    invoke-static {v3}, Landroidx/fragment/app/x;->I0(I)Z

    move-result p1

    if-eqz p1, :cond_ba

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/fragment/app/m0$e;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/fragment/app/m0$e;->b:Landroidx/fragment/app/m0$e$b;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to ADDING."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ba
    sget-object p1, Landroidx/fragment/app/m0$e$c;->f:Landroidx/fragment/app/m0$e$c;

    iput-object p1, p0, Landroidx/fragment/app/m0$e;->a:Landroidx/fragment/app/m0$e$c;

    sget-object p1, Landroidx/fragment/app/m0$e$b;->f:Landroidx/fragment/app/m0$e$b;

    goto :goto_88

    :cond_c1
    :goto_c1
    return-void
.end method

.method l()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "} "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mFinalState = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/fragment/app/m0$e;->a:Landroidx/fragment/app/m0$e$c;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLifecycleImpact = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/fragment/app/m0$e;->b:Landroidx/fragment/app/m0$e$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mFragment = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/m0$e;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
