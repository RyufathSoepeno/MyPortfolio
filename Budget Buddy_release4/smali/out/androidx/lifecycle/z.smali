.class public abstract Landroidx/lifecycle/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/z;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/z;->b:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/z;->c:Z

    return-void
.end method

.method private static b(Ljava/lang/Object;)V
    .registers 2

    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_11

    :try_start_4
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_11

    :catch_a
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_11
    :goto_11
    return-void
.end method


# virtual methods
.method final a()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/z;->c:Z

    iget-object v0, p0, Landroidx/lifecycle/z;->a:Ljava/util/Map;

    if-eqz v0, :cond_25

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Landroidx/lifecycle/z;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/lifecycle/z;->b(Ljava/lang/Object;)V

    goto :goto_12

    :cond_20
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_22

    throw v1

    :cond_25
    :goto_25
    iget-object v0, p0, Landroidx/lifecycle/z;->b:Ljava/util/Set;

    if-eqz v0, :cond_45

    monitor-enter v0

    :try_start_2a
    iget-object v1, p0, Landroidx/lifecycle/z;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    invoke-static {v2}, Landroidx/lifecycle/z;->b(Ljava/lang/Object;)V

    goto :goto_30

    :cond_40
    monitor-exit v0

    goto :goto_45

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_2a .. :try_end_44} :catchall_42

    throw v1

    :cond_45
    :goto_45
    invoke-virtual {p0}, Landroidx/lifecycle/z;->d()V

    return-void
.end method

.method c(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/z;->a:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroidx/lifecycle/z;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p1
.end method

.method protected d()V
    .registers 1

    return-void
.end method

.method e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/z;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroidx/lifecycle/z;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_10

    iget-object v2, p0, Landroidx/lifecycle/z;->a:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1d

    if-nez v1, :cond_14

    goto :goto_15

    :cond_14
    move-object p2, v1

    :goto_15
    iget-boolean p1, p0, Landroidx/lifecycle/z;->c:Z

    if-eqz p1, :cond_1c

    invoke-static {p2}, Landroidx/lifecycle/z;->b(Ljava/lang/Object;)V

    :cond_1c
    return-object p2

    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method
