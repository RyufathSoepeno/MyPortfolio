.class public Lio/flutter/embedding/engine/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/a$b;
    }
.end annotation


# instance fields
.field private final a:Lio/flutter/embedding/engine/FlutterJNI;

.field private final b:Lq0/a;

.field private final c:Lf0/a;

.field private final d:Lio/flutter/embedding/engine/c;

.field private final e:Lt0/b;

.field private final f:Lr0/a;

.field private final g:Lr0/b;

.field private final h:Lr0/f;

.field private final i:Lr0/g;

.field private final j:Lr0/h;

.field private final k:Lr0/i;

.field private final l:Lr0/m;

.field private final m:Lr0/j;

.field private final n:Lr0/n;

.field private final o:Lr0/o;

.field private final p:Lr0/p;

.field private final q:Lr0/q;

.field private final r:Lio/flutter/plugin/platform/v;

.field private final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/embedding/engine/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lio/flutter/embedding/engine/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lh0/d;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/v;[Ljava/lang/String;ZZ)V
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;Lh0/d;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/v;[Ljava/lang/String;ZZLio/flutter/embedding/engine/d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lh0/d;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/v;[Ljava/lang/String;ZZLio/flutter/embedding/engine/d;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->s:Ljava/util/Set;

    new-instance v0, Lio/flutter/embedding/engine/a$a;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/a$a;-><init>(Lio/flutter/embedding/engine/a;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->t:Lio/flutter/embedding/engine/a$b;

    :try_start_11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :goto_23
    invoke-static {}, Le0/a;->e()Le0/a;

    move-result-object v1

    if-nez p3, :cond_31

    invoke-virtual {v1}, Le0/a;->d()Lio/flutter/embedding/engine/FlutterJNI$c;

    move-result-object p3

    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI$c;->a()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p3

    :cond_31
    iput-object p3, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    new-instance v2, Lf0/a;

    invoke-direct {v2, p3, v0}, Lf0/a;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Landroid/content/res/AssetManager;)V

    iput-object v2, p0, Lio/flutter/embedding/engine/a;->c:Lf0/a;

    invoke-virtual {v2}, Lf0/a;->m()V

    invoke-static {}, Le0/a;->e()Le0/a;

    move-result-object v0

    invoke-virtual {v0}, Le0/a;->a()Lg0/a;

    move-result-object v0

    new-instance v3, Lr0/a;

    invoke-direct {v3, v2, p3}, Lr0/a;-><init>(Lf0/a;Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/a;->f:Lr0/a;

    new-instance v3, Lr0/b;

    invoke-direct {v3, v2}, Lr0/b;-><init>(Lf0/a;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/a;->g:Lr0/b;

    new-instance v4, Lr0/f;

    invoke-direct {v4, v2}, Lr0/f;-><init>(Lf0/a;)V

    iput-object v4, p0, Lio/flutter/embedding/engine/a;->h:Lr0/f;

    new-instance v4, Lr0/g;

    invoke-direct {v4, v2}, Lr0/g;-><init>(Lf0/a;)V

    iput-object v4, p0, Lio/flutter/embedding/engine/a;->i:Lr0/g;

    new-instance v5, Lr0/h;

    invoke-direct {v5, v2}, Lr0/h;-><init>(Lf0/a;)V

    iput-object v5, p0, Lio/flutter/embedding/engine/a;->j:Lr0/h;

    new-instance v5, Lr0/i;

    invoke-direct {v5, v2}, Lr0/i;-><init>(Lf0/a;)V

    iput-object v5, p0, Lio/flutter/embedding/engine/a;->k:Lr0/i;

    new-instance v5, Lr0/j;

    invoke-direct {v5, v2}, Lr0/j;-><init>(Lf0/a;)V

    iput-object v5, p0, Lio/flutter/embedding/engine/a;->m:Lr0/j;

    new-instance v5, Lr0/m;

    invoke-direct {v5, v2, p7}, Lr0/m;-><init>(Lf0/a;Z)V

    iput-object v5, p0, Lio/flutter/embedding/engine/a;->l:Lr0/m;

    new-instance p7, Lr0/n;

    invoke-direct {p7, v2}, Lr0/n;-><init>(Lf0/a;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->n:Lr0/n;

    new-instance p7, Lr0/o;

    invoke-direct {p7, v2}, Lr0/o;-><init>(Lf0/a;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->o:Lr0/o;

    new-instance p7, Lr0/p;

    invoke-direct {p7, v2}, Lr0/p;-><init>(Lf0/a;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->p:Lr0/p;

    new-instance p7, Lr0/q;

    invoke-direct {p7, v2}, Lr0/q;-><init>(Lf0/a;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->q:Lr0/q;

    if-eqz v0, :cond_9e

    invoke-interface {v0, v3}, Lg0/a;->e(Lr0/b;)V

    :cond_9e
    new-instance p7, Lt0/b;

    invoke-direct {p7, p1, v4}, Lt0/b;-><init>(Landroid/content/Context;Lr0/g;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->e:Lt0/b;

    if-nez p2, :cond_ab

    invoke-virtual {v1}, Le0/a;->c()Lh0/d;

    move-result-object p2

    :cond_ab
    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-nez v0, :cond_bb

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lh0/d;->j(Landroid/content/Context;)V

    invoke-virtual {p2, p1, p5}, Lh0/d;->e(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_bb
    iget-object p5, p0, Lio/flutter/embedding/engine/a;->t:Lio/flutter/embedding/engine/a$b;

    invoke-virtual {p3, p5}, Lio/flutter/embedding/engine/FlutterJNI;->addEngineLifecycleListener(Lio/flutter/embedding/engine/a$b;)V

    invoke-virtual {p3, p4}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformViewsController(Lio/flutter/plugin/platform/v;)V

    invoke-virtual {p3, p7}, Lio/flutter/embedding/engine/FlutterJNI;->setLocalizationPlugin(Lt0/b;)V

    invoke-virtual {v1}, Le0/a;->a()Lg0/a;

    move-result-object p5

    invoke-virtual {p3, p5}, Lio/flutter/embedding/engine/FlutterJNI;->setDeferredComponentManager(Lg0/a;)V

    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result p5

    if-nez p5, :cond_d6

    invoke-direct {p0}, Lio/flutter/embedding/engine/a;->f()V

    :cond_d6
    new-instance p5, Lq0/a;

    invoke-direct {p5, p3}, Lq0/a;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object p5, p0, Lio/flutter/embedding/engine/a;->b:Lq0/a;

    iput-object p4, p0, Lio/flutter/embedding/engine/a;->r:Lio/flutter/plugin/platform/v;

    invoke-virtual {p4}, Lio/flutter/plugin/platform/v;->g0()V

    new-instance p3, Lio/flutter/embedding/engine/c;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4, p0, p2, p8}, Lio/flutter/embedding/engine/c;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/a;Lh0/d;Lio/flutter/embedding/engine/d;)V

    iput-object p3, p0, Lio/flutter/embedding/engine/a;->d:Lio/flutter/embedding/engine/c;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p7, p3}, Lt0/b;->d(Landroid/content/res/Configuration;)V

    if-eqz p6, :cond_103

    invoke-virtual {p2}, Lh0/d;->d()Z

    move-result p2

    if-eqz p2, :cond_103

    invoke-static {p0}, Lp0/a;->a(Lio/flutter/embedding/engine/a;)V

    :cond_103
    invoke-static {p1, p0}, Lz0/i;->c(Landroid/content/Context;Lz0/i$a;)V

    return-void
.end method

.method static synthetic b(Lio/flutter/embedding/engine/a;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lio/flutter/embedding/engine/a;->s:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic c(Lio/flutter/embedding/engine/a;)Lio/flutter/plugin/platform/v;
    .registers 1

    iget-object p0, p0, Lio/flutter/embedding/engine/a;->r:Lio/flutter/plugin/platform/v;

    return-object p0
.end method

.method static synthetic d(Lio/flutter/embedding/engine/a;)Lr0/m;
    .registers 1

    iget-object p0, p0, Lio/flutter/embedding/engine/a;->l:Lr0/m;

    return-object p0
.end method

.method private f()V
    .registers 3

    const-string v0, "FlutterEngine"

    const-string v1, "Attaching to JNI."

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->attachToNative()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/a;->x()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "FlutterEngine failed to attach to its native Object reference."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private x()Z
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(FFF)V
    .registers 6

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->updateDisplayMetrics(IFFF)V

    return-void
.end method

.method public e(Lio/flutter/embedding/engine/a$b;)V
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->s:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g()V
    .registers 3

    const-string v0, "FlutterEngine"

    const-string v1, "Destroying."

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/a$b;

    invoke-interface {v1}, Lio/flutter/embedding/engine/a$b;->a()V

    goto :goto_d

    :cond_1d
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->d:Lio/flutter/embedding/engine/c;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/c;->k()V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->r:Lio/flutter/plugin/platform/v;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/v;->i0()V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->c:Lf0/a;

    invoke-virtual {v0}, Lf0/a;->n()V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p0, Lio/flutter/embedding/engine/a;->t:Lio/flutter/embedding/engine/a$b;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->removeEngineLifecycleListener(Lio/flutter/embedding/engine/a$b;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setDeferredComponentManager(Lg0/a;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->detachFromNativeAndReleaseResources()V

    invoke-static {}, Le0/a;->e()Le0/a;

    move-result-object v0

    invoke-virtual {v0}, Le0/a;->a()Lg0/a;

    move-result-object v0

    if-eqz v0, :cond_58

    invoke-static {}, Le0/a;->e()Le0/a;

    move-result-object v0

    invoke-virtual {v0}, Le0/a;->a()Lg0/a;

    move-result-object v0

    invoke-interface {v0}, Lg0/a;->destroy()V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->g:Lr0/b;

    invoke-virtual {v0, v1}, Lr0/b;->c(Lg0/a;)V

    :cond_58
    return-void
.end method

.method public h()Lr0/a;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->f:Lr0/a;

    return-object v0
.end method

.method public i()Lk0/b;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->d:Lio/flutter/embedding/engine/c;

    return-object v0
.end method

.method public j()Lf0/a;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->c:Lf0/a;

    return-object v0
.end method

.method public k()Lr0/f;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->h:Lr0/f;

    return-object v0
.end method

.method public l()Lt0/b;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->e:Lt0/b;

    return-object v0
.end method

.method public m()Lr0/h;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->j:Lr0/h;

    return-object v0
.end method

.method public n()Lr0/i;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->k:Lr0/i;

    return-object v0
.end method

.method public o()Lr0/j;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->m:Lr0/j;

    return-object v0
.end method

.method public p()Lio/flutter/plugin/platform/v;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->r:Lio/flutter/plugin/platform/v;

    return-object v0
.end method

.method public q()Lj0/b;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->d:Lio/flutter/embedding/engine/c;

    return-object v0
.end method

.method public r()Lq0/a;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->b:Lq0/a;

    return-object v0
.end method

.method public s()Lr0/m;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->l:Lr0/m;

    return-object v0
.end method

.method public t()Lr0/n;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->n:Lr0/n;

    return-object v0
.end method

.method public u()Lr0/o;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->o:Lr0/o;

    return-object v0
.end method

.method public v()Lr0/p;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->p:Lr0/p;

    return-object v0
.end method

.method public w()Lr0/q;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->q:Lr0/q;

    return-object v0
.end method

.method y(Landroid/content/Context;Lf0/a$b;Ljava/lang/String;Ljava/util/List;Lio/flutter/plugin/platform/v;ZZ)Lio/flutter/embedding/engine/a;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lf0/a$b;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugin/platform/v;",
            "ZZ)",
            "Lio/flutter/embedding/engine/a;"
        }
    .end annotation

    move-object v0, p2

    invoke-direct {p0}, Lio/flutter/embedding/engine/a;->x()Z

    move-result v1

    if-eqz v1, :cond_25

    move-object v1, p0

    iget-object v2, v1, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v3, v0, Lf0/a$b;->c:Ljava/lang/String;

    iget-object v0, v0, Lf0/a$b;->b:Ljava/lang/String;

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-virtual {v2, v3, v0, p3, v5}, Lio/flutter/embedding/engine/FlutterJNI;->spawn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v7

    new-instance v0, Lio/flutter/embedding/engine/a;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p1

    move-object/from16 v8, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v4 .. v11}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;Lh0/d;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/v;[Ljava/lang/String;ZZ)V

    return-object v0

    :cond_25
    move-object v1, p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Spawn can only be called on a fully constructed FlutterEngine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
