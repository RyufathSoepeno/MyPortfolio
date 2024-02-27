.class public abstract Ls1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls1/t<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field protected final b:Lj1/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj1/l<",
            "TE;",
            "La1/q;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lkotlinx/coroutines/internal/m;

.field private volatile synthetic onCloseHandler:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ls1/c;

    const-class v1, Ljava/lang/Object;

    const-string v2, "onCloseHandler"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ls1/c;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/c;->b:Lj1/l;

    new-instance p1, Lkotlinx/coroutines/internal/m;

    invoke-direct {p1}, Lkotlinx/coroutines/internal/m;-><init>()V

    iput-object p1, p0, Ls1/c;->c:Lkotlinx/coroutines/internal/m;

    const/4 p1, 0x0

    iput-object p1, p0, Ls1/c;->onCloseHandler:Ljava/lang/Object;

    return-void
.end method

.method private final b()I
    .registers 5

    iget-object v0, p0, Ls1/c;->c:Lkotlinx/coroutines/internal/m;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/o;

    const/4 v2, 0x0

    :goto_9
    invoke-static {v1, v0}, Lkotlin/jvm/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    instance-of v3, v1, Lkotlinx/coroutines/internal/o;

    if-eqz v3, :cond_15

    add-int/lit8 v2, v2, 0x1

    :cond_15
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/o;->p()Lkotlinx/coroutines/internal/o;

    move-result-object v1

    goto :goto_9

    :cond_1a
    return v2
.end method

.method private final f()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ls1/c;->c:Lkotlinx/coroutines/internal/m;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->p()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    iget-object v1, p0, Ls1/c;->c:Lkotlinx/coroutines/internal/m;

    if-ne v0, v1, :cond_d

    const-string v0, "EmptyQueue"

    return-object v0

    :cond_d
    instance-of v1, v0, Ls1/j;

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_16
    instance-of v1, v0, Ls1/o;

    if-eqz v1, :cond_1d

    const-string v1, "ReceiveQueued"

    goto :goto_2a

    :cond_1d
    instance-of v1, v0, Ls1/s;

    if-eqz v1, :cond_24

    const-string v1, "SendQueued"

    goto :goto_2a

    :cond_24
    const-string v1, "UNEXPECTED:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/k;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2a
    iget-object v2, p0, Ls1/c;->c:Lkotlinx/coroutines/internal/m;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object v2

    if-eq v2, v0, :cond_62

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",queueSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ls1/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    instance-of v0, v2, Ls1/j;

    if-eqz v0, :cond_62

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",closedForSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_62
    return-object v1
.end method

