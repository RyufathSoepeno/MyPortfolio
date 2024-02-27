.class Lio/flutter/embedding/engine/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/b;
.implements Lk0/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/c$c;,
        Lio/flutter/embedding/engine/c$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lj0/a;",
            ">;",
            "Lj0/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/flutter/embedding/engine/a;

.field private final c:Lj0/a$b;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lj0/a;",
            ">;",
            "Lk0/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lio/flutter/embedding/android/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/flutter/embedding/android/c<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lio/flutter/embedding/engine/c$c;

.field private g:Z

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lj0/a;",
            ">;",
            "Lo0/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/app/Service;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lj0/a;",
            ">;",
            "Ll0/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/content/BroadcastReceiver;

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lj0/a;",
            ">;",
            "Lm0/a;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/content/ContentProvider;


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/a;Lh0/d;Lio/flutter/embedding/engine/d;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/c;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/c;->d:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/engine/c;->g:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/c;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/c;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/c;->l:Ljava/util/Map;

    iput-object p2, p0, Lio/flutter/embedding/engine/c;->b:Lio/flutter/embedding/engine/a;

    new-instance v0, Lj0/a$b;

    invoke-virtual {p2}, Lio/flutter/embedding/engine/a;->j()Lf0/a;

    move-result-object v4

    invoke-virtual {p2}, Lio/flutter/embedding/engine/a;->r()Lq0/a;

    move-result-object v5

    invoke-virtual {p2}, Lio/flutter/embedding/engine/a;->p()Lio/flutter/plugin/platform/v;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/plugin/platform/v;->X()Lio/flutter/plugin/platform/k;

    move-result-object v6

    new-instance v7, Lio/flutter/embedding/engine/c$b;

    const/4 v1, 0x0

    invoke-direct {v7, p3, v1}, Lio/flutter/embedding/engine/c$b;-><init>(Lh0/d;Lio/flutter/embedding/engine/c$a;)V

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lj0/a$b;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/a;Ls0/c;Lio/flutter/view/r;Lio/flutter/plugin/platform/k;Lj0/a$a;Lio/flutter/embedding/engine/d;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/c;->c:Lj0/a$b;

    return-void
.end method

.method private j(Landroid/app/Activity;Landroidx/lifecycle/f;)V
    .registers 6

    new-instance v0, Lio/flutter/embedding/engine/c$c;

    invoke-direct {v0, p1, p2}, Lio/flutter/embedding/engine/c$c;-><init>(Landroid/app/Activity;Landroidx/lifecycle/f;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_19

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v1, "enable-software-rendering"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_1a

    :cond_19
    const/4 p2, 0x0

    :goto_1a
    iget-object v1, p0, Lio/flutter/embedding/engine/c;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->p()Lio/flutter/plugin/platform/v;

    move-result-object v1

    invoke-virtual {v1, p2}, Lio/flutter/plugin/platform/v;->s0(Z)V

    iget-object p2, p0, Lio/flutter/embedding/engine/c;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {p2}, Lio/flutter/embedding/engine/a;->p()Lio/flutter/plugin/platform/v;

    move-result-object p2

    iget-object v1, p0, Lio/flutter/embedding/engine/c;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->r()Lq0/a;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/embedding/engine/c;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v2}, Lio/flutter/embedding/engine/a;->j()Lf0/a;

    move-result-object v2

    invoke-virtual {p2, p1, v1, v2}, Lio/flutter/plugin/platform/v;->D(Landroid/content/Context;Lio/flutter/view/r;Lf0/a;)V

    iget-object p1, p0, Lio/flutter/embedding/engine/c;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk0/a;

    iget-boolean v1, p0, Lio/flutter/embedding/engine/c;->g:Z

    if-eqz v1, :cond_58

    iget-object v1, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    invoke-interface {p2, v1}, Lk0/a;->a(Lk0/c;)V

    goto :goto_42

    :cond_58
    iget-object v1, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    invoke-interface {p2, v1}, Lk0/a;->k(Lk0/c;)V

    goto :goto_42

    :cond_5e
    iput-boolean v0, p0, Lio/flutter/embedding/engine/c;->g:Z

    return-void
.end method

.method private l()V
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/c;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->p()Lio/flutter/plugin/platform/v;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/v;->P()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/engine/c;->e:Lio/flutter/embedding/android/c;

    iput-object v0, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    return-void
.end method

.method private m()V
    .registers 2

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->r()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lio/flutter/embedding/engine/c;->h()V

    goto :goto_27

    :cond_a
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->u()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lio/flutter/embedding/engine/c;->p()V

    goto :goto_27

    :cond_14
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->s()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lio/flutter/embedding/engine/c;->n()V

    goto :goto_27

    :cond_1e
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->t()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lio/flutter/embedding/engine/c;->o()V

    :cond_27
    :goto_27
    return-void
