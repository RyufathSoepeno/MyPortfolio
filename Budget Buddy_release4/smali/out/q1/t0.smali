.class final Lq1/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final e:Lq1/d0;


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lq1/t0;->e:Lq1/d0;

    sget-object v1, Lc1/h;->e:Lc1/h;

    invoke-virtual {v0, v1, p1}, Lq1/d0;->c(Lc1/g;Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq1/t0;->e:Lq1/d0;

    invoke-virtual {v0}, Lq1/d0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