.method private final g(Ls1/j;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/j<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/internal/j;->b(Ljava/lang/Object;ILkotlin/jvm/internal/g;)Ljava/lang/Object;

    move-result-object v2

    :goto_6
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object v3

    instance-of v4, v3, Ls1/o;

    if-eqz v4, :cond_11

    check-cast v3, Ls1/o;

    goto :goto_12

    :cond_11
    move-object v3, v0

    :goto_12
    if-nez v3, :cond_3e

    if-nez v2, :cond_17

    goto :goto_3a

    :cond_17
    instance-of v0, v2, Ljava/util/ArrayList;

    if-nez v0, :cond_21

    check-cast v2, Ls1/o;

    invoke-virtual {v2, p1}, Ls1/o;->z(Ls1/j;)V

    goto :goto_3a

    :cond_21
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ltz v0, :cond_3a

    :goto_2a
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/o;

    invoke-virtual {v0, p1}, Ls1/o;->z(Ls1/j;)V

    if-gez v1, :cond_38

    goto :goto_3a

    :cond_38
    move v0, v1

    goto :goto_2a

    :cond_3a
    :goto_3a
    invoke-virtual {p0, p1}, Ls1/c;->j(Lkotlinx/coroutines/internal/o;)V

    return-void

    :cond_3e
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/o;->u()Z

    move-result v4

    if-nez v4, :cond_48

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/o;->r()V

    goto :goto_6

    :cond_48
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/j;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_6
.end method

.method private final h(Ls1/j;)Ljava/lang/Throwable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/j<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ls1/c;->g(Ls1/j;)V

    invoke-virtual {p1}, Ls1/j;->F()Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ls1/c;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/b;->b:Lkotlinx/coroutines/internal/b0;

    if-ne p1, v0, :cond_11

    sget-object p1, Ls1/i;->a:Ls1/i$b;

    sget-object v0, La1/q;->a:La1/q;

    invoke-virtual {p1, v0}, Ls1/i$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_35

    :cond_11
    sget-object v0, Ls1/b;->c:Lkotlinx/coroutines/internal/b0;

    if-ne p1, v0, :cond_25

    invoke-virtual {p0}, Ls1/c;->d()Ls1/j;

    move-result-object p1

    if-nez p1, :cond_22

    sget-object p1, Ls1/i;->a:Ls1/i$b;

    invoke-virtual {p1}, Ls1/i$b;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_22
    sget-object v0, Ls1/i;->a:Ls1/i$b;

    goto :goto_2d

    :cond_25
    instance-of v0, p1, Ls1/j;

    if-eqz v0, :cond_36

    sget-object v0, Ls1/i;->a:Ls1/i$b;

    check-cast p1, Ls1/j;

    :goto_2d
    invoke-direct {p0, p1}, Ls1/c;->h(Ls1/j;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ls1/i$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_35
    return-object p1

    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "trySend returned "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/k;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method protected final d()Ls1/j;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/j<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Ls1/c;->c:Lkotlinx/coroutines/internal/m;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    instance-of v1, v0, Ls1/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    check-cast v0, Ls1/j;

    goto :goto_f

    :cond_e
    move-object v0, v2

    :goto_f
    if-nez v0, :cond_12

    goto :goto_16

    :cond_12
    invoke-direct {p0, v0}, Ls1/c;->g(Ls1/j;)V

    move-object v2, v0

    :goto_16
    return-object v2
.end method

.method protected final e()Lkotlinx/coroutines/internal/m;
    .registers 2

    iget-object v0, p0, Ls1/c;->c:Lkotlinx/coroutines/internal/m;

    return-object v0
.end method

.method protected i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Ls1/c;->l()Ls1/q;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object p1, Ls1/b;->c:Lkotlinx/coroutines/internal/b0;

    return-object p1

    :cond_9
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ls1/q;->g(Ljava/lang/Object;Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/b0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ls1/q;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Ls1/q;->d()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected j(Lkotlinx/coroutines/internal/o;)V
    .registers 2

    return-void
.end method

.method protected final k(Ljava/lang/Object;)Ls1/q;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ls1/q<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Ls1/c;->c:Lkotlinx/coroutines/internal/m;

    new-instance v1, Ls1/c$a;

    invoke-direct {v1, p1}, Ls1/c$a;-><init>(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object p1

    instance-of v2, p1, Ls1/q;

    if-eqz v2, :cond_12

    check-cast p1, Ls1/q;

    return-object p1

    :cond_12
    invoke-virtual {p1, v1, v0}, Lkotlinx/coroutines/internal/o;->j(Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    return-object p1
.end method

.method protected l()Ls1/q;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/q<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Ls1/c;->c:Lkotlinx/coroutines/internal/m;

    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/o;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_d

    :goto_b
    move-object v1, v2

    goto :goto_26

    :cond_d
    instance-of v3, v1, Ls1/q;

    if-nez v3, :cond_12

    goto :goto_b

    :cond_12
    move-object v2, v1

    check-cast v2, Ls1/q;

    instance-of v2, v2, Ls1/j;

    if-eqz v2, :cond_20

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/o;->t()Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_26

    :cond_20
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/o;->v()Lkotlinx/coroutines/internal/o;

    move-result-object v2

    if-nez v2, :cond_29

    :goto_26
    check-cast v1, Ls1/q;

    return-object v1

    :cond_29
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/o;->s()V

    goto :goto_2
.end method

.method protected final m()Ls1/s;
    .registers 5

    iget-object v0, p0, Ls1/c;->c:Lkotlinx/coroutines/internal/m;

    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/o;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_d

    :goto_b
    move-object v1, v2

    goto :goto_26

    :cond_d
    instance-of v3, v1, Ls1/s;

    if-nez v3, :cond_12

    goto :goto_b

    :cond_12
    move-object v2, v1

    check-cast v2, Ls1/s;

    instance-of v2, v2, Ls1/j;

    if-eqz v2, :cond_20

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/o;->t()Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_26

    :cond_20
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/o;->v()Lkotlinx/coroutines/internal/o;

    move-result-object v2

    if-nez v2, :cond_29

    :goto_26
    check-cast v1, Ls1/s;

    return-object v1

    :cond_29
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/o;->s()V

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lq1/l0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lq1/l0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ls1/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ls1/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
