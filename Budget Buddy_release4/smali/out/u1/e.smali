.class public final Lu1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lu1/c;Lc1/g;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu1/c<",
            "*>;",
            "Lc1/g;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lu1/e$a;

    invoke-direct {v1, p0}, Lu1/e$a;-><init>(Lu1/c;)V

    invoke-interface {p1, v0, v1}, Lc1/g;->fold(Ljava/lang/Object;Lj1/p;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v1, p0, Lu1/c;->g:I

    if-ne v0, v1, :cond_19

    return-void

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flow invariant is violated:\n\t\tFlow was collected in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lu1/c;->f:Lc1/g;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",\n\t\tbut emission happened in "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".\n\t\tPlease refer to \'flow\' documentation or use \'flowOn\' instead"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b(Lq1/m1;Lq1/m1;)Lq1/m1;
    .registers 3

    :goto_0
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-ne p0, p1, :cond_7

    return-object p0

    :cond_7
    instance-of v0, p0, Lkotlinx/coroutines/internal/z;

    if-nez v0, :cond_c

    return-object p0

    :cond_c
    check-cast p0, Lkotlinx/coroutines/internal/z;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/z;->y0()Lq1/m1;

    move-result-object p0

    goto :goto_0
.end method
