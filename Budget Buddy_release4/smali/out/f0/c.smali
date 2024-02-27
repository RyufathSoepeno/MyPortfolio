.class Lf0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/c;
.implements Lf0/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/c$g;,
        Lf0/c$h;,
        Lf0/c$c;,
        Lf0/c$b;,
        Lf0/c$f;,
        Lf0/c$e;,
        Lf0/c$i;,
        Lf0/c$d;,
        Lf0/c$j;
    }
.end annotation


# instance fields
.field private final a:Lio/flutter/embedding/engine/FlutterJNI;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lf0/c$f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lf0/c$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ls0/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private final h:Lf0/c$d;

.field private i:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ls0/c$c;",
            "Lf0/c$d;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lf0/c$i;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;)V
    .registers 3

    new-instance v0, Lf0/c$e;

    invoke-direct {v0}, Lf0/c$e;-><init>()V

    invoke-direct {p0, p1, v0}, Lf0/c;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Lf0/c$i;)V

    return-void
.end method

.method constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;Lf0/c$i;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf0/c;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf0/c;->c:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf0/c;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lf0/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf0/c;->f:Ljava/util/Map;

    const/4 v0, 0x1

    iput v0, p0, Lf0/c;->g:I

    new-instance v0, Lf0/g;

    invoke-direct {v0}, Lf0/g;-><init>()V

    iput-object v0, p0, Lf0/c;->h:Lf0/c$d;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lf0/c;->i:Ljava/util/WeakHashMap;

    iput-object p1, p0, Lf0/c;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iput-object p2, p0, Lf0/c;->j:Lf0/c$i;

    return-void
.end method

