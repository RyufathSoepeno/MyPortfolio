.class public Lkotlinx/coroutines/internal/z;
.super Lq1/a;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/jvm/internal/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq1/a<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/e;"
    }
.end annotation


# instance fields
.field public final g:Lc1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/d<",
            "TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected final V()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final getCallerFrame()Lkotlin/coroutines/jvm/internal/e;
    .registers 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/z;->g:Lc1/d;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/e;

    if-eqz v1, :cond_9

    check-cast v0, Lkotlin/coroutines/jvm/internal/e;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method protected u0(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/z;->g:Lc1/d;

    invoke-static {p1, v0}, Lq1/a0;->a(Ljava/lang/Object;Lc1/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lc1/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method protected y(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lkotlinx/coroutines/internal/z;->g:Lc1/d;

    invoke-static {v0}, Ld1/b;->b(Lc1/d;)Lc1/d;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/internal/z;->g:Lc1/d;

    invoke-static {p1, v1}, Lq1/a0;->a(Ljava/lang/Object;Lc1/d;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lkotlinx/coroutines/internal/g;->c(Lc1/d;Ljava/lang/Object;Lj1/l;ILjava/lang/Object;)V

    return-void
.end method

.method public final y0()Lq1/m1;
    .registers 2

    invoke-virtual {p0}, Lq1/t1;->P()Lq1/r;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-interface {v0}, Lq1/r;->getParent()Lq1/m1;

    move-result-object v0

    :goto_c
    return-object v0
.end method
