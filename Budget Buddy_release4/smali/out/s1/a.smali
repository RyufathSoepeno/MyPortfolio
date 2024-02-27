.class public abstract Ls1/a;
.super Ls1/c;
.source "SourceFile"

# interfaces
.implements Ls1/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a$c;,
        Ls1/a$a;,
        Ls1/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ls1/c<",
        "TE;>;",
        "Ls1/f<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lj1/l;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj1/l<",
            "-TE;",
            "La1/q;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ls1/c;-><init>(Lj1/l;)V

    return-void
.end method

.method public static final synthetic n(Ls1/a;Ls1/o;)Z
    .registers 2

    invoke-direct {p0, p1}, Ls1/a;->p(Ls1/o;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic o(Ls1/a;Lq1/k;Ls1/o;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ls1/a;->w(Lq1/k;Ls1/o;)V

    return-void
.end method

.method private final p(Ls1/o;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/o<",
            "-TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ls1/a;->q(Ls1/o;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ls1/a;->u()V

    :cond_9
    return p1
.end method

.method private final w(Lq1/k;Ls1/o;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq1/k<",
            "*>;",
            "Ls1/o<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Ls1/a$c;

    invoke-direct {v0, p0, p2}, Ls1/a$c;-><init>(Ls1/a;Ls1/o;)V

    invoke-interface {p1, v0}, Lq1/k;->d(Lj1/l;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ls1/g;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/g<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ls1/a$a;

    invoke-direct {v0, p0}, Ls1/a$a;-><init>(Ls1/a;)V

    return-object v0
.end method

.method protected l()Ls1/q;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/q<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0}, Ls1/c;->l()Ls1/q;

    move-result-object v0

    if-eqz v0, :cond_d

    instance-of v1, v0, Ls1/j;

    if-nez v1, :cond_d

    invoke-virtual {p0}, Ls1/a;->t()V

    :cond_d
    return-object v0
.end method

.method protected q(Ls1/o;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/o<",
            "-TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ls1/a;->r()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Ls1/c;->e()Lkotlinx/coroutines/internal/m;

    move-result-object v0

    :cond_c
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object v3

    instance-of v4, v3, Ls1/s;

    xor-int/2addr v4, v2

    if-nez v4, :cond_16

    goto :goto_3b

    :cond_16
    invoke-virtual {v3, p1, v0}, Lkotlinx/coroutines/internal/o;->j(Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_3a

    :cond_1d
    invoke-virtual {p0}, Ls1/c;->e()Lkotlinx/coroutines/internal/m;

    move-result-object v0

    new-instance v3, Ls1/a$d;

    invoke-direct {v3, p1, p0}, Ls1/a$d;-><init>(Lkotlinx/coroutines/internal/o;Ls1/a;)V

    :goto_26
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object v4

    instance-of v5, v4, Ls1/s;

    xor-int/2addr v5, v2

    if-nez v5, :cond_30

    goto :goto_3b

    :cond_30
    invoke-virtual {v4, p1, v0, v3}, Lkotlinx/coroutines/internal/o;->x(Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o$a;)I

    move-result v4

    if-eq v4, v2, :cond_3a

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3b

    goto :goto_26

    :cond_3a
    :goto_3a
    const/4 v1, 0x1

    :cond_3b
    :goto_3b
    return v1
.end method

.method protected abstract r()Z
.end method

.method protected abstract s()Z
.end method

.method protected t()V
    .registers 1

    return-void
.end method

.method protected u()V
    .registers 1

    return-void
.end method

.method protected v()Ljava/lang/Object;
    .registers 3

    :goto_0
    invoke-virtual {p0}, Ls1/c;->m()Ls1/s;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object v0, Ls1/b;->d:Lkotlinx/coroutines/internal/b0;

    return-object v0

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ls1/s;->A(Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/b0;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Ls1/s;->y()V

    invoke-virtual {v0}, Ls1/s;->z()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_18
    invoke-virtual {v0}, Ls1/s;->B()V

    goto :goto_0
.end method
