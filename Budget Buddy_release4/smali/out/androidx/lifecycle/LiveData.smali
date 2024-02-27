.class public abstract Landroidx/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LiveData$b;,
        Landroidx/lifecycle/LiveData$c;,
        Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final k:Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/Object;

.field private b:Lk/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b<",
            "Landroidx/lifecycle/o<",
            "-TT;>;",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.c;>;"
        }
    .end annotation
.end field

.field c:I

.field private d:Z

.field private volatile e:Ljava/lang/Object;

.field volatile f:Ljava/lang/Object;

.field private g:I

.field private h:Z

.field private i:Z

.field private final j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/LiveData;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->a:Ljava/lang/Object;

    new-instance v0, Lk/b;

    invoke-direct {v0}, Lk/b;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->b:Lk/b;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/LiveData;->c:I

    sget-object v0, Landroidx/lifecycle/LiveData;->k:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->f:Ljava/lang/Object;

    new-instance v1, Landroidx/lifecycle/LiveData$a;

    invoke-direct {v1, p0}, Landroidx/lifecycle/LiveData$a;-><init>(Landroidx/lifecycle/LiveData;)V

    iput-object v1, p0, Landroidx/lifecycle/LiveData;->j:Ljava/lang/Runnable;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->e:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/LiveData;->g:I

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lj/a;->d()Lj/a;

    move-result-object v0

    invoke-virtual {v0}, Lj/a;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on a background thread"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(Landroidx/lifecycle/LiveData$c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.c;)V"
        }
    .end annotation

    iget-boolean v0, p1, Landroidx/lifecycle/LiveData$c;->b:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$c;->k()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData$c;->h(Z)V

    return-void

    :cond_10
    iget v0, p1, Landroidx/lifecycle/LiveData$c;->c:I

    iget v1, p0, Landroidx/lifecycle/LiveData;->g:I

    if-lt v0, v1, :cond_17

    return-void

    :cond_17
    iput v1, p1, Landroidx/lifecycle/LiveData$c;->c:I

    iget-object p1, p1, Landroidx/lifecycle/LiveData$c;->a:Landroidx/lifecycle/o;

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->e:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroidx/lifecycle/o;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method b(I)V
    .registers 6

    iget v0, p0, Landroidx/lifecycle/LiveData;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/lifecycle/LiveData;->c:I

    iget-boolean p1, p0, Landroidx/lifecycle/LiveData;->d:Z

    if-eqz p1, :cond_a

    return-void

    :cond_a
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/lifecycle/LiveData;->d:Z

    :goto_d
    const/4 v1, 0x0

    :try_start_e
    iget v2, p0, Landroidx/lifecycle/LiveData;->c:I

    if-eq v0, v2, :cond_2d

    if-nez v0, :cond_18

    if-lez v2, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    if-lez v0, :cond_1f

    if-nez v2, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-eqz v3, :cond_26

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->g()V

    goto :goto_2b

    :cond_26
    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->h()V
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_30

    :cond_2b
    :goto_2b
    move v0, v2

    goto :goto_d

    :cond_2d
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->d:Z

    return-void

    :catchall_30
    move-exception p1

    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->d:Z

    throw p1
.end method

.method d(Landroidx/lifecycle/LiveData$c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.c;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/lifecycle/LiveData;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->i:Z

    return-void

    :cond_8
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->h:Z

    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->i:Z

    if-eqz p1, :cond_14

    invoke-direct {p0, p1}, Landroidx/lifecycle/LiveData;->c(Landroidx/lifecycle/LiveData$c;)V

    const/4 p1, 0x0

    goto :goto_33

    :cond_14
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->b:Lk/b;

    invoke-virtual {v1}, Lk/b;->c()Lk/b$d;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LiveData$c;

    invoke-direct {p0, v2}, Landroidx/lifecycle/LiveData;->c(Landroidx/lifecycle/LiveData$c;)V

    iget-boolean v2, p0, Landroidx/lifecycle/LiveData;->i:Z

    if-eqz v2, :cond_1a

    :cond_33
    :goto_33
    iget-boolean v1, p0, Landroidx/lifecycle/LiveData;->i:Z

    if-nez v1, :cond_a

    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->h:Z

    return-void
.end method

.method public e(Landroidx/lifecycle/i;Landroidx/lifecycle/o;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/i;",
            "Landroidx/lifecycle/o<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observe"

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/i;->a()Landroidx/lifecycle/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/f$c;->e:Landroidx/lifecycle/f$c;

    if-ne v0, v1, :cond_12

    return-void

    :cond_12
    new-instance v0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v0, p0, p1, p2}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/i;Landroidx/lifecycle/o;)V

    iget-object v1, p0, Landroidx/lifecycle/LiveData;->b:Lk/b;

    invoke-virtual {v1, p2, v0}, Lk/b;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/LiveData$c;

    if-eqz p2, :cond_30

    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData$c;->j(Landroidx/lifecycle/i;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_30

    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_30
    :goto_30
    if-eqz p2, :cond_33

    return-void

    :cond_33
    invoke-interface {p1}, Landroidx/lifecycle/i;->a()Landroidx/lifecycle/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/h;)V

    return-void
.end method

.method public f(Landroidx/lifecycle/o;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observeForever"

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/LiveData$b;

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/LiveData$b;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/o;)V

    iget-object v1, p0, Landroidx/lifecycle/LiveData;->b:Lk/b;

    invoke-virtual {v1, p1, v0}, Lk/b;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData$c;

    instance-of v1, p1, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez v1, :cond_1e

    if-eqz p1, :cond_19

    return-void

    :cond_19
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData$c;->h(Z)V

    return-void

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected g()V
    .registers 1

    return-void
.end method

.method protected h()V
    .registers 1

    return-void
.end method

.method protected i(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->f:Ljava/lang/Object;

    sget-object v2, Landroidx/lifecycle/LiveData;->k:Ljava/lang/Object;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->f:Ljava/lang/Object;

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1c

    if-nez v1, :cond_12

    return-void

    :cond_12
    invoke-static {}, Lj/a;->d()Lj/a;

    move-result-object p1

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lj/a;->c(Ljava/lang/Runnable;)V

    return-void

    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public j(Landroidx/lifecycle/o;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "removeObserver"

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->b:Lk/b;

    invoke-virtual {v0, p1}, Lk/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData$c;

    if-nez p1, :cond_10

    return-void

    :cond_10
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$c;->i()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData$c;->h(Z)V

    return-void
.end method

.method protected k(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "setValue"

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    iget v0, p0, Landroidx/lifecycle/LiveData;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/LiveData;->g:I

    iput-object p1, p0, Landroidx/lifecycle/LiveData;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->d(Landroidx/lifecycle/LiveData$c;)V

    return-void
.end method
