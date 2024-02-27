.class final Lq1/t1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/h1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private volatile synthetic _exceptionsHolder:Ljava/lang/Object;

.field private volatile synthetic _isCompleting:I

.field private volatile synthetic _rootCause:Ljava/lang/Object;

.field private final e:Lq1/x1;


# direct methods
.method public constructor <init>(Lq1/x1;ZLjava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1/t1$b;->e:Lq1/x1;

    iput p2, p0, Lq1/t1$b;->_isCompleting:I

    iput-object p3, p0, Lq1/t1$b;->_rootCause:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lq1/t1$b;->_exceptionsHolder:Ljava/lang/Object;

    return-void
.end method

.method private final c()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method private final d()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lq1/t1$b;->_exceptionsHolder:Ljava/lang/Object;

    return-object v0
.end method

.method private final l(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lq1/t1$b;->_exceptionsHolder:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    invoke-virtual {p0}, Lq1/t1$b;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p1}, Lq1/t1$b;->m(Ljava/lang/Throwable;)V

    return-void

    :cond_a
    if-ne p1, v0, :cond_d

    return-void

    :cond_d
    invoke-direct {p0}, Lq1/t1$b;->d()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_17

    invoke-direct {p0, p1}, Lq1/t1$b;->l(Ljava/lang/Object;)V

    goto :goto_35

    :cond_17
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_2c

    if-ne p1, v0, :cond_1e

    return-void

    :cond_1e
    invoke-direct {p0}, Lq1/t1$b;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lq1/t1$b;->l(Ljava/lang/Object;)V

    goto :goto_35

    :cond_2c
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_36

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_35
    return-void

    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "State is "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/k;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Z
    .registers 2

    invoke-virtual {p0}, Lq1/t1$b;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final e()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lq1/t1$b;->_rootCause:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public final f()Z
    .registers 2

    invoke-virtual {p0}, Lq1/t1$b;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final g()Z
    .registers 2

    iget v0, p0, Lq1/t1$b;->_isCompleting:I

    return v0
.end method

.method public h()Lq1/x1;
    .registers 2

    iget-object v0, p0, Lq1/t1$b;->e:Lq1/x1;

    return-object v0
.end method

.method public final i()Z
    .registers 3

    invoke-direct {p0}, Lq1/t1$b;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lq1/u1;->e()Lkotlinx/coroutines/internal/b0;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final j(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lq1/t1$b;->d()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lq1/t1$b;->c()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1e

    :cond_b
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lq1/t1$b;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1e

    :cond_18
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_3c

    check-cast v0, Ljava/util/ArrayList;

    :goto_1e
    invoke-virtual {p0}, Lq1/t1$b;->e()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_25

    goto :goto_29

    :cond_25
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_29
    if-eqz p1, :cond_34

    invoke-static {p1, v1}, Lkotlin/jvm/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    invoke-static {}, Lq1/u1;->e()Lkotlinx/coroutines/internal/b0;

    move-result-object p1

    invoke-direct {p0, p1}, Lq1/t1$b;->l(Ljava/lang/Object;)V

    return-object v0

    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "State is "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/k;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Z)V
    .registers 2

    iput p1, p0, Lq1/t1$b;->_isCompleting:I

    return-void
.end method

.method public final m(Ljava/lang/Throwable;)V
    .registers 2

    iput-object p1, p0, Lq1/t1$b;->_rootCause:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finishing[cancelling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq1/t1$b;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", completing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq1/t1$b;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rootCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq1/t1$b;->e()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exceptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lq1/t1$b;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq1/t1$b;->h()Lq1/x1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
