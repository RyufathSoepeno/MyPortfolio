.class public final Lv1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lj1/p;Ljava/lang/Object;Lc1/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj1/p<",
            "-TR;-",
            "Lc1/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lc1/d<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->a(Lc1/d;)Lc1/d;

    move-result-object v0

    :try_start_4
    invoke-interface {p2}, Lc1/d;->getContext()Lc1/g;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lkotlinx/coroutines/internal/f0;->c(Lc1/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_27

    const/4 v2, 0x2

    :try_start_e
    invoke-static {p0, v2}, Lkotlin/jvm/internal/t;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj1/p;

    invoke-interface {p0, p1, v0}, Lj1/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_22

    :try_start_18
    invoke-static {p2, v1}, Lkotlinx/coroutines/internal/f0;->a(Lc1/g;Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_27

    invoke-static {}, Ld1/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_35

    goto :goto_2e

    :catchall_22
    move-exception p0

    :try_start_23
    invoke-static {p2, v1}, Lkotlinx/coroutines/internal/f0;->a(Lc1/g;Ljava/lang/Object;)V

    throw p0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    sget-object p1, La1/k;->e:La1/k$a;

    invoke-static {p0}, La1/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_2e
    invoke-static {p0}, La1/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lc1/d;->resumeWith(Ljava/lang/Object;)V

    :cond_35
    return-void
.end method
