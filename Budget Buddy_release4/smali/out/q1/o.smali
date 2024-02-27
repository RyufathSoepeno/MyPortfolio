.class public final Lq1/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lc1/d;)Lq1/m;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc1/d<",
            "-TT;>;)",
            "Lq1/m<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lkotlinx/coroutines/internal/f;

    if-nez v0, :cond_b

    new-instance v0, Lq1/m;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lq1/m;-><init>(Lc1/d;I)V

    return-object v0

    :cond_b
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/f;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/f;->j()Lq1/m;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    :cond_15
    move-object v0, v1

    goto :goto_1d

    :cond_17
    invoke-virtual {v0}, Lq1/m;->G()Z

    move-result v2

    if-eqz v2, :cond_15

    :goto_1d
    if-nez v0, :cond_25

    new-instance v0, Lq1/m;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lq1/m;-><init>(Lc1/d;I)V

    :cond_25
    return-object v0
.end method
