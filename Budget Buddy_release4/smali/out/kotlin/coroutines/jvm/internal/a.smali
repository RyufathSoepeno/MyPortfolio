.class public abstract Lkotlin/coroutines/jvm/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/d;
.implements Lkotlin/coroutines/jvm/internal/e;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc1/d<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/coroutines/jvm/internal/e;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final completion:Lc1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc1/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/jvm/internal/a;->completion:Lc1/d;

    return-void
.end method


# virtual methods
.method public create(Lc1/d;)Lc1/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/d<",
            "*>;)",
            "Lc1/d<",
            "La1/q;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "create(Continuation) has not been overridden"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public create(Ljava/lang/Object;Lc1/d;)Lc1/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lc1/d<",
            "*>;)",
            "Lc1/d<",
            "La1/q;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "create(Any?;Continuation) has not been overridden"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/e;
    .registers 3

    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/a;->completion:Lc1/d;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/e;

    if-eqz v1, :cond_9

    check-cast v0, Lkotlin/coroutines/jvm/internal/e;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final getCompletion()Lc1/d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc1/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/a;->completion:Lc1/d;

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .registers 2

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/g;->d(Lkotlin/coroutines/jvm/internal/a;)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method protected abstract invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected releaseIntercepted()V
    .registers 1

    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .registers 5

    move-object v0, p0

    :goto_1
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/h;->b(Lc1/d;)V

    check-cast v0, Lkotlin/coroutines/jvm/internal/a;

    iget-object v1, v0, Lkotlin/coroutines/jvm/internal/a;->completion:Lc1/d;

    invoke-static {v1}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    :try_start_b
    invoke-virtual {v0, p1}, Lkotlin/coroutines/jvm/internal/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Ld1/b;->c()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_16

    return-void

    :cond_16
    invoke-static {p1}, La1/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1b

    goto :goto_26

    :catchall_1b
    move-exception p1

    sget-object v2, La1/k;->e:La1/k$a;

    invoke-static {p1}, La1/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La1/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_26
    invoke-virtual {v0}, Lkotlin/coroutines/jvm/internal/a;->releaseIntercepted()V

    instance-of v0, v1, Lkotlin/coroutines/jvm/internal/a;

    if-eqz v0, :cond_2f

    move-object v0, v1

    goto :goto_1

    :cond_2f
    invoke-interface {v1, p1}, Lc1/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Continuation at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/a;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_11

    goto :goto_19

    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
