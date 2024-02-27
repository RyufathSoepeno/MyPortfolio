.class public abstract Lq1/a;
.super Lq1/t1;
.source "SourceFile"

# interfaces
.implements Lc1/d;
.implements Lq1/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq1/t1;",
        "Lc1/d<",
        "TT;>;",
        "Lq1/h0;"
    }
.end annotation


# instance fields
.field private final f:Lc1/g;


# direct methods
.method public constructor <init>(Lc1/g;ZZ)V
    .registers 4

    invoke-direct {p0, p3}, Lq1/t1;-><init>(Z)V

    if-eqz p2, :cond_10

    sget-object p2, Lq1/m1;->d:Lq1/m1$b;

    invoke-interface {p1, p2}, Lc1/g;->get(Lc1/g$c;)Lc1/g$b;

    move-result-object p2

    check-cast p2, Lq1/m1;

    invoke-virtual {p0, p2}, Lq1/t1;->T(Lq1/m1;)V

    :cond_10
    invoke-interface {p1, p0}, Lc1/g;->plus(Lc1/g;)Lc1/g;

    move-result-object p1

    iput-object p1, p0, Lq1/a;->f:Lc1/g;

    return-void
.end method


# virtual methods
.method protected D()Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lq1/l0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " was cancelled"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/k;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final S(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lq1/a;->f:Lc1/g;

    invoke-static {v0, p1}, Lq1/g0;->a(Lc1/g;Ljava/lang/Throwable;)V

    return-void
.end method

.method public Z()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lq1/a;->f:Lc1/g;

    invoke-static {v0}, Lq1/c0;->b(Lc1/g;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-super {p0}, Lq1/t1;->Z()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lq1/t1;->Z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .registers 2

    invoke-super {p0}, Lq1/t1;->b()Z

    move-result v0

    return v0
.end method

.method protected final e0(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p1, Lq1/w;

    if-eqz v0, :cond_10

    check-cast p1, Lq1/w;

    iget-object v0, p1, Lq1/w;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lq1/w;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lq1/a;->v0(Ljava/lang/Throwable;Z)V

    goto :goto_13

    :cond_10
    invoke-virtual {p0, p1}, Lq1/a;->w0(Ljava/lang/Object;)V

    :goto_13
    return-void
.end method

.method public f()Lc1/g;
    .registers 2

    iget-object v0, p0, Lq1/a;->f:Lc1/g;

    return-object v0
.end method

.method public final getContext()Lc1/g;
    .registers 2

    iget-object v0, p0, Lq1/a;->f:Lc1/g;

    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lq1/a0;->d(Ljava/lang/Object;Lj1/l;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq1/t1;->X(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lq1/u1;->b:Lkotlinx/coroutines/internal/b0;

    if-ne p1, v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0, p1}, Lq1/a;->u0(Ljava/lang/Object;)V

    return-void
.end method

.method protected u0(Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Lq1/t1;->y(Ljava/lang/Object;)V

    return-void
.end method

.method protected v0(Ljava/lang/Throwable;Z)V
    .registers 3

    return-void
.end method

.method protected w0(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final x0(Lq1/j0;Ljava/lang/Object;Lj1/p;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq1/j0;",
            "TR;",
            "Lj1/p<",
            "-TR;-",
            "Lc1/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p3, p2, p0}, Lq1/j0;->b(Lj1/p;Ljava/lang/Object;Lc1/d;)V

    return-void
.end method
