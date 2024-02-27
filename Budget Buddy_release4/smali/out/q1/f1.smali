.class public final Lq1/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/concurrent/Executor;)Lq1/d0;
    .registers 3

    instance-of v0, p0, Lq1/t0;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Lq1/t0;

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    iget-object v1, v0, Lq1/t0;->e:Lq1/d0;

    :goto_f
    if-nez v1, :cond_16

    new-instance v1, Lq1/e1;

    invoke-direct {v1, p0}, Lq1/e1;-><init>(Ljava/util/concurrent/Executor;)V

    :cond_16
    return-object v1
.end method
