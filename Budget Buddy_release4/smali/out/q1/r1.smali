.class final synthetic Lq1/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lq1/m1;)Lq1/u;
    .registers 2

    new-instance v0, Lq1/p1;

    invoke-direct {v0, p0}, Lq1/p1;-><init>(Lq1/m1;)V

    return-object v0
.end method

.method public static synthetic b(Lq1/m1;ILjava/lang/Object;)Lq1/u;
    .registers 3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    const/4 p0, 0x0

    :cond_5
    invoke-static {p0}, Lq1/q1;->a(Lq1/m1;)Lq1/u;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lc1/g;Ljava/util/concurrent/CancellationException;)V
    .registers 3

    sget-object v0, Lq1/m1;->d:Lq1/m1$b;

    invoke-interface {p0, v0}, Lc1/g;->get(Lc1/g$c;)Lc1/g$b;

    move-result-object p0

    check-cast p0, Lq1/m1;

    if-nez p0, :cond_b

    goto :goto_e

    :cond_b
    invoke-interface {p0, p1}, Lq1/m1;->o(Ljava/util/concurrent/CancellationException;)V

    :goto_e
    return-void
.end method

.method public static final d(Lc1/g;)V
    .registers 2

    sget-object v0, Lq1/m1;->d:Lq1/m1$b;

    invoke-interface {p0, v0}, Lc1/g;->get(Lc1/g$c;)Lc1/g$b;

    move-result-object p0

    check-cast p0, Lq1/m1;

    if-nez p0, :cond_b

    goto :goto_e

    :cond_b
    invoke-static {p0}, Lq1/q1;->e(Lq1/m1;)V

    :goto_e
    return-void
.end method

.method public static final e(Lq1/m1;)V
    .registers 2

    invoke-interface {p0}, Lq1/m1;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-interface {p0}, Lq1/m1;->l()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
.end method
