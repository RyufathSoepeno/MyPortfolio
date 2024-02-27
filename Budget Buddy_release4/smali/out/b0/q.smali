.class Lb0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/o;


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:I

.field private final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lb0/k;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lb0/m;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lb0/m;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lb0/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lb0/q;->d:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb0/q;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb0/q;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb0/q;->g:Ljava/util/Map;

    iput-object p1, p0, Lb0/q;->a:Ljava/lang/String;

    iput p2, p0, Lb0/q;->b:I

    iput p3, p0, Lb0/q;->c:I

    return-void
.end method

.method public static synthetic d(Lb0/q;Lb0/m;)V
    .registers 2

    invoke-direct {p0, p1}, Lb0/q;->g(Lb0/m;)V

    return-void
.end method

.method private declared-synchronized f(Lb0/m;)Lb0/k;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lb0/q;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb0/k;

    invoke-virtual {v1}, Lb0/k;->a()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_26

    iget-object v2, p0, Lb0/q;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lb0/k;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb0/m;

    :cond_26
    if-eqz v2, :cond_2b

    if-eq v2, p1, :cond_2b

    goto :goto_7

    :cond_2b
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_32

    monitor-exit p0

    return-object v1

    :cond_30
    monitor-exit p0

    return-object v2

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private synthetic g(Lb0/m;)V
    .registers 2

    invoke-direct {p0, p1}, Lb0/q;->h(Lb0/m;)V

    return-void
.end method

.method private declared-synchronized h(Lb0/m;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lb0/q;->e:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lb0/q;->f:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lb0/q;->e:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lb0/m;->b()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p1}, Lb0/m;->d()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lb0/q;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lb0/m;->d()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    invoke-direct {p0, p1}, Lb0/q;->i(Lb0/m;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb0/m;

    invoke-direct {p0, v0}, Lb0/q;->i(Lb0/m;)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_40

    goto :goto_2e

    :cond_3e
    monitor-exit p0

    return-void

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized i(Lb0/m;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lb0/q;->f(Lb0/m;)Lb0/k;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v1, p0, Lb0/q;->f:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lb0/q;->e:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lb0/k;->a()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lb0/q;->g:Ljava/util/Map;

    invoke-virtual {v0}, Lb0/k;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    invoke-virtual {p1, v0}, Lb0/m;->e(Lb0/k;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public synthetic a(Lb0/i;Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lb0/n;->a(Lb0/o;Lb0/i;Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized b()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lb0/q;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb0/m;

    invoke-virtual {v1}, Lb0/m;->f()V

    goto :goto_7

    :cond_17
    iget-object v0, p0, Lb0/q;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb0/m;

    invoke-virtual {v1}, Lb0/m;->f()V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2f

    goto :goto_1d

    :cond_2d
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lb0/k;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lb0/q;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/HashSet;

    iget-object v0, p0, Lb0/q;->e:Ljava/util/Set;

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb0/m;

    invoke-direct {p0, v0}, Lb0/q;->i(Lb0/m;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    goto :goto_11

    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected e(Ljava/lang/String;I)Lb0/m;
    .registers 4

    new-instance v0, Lb0/m;

    invoke-direct {v0, p1, p2}, Lb0/m;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public declared-synchronized start()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :goto_2
    :try_start_2
    iget v1, p0, Lb0/q;->b:I

    if-ge v0, v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lb0/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lb0/q;->c:I

    invoke-virtual {p0, v1, v2}, Lb0/q;->e(Ljava/lang/String;I)Lb0/m;

    move-result-object v1

    new-instance v2, Lb0/p;

    invoke-direct {v2, p0, v1}, Lb0/p;-><init>(Lb0/q;Lb0/m;)V

    invoke-virtual {v1, v2}, Lb0/m;->g(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lb0/q;->e:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_2f

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2d
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
