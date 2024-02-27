.class public Lh0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh0/d$c;,
        Lh0/d$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lh0/d$c;

.field private c:J

.field private d:Lh0/b;

.field private e:Lio/flutter/embedding/engine/FlutterJNI;

.field private f:Ljava/util/concurrent/ExecutorService;

.field g:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lh0/d$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-static {}, Le0/a;->e()Le0/a;

    move-result-object v0

    invoke-virtual {v0}, Le0/a;->d()Lio/flutter/embedding/engine/FlutterJNI$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI$c;->a()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    invoke-direct {p0, v0}, Lh0/d;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    return-void
.end method

.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;)V
    .registers 3

    invoke-static {}, Le0/a;->e()Le0/a;

    move-result-object v0

    invoke-virtual {v0}, Le0/a;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lh0/d;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;Ljava/util/concurrent/ExecutorService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh0/d;->a:Z

    iput-object p1, p0, Lh0/d;->e:Lio/flutter/embedding/engine/FlutterJNI;

    iput-object p2, p0, Lh0/d;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lh0/d;Landroid/content/Context;)Lh0/e;
    .registers 2

    invoke-direct {p0, p1}, Lh0/d;->g(Landroid/content/Context;)Lh0/e;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Lh0/d;)Lio/flutter/embedding/engine/FlutterJNI;
    .registers 1

    iget-object p0, p0, Lh0/d;->e:Lio/flutter/embedding/engine/FlutterJNI;

    return-object p0
.end method

