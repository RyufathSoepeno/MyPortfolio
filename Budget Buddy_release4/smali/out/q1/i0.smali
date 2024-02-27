.class public final Lq1/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lc1/g;)Lq1/h0;
    .registers 4

    new-instance v0, Lkotlinx/coroutines/internal/e;

    sget-object v1, Lq1/m1;->d:Lq1/m1$b;

    invoke-interface {p0, v1}, Lc1/g;->get(Lc1/g$c;)Lc1/g$b;

    move-result-object v1

    if-eqz v1, :cond_b

    goto :goto_15

    :cond_b
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lq1/q1;->b(Lq1/m1;ILjava/lang/Object;)Lq1/u;

    move-result-object v1

    invoke-interface {p0, v1}, Lc1/g;->plus(Lc1/g;)Lc1/g;

    move-result-object p0

    :goto_15
    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/e;-><init>(Lc1/g;)V

    return-object v0
.end method
