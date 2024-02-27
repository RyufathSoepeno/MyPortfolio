.class public Lf0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/a$c;,
        Lf0/a$b;,
        Lf0/a$d;
    }
.end annotation


# instance fields
.field private final a:Lio/flutter/embedding/engine/FlutterJNI;

.field private final b:Landroid/content/res/AssetManager;

.field private final c:Lf0/c;

.field private final d:Ls0/c;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Lf0/a$d;

.field private final h:Ls0/c$a;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;Landroid/content/res/AssetManager;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf0/a;->e:Z

    new-instance v0, Lf0/a$a;

    invoke-direct {v0, p0}, Lf0/a$a;-><init>(Lf0/a;)V

    iput-object v0, p0, Lf0/a;->h:Ls0/c$a;

    iput-object p1, p0, Lf0/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iput-object p2, p0, Lf0/a;->b:Landroid/content/res/AssetManager;

    new-instance p2, Lf0/c;

    invoke-direct {p2, p1}, Lf0/c;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object p2, p0, Lf0/a;->c:Lf0/c;

    const-string v1, "flutter/isolate"

    invoke-virtual {p2, v1, v0}, Lf0/c;->e(Ljava/lang/String;Ls0/c$a;)V

    new-instance v0, Lf0/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lf0/a$c;-><init>(Lf0/c;Lf0/a$a;)V

    iput-object v0, p0, Lf0/a;->d:Ls0/c;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result p1

    if-eqz p1, :cond_2e

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf0/a;->e:Z

    :cond_2e
    return-void
.end method

.method static synthetic d(Lf0/a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lf0/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lf0/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lf0/a;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lf0/a;)Lf0/a$d;
    .registers 1

    iget-object p0, p0, Lf0/a;->g:Lf0/a$d;

    return-object p0
.end method


# virtual methods
.method public a(Ls0/c$d;)Ls0/c$c;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lf0/a;->d:Ls0/c;

    invoke-interface {v0, p1}, Ls0/c;->a(Ls0/c$d;)Ls0/c$c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b()Ls0/c$c;
    .registers 2

    invoke-static {p0}, Ls0/b;->a(Ls0/c;)Ls0/c$c;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ls0/c$a;Ls0/c$c;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lf0/a;->d:Ls0/c;

    invoke-interface {v0, p1, p2, p3}, Ls0/c;->c(Ljava/lang/String;Ls0/c$a;Ls0/c$c;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ls0/c$a;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lf0/a;->d:Ls0/c;

    invoke-interface {v0, p1, p2}, Ls0/c;->e(Ljava/lang/String;Ls0/c$a;)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/nio/ByteBuffer;Ls0/c$b;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lf0/a;->d:Ls0/c;

    invoke-interface {v0, p1, p2, p3}, Ls0/c;->g(Ljava/lang/String;Ljava/nio/ByteBuffer;Ls0/c$b;)V

    return-void
.end method

.method public i(Lf0/a$b;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf0/a$b;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lf0/a;->e:Z

    const-string v1, "DartExecutor"

    if-eqz v0, :cond_c

    const-string p1, "Attempted to run a DartExecutor that is already running."

    invoke-static {v1, p1}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const-string v0, "DartExecutor#executeDartEntrypoint"

    invoke-static {v0}, Lz0/f;->a(Ljava/lang/String;)V

    :try_start_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing Dart entrypoint: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lf0/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v3, p1, Lf0/a$b;->a:Ljava/lang/String;

    iget-object v4, p1, Lf0/a$b;->c:Ljava/lang/String;

    iget-object v5, p1, Lf0/a$b;->b:Ljava/lang/String;

    iget-object v6, p0, Lf0/a;->b:Landroid/content/res/AssetManager;

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lio/flutter/embedding/engine/FlutterJNI;->runBundleAndSnapshotFromLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/util/List;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf0/a;->e:Z
    :try_end_36
    .catchall {:try_start_11 .. :try_end_36} :catchall_3a

    invoke-static {}, Lz0/f;->d()V

    return-void

    :catchall_3a
    move-exception p1

    invoke-static {}, Lz0/f;->d()V

    throw p1
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lf0/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .registers 2

    iget-boolean v0, p0, Lf0/a;->e:Z

    return v0
.end method

.method public l()V
    .registers 2

    iget-object v0, p0, Lf0/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lf0/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->notifyLowMemoryWarning()V

    :cond_d
    return-void
.end method

.method public m()V
    .registers 3

    const-string v0, "DartExecutor"

    const-string v1, "Attached to JNI. Registering the platform message handler for this Dart execution context."

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lf0/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p0, Lf0/a;->c:Lf0/c;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformMessageHandler(Lf0/f;)V

    return-void
.end method

.method public n()V
    .registers 3

    const-string v0, "DartExecutor"

    const-string v1, "Detached from JNI. De-registering the platform message handler for this Dart execution context."

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lf0/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformMessageHandler(Lf0/f;)V

    return-void
.end method