.method static synthetic c(Lh0/d;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lh0/d;->f:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private g(Landroid/content/Context;)Lh0/e;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method private static i(Landroid/os/Bundle;)Z
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "io.flutter.embedding.android.LeakVM"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public d()Z
    .registers 2

    iget-object v0, p0, Lh0/d;->d:Lh0/b;

    iget-boolean v0, v0, Lh0/b;->g:Z

    return v0
.end method

.method public e(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 11

    const-string v0, "--aot-shared-library-name="

    iget-boolean v1, p0, Lh0/d;->a:Z

    if-eqz v1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1ef

    iget-object v1, p0, Lh0/d;->b:Lh0/d$c;

    if-eqz v1, :cond_1e7

    const-string v1, "FlutterLoader#ensureInitializationComplete"

    invoke-static {v1}, Lz0/f;->a(Ljava/lang/String;)V

    :try_start_1a
    iget-object v1, p0, Lh0/d;->g:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh0/d$b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "--icu-symbol-prefix=_binary_icudtl_dat"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--icu-native-lib-path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lh0/d;->d:Lh0/b;

    iget-object v4, v4, Lh0/b;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "libflutter.so"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_53

    invoke-static {v2, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_53
    const/4 v3, 0x0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lh0/d;->d:Lh0/b;

    iget-object v5, v5, Lh0/b;->a:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lh0/d;->d:Lh0/b;

    iget-object v0, v0, Lh0/b;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lh0/d;->d:Lh0/b;

    iget-object v0, v0, Lh0/b;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--cache-dir-path="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lh0/d$b;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lh0/d;->d:Lh0/b;

    iget-object p2, p2, Lh0/b;->e:Ljava/lang/String;

    if-eqz p2, :cond_be

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--domain-network-policy="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lh0/d;->d:Lh0/b;

    iget-object v0, v0, Lh0/b;->e:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_be
    iget-object p2, p0, Lh0/d;->b:Lh0/d$c;

    invoke-virtual {p2}, Lh0/d$c;->a()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_e0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--log-tag="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lh0/d;->b:Lh0/d$c;

    invoke-virtual {v0}, Lh0/d$c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x80

    invoke-virtual {p2, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-eqz p2, :cond_fa

    const-string v4, "io.flutter.embedding.android.OldGenHeapSize"

    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_fb

    :cond_fa
    const/4 v4, 0x0

    :goto_fb
    if-nez v4, :cond_11a

    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    new-instance v5, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v5}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v4, v5, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    long-to-double v4, v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    double-to-int v4, v4

    :cond_11a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--old-gen-heap-size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int v5, v5, v4

    mul-int/lit8 v5, v5, 0xc

    mul-int/lit8 v5, v5, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--resource-cache-max-bytes-threshold="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "--prefetched-default-font-manager"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_191

    const-string v4, "io.flutter.embedding.android.EnableImpeller"

    invoke-virtual {p2, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_168

    const-string v4, "--enable-impeller"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_168
    const-string v4, "io.flutter.embedding.android.EnableVulkanValidation"

    invoke-virtual {p2, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_175

    const-string v4, "--enable-vulkan-validation"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_175
    const-string v4, "io.flutter.embedding.android.ImpellerBackend"

    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_191

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--impeller-backend="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_191
    invoke-static {p2}, Lh0/d;->i(Landroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_19a

    const-string p2, "true"

    goto :goto_19c

    :cond_19a
    const-string p2, "false"

    :goto_19c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--leak-vm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lh0/d;->c:J

    sub-long v6, v4, v6

    iget-object p2, p0, Lh0/d;->e:Lio/flutter/embedding/engine/FlutterJNI;

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Ljava/lang/String;

    iget-object v4, v1, Lh0/d$b;->a:Ljava/lang/String;

    iget-object v5, v1, Lh0/d$b;->b:Ljava/lang/String;

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lio/flutter/embedding/engine/FlutterJNI;->init(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh0/d;->a:Z
    :try_end_1cf
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1cf} :catch_1d5
    .catchall {:try_start_1a .. :try_end_1cf} :catchall_1d3

    invoke-static {}, Lz0/f;->d()V

    return-void

    :catchall_1d3
    move-exception p1

    goto :goto_1e3

    :catch_1d5
    move-exception p1

    :try_start_1d6
    const-string p2, "FlutterLoader"

    const-string v0, "Flutter initialization failed."

    invoke-static {p2, v0, p1}, Le0/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1e3
    .catchall {:try_start_1d6 .. :try_end_1e3} :catchall_1d3

    :goto_1e3
    invoke-static {}, Lz0/f;->d()V

    throw p1

    :cond_1e7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ensureInitializationComplete must be called after startInitialization"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1ef
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ensureInitializationComplete must be called on the main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lh0/d;->d:Lh0/b;

    iget-object v0, v0, Lh0/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Lh0/d;->a:Z

    return v0
.end method

.method public j(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lh0/d$c;

    invoke-direct {v0}, Lh0/d$c;-><init>()V

    invoke-virtual {p0, p1, v0}, Lh0/d;->k(Landroid/content/Context;Lh0/d$c;)V

    return-void
.end method

.method public k(Landroid/content/Context;Lh0/d$c;)V
    .registers 5

    iget-object v0, p0, Lh0/d;->b:Lh0/d$c;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4d

    const-string v0, "FlutterLoader#startInitialization"

    invoke-static {v0}, Lz0/f;->a(Ljava/lang/String;)V

    :try_start_14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p2, p0, Lh0/d;->b:Lh0/d$c;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lh0/d;->c:J

    invoke-static {p1}, Lh0/a;->e(Landroid/content/Context;)Lh0/b;

    move-result-object p2

    iput-object p2, p0, Lh0/d;->d:Lh0/b;

    const-string p2, "display"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lh0/d;->e:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-static {p2, v0}, Lio/flutter/view/s;->f(Landroid/hardware/display/DisplayManager;Lio/flutter/embedding/engine/FlutterJNI;)Lio/flutter/view/s;

    move-result-object p2

    invoke-virtual {p2}, Lio/flutter/view/s;->g()V

    new-instance p2, Lh0/d$a;

    invoke-direct {p2, p0, p1}, Lh0/d$a;-><init>(Lh0/d;Landroid/content/Context;)V

    iget-object p1, p0, Lh0/d;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lh0/d;->g:Ljava/util/concurrent/Future;
    :try_end_44
    .catchall {:try_start_14 .. :try_end_44} :catchall_48

    invoke-static {}, Lz0/f;->d()V

    return-void

    :catchall_48
    move-exception p1

    invoke-static {}, Lz0/f;->d()V

    throw p1

    :cond_4d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "startInitialization must be called on the main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
