.class public final Lv1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(Lc1/d;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/d<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    sget-object v0, La1/k;->e:La1/k$a;

    invoke-static {p1}, La1/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, La1/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lc1/d;->resumeWith(Ljava/lang/Object;)V

    throw p1
.end method

.method public static final b(Lc1/d;Lc1/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/d<",
            "-",
            "La1/q;",
            ">;",
            "Lc1/d<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ld1/b;->b(Lc1/d;)Lc1/d;

    move-result-object p0

    sget-object v0, La1/k;->e:La1/k$a;

    sget-object v0, La1/q;->a:La1/q;

    invoke-static {v0}, La1/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lkotlinx/coroutines/internal/g;->c(Lc1/d;Ljava/lang/Object;Lj1/l;ILjava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception p0

    invoke-static {p1, p0}, Lv1/a;->a(Lc1/d;Ljava/lang/Throwable;)V

    :goto_16
    return-void
.end method

.method public static final c(Lj1/p;Ljava/lang/Object;Lc1/d;Lj1/l;)V
    .registers 4
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
            "-TT;>;",
            "Lj1/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La1/q;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Ld1/b;->a(Lj1/p;Ljava/lang/Object;Lc1/d;)Lc1/d;

    move-result-object p0

    invoke-static {p0}, Ld1/b;->b(Lc1/d;)Lc1/d;

    move-result-object p0

    sget-object p1, La1/k;->e:La1/k$a;

    sget-object p1, La1/q;->a:La1/q;

    invoke-static {p1}, La1/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lkotlinx/coroutines/internal/g;->b(Lc1/d;Ljava/lang/Object;Lj1/l;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception p0

    invoke-static {p2, p0}, Lv1/a;->a(Lc1/d;Ljava/lang/Throwable;)V

    :goto_18
    return-void
.end method

.method public static synthetic d(Lj1/p;Ljava/lang/Object;Lc1/d;Lj1/l;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-static {p0, p1, p2, p3}, Lv1/a;->c(Lj1/p;Ljava/lang/Object;Lc1/d;Lj1/l;)V

    return-void
.end method
