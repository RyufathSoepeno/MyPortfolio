.class public Lq1/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/m1;
.implements Lq1/t;
.implements Lq1/a2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq1/t1$b;,
        Lq1/t1$a;
    }
.end annotation


# static fields
.field private static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle:Ljava/lang/Object;

.field private volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lq1/t1;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lq1/t1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    invoke-static {}, Lq1/u1;->c()Lq1/w0;

    move-result-object p1

    goto :goto_e

    :cond_a
    invoke-static {}, Lq1/u1;->d()Lq1/w0;

    move-result-object p1

    :goto_e
    iput-object p1, p0, Lq1/t1;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lq1/t1;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method private final B(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    :cond_0
    invoke-virtual {p0}, Lq1/t1;->Q()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lq1/h1;

    if-eqz v1, :cond_2d

    instance-of v1, v0, Lq1/t1$b;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Lq1/t1$b;

    invoke-virtual {v1}, Lq1/t1$b;->g()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_2d

    :cond_16
    new-instance v1, Lq1/w;

    invoke-direct {p0, p1}, Lq1/t1;->H(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lq1/w;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/g;)V

    invoke-direct {p0, v0, v1}, Lq1/t1;->r0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lq1/u1;->b()Lkotlinx/coroutines/internal/b0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_2d
    :goto_2d
    invoke-static {}, Lq1/u1;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object p1

    return-object p1
.end method

.method private final C(Ljava/lang/Throwable;)Z
    .registers 6

    invoke-virtual {p0}, Lq1/t1;->V()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    invoke-virtual {p0}, Lq1/t1;->P()Lq1/r;

    move-result-object v2

    if-eqz v2, :cond_20

    sget-object v3, Lq1/y1;->e:Lq1/y1;

    if-ne v2, v3, :cond_15

    goto :goto_20

    :cond_15
    invoke-interface {v2, p1}, Lq1/r;->f(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_1f

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_1f
    return v1

    :cond_20
    :goto_20
    return v0
.end method

.method private final F(Lq1/h1;Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p0}, Lq1/t1;->P()Lq1/r;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_f

    :cond_7
    invoke-interface {v0}, Lq1/v0;->a()V

    sget-object v0, Lq1/y1;->e:Lq1/y1;

    invoke-virtual {p0, v0}, Lq1/t1;->j0(Lq1/r;)V

    :goto_f
    instance-of v0, p2, Lq1/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    check-cast p2, Lq1/w;

    goto :goto_18

    :cond_17
    move-object p2, v1

    :goto_18
    if-nez p2, :cond_1b

    goto :goto_1d

    :cond_1b
    iget-object v1, p2, Lq1/w;->a:Ljava/lang/Throwable;

    :goto_1d
    instance-of p2, p1, Lq1/s1;

    if-eqz p2, :cond_4b

    :try_start_21
    move-object p2, p1

    check-cast p2, Lq1/s1;

    invoke-virtual {p2, v1}, Lq1/y;->y(Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_28

    goto :goto_55

    :catchall_28
    move-exception p2

    new-instance v0, Lq1/z;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in completion handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lq1/z;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lq1/t1;->S(Ljava/lang/Throwable;)V

    goto :goto_55

    :cond_4b
    invoke-interface {p1}, Lq1/h1;->h()Lq1/x1;

    move-result-object p1

    if-nez p1, :cond_52

    goto :goto_55

    :cond_52
    invoke-direct {p0, p1, v1}, Lq1/t1;->c0(Lq1/x1;Ljava/lang/Throwable;)V

    :goto_55
    return-void
.end method

.method private final G(Lq1/t1$b;Lq1/s;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p2}, Lq1/t1;->a0(Lkotlinx/coroutines/internal/o;)Lq1/s;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-direct {p0, p1, p2, p3}, Lq1/t1;->t0(Lq1/t1$b;Lq1/s;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    return-void

    :cond_d
    invoke-direct {p0, p1, p3}, Lq1/t1;->I(Lq1/t1$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq1/t1;->y(Ljava/lang/Object;)V

    return-void
.end method

.method private final H(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_6

    :cond_4
    instance-of v0, p1, Ljava/lang/Throwable;

    :goto_6
    if-eqz v0, :cond_18

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_20

    const/4 p1, 0x0

    new-instance v0, Lq1/n1;

    invoke-static {p0}, Lq1/t1;->u(Lq1/t1;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lq1/n1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lq1/m1;)V

    move-object p1, v0

    goto :goto_20

    :cond_18
    if-eqz p1, :cond_21

    check-cast p1, Lq1/a2;

    invoke-interface {p1}, Lq1/a2;->k()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :cond_20
    :goto_20
    return-object p1

    :cond_21
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final I(Lq1/t1$b;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    instance-of v0, p2, Lq1/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p2

    check-cast v0, Lq1/w;

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    if-nez v0, :cond_e

    move-object v0, v1

    goto :goto_10

    :cond_e
    iget-object v0, v0, Lq1/w;->a:Ljava/lang/Throwable;

    :goto_10
    monitor-enter p1

    :try_start_11
    invoke-virtual {p1}, Lq1/t1$b;->f()Z

    move-result v2

    invoke-virtual {p1, v0}, Lq1/t1$b;->j(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lq1/t1;->L(Lq1/t1$b;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_22

    invoke-direct {p0, v4, v3}, Lq1/t1;->x(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_67

    :cond_22
    monitor-exit p1

    const/4 v3, 0x0

    if-nez v4, :cond_27

    goto :goto_30

    :cond_27
    if-ne v4, v0, :cond_2a

    goto :goto_30

    :cond_2a
    new-instance p2, Lq1/w;

    const/4 v0, 0x2

    invoke-direct {p2, v4, v3, v0, v1}, Lq1/w;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/g;)V

    :goto_30
    if-eqz v4, :cond_52

    invoke-direct {p0, v4}, Lq1/t1;->C(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p0, v4}, Lq1/t1;->R(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_3e
    const/4 v3, 0x1

    :cond_3f
    if-eqz v3, :cond_52

    if-eqz p2, :cond_4a

    move-object v0, p2

    check-cast v0, Lq1/w;

    invoke-virtual {v0}, Lq1/w;->b()Z

    goto :goto_52

    :cond_4a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52
    :goto_52
    if-nez v2, :cond_57

    invoke-virtual {p0, v4}, Lq1/t1;->d0(Ljava/lang/Throwable;)V

    :cond_57
    invoke-virtual {p0, p2}, Lq1/t1;->e0(Ljava/lang/Object;)V

    sget-object v0, Lq1/t1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Lq1/u1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p1, v1}, Lq1/l;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p2}, Lq1/t1;->F(Lq1/h1;Ljava/lang/Object;)V

    return-object p2

    :catchall_67
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method private final J(Lq1/h1;)Lq1/s;
    .registers 4

    instance-of v0, p1, Lq1/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lq1/s;

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    if-nez v0, :cond_18

    invoke-interface {p1}, Lq1/h1;->h()Lq1/x1;

    move-result-object p1

    if-nez p1, :cond_13

    goto :goto_19

    :cond_13
    invoke-direct {p0, p1}, Lq1/t1;->a0(Lkotlinx/coroutines/internal/o;)Lq1/s;

    move-result-object v1

    goto :goto_19

    :cond_18
    move-object v1, v0

    :goto_19
    return-object v1
.end method

.method private final K(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 4

    instance-of v0, p1, Lq1/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Lq1/w;

    goto :goto_9

    :cond_8
    move-object p1, v1

    :goto_9
    if-nez p1, :cond_c

    goto :goto_e

    :cond_c
    iget-object v1, p1, Lq1/w;->a:Ljava/lang/Throwable;

    :goto_e
    return-object v1
.end method

.method private final L(Lq1/t1$b;Ljava/util/List;)Ljava/lang/Throwable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq1/t1$b;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lq1/t1$b;->f()Z

    move-result p1

    if-eqz p1, :cond_17

    new-instance p1, Lq1/n1;

    invoke-static {p0}, Lq1/t1;->u(Lq1/t1;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1, p0}, Lq1/n1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lq1/m1;)V

    return-object p1

    :cond_17
    return-object v1

    :cond_18
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/util/concurrent/CancellationException;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1c

    move-object v1, v0

    :cond_30
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_35

    return-object v1

    :cond_35
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1
.end method

.method private final O(Lq1/h1;)Lq1/x1;
    .registers 4

    invoke-interface {p1}, Lq1/h1;->h()Lq1/x1;

    move-result-object v0

    if-nez v0, :cond_2b

    instance-of v0, p1, Lq1/w0;

    if-eqz v0, :cond_10

    new-instance v0, Lq1/x1;

    invoke-direct {v0}, Lq1/x1;-><init>()V

    goto :goto_2b

    :cond_10
    instance-of v0, p1, Lq1/s1;

    if-eqz v0, :cond_1b

    check-cast p1, Lq1/s1;

    invoke-direct {p0, p1}, Lq1/t1;->h0(Lq1/s1;)V

    const/4 v0, 0x0

    goto :goto_2b

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State should have list: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/k;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    :goto_2b
    return-object v0
.end method

.method private final W(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    move-object v1, v0

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lq1/t1;->Q()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lq1/t1$b;

    if-eqz v3, :cond_52

    monitor-enter v2

    :try_start_b
    move-object v3, v2

    check-cast v3, Lq1/t1$b;

    invoke-virtual {v3}, Lq1/t1$b;->i()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {}, Lq1/u1;->f()Lkotlinx/coroutines/internal/b0;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_4f

    monitor-exit v2

    return-object p1

    :cond_1a
    :try_start_1a
    move-object v3, v2

    check-cast v3, Lq1/t1$b;

    invoke-virtual {v3}, Lq1/t1$b;->f()Z

    move-result v3

    if-nez p1, :cond_25

    if-nez v3, :cond_31

    :cond_25
    if-nez v1, :cond_2b

    invoke-direct {p0, p1}, Lq1/t1;->H(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_2b
    move-object p1, v2

    check-cast p1, Lq1/t1$b;

    invoke-virtual {p1, v1}, Lq1/t1$b;->a(Ljava/lang/Throwable;)V

    :cond_31
    move-object p1, v2

    check-cast p1, Lq1/t1$b;

    invoke-virtual {p1}, Lq1/t1$b;->e()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_4f

    xor-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_3d

    move-object v0, p1

    :cond_3d
    monitor-exit v2

    if-nez v0, :cond_41

    goto :goto_4a

    :cond_41
    check-cast v2, Lq1/t1$b;

    invoke-virtual {v2}, Lq1/t1$b;->h()Lq1/x1;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lq1/t1;->b0(Lq1/x1;Ljava/lang/Throwable;)V

    :goto_4a
    invoke-static {}, Lq1/u1;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object p1

    return-object p1

    :catchall_4f
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_52
    instance-of v3, v2, Lq1/h1;

    if-eqz v3, :cond_9a

    if-nez v1, :cond_5c

    invoke-direct {p0, p1}, Lq1/t1;->H(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_5c
    move-object v3, v2

    check-cast v3, Lq1/h1;

    invoke-interface {v3}, Lq1/h1;->b()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-direct {p0, v3, v1}, Lq1/t1;->q0(Lq1/h1;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lq1/u1;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object p1

    return-object p1

    :cond_70
    new-instance v3, Lq1/w;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v1, v4, v5, v0}, Lq1/w;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/g;)V

    invoke-direct {p0, v2, v3}, Lq1/t1;->r0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lq1/u1;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object v4

    if-eq v3, v4, :cond_8a

    invoke-static {}, Lq1/u1;->b()Lkotlinx/coroutines/internal/b0;

    move-result-object v2

    if-ne v3, v2, :cond_89

    goto/16 :goto_2

    :cond_89
    return-object v3

    :cond_8a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot happen in "

    invoke-static {v0, v2}, Lkotlin/jvm/internal/k;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9a
    invoke-static {}, Lq1/u1;->f()Lkotlinx/coroutines/internal/b0;

    move-result-object p1

    return-object p1
.end method

.method private final Y(Lj1/l;Z)Lq1/s1;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj1/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La1/q;",
            ">;Z)",
            "Lq1/s1;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_12

    instance-of p2, p1, Lq1/o1;

    if-eqz p2, :cond_a

    move-object v0, p1

    check-cast v0, Lq1/o1;

    :cond_a
    if-nez v0, :cond_26

    new-instance v0, Lq1/k1;

    invoke-direct {v0, p1}, Lq1/k1;-><init>(Lj1/l;)V

    goto :goto_26

    :cond_12
    instance-of p2, p1, Lq1/s1;

    if-eqz p2, :cond_1a

    move-object p2, p1

    check-cast p2, Lq1/s1;

    goto :goto_1b

    :cond_1a
    move-object p2, v0

    :goto_1b
    if-nez p2, :cond_1e

    goto :goto_1f

    :cond_1e
    move-object v0, p2

    :goto_1f
    if-nez v0, :cond_26

    new-instance v0, Lq1/l1;

    invoke-direct {v0, p1}, Lq1/l1;-><init>(Lj1/l;)V

    :cond_26
    :goto_26
    invoke-virtual {v0, p0}, Lq1/s1;->A(Lq1/t1;)V

    return-object v0
.end method

.method private final a0(Lkotlinx/coroutines/internal/o;)Lq1/s;
    .registers 3

    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->t()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object p1

    goto :goto_0

    :cond_b
    :goto_b
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->p()Lkotlinx/coroutines/internal/o;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->t()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_b

    :cond_16
    instance-of v0, p1, Lq1/s;

    if-eqz v0, :cond_1d

    check-cast p1, Lq1/s;

    return-object p1

    :cond_1d
    instance-of v0, p1, Lq1/x1;

    if-eqz v0, :cond_b

    const/4 p1, 0x0

    return-object p1
.end method

.method private final b0(Lq1/x1;Ljava/lang/Throwable;)V
    .registers 10

    invoke-virtual {p0, p2}, Lq1/t1;->d0(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/o;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_b
    invoke-static {v0, p1}, Lkotlin/jvm/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    instance-of v3, v0, Lq1/o1;

    if-eqz v3, :cond_45

    move-object v3, v0

    check-cast v3, Lq1/s1;

    :try_start_18
    invoke-virtual {v3, p2}, Lq1/y;->y(Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_45

    :catchall_1c
    move-exception v4

    if-nez v2, :cond_21

    move-object v5, v1

    goto :goto_25

    :cond_21
    invoke-static {v2, v4}, La1/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object v5, v2

    :goto_25
    if-nez v5, :cond_45

    new-instance v2, Lq1/z;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in completion handler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lq1/z;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->p()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    goto :goto_b

    :cond_4a
    if-nez v2, :cond_4d

    goto :goto_50

    :cond_4d
    invoke-virtual {p0, v2}, Lq1/t1;->S(Ljava/lang/Throwable;)V

    :goto_50
    invoke-direct {p0, p2}, Lq1/t1;->C(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private final c0(Lq1/x1;Ljava/lang/Throwable;)V
    .registers 10

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/o;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_8
    invoke-static {v0, p1}, Lkotlin/jvm/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    instance-of v3, v0, Lq1/s1;

    if-eqz v3, :cond_42

    move-object v3, v0

    check-cast v3, Lq1/s1;

    :try_start_15
    invoke-virtual {v3, p2}, Lq1/y;->y(Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_42

    :catchall_19
    move-exception v4

    if-nez v2, :cond_1e

    move-object v5, v1

    goto :goto_22

    :cond_1e
    invoke-static {v2, v4}, La1/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object v5, v2

    :goto_22
    if-nez v5, :cond_42

    new-instance v2, Lq1/z;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in completion handler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lq1/z;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_42
    :goto_42
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->p()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    goto :goto_8

    :cond_47
    if-nez v2, :cond_4a

    goto :goto_4d

    :cond_4a
    invoke-virtual {p0, v2}, Lq1/t1;->S(Ljava/lang/Throwable;)V

    :goto_4d
    return-void
.end method

.method private final g0(Lq1/w0;)V
    .registers 4

    new-instance v0, Lq1/x1;

    invoke-direct {v0}, Lq1/x1;-><init>()V

    invoke-virtual {p1}, Lq1/w0;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_12

    :cond_c
    new-instance v1, Lq1/g1;

    invoke-direct {v1, v0}, Lq1/g1;-><init>(Lq1/x1;)V

    move-object v0, v1

    :goto_12
    sget-object v1, Lq1/t1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, p1, v0}, Lq1/l;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final h0(Lq1/s1;)V
    .registers 4

    new-instance v0, Lq1/x1;

    invoke-direct {v0}, Lq1/x1;-><init>()V

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/o;->k(Lkotlinx/coroutines/internal/o;)Z

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->p()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    sget-object v1, Lq1/t1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, p1, v0}, Lq1/l;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final k0(Ljava/lang/Object;)I
    .registers 6

    instance-of v0, p1, Lq1/w0;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_22

    move-object v0, p1

    check-cast v0, Lq1/w0;

    invoke-virtual {v0}, Lq1/w0;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    return v3

    :cond_11
    sget-object v0, Lq1/t1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lq1/u1;->c()Lq1/w0;

    move-result-object v3

    invoke-static {v0, p0, p1, v3}, Lq1/l;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v1

    :cond_1e
    invoke-virtual {p0}, Lq1/t1;->f0()V

    return v2

    :cond_22
    instance-of v0, p1, Lq1/g1;

    if-eqz v0, :cond_3a

    sget-object v0, Lq1/t1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, p1

    check-cast v3, Lq1/g1;

    invoke-virtual {v3}, Lq1/g1;->h()Lq1/x1;

    move-result-object v3

    invoke-static {v0, p0, p1, v3}, Lq1/l;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    return v1

    :cond_36
    invoke-virtual {p0}, Lq1/t1;->f0()V

    return v2

    :cond_3a
    return v3
.end method

.method private final l0(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    instance-of v0, p1, Lq1/t1$b;

    const-string v1, "Active"

    if-eqz v0, :cond_1a

    check-cast p1, Lq1/t1$b;

    invoke-virtual {p1}, Lq1/t1$b;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v1, "Cancelling"

    goto :goto_33

    :cond_11
    invoke-virtual {p1}, Lq1/t1$b;->g()Z

    move-result p1

    if-eqz p1, :cond_33

    const-string v1, "Completing"

    goto :goto_33

    :cond_1a
    instance-of v0, p1, Lq1/h1;

    if-eqz v0, :cond_2a

    check-cast p1, Lq1/h1;

    invoke-interface {p1}, Lq1/h1;->b()Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_33

    :cond_27
    const-string v1, "New"

    goto :goto_33

    :cond_2a
    instance-of p1, p1, Lq1/w;

    if-eqz p1, :cond_31

    const-string v1, "Cancelled"

    goto :goto_33

    :cond_31
    const-string v1, "Completed"

    :cond_33
    :goto_33
    return-object v1
.end method

.method public static synthetic n0(Lq1/t1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lq1/t1;->m0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toCancellationException"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final p0(Lq1/h1;Ljava/lang/Object;)Z
    .registers 5

    sget-object v0, Lq1/t1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Lq1/u1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p1, v1}, Lq1/l;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lq1/t1;->d0(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lq1/t1;->e0(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lq1/t1;->F(Lq1/h1;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method private final q0(Lq1/h1;Ljava/lang/Throwable;)Z
    .registers 7

    invoke-direct {p0, p1}, Lq1/t1;->O(Lq1/h1;)Lq1/x1;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    new-instance v2, Lq1/t1$b;

    invoke-direct {v2, v0, v1, p2}, Lq1/t1$b;-><init>(Lq1/x1;ZLjava/lang/Throwable;)V

    sget-object v3, Lq1/t1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, p1, v2}, Lq1/l;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    :cond_16
    invoke-direct {p0, v0, p2}, Lq1/t1;->b0(Lq1/x1;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method

.method private final r0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    instance-of v0, p1, Lq1/h1;

    if-nez v0, :cond_9

    invoke-static {}, Lq1/u1;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object p1

    return-object p1

    :cond_9
    instance-of v0, p1, Lq1/w0;

    if-nez v0, :cond_11

    instance-of v0, p1, Lq1/s1;

    if-eqz v0, :cond_27

    :cond_11
    instance-of v0, p1, Lq1/s;

    if-nez v0, :cond_27

    instance-of v0, p2, Lq1/w;

    if-nez v0, :cond_27

    check-cast p1, Lq1/h1;

    invoke-direct {p0, p1, p2}, Lq1/t1;->p0(Lq1/h1;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    return-object p2

    :cond_22
    invoke-static {}, Lq1/u1;->b()Lkotlinx/coroutines/internal/b0;

    move-result-object p1

    return-object p1

    :cond_27
    check-cast p1, Lq1/h1;

    invoke-direct {p0, p1, p2}, Lq1/t1;->s0(Lq1/h1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final s0(Lq1/h1;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-direct {p0, p1}, Lq1/t1;->O(Lq1/h1;)Lq1/x1;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {}, Lq1/u1;->b()Lkotlinx/coroutines/internal/b0;

    move-result-object p1

    return-object p1

    :cond_b
    instance-of v1, p1, Lq1/t1$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    move-object v1, p1

    check-cast v1, Lq1/t1$b;

    goto :goto_15

    :cond_14
    move-object v1, v2

    :goto_15
    if-nez v1, :cond_1d

    new-instance v1, Lq1/t1$b;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lq1/t1$b;-><init>(Lq1/x1;ZLjava/lang/Throwable;)V

    :cond_1d
    monitor-enter v1

    :try_start_1e
    invoke-virtual {v1}, Lq1/t1$b;->g()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-static {}, Lq1/u1;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_78

    monitor-exit v1

    return-object p1

    :cond_2a
    const/4 v3, 0x1

    :try_start_2b
    invoke-virtual {v1, v3}, Lq1/t1$b;->k(Z)V

    if-eq v1, p1, :cond_3e

    sget-object v4, Lq1/t1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, p0, p1, v1}, Lq1/l;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    invoke-static {}, Lq1/u1;->b()Lkotlinx/coroutines/internal/b0;

    move-result-object p1
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_78

    monitor-exit v1

    return-object p1

    :cond_3e
    :try_start_3e
    invoke-virtual {v1}, Lq1/t1$b;->f()Z

    move-result v4

    instance-of v5, p2, Lq1/w;

    if-eqz v5, :cond_4a

    move-object v5, p2

    check-cast v5, Lq1/w;

    goto :goto_4b

    :cond_4a
    move-object v5, v2

    :goto_4b
    if-nez v5, :cond_4e

    goto :goto_53

    :cond_4e
    iget-object v5, v5, Lq1/w;->a:Ljava/lang/Throwable;

    invoke-virtual {v1, v5}, Lq1/t1$b;->a(Ljava/lang/Throwable;)V

    :goto_53
    invoke-virtual {v1}, Lq1/t1$b;->e()Ljava/lang/Throwable;

    move-result-object v5

    xor-int/2addr v3, v4

    if-eqz v3, :cond_5b

    move-object v2, v5

    :cond_5b
    sget-object v3, La1/q;->a:La1/q;
    :try_end_5d
    .catchall {:try_start_3e .. :try_end_5d} :catchall_78

    monitor-exit v1

    if-nez v2, :cond_61

    goto :goto_64

    :cond_61
    invoke-direct {p0, v0, v2}, Lq1/t1;->b0(Lq1/x1;Ljava/lang/Throwable;)V

    :goto_64
    invoke-direct {p0, p1}, Lq1/t1;->J(Lq1/h1;)Lq1/s;

    move-result-object p1

    if-eqz p1, :cond_73

    invoke-direct {p0, v1, p1, p2}, Lq1/t1;->t0(Lq1/t1$b;Lq1/s;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    sget-object p1, Lq1/u1;->b:Lkotlinx/coroutines/internal/b0;

    return-object p1

    :cond_73
    invoke-direct {p0, v1, p2}, Lq1/t1;->I(Lq1/t1$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_78
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method private final t0(Lq1/t1$b;Lq1/s;Ljava/lang/Object;)Z
    .registers 10

    :cond_0
    iget-object v0, p2, Lq1/s;->i:Lq1/t;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lq1/t1$a;

    invoke-direct {v3, p0, p1, p2, p3}, Lq1/t1$a;-><init>(Lq1/t1;Lq1/t1$b;Lq1/s;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lq1/m1$a;->d(Lq1/m1;ZZLj1/l;ILjava/lang/Object;)Lq1/v0;

    move-result-object v0

    sget-object v1, Lq1/y1;->e:Lq1/y1;

    if-eq v0, v1, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    invoke-direct {p0, p2}, Lq1/t1;->a0(Lkotlinx/coroutines/internal/o;)Lq1/s;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public static final synthetic u(Lq1/t1;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lq1/t1;->D()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic v(Lq1/t1;Lq1/t1$b;Lq1/s;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lq1/t1;->G(Lq1/t1$b;Lq1/s;Ljava/lang/Object;)V

    return-void
.end method

.method private final w(Ljava/lang/Object;Lq1/x1;Lq1/s1;)Z
    .registers 6

    new-instance v0, Lq1/t1$c;

    invoke-direct {v0, p3, p0, p1}, Lq1/t1$c;-><init>(Lkotlinx/coroutines/internal/o;Lq1/t1;Ljava/lang/Object;)V

    :goto_5
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object p1

    invoke-virtual {p1, p3, p2, v0}, Lkotlinx/coroutines/internal/o;->x(Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o$a;)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_15

    const/4 v1, 0x2

    if-eq p1, v1, :cond_14

    goto :goto_5

    :cond_14
    const/4 v1, 0x0

    :cond_15
    return v1
.end method

.method private final x(Ljava/lang/Throwable;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_19
    :goto_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eq v1, p1, :cond_19

    if-eq v1, p1, :cond_19

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_19

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {p1, v1}, La1/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_19

    :cond_37
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lq1/t1;->z(Ljava/lang/Object;)Z

    return-void
.end method

.method protected D()Ljava/lang/String;
    .registers 2

    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public E(Ljava/lang/Throwable;)Z
    .registers 4

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0, p1}, Lq1/t1;->z(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lq1/t1;->M()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public M()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public N()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final P()Lq1/r;
    .registers 2

    iget-object v0, p0, Lq1/t1;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lq1/r;

    return-object v0
.end method

.method public final Q()Ljava/lang/Object;
    .registers 3

    :goto_0
    iget-object v0, p0, Lq1/t1;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/internal/w;

    if-nez v1, :cond_7

    return-object v0

    :cond_7
    check-cast v0, Lkotlinx/coroutines/internal/w;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/w;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected R(Ljava/lang/Throwable;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public S(Ljava/lang/Throwable;)V
    .registers 2

    throw p1
.end method

.method protected final T(Lq1/m1;)V
    .registers 3

    if-nez p1, :cond_8

    sget-object p1, Lq1/y1;->e:Lq1/y1;

    invoke-virtual {p0, p1}, Lq1/t1;->j0(Lq1/r;)V

    return-void

    :cond_8
    invoke-interface {p1}, Lq1/m1;->start()Z

    invoke-interface {p1, p0}, Lq1/m1;->i(Lq1/t;)Lq1/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq1/t1;->j0(Lq1/r;)V

    invoke-virtual {p0}, Lq1/t1;->U()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Lq1/v0;->a()V

    sget-object p1, Lq1/y1;->e:Lq1/y1;

    invoke-virtual {p0, p1}, Lq1/t1;->j0(Lq1/r;)V

    :cond_20
    return-void
.end method

.method public final U()Z
    .registers 2

    invoke-virtual {p0}, Lq1/t1;->Q()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lq1/h1;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected V()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final X(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    :goto_0
    invoke-virtual {p0}, Lq1/t1;->Q()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lq1/t1;->r0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lq1/u1;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object v1

    if-eq v0, v1, :cond_16

    invoke-static {}, Lq1/u1;->b()Lkotlinx/coroutines/internal/b0;

    move-result-object v1

    if-ne v0, v1, :cond_15

    goto :goto_0

    :cond_15
    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lq1/t1;->K(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public Z()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lq1/l0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .registers 3

    invoke-virtual {p0}, Lq1/t1;->Q()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lq1/h1;

    if-eqz v1, :cond_12

    check-cast v0, Lq1/h1;

    invoke-interface {v0}, Lq1/h1;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method protected d0(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method protected e0(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method protected f0()V
    .registers 1

    return-void
.end method

.method public fold(Ljava/lang/Object;Lj1/p;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lj1/p<",
            "-TR;-",
            "Lc1/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lq1/m1$a;->b(Lq1/m1;Ljava/lang/Object;Lj1/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lc1/g$c;)Lc1/g$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lc1/g$b;",
            ">(",
            "Lc1/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lq1/m1$a;->c(Lq1/m1;Lc1/g$c;)Lc1/g$b;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Lc1/g$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc1/g$c<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lq1/m1;->d:Lq1/m1$b;

    return-object v0
.end method

.method public final i(Lq1/t;)Lq1/r;
    .registers 8

    new-instance v3, Lq1/s;

    invoke-direct {v3, p1}, Lq1/s;-><init>(Lq1/t;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lq1/m1$a;->d(Lq1/m1;ZZLj1/l;ILjava/lang/Object;)Lq1/v0;

    move-result-object p1

    check-cast p1, Lq1/r;

    return-object p1
.end method

.method public final i0(Lq1/s1;)V
    .registers 5

    :cond_0
    invoke-virtual {p0}, Lq1/t1;->Q()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lq1/s1;

    if-eqz v1, :cond_18

    if-eq v0, p1, :cond_b

    return-void

    :cond_b
    sget-object v1, Lq1/t1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lq1/u1;->c()Lq1/w0;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Lq1/l;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_18
    instance-of v1, v0, Lq1/h1;

    if-eqz v1, :cond_27

    check-cast v0, Lq1/h1;

    invoke-interface {v0}, Lq1/h1;->h()Lq1/x1;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->u()Z

    :cond_27
    return-void
.end method

.method public final j(ZZLj1/l;)Lq1/v0;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lj1/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La1/q;",
            ">;)",
            "Lq1/v0;"
        }
    .end annotation

    invoke-direct {p0, p3, p1}, Lq1/t1;->Y(Lj1/l;Z)Lq1/s1;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-virtual {p0}, Lq1/t1;->Q()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lq1/w0;

    if-eqz v2, :cond_22

    move-object v2, v1

    check-cast v2, Lq1/w0;

    invoke-virtual {v2}, Lq1/w0;->b()Z

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v2, Lq1/t1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v1, v0}, Lq1/l;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_1e
    invoke-direct {p0, v2}, Lq1/t1;->g0(Lq1/w0;)V

    goto :goto_4

    :cond_22
    instance-of v2, v1, Lq1/h1;

    const/4 v3, 0x0

    if-eqz v2, :cond_82

    move-object v2, v1

    check-cast v2, Lq1/h1;

    invoke-interface {v2}, Lq1/h1;->h()Lq1/x1;

    move-result-object v2

    if-nez v2, :cond_40

    if-eqz v1, :cond_38

    check-cast v1, Lq1/s1;

    invoke-direct {p0, v1}, Lq1/t1;->h0(Lq1/s1;)V

    goto :goto_4

    :cond_38
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    sget-object v4, Lq1/y1;->e:Lq1/y1;

    if-eqz p1, :cond_73

    instance-of v5, v1, Lq1/t1$b;

    if-eqz v5, :cond_73

    monitor-enter v1

    :try_start_49
    move-object v3, v1

    check-cast v3, Lq1/t1$b;

    invoke-virtual {v3}, Lq1/t1$b;->e()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5f

    instance-of v5, p3, Lq1/s;

    if-eqz v5, :cond_6c

    move-object v5, v1

    check-cast v5, Lq1/t1$b;

    invoke-virtual {v5}, Lq1/t1$b;->g()Z

    move-result v5

    if-nez v5, :cond_6c

    :cond_5f
    invoke-direct {p0, v1, v2, v0}, Lq1/t1;->w(Ljava/lang/Object;Lq1/x1;Lq1/s1;)Z

    move-result v4
    :try_end_63
    .catchall {:try_start_49 .. :try_end_63} :catchall_70

    if-nez v4, :cond_67

    monitor-exit v1

    goto :goto_4

    :cond_67
    if-nez v3, :cond_6b

    monitor-exit v1

    return-object v0

    :cond_6b
    move-object v4, v0

    :cond_6c
    :try_start_6c
    sget-object v5, La1/q;->a:La1/q;
    :try_end_6e
    .catchall {:try_start_6c .. :try_end_6e} :catchall_70

    monitor-exit v1

    goto :goto_73

    :catchall_70
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_73
    :goto_73
    if-eqz v3, :cond_7b

    if-eqz p2, :cond_7a

    invoke-interface {p3, v3}, Lj1/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7a
    return-object v4

    :cond_7b
    invoke-direct {p0, v1, v2, v0}, Lq1/t1;->w(Ljava/lang/Object;Lq1/x1;Lq1/s1;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_82
    if-eqz p2, :cond_94

    instance-of p1, v1, Lq1/w;

    if-eqz p1, :cond_8b

    check-cast v1, Lq1/w;

    goto :goto_8c

    :cond_8b
    move-object v1, v3

    :goto_8c
    if-nez v1, :cond_8f

    goto :goto_91

    :cond_8f
    iget-object v3, v1, Lq1/w;->a:Ljava/lang/Throwable;

    :goto_91
    invoke-interface {p3, v3}, Lj1/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_94
    sget-object p1, Lq1/y1;->e:Lq1/y1;

    return-object p1
.end method

.method public final j0(Lq1/r;)V
    .registers 2

    iput-object p1, p0, Lq1/t1;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method public k()Ljava/util/concurrent/CancellationException;
    .registers 5

    invoke-virtual {p0}, Lq1/t1;->Q()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lq1/t1$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    move-object v1, v0

    check-cast v1, Lq1/t1$b;

    invoke-virtual {v1}, Lq1/t1$b;->e()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_20

    :cond_11
    instance-of v1, v0, Lq1/w;

    if-eqz v1, :cond_1b

    move-object v1, v0

    check-cast v1, Lq1/w;

    iget-object v1, v1, Lq1/w;->a:Ljava/lang/Throwable;

    goto :goto_20

    :cond_1b
    instance-of v1, v0, Lq1/h1;

    if-nez v1, :cond_39

    move-object v1, v2

    :goto_20
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_27

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_27
    if-nez v2, :cond_38

    new-instance v2, Lq1/n1;

    invoke-direct {p0, v0}, Lq1/t1;->l0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Parent job is "

    invoke-static {v3, v0}, Lkotlin/jvm/internal/k;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lq1/n1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lq1/m1;)V

    :cond_38
    return-object v2

    :cond_39
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot be cancelling child in this state: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/k;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final l()Ljava/util/concurrent/CancellationException;
    .registers 5

    invoke-virtual {p0}, Lq1/t1;->Q()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lq1/t1$b;

    const-string v2, "Job is still new or active: "

    const/4 v3, 0x0

    if-eqz v1, :cond_33

    check-cast v0, Lq1/t1$b;

    invoke-virtual {v0}, Lq1/t1$b;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_22

    :cond_14
    invoke-static {p0}, Lq1/l0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " is cancelling"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/k;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lq1/t1;->m0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v3

    :goto_22
    if-eqz v3, :cond_25

    goto :goto_55

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/k;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    instance-of v1, v0, Lq1/h1;

    if-nez v1, :cond_56

    instance-of v1, v0, Lq1/w;

    if-eqz v1, :cond_45

    check-cast v0, Lq1/w;

    iget-object v0, v0, Lq1/w;->a:Ljava/lang/Throwable;

    const/4 v1, 0x1

    invoke-static {p0, v0, v3, v1, v3}, Lq1/t1;->n0(Lq1/t1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object v3

    goto :goto_55

    :cond_45
    new-instance v0, Lq1/n1;

    invoke-static {p0}, Lq1/l0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " has completed normally"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/k;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, p0}, Lq1/n1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lq1/m1;)V

    move-object v3, v0

    :goto_55
    return-object v3

    :cond_56
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/k;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m(Lq1/a2;)V
    .registers 2

    invoke-virtual {p0, p1}, Lq1/t1;->z(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final m0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .registers 4

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_16

    new-instance v0, Lq1/n1;

    if-nez p2, :cond_13

    invoke-static {p0}, Lq1/t1;->u(Lq1/t1;)Ljava/lang/String;

    move-result-object p2

    :cond_13
    invoke-direct {v0, p2, p1, p0}, Lq1/n1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lq1/m1;)V

    :cond_16
    return-object v0
.end method

.method public minusKey(Lc1/g$c;)Lc1/g;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/g$c<",
            "*>;)",
            "Lc1/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Lq1/m1$a;->e(Lq1/m1;Lc1/g$c;)Lc1/g;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/util/concurrent/CancellationException;)V
    .registers 4

    if-nez p1, :cond_d

    const/4 p1, 0x0

    new-instance v0, Lq1/n1;

    invoke-static {p0}, Lq1/t1;->u(Lq1/t1;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lq1/n1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lq1/m1;)V

    move-object p1, v0

    :cond_d
    invoke-virtual {p0, p1}, Lq1/t1;->A(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final o0()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lq1/t1;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq1/t1;->Q()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lq1/t1;->l0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lc1/g;)Lc1/g;
    .registers 2

    invoke-static {p0, p1}, Lq1/m1$a;->f(Lq1/m1;Lc1/g;)Lc1/g;

    move-result-object p1

    return-object p1
.end method

.method public final start()Z
    .registers 3

    :goto_0
    invoke-virtual {p0}, Lq1/t1;->Q()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lq1/t1;->k0(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    goto :goto_0

    :cond_e
    return v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lq1/t1;->o0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lq1/l0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected y(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public final z(Ljava/lang/Object;)Z
    .registers 5

    invoke-static {}, Lq1/u1;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object v0

    invoke-virtual {p0}, Lq1/t1;->N()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    invoke-direct {p0, p1}, Lq1/t1;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lq1/u1;->b:Lkotlinx/coroutines/internal/b0;

    if-ne v0, v1, :cond_14

    return v2

    :cond_14
    invoke-static {}, Lq1/u1;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object v1

    if-ne v0, v1, :cond_1e

    invoke-direct {p0, p1}, Lq1/t1;->W(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1e
    invoke-static {}, Lq1/u1;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object p1

    if-ne v0, p1, :cond_25

    goto :goto_35

    :cond_25
    sget-object p1, Lq1/u1;->b:Lkotlinx/coroutines/internal/b0;

    if-ne v0, p1, :cond_2a

    goto :goto_35

    :cond_2a
    invoke-static {}, Lq1/u1;->f()Lkotlinx/coroutines/internal/b0;

    move-result-object p1

    if-ne v0, p1, :cond_32

    const/4 v2, 0x0

    goto :goto_35

    :cond_32
    invoke-virtual {p0, v0}, Lq1/t1;->y(Ljava/lang/Object;)V

    :goto_35
    return v2
.end method
