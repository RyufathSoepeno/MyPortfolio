.class public final Lkotlinx/coroutines/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/b0;

.field public static final b:Lkotlinx/coroutines/internal/b0;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/g;->a:Lkotlinx/coroutines/internal/b0;

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/g;->b:Lkotlinx/coroutines/internal/b0;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/b0;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/internal/g;->a:Lkotlinx/coroutines/internal/b0;

    return-object v0
.end method

.method public static final b(Lc1/d;Ljava/lang/Object;Lj1/l;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc1/d<",
            "-TT;>;",
            "Ljava/lang/Object;",
            "Lj1/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La1/q;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p0, Lkotlinx/coroutines/internal/f;

    if-eqz v0, :cond_b6

    check-cast p0, Lkotlinx/coroutines/internal/f;

    invoke-static {p1, p2}, Lq1/a0;->b(Ljava/lang/Object;Lj1/l;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lkotlinx/coroutines/internal/f;->h:Lq1/d0;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f;->getContext()Lc1/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq1/d0;->d(Lc1/g;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    iput-object p2, p0, Lkotlinx/coroutines/internal/f;->j:Ljava/lang/Object;

    iput v1, p0, Lq1/r0;->g:I

    iget-object p1, p0, Lkotlinx/coroutines/internal/f;->h:Lq1/d0;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f;->getContext()Lc1/g;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lq1/d0;->c(Lc1/g;Ljava/lang/Runnable;)V

    goto/16 :goto_b9

    :cond_26
    sget-object v0, Lq1/d2;->a:Lq1/d2;

    invoke-virtual {v0}, Lq1/d2;->a()Lq1/x0;

    move-result-object v0

    invoke-virtual {v0}, Lq1/x0;->w()Z

    move-result v2

    if-eqz v2, :cond_3b

    iput-object p2, p0, Lkotlinx/coroutines/internal/f;->j:Ljava/lang/Object;

    iput v1, p0, Lq1/r0;->g:I

    invoke-virtual {v0, p0}, Lq1/x0;->s(Lq1/r0;)V

    goto/16 :goto_b9

    :cond_3b
    invoke-virtual {v0, v1}, Lq1/x0;->u(Z)V

    const/4 v2, 0x0

    :try_start_3f
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f;->getContext()Lc1/g;

    move-result-object v3

    sget-object v4, Lq1/m1;->d:Lq1/m1$b;

    invoke-interface {v3, v4}, Lc1/g;->get(Lc1/g$c;)Lc1/g$b;

    move-result-object v3

    check-cast v3, Lq1/m1;

    if-eqz v3, :cond_69

    invoke-interface {v3}, Lq1/m1;->b()Z

    move-result v4

    if-nez v4, :cond_69

    invoke-interface {v3}, Lq1/m1;->l()Ljava/util/concurrent/CancellationException;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lkotlinx/coroutines/internal/f;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object p2, La1/k;->e:La1/k$a;

    invoke-static {v3}, La1/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, La1/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lc1/d;->resumeWith(Ljava/lang/Object;)V

    const/4 p2, 0x1

    goto :goto_6a

    :cond_69
    const/4 p2, 0x0

    :goto_6a
    if-nez p2, :cond_a2

    iget-object p2, p0, Lkotlinx/coroutines/internal/f;->i:Lc1/d;

    iget-object v3, p0, Lkotlinx/coroutines/internal/f;->k:Ljava/lang/Object;

    invoke-interface {p2}, Lc1/d;->getContext()Lc1/g;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/f0;->c(Lc1/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lkotlinx/coroutines/internal/f0;->a:Lkotlinx/coroutines/internal/b0;

    if-eq v3, v5, :cond_81

    invoke-static {p2, v4, v3}, Lq1/c0;->f(Lc1/d;Lc1/g;Ljava/lang/Object;)Lq1/f2;

    move-result-object p2
    :try_end_80
    .catchall {:try_start_3f .. :try_end_80} :catchall_a9

    goto :goto_82

    :cond_81
    move-object p2, v2

    :goto_82
    :try_start_82
    iget-object v5, p0, Lkotlinx/coroutines/internal/f;->i:Lc1/d;

    invoke-interface {v5, p1}, Lc1/d;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, La1/q;->a:La1/q;
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_95

    if-eqz p2, :cond_91

    :try_start_8b
    invoke-virtual {p2}, Lq1/f2;->z0()Z

    move-result p1

    if-eqz p1, :cond_a2

    :cond_91
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/f0;->a(Lc1/g;Ljava/lang/Object;)V

    goto :goto_a2

    :catchall_95
    move-exception p1

    if-eqz p2, :cond_9e

    invoke-virtual {p2}, Lq1/f2;->z0()Z

    move-result p2

    if-eqz p2, :cond_a1

    :cond_9e
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/f0;->a(Lc1/g;Ljava/lang/Object;)V

    :cond_a1
    throw p1

    :cond_a2
    :goto_a2
    invoke-virtual {v0}, Lq1/x0;->y()Z

    move-result p1
    :try_end_a6
    .catchall {:try_start_8b .. :try_end_a6} :catchall_a9

    if-nez p1, :cond_a2

    goto :goto_ad

    :catchall_a9
    move-exception p1

    :try_start_aa
    invoke-virtual {p0, p1, v2}, Lq1/r0;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_b1

    :goto_ad
    invoke-virtual {v0, v1}, Lq1/x0;->p(Z)V

    goto :goto_b9

    :catchall_b1
    move-exception p0

    invoke-virtual {v0, v1}, Lq1/x0;->p(Z)V

    throw p0

    :cond_b6
    invoke-interface {p0, p1}, Lc1/d;->resumeWith(Ljava/lang/Object;)V

    :goto_b9
    return-void
.end method

.method public static synthetic c(Lc1/d;Ljava/lang/Object;Lj1/l;ILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/internal/g;->b(Lc1/d;Ljava/lang/Object;Lj1/l;)V

    return-void
.end method