.method public static synthetic h(Lf0/c;Ljava/lang/String;ILf0/c$f;Ljava/nio/ByteBuffer;J)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lf0/c;->l(Ljava/lang/String;ILf0/c$f;Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method private i(Ljava/lang/String;Lf0/c$f;Ljava/nio/ByteBuffer;IJ)V
    .registers 17

    move-object v4, p2

    if-eqz v4, :cond_6

    iget-object v0, v4, Lf0/c$f;->b:Lf0/c$d;

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    move-object v8, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlatformChannel ScheduleHandler on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v3, p4

    invoke-static {v0, p4}, Lz0/f;->b(Ljava/lang/String;I)V

    new-instance v9, Lf0/b;

    move-object v0, v9

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lf0/b;-><init>(Lf0/c;Ljava/lang/String;ILf0/c$f;Ljava/nio/ByteBuffer;J)V

    move-object v0, p0

    if-nez v8, :cond_2d

    iget-object v8, v0, Lf0/c;->h:Lf0/c$d;

    :cond_2d
    invoke-interface {v8, v9}, Lf0/c$d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static j(Ljava/lang/Error;)V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_12
    throw p0
.end method

.method private k(Lf0/c$f;Ljava/nio/ByteBuffer;I)V
    .registers 7

    const-string v0, "DartMessenger"

    if-eqz p1, :cond_22

    :try_start_4
    const-string v1, "Deferring to registered handler to process message."

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lf0/c$f;->a:Ls0/c$a;

    new-instance v1, Lf0/c$g;

    iget-object v2, p0, Lf0/c;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-direct {v1, v2, p3}, Lf0/c$g;-><init>(Lio/flutter/embedding/engine/FlutterJNI;I)V

    invoke-interface {p1, p2, v1}, Ls0/c$a;->a(Ljava/nio/ByteBuffer;Ls0/c$b;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_1b
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_15} :catch_16

    goto :goto_2c

    :catch_16
    move-exception p1

    invoke-static {p1}, Lf0/c;->j(Ljava/lang/Error;)V

    goto :goto_2c

    :catch_1b
    move-exception p1

    const-string p2, "Uncaught exception in binary message listener"

    invoke-static {v0, p2, p1}, Le0/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27

    :cond_22
    const-string p1, "No registered handler for message. Responding to Dart with empty reply message."

    invoke-static {v0, p1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_27
    iget-object p1, p0, Lf0/c;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {p1, p3}, Lio/flutter/embedding/engine/FlutterJNI;->invokePlatformMessageEmptyResponseCallback(I)V

    :goto_2c
    return-void
.end method

.method private synthetic l(Ljava/lang/String;ILf0/c$f;Ljava/nio/ByteBuffer;J)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlatformChannel ScheduleHandler on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lz0/f;->e(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DartMessenger#handleMessageFromDart on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz0/f;->a(Ljava/lang/String;)V

    :try_start_28
    invoke-direct {p0, p3, p4, p2}, Lf0/c;->k(Lf0/c$f;Ljava/nio/ByteBuffer;I)V

    if-eqz p4, :cond_37

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p1

    if-eqz p1, :cond_37

    const/4 p1, 0x0

    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_40

    :cond_37
    iget-object p1, p0, Lf0/c;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {p1, p5, p6}, Lio/flutter/embedding/engine/FlutterJNI;->cleanupMessageData(J)V

    invoke-static {}, Lz0/f;->d()V

    return-void

    :catchall_40
    move-exception p1

    iget-object p2, p0, Lf0/c;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {p2, p5, p6}, Lio/flutter/embedding/engine/FlutterJNI;->cleanupMessageData(J)V

    invoke-static {}, Lz0/f;->d()V

    throw p1
.end method


# virtual methods
.method public a(Ls0/c$d;)Ls0/c$c;
    .registers 4

    iget-object v0, p0, Lf0/c;->j:Lf0/c$i;

    invoke-interface {v0, p1}, Lf0/c$i;->a(Ls0/c$d;)Lf0/c$d;

    move-result-object p1

    new-instance v0, Lf0/c$j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf0/c$j;-><init>(Lf0/c$a;)V

    iget-object v1, p0, Lf0/c;->i:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public synthetic b()Ls0/c$c;
    .registers 2

    invoke-static {p0}, Ls0/b;->a(Ls0/c;)Ls0/c$c;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ls0/c$a;Ls0/c$c;)V
    .registers 12

    if-nez p2, :cond_2a

    const-string p2, "DartMessenger"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing handler for channel \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lf0/c;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_20
    iget-object p2, p0, Lf0/c;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw p1

    :cond_2a
    const/4 v0, 0x0

    if-eqz p3, :cond_41

    iget-object v0, p0, Lf0/c;->i:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lf0/c$d;

    if-eqz v0, :cond_39

    goto :goto_41

    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unrecognized TaskQueue, use BinaryMessenger to create your TaskQueue (ex makeBackgroundTaskQueue)."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_41
    :goto_41
    const-string p3, "DartMessenger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting handler for channel \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lf0/c;->d:Ljava/lang/Object;

    monitor-enter p3

    :try_start_5f
    iget-object v1, p0, Lf0/c;->b:Ljava/util/Map;

    new-instance v2, Lf0/c$f;

    invoke-direct {v2, p2, v0}, Lf0/c$f;-><init>(Ls0/c$a;Lf0/c$d;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lf0/c;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_75

    monitor-exit p3

    return-void

    :cond_75
    monitor-exit p3
    :try_end_76
    .catchall {:try_start_5f .. :try_end_76} :catchall_9c

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lf0/c$b;

    iget-object v0, p0, Lf0/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lf0/c$f;

    iget-object v4, p3, Lf0/c$b;->a:Ljava/nio/ByteBuffer;

    iget v5, p3, Lf0/c$b;->b:I

    iget-wide v6, p3, Lf0/c$b;->c:J

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lf0/c;->i(Ljava/lang/String;Lf0/c$f;Ljava/nio/ByteBuffer;IJ)V

    goto :goto_7a

    :cond_9b
    return-void

    :catchall_9c
    move-exception p1

    :try_start_9d
    monitor-exit p3
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw p1
.end method

.method public d(ILjava/nio/ByteBuffer;)V
    .registers 5

    const-string v0, "DartMessenger"

    const-string v1, "Received message reply from Dart."

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lf0/c;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls0/c$b;

    if-eqz p1, :cond_35

    :try_start_15
    const-string v1, "Invoking registered callback for reply from Dart."

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ls0/c$b;->a(Ljava/nio/ByteBuffer;)V

    if-eqz p2, :cond_35

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_29} :catch_2f
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_29} :catch_2a

    goto :goto_35

    :catch_2a
    move-exception p1

    invoke-static {p1}, Lf0/c;->j(Ljava/lang/Error;)V

    goto :goto_35

    :catch_2f
    move-exception p1

    const-string p2, "Uncaught exception in binary message reply handler"

    invoke-static {v0, p2, p1}, Le0/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_35
    :goto_35
    return-void
.end method

.method public e(Ljava/lang/String;Ls0/c$a;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lf0/c;->c(Ljava/lang/String;Ls0/c$a;Ls0/c$c;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/nio/ByteBuffer;IJ)V
    .registers 15

    const-string v0, "DartMessenger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message from Dart over channel \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lf0/c;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1e
    iget-object v1, p0, Lf0/c;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lf0/c$f;

    iget-object v1, p0, Lf0/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_33

    if-nez v4, :cond_33

    const/4 v1, 0x1

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    :goto_34
    if-eqz v1, :cond_58

    iget-object v2, p0, Lf0/c;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    iget-object v2, p0, Lf0/c;->c:Ljava/util/Map;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    iget-object v2, p0, Lf0/c;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Lf0/c$b;

    invoke-direct {v3, p2, p3, p4, p5}, Lf0/c$b;-><init>(Ljava/nio/ByteBuffer;IJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_1e .. :try_end_59} :catchall_64

    if-nez v1, :cond_63

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lf0/c;->i(Ljava/lang/String;Lf0/c$f;Ljava/nio/ByteBuffer;IJ)V

    :cond_63
    return-void

    :catchall_64
    move-exception p1

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw p1
.end method

.method public g(Ljava/lang/String;Ljava/nio/ByteBuffer;Ls0/c$b;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DartMessenger#send on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz0/f;->a(Ljava/lang/String;)V

    :try_start_14
    const-string v0, "DartMessenger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending message with callback over channel \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lf0/c;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lf0/c;->g:I

    if-eqz p3, :cond_40

    iget-object v1, p0, Lf0/c;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    if-nez p2, :cond_48

    iget-object p2, p0, Lf0/c;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {p2, p1, v0}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchEmptyPlatformMessage(Ljava/lang/String;I)V

    goto :goto_51

    :cond_48
    iget-object p3, p0, Lf0/c;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p3, p1, p2, v1, v0}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchPlatformMessage(Ljava/lang/String;Ljava/nio/ByteBuffer;II)V
    :try_end_51
    .catchall {:try_start_14 .. :try_end_51} :catchall_55

    :goto_51
    invoke-static {}, Lz0/f;->d()V

    return-void

    :catchall_55
    move-exception p1

    invoke-static {}, Lz0/f;->d()V

    throw p1
.end method
