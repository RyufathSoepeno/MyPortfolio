.class public final Lq1/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(Lc1/g;Lc1/g;Z)Lc1/g;
    .registers 6

    invoke-static {p0}, Lq1/c0;->c(Lc1/g;)Z

    move-result v0

    invoke-static {p1}, Lq1/c0;->c(Lc1/g;)Z

    move-result v1

    if-nez v0, :cond_11

    if-nez v1, :cond_11

    invoke-interface {p0, p1}, Lc1/g;->plus(Lc1/g;)Lc1/g;

    move-result-object p0

    return-object p0

    :cond_11
    new-instance v0, Lkotlin/jvm/internal/q;

    invoke-direct {v0}, Lkotlin/jvm/internal/q;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/q;->e:Ljava/lang/Object;

    sget-object p1, Lc1/h;->e:Lc1/h;

    new-instance v2, Lq1/c0$b;

    invoke-direct {v2, v0, p2}, Lq1/c0$b;-><init>(Lkotlin/jvm/internal/q;Z)V

    invoke-interface {p0, p1, v2}, Lc1/g;->fold(Ljava/lang/Object;Lj1/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc1/g;

    if-eqz v1, :cond_33

    iget-object p2, v0, Lkotlin/jvm/internal/q;->e:Ljava/lang/Object;

    check-cast p2, Lc1/g;

    sget-object v1, Lq1/c0$a;->e:Lq1/c0$a;

    invoke-interface {p2, p1, v1}, Lc1/g;->fold(Ljava/lang/Object;Lj1/p;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/q;->e:Ljava/lang/Object;

    :cond_33
    iget-object p1, v0, Lkotlin/jvm/internal/q;->e:Ljava/lang/Object;

    check-cast p1, Lc1/g;

    invoke-interface {p0, p1}, Lc1/g;->plus(Lc1/g;)Lc1/g;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lc1/g;)Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final c(Lc1/g;)Z
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lq1/c0$c;->e:Lq1/c0$c;

    invoke-interface {p0, v0, v1}, Lc1/g;->fold(Ljava/lang/Object;Lj1/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final d(Lq1/h0;Lc1/g;)Lc1/g;
    .registers 3

    invoke-interface {p0}, Lq1/h0;->f()Lc1/g;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lq1/c0;->a(Lc1/g;Lc1/g;Z)Lc1/g;

    move-result-object p0

    invoke-static {}, Lq1/u0;->a()Lq1/d0;

    move-result-object p1

    if-eq p0, p1, :cond_1f

    sget-object p1, Lc1/e;->b:Lc1/e$b;

    invoke-interface {p0, p1}, Lc1/g;->get(Lc1/g$c;)Lc1/g$b;

    move-result-object p1

    if-nez p1, :cond_1f

    invoke-static {}, Lq1/u0;->a()Lq1/d0;

    move-result-object p1

    invoke-interface {p0, p1}, Lc1/g;->plus(Lc1/g;)Lc1/g;

    move-result-object p0

    :cond_1f
    return-object p0
.end method

.method public static final e(Lkotlin/coroutines/jvm/internal/e;)Lq1/f2;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/jvm/internal/e;",
            ")",
            "Lq1/f2<",
            "*>;"
        }
    .end annotation

    :cond_0
    instance-of v0, p0, Lq1/q0;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    invoke-interface {p0}, Lkotlin/coroutines/jvm/internal/e;->getCallerFrame()Lkotlin/coroutines/jvm/internal/e;

    move-result-object p0

    if-nez p0, :cond_d

    return-object v1

    :cond_d
    instance-of v0, p0, Lq1/f2;

    if-eqz v0, :cond_0

    check-cast p0, Lq1/f2;

    return-object p0
.end method

.method public static final f(Lc1/d;Lc1/g;Ljava/lang/Object;)Lq1/f2;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/d<",
            "*>;",
            "Lc1/g;",
            "Ljava/lang/Object;",
            ")",
            "Lq1/f2<",
            "*>;"
        }
    .end annotation

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/e;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    sget-object v0, Lq1/g2;->e:Lq1/g2;

    invoke-interface {p1, v0}, Lc1/g;->get(Lc1/g$c;)Lc1/g$b;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_14

    return-object v1

    :cond_14
    check-cast p0, Lkotlin/coroutines/jvm/internal/e;

    invoke-static {p0}, Lq1/c0;->e(Lkotlin/coroutines/jvm/internal/e;)Lq1/f2;

    move-result-object p0

    if-nez p0, :cond_1d

    goto :goto_20

    :cond_1d
    invoke-virtual {p0, p1, p2}, Lq1/f2;->A0(Lc1/g;Ljava/lang/Object;)V

    :goto_20
    return-object p0
.end method
