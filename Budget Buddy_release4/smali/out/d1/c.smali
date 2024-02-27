.class Ld1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lj1/p;Ljava/lang/Object;Lc1/d;)Lc1/d;
    .registers 5
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
            "-TT;>;)",
            "Lc1/d<",
            "La1/q;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->a(Lc1/d;)Lc1/d;

    move-result-object p2

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/a;

    if-eqz v0, :cond_19

    check-cast p0, Lkotlin/coroutines/jvm/internal/a;

    invoke-virtual {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/a;->create(Ljava/lang/Object;Lc1/d;)Lc1/d;

    move-result-object p0

    goto :goto_2e

    :cond_19
    invoke-interface {p2}, Lc1/d;->getContext()Lc1/g;

    move-result-object v0

    sget-object v1, Lc1/h;->e:Lc1/h;

    if-ne v0, v1, :cond_28

    new-instance v0, Ld1/c$a;

    invoke-direct {v0, p2, p0, p1}, Ld1/c$a;-><init>(Lc1/d;Lj1/p;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_2e

    :cond_28
    new-instance v1, Ld1/c$b;

    invoke-direct {v1, p2, v0, p0, p1}, Ld1/c$b;-><init>(Lc1/d;Lc1/g;Lj1/p;Ljava/lang/Object;)V

    move-object p0, v1

    :goto_2e
    return-object p0
.end method

.method public static b(Lc1/d;)Lc1/d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc1/d<",
            "-TT;>;)",
            "Lc1/d<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/d;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/jvm/internal/d;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lkotlin/coroutines/jvm/internal/d;->intercepted()Lc1/d;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_18

    :cond_17
    move-object p0, v0

    :cond_18
    :goto_18
    return-object p0
.end method