.end method

.method private r()Z
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/c;->e:Lio/flutter/embedding/android/c;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private s()Z
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/c;->k:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private t()Z
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/c;->m:Landroid/content/ContentProvider;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private u()Z
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/c;->i:Landroid/app/Service;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)Z
    .registers 5

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->r()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "FlutterEngineConnectionRegistry#onActivityResult"

    invoke-static {v0}, Lz0/f;->a(Ljava/lang/String;)V

    :try_start_b
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/engine/c$c;->c(IILandroid/content/Intent;)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_15

    invoke-static {}, Lz0/f;->d()V

    return p1

    :catchall_15
    move-exception p1

    invoke-static {}, Lz0/f;->d()V

    throw p1

    :cond_1a
    const-string p1, "FlutterEngineCxnRegstry"

    const-string p2, "Attempted to notify ActivityAware plugins of onActivityResult, but no Activity was attached."

    invoke-static {p1, p2}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->r()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "FlutterEngineConnectionRegistry#onNewIntent"

    invoke-static {v0}, Lz0/f;->a(Ljava/lang/String;)V

    :try_start_b
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/c$c;->d(Landroid/content/Intent;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_14

    invoke-static {}, Lz0/f;->d()V

    goto :goto_20

    :catchall_14
    move-exception p1

    invoke-static {}, Lz0/f;->d()V

    throw p1

    :cond_19
    const-string p1, "FlutterEngineCxnRegstry"

    const-string v0, "Attempted to notify ActivityAware plugins of onNewIntent, but no Activity was attached."

    invoke-static {p1, v0}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->r()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "FlutterEngineConnectionRegistry#onRestoreInstanceState"

    invoke-static {v0}, Lz0/f;->a(Ljava/lang/String;)V

    :try_start_b
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/c$c;->g(Landroid/os/Bundle;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_14

    invoke-static {}, Lz0/f;->d()V

    goto :goto_20

    :catchall_14
    move-exception p1

    invoke-static {}, Lz0/f;->d()V

    throw p1

    :cond_19
    const-string p1, "FlutterEngineCxnRegstry"

    const-string v0, "Attempted to notify ActivityAware plugins of onRestoreInstanceState, but no Activity was attached."

    invoke-static {p1, v0}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->r()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "FlutterEngineConnectionRegistry#onSaveInstanceState"

    invoke-static {v0}, Lz0/f;->a(Ljava/lang/String;)V

    :try_start_b
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/c$c;->h(Landroid/os/Bundle;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_14

    invoke-static {}, Lz0/f;->d()V

    goto :goto_20

    :catchall_14
    move-exception p1

    invoke-static {}, Lz0/f;->d()V

    throw p1

    :cond_19
    const-string p1, "FlutterEngineCxnRegstry"

    const-string v0, "Attempted to notify ActivityAware plugins of onSaveInstanceState, but no Activity was attached."

    invoke-static {p1, v0}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    return-void
.end method

.method public e()V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->r()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "FlutterEngineConnectionRegistry#onUserLeaveHint"

    invoke-static {v0}, Lz0/f;->a(Ljava/lang/String;)V

    :try_start_b
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/c$c;->i()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_14

    invoke-static {}, Lz0/f;->d()V

    goto :goto_20

    :catchall_14
    move-exception v0

    invoke-static {}, Lz0/f;->d()V

    throw v0

    :cond_19
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to notify ActivityAware plugins of onUserLeaveHint, but no Activity was attached."

    invoke-static {v0, v1}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    return-void
.end method

.method public f(Lio/flutter/embedding/android/c;Landroidx/lifecycle/f;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/embedding/android/c<",
            "Landroid/app/Activity;",
            ">;",
            "Landroidx/lifecycle/f;",
            ")V"
        }
    .end annotation

    const-string v0, "FlutterEngineConnectionRegistry#attachToActivity"

    invoke-static {v0}, Lz0/f;->a(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->e:Lio/flutter/embedding/android/c;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lio/flutter/embedding/android/c;->g()V

    :cond_c
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->m()V

    iput-object p1, p0, Lio/flutter/embedding/engine/c;->e:Lio/flutter/embedding/android/c;

    invoke-interface {p1}, Lio/flutter/embedding/android/c;->h()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/c;->j(Landroid/app/Activity;Landroidx/lifecycle/f;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lz0/f;->d()V

    return-void

    :catchall_1e
    move-exception p1

    invoke-static {}, Lz0/f;->d()V

    throw p1
.end method

.method public g()V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->r()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "FlutterEngineConnectionRegistry#detachFromActivityForConfigChanges"

    invoke-static {v0}, Lz0/f;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Lio/flutter/embedding/engine/c;->g:Z

    iget-object v0, p0, Lio/flutter/embedding/engine/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk0/a;

    invoke-interface {v1}, Lk0/a;->h()V

    goto :goto_18

    :cond_28
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->l()V
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_2f

    invoke-static {}, Lz0/f;->d()V

    goto :goto_3b

    :catchall_2f
    move-exception v0

    invoke-static {}, Lz0/f;->d()V

    throw v0

    :cond_34
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to detach plugins from an Activity when no Activity was attached."

    invoke-static {v0, v1}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3b
    return-void
.end method

.method public h()V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->r()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "FlutterEngineConnectionRegistry#detachFromActivity"

    invoke-static {v0}, Lz0/f;->a(Ljava/lang/String;)V

    :try_start_b
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk0/a;

    invoke-interface {v1}, Lk0/a;->b()V

    goto :goto_15

    :cond_25
    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->l()V
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_2c

    invoke-static {}, Lz0/f;->d()V

    goto :goto_38

    :catchall_2c
    move-exception v0

    invoke-static {}, Lz0/f;->d()V

    throw v0

    :cond_31
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to detach plugins from an Activity when no Activity was attached."

    invoke-static {v0, v1}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    return-void
.end method

.method public i(Lj0/a;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlutterEngineConnectionRegistry#add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz0/f;->a(Ljava/lang/String;)V

    :try_start_1c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/c;->q(Ljava/lang/Class;)Z

    move-result v0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_dc

    const-string v1, "FlutterEngineCxnRegstry"

    if-eqz v0, :cond_4f

    :try_start_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to register plugin ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") but it was already registered with this FlutterEngine ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/flutter/embedding/engine/c;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_28 .. :try_end_4b} :catchall_dc

    invoke-static {}, Lz0/f;->d()V

    return-void

    :cond_4f
    :try_start_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding plugin: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/c;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/flutter/embedding/engine/c;->c:Lj0/a$b;

    invoke-interface {p1, v0}, Lj0/a;->f(Lj0/a$b;)V

    instance-of v0, p1, Lk0/a;

    if-eqz v0, :cond_8c

    move-object v0, p1

    check-cast v0, Lk0/a;

    iget-object v1, p0, Lio/flutter/embedding/engine/c;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->r()Z

    move-result v1

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    invoke-interface {v0, v1}, Lk0/a;->k(Lk0/c;)V

    :cond_8c
    instance-of v0, p1, Lo0/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_a6

    move-object v0, p1

    check-cast v0, Lo0/a;

    iget-object v2, p0, Lio/flutter/embedding/engine/c;->h:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->u()Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-interface {v0, v1}, Lo0/a;->a(Lo0/b;)V

    :cond_a6
    instance-of v0, p1, Ll0/a;

    if-eqz v0, :cond_bf

    move-object v0, p1

    check-cast v0, Ll0/a;

    iget-object v2, p0, Lio/flutter/embedding/engine/c;->j:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->s()Z

    move-result v2

    if-eqz v2, :cond_bf

    invoke-interface {v0, v1}, Ll0/a;->a(Ll0/b;)V

    :cond_bf
    instance-of v0, p1, Lm0/a;

    if-eqz v0, :cond_d8

    move-object v0, p1

    check-cast v0, Lm0/a;

    iget-object v2, p0, Lio/flutter/embedding/engine/c;->l:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->t()Z

    move-result p1

    if-eqz p1, :cond_d8

    invoke-interface {v0, v1}, Lm0/a;->b(Lm0/b;)V
    :try_end_d8
    .catchall {:try_start_4f .. :try_end_d8} :catchall_dc

    :cond_d8
    invoke-static {}, Lz0/f;->d()V

    return-void

    :catchall_dc
    move-exception p1

    invoke-static {}, Lz0/f;->d()V

    throw p1
.end method

.method public k()V
    .registers 3

    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Destroying."

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->m()V

    invoke-virtual {p0}, Lio/flutter/embedding/engine/c;->x()V

    return-void
.end method

.method public n()V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->s()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "FlutterEngineConnectionRegistry#detachFromBroadcastReceiver"

    invoke-static {v0}, Lz0/f;->a(Ljava/lang/String;)V

    :try_start_b
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll0/a;

    invoke-interface {v1}, Ll0/a;->b()V
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_29

    goto :goto_15

    :cond_25
    invoke-static {}, Lz0/f;->d()V

    goto :goto_35

    :catchall_29
    move-exception v0

    invoke-static {}, Lz0/f;->d()V

    throw v0

    :cond_2e
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to detach plugins from a BroadcastReceiver when no BroadcastReceiver was attached."

    invoke-static {v0, v1}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    return-void
.end method

.method public o()V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->t()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "FlutterEngineConnectionRegistry#detachFromContentProvider"

    invoke-static {v0}, Lz0/f;->a(Ljava/lang/String;)V

    :try_start_b
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm0/a;

    invoke-interface {v1}, Lm0/a;->a()V
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_29

    goto :goto_15

    :cond_25
    invoke-static {}, Lz0/f;->d()V

    goto :goto_35

    :catchall_29
    move-exception v0

    invoke-static {}, Lz0/f;->d()V

    throw v0

    :cond_2e
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to detach plugins from a ContentProvider when no ContentProvider was attached."

    invoke-static {v0, v1}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .registers 5

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->r()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "FlutterEngineConnectionRegistry#onRequestPermissionsResult"

    invoke-static {v0}, Lz0/f;->a(Ljava/lang/String;)V

    :try_start_b
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->f:Lio/flutter/embedding/engine/c$c;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/engine/c$c;->e(I[Ljava/lang/String;[I)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_15

    invoke-static {}, Lz0/f;->d()V

    return p1

    :catchall_15
    move-exception p1

    invoke-static {}, Lz0/f;->d()V

    throw p1

    :cond_1a
    const-string p1, "FlutterEngineCxnRegstry"

    const-string p2, "Attempted to notify ActivityAware plugins of onRequestPermissionsResult, but no Activity was attached."

    invoke-static {p1, p2}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public p()V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->u()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "FlutterEngineConnectionRegistry#detachFromService"

    invoke-static {v0}, Lz0/f;->a(Ljava/lang/String;)V

    :try_start_b
    iget-object v0, p0, Lio/flutter/embedding/engine/c;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/a;

    invoke-interface {v1}, Lo0/a;->b()V

    goto :goto_15

    :cond_25
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/engine/c;->i:Landroid/app/Service;
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_2c

    invoke-static {}, Lz0/f;->d()V

    goto :goto_38

    :catchall_2c
    move-exception v0

    invoke-static {}, Lz0/f;->d()V

    throw v0

    :cond_31
    const-string v0, "FlutterEngineCxnRegstry"

    const-string v1, "Attempted to detach plugins from a Service when no Service was attached."

    invoke-static {v0, v1}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    return-void
.end method

.method public q(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lj0/a;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lio/flutter/embedding/engine/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public v(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lj0/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/flutter/embedding/engine/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj0/a;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FlutterEngineConnectionRegistry#remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lz0/f;->a(Ljava/lang/String;)V

    :try_start_23
    instance-of v1, v0, Lk0/a;

    if-eqz v1, :cond_38

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->r()Z

    move-result v1

    if-eqz v1, :cond_33

    move-object v1, v0

    check-cast v1, Lk0/a;

    invoke-interface {v1}, Lk0/a;->b()V

    :cond_33
    iget-object v1, p0, Lio/flutter/embedding/engine/c;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    instance-of v1, v0, Lo0/a;

    if-eqz v1, :cond_4d

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->u()Z

    move-result v1

    if-eqz v1, :cond_48

    move-object v1, v0

    check-cast v1, Lo0/a;

    invoke-interface {v1}, Lo0/a;->b()V

    :cond_48
    iget-object v1, p0, Lio/flutter/embedding/engine/c;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    instance-of v1, v0, Ll0/a;

    if-eqz v1, :cond_62

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->s()Z

    move-result v1

    if-eqz v1, :cond_5d

    move-object v1, v0

    check-cast v1, Ll0/a;

    invoke-interface {v1}, Ll0/a;->b()V

    :cond_5d
    iget-object v1, p0, Lio/flutter/embedding/engine/c;->j:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62
    instance-of v1, v0, Lm0/a;

    if-eqz v1, :cond_77

    invoke-direct {p0}, Lio/flutter/embedding/engine/c;->t()Z

    move-result v1

    if-eqz v1, :cond_72

    move-object v1, v0

    check-cast v1, Lm0/a;

    invoke-interface {v1}, Lm0/a;->a()V

    :cond_72
    iget-object v1, p0, Lio/flutter/embedding/engine/c;->l:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_77
    iget-object v1, p0, Lio/flutter/embedding/engine/c;->c:Lj0/a$b;

    invoke-interface {v0, v1}, Lj0/a;->i(Lj0/a$b;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_81
    .catchall {:try_start_23 .. :try_end_81} :catchall_85

    invoke-static {}, Lz0/f;->d()V

    return-void

    :catchall_85
    move-exception p1

    invoke-static {}, Lz0/f;->d()V

    throw p1
.end method

.method public w(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lj0/a;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/c;->v(Ljava/lang/Class;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public x()V
    .registers 3

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lio/flutter/embedding/engine/c;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/c;->w(Ljava/util/Set;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
