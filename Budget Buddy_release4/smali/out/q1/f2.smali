.class public final Lq1/f2;
.super Lkotlinx/coroutines/internal/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private h:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "La1/j<",
            "Lc1/g;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final A0(Lc1/g;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lq1/f2;->h:Ljava/lang/ThreadLocal;

    invoke-static {p1, p2}, La1/n;->a(Ljava/lang/Object;Ljava/lang/Object;)La1/j;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method protected u0(Ljava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Lq1/f2;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La1/j;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    goto :goto_1e

    :cond_c
    invoke-virtual {v0}, La1/j;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc1/g;

    invoke-virtual {v0}, La1/j;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlinx/coroutines/internal/f0;->a(Lc1/g;Ljava/lang/Object;)V

    iget-object v0, p0, Lq1/f2;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_1e
    iget-object v0, p0, Lkotlinx/coroutines/internal/z;->g:Lc1/d;

    invoke-static {p1, v0}, Lq1/a0;->a(Ljava/lang/Object;Lc1/d;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/internal/z;->g:Lc1/d;

    invoke-interface {v0}, Lc1/d;->getContext()Lc1/g;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/f0;->c(Lc1/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/internal/f0;->a:Lkotlinx/coroutines/internal/b0;

    if-eq v3, v4, :cond_36

    invoke-static {v0, v2, v3}, Lq1/c0;->f(Lc1/d;Lc1/g;Ljava/lang/Object;)Lq1/f2;

    move-result-object v1

    :cond_36
    :try_start_36
    iget-object v0, p0, Lkotlinx/coroutines/internal/z;->g:Lc1/d;

    invoke-interface {v0, p1}, Lc1/d;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, La1/q;->a:La1/q;
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_49

    if-eqz v1, :cond_45

    invoke-virtual {v1}, Lq1/f2;->z0()Z

    move-result p1

    if-eqz p1, :cond_48

    :cond_45
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/f0;->a(Lc1/g;Ljava/lang/Object;)V

    :cond_48
    return-void

    :catchall_49
    move-exception p1

    if-eqz v1, :cond_52

    invoke-virtual {v1}, Lq1/f2;->z0()Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_52
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/f0;->a(Lc1/g;Ljava/lang/Object;)V

    :cond_55
    throw p1
.end method

.method public final z0()Z
    .registers 3

    iget-object v0, p0, Lq1/f2;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iget-object v0, p0, Lq1/f2;->h:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method
