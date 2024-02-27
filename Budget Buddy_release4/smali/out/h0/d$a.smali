.class Lh0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/d;->k(Landroid/content/Context;Lh0/d$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lh0/d$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lh0/d;


# direct methods
.method constructor <init>(Lh0/d;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lh0/d$a;->b:Lh0/d;

    iput-object p2, p0, Lh0/d$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lh0/d$a;)V
    .registers 1

    invoke-direct {p0}, Lh0/d$a;->c()V

    return-void
.end method

.method private synthetic c()V
    .registers 2

    iget-object v0, p0, Lh0/d$a;->b:Lh0/d;

    invoke-static {v0}, Lh0/d;->b(Lh0/d;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->prefetchDefaultFontManager()V

    return-void
.end method


# virtual methods
.method public b()Lh0/d$b;
    .registers 6

    const-string v0, "FlutterLoader initTask"

    invoke-static {v0}, Lz0/f;->a(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lh0/d$a;->b:Lh0/d;

    iget-object v1, p0, Lh0/d$a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lh0/d;->a(Lh0/d;Landroid/content/Context;)Lh0/e;

    iget-object v0, p0, Lh0/d$a;->b:Lh0/d;

    invoke-static {v0}, Lh0/d;->b(Lh0/d;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->loadLibrary()V

    iget-object v0, p0, Lh0/d$a;->b:Lh0/d;

    invoke-static {v0}, Lh0/d;->b(Lh0/d;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->updateRefreshRate()V

    iget-object v0, p0, Lh0/d$a;->b:Lh0/d;

    invoke-static {v0}, Lh0/d;->c(Lh0/d;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lh0/c;

    invoke-direct {v1, p0}, Lh0/c;-><init>(Lh0/d$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lh0/d$b;

    iget-object v1, p0, Lh0/d$a;->a:Landroid/content/Context;

    invoke-static {v1}, Lz0/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lh0/d$a;->a:Landroid/content/Context;

    invoke-static {v2}, Lz0/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lh0/d$a;->a:Landroid/content/Context;

    invoke-static {v3}, Lz0/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lh0/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh0/d$a;)V
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_48

    invoke-static {}, Lz0/f;->d()V

    return-object v0

    :catchall_48
    move-exception v0

    invoke-static {}, Lz0/f;->d()V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lh0/d$a;->b()Lh0/d$b;

    move-result-object v0

    return-object v0
.end method
