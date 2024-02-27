.class Lio/flutter/embedding/android/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/android/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/d$d;,
        Lio/flutter/embedding/android/d$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/flutter/embedding/android/c<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lio/flutter/embedding/android/d$d;

.field private b:Lio/flutter/embedding/engine/a;

.field c:Lio/flutter/embedding/android/u;

.field private d:Lio/flutter/plugin/platform/f;

.field e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/Integer;

.field private k:Lio/flutter/embedding/engine/d;

.field private final l:Lq0/b;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/d$d;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/android/d;-><init>(Lio/flutter/embedding/android/d$d;Lio/flutter/embedding/engine/d;)V

    return-void
.end method

.method constructor <init>(Lio/flutter/embedding/android/d$d;Lio/flutter/embedding/engine/d;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/flutter/embedding/android/d$a;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/d$a;-><init>(Lio/flutter/embedding/android/d;)V

    iput-object v0, p0, Lio/flutter/embedding/android/d;->l:Lq0/b;

    iput-object p1, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/flutter/embedding/android/d;->h:Z

    iput-object p2, p0, Lio/flutter/embedding/android/d;->k:Lio/flutter/embedding/engine/d;

    return-void
.end method

.method static synthetic a(Lio/flutter/embedding/android/d;)Lio/flutter/embedding/android/d$d;
    .registers 1

    iget-object p0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    return-object p0
.end method

.method static synthetic b(Lio/flutter/embedding/android/d;)Z
    .registers 1

    iget-boolean p0, p0, Lio/flutter/embedding/android/d;->g:Z

    return p0
.end method

.method static synthetic c(Lio/flutter/embedding/android/d;Z)Z
    .registers 2

    iput-boolean p1, p0, Lio/flutter/embedding/android/d;->g:Z

    return p1
.end method

.method static synthetic d(Lio/flutter/embedding/android/d;Z)Z
    .registers 2

    iput-boolean p1, p0, Lio/flutter/embedding/android/d;->h:Z

    return p1
.end method

.method private e(Lio/flutter/embedding/engine/d$b;)Lio/flutter/embedding/engine/d$b;
    .registers 5

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_e
    invoke-static {}, Le0/a;->e()Le0/a;

    move-result-object v0

    invoke-virtual {v0}, Le0/a;->c()Lh0/d;

    move-result-object v0

    invoke-virtual {v0}, Lh0/d;->f()Ljava/lang/String;

    move-result-object v0

    :cond_1a
    new-instance v1, Lf0/a$b;

    iget-object v2, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v2}, Lio/flutter/embedding/android/d$d;->v()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lf0/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->f()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/d;->o(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3f

    const-string v0, "/"

    :cond_3f
    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/d$b;->i(Lf0/a$b;)Lio/flutter/embedding/engine/d$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/d$b;->k(Ljava/lang/String;)Lio/flutter/embedding/engine/d$b;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->p()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/d$b;->j(Ljava/util/List;)Lio/flutter/embedding/engine/d$b;

    move-result-object p1

    return-object p1
.end method

.method private f(Lio/flutter/embedding/android/u;)V
    .registers 4

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->L()Lio/flutter/embedding/android/f0;

    move-result-object v0

    sget-object v1, Lio/flutter/embedding/android/f0;->e:Lio/flutter/embedding/android/f0;

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Lio/flutter/embedding/android/d;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/d;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_17
    new-instance v0, Lio/flutter/embedding/android/d$b;

    invoke-direct {v0, p0, p1}, Lio/flutter/embedding/android/d$b;-><init>(Lio/flutter/embedding/android/d;Lio/flutter/embedding/android/u;)V

    iput-object v0, p0, Lio/flutter/embedding/android/d;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/embedding/android/d;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot delay the first Android view draw when the render mode is not set to `RenderMode.surface`."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private i()V
    .registers 5

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->j()Lf0/a;

    move-result-object v0

    invoke-virtual {v0}, Lf0/a;->k()Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    :cond_16
    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->f()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/d;->o(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_30

    const-string v0, "/"

    :cond_30
    iget-object v1, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v1}, Lio/flutter/embedding/android/d$d;->w()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing Dart entrypoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v3}, Lio/flutter/embedding/android/d$d;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", library uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5a

    const-string v2, "\"\""

    goto :goto_6e

    :cond_5a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", and sending initial route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6e
    const-string v3, "FlutterActivityAndFragmentDelegate"

    invoke-static {v3, v2}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v2}, Lio/flutter/embedding/engine/a;->n()Lr0/i;

    move-result-object v2

    invoke-virtual {v2, v0}, Lr0/i;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_96

    :cond_8a
    invoke-static {}, Le0/a;->e()Le0/a;

    move-result-object v0

    invoke-virtual {v0}, Le0/a;->c()Lh0/d;

    move-result-object v0

    invoke-virtual {v0}, Lh0/d;->f()Ljava/lang/String;

    move-result-object v0

    :cond_96
    if-nez v1, :cond_a4

    new-instance v1, Lf0/a$b;

    iget-object v2, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v2}, Lio/flutter/embedding/android/d$d;->v()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lf0/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b0

    :cond_a4
    new-instance v2, Lf0/a$b;

    iget-object v3, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v3}, Lio/flutter/embedding/android/d$d;->v()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lf0/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :goto_b0
    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->j()Lf0/a;

    move-result-object v0

    iget-object v2, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v2}, Lio/flutter/embedding/android/d$d;->p()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lf0/a;->i(Lf0/a$b;Ljava/util/List;)V

    return-void
.end method

.method private j()V
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute method on a destroyed FlutterActivityAndFragmentDelegate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private o(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->D()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method A()V
    .registers 3

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/d;->j()V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->s()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->k()Lr0/f;

    move-result-object v0

    invoke-virtual {v0}, Lr0/f;->e()V

    :cond_1d
    return-void
.end method

.method B(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onSaveInstanceState. Giving framework and plugins an opportunity to save state."

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/d;->j()V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->u()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->s()Lr0/m;

    move-result-object v0

    invoke-virtual {v0}, Lr0/m;->h()[B

    move-result-object v0

    const-string v1, "framework"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_21
    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->q()Z

    move-result v0

    if-eqz v0, :cond_3c

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->i()Lk0/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lk0/b;->d(Landroid/os/Bundle;)V

    const-string v1, "plugins"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3c
    return-void
.end method

.method C()V
    .registers 3

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/d;->j()V

    invoke-direct {p0}, Lio/flutter/embedding/android/d;->i()V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lio/flutter/embedding/android/d;->c:Lio/flutter/embedding/android/u;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lio/flutter/embedding/android/u;->setVisibility(I)V

    :cond_1a
    return-void
.end method

.method D()V
    .registers 3

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/d;->j()V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->s()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->k()Lr0/f;

    move-result-object v0

    invoke-virtual {v0}, Lr0/f;->d()V

    :cond_1d
    iget-object v0, p0, Lio/flutter/embedding/android/d;->c:Lio/flutter/embedding/android/u;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/d;->j:Ljava/lang/Integer;

    iget-object v0, p0, Lio/flutter/embedding/android/d;->c:Lio/flutter/embedding/android/u;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/u;->setVisibility(I)V

    return-void
.end method

.method E(I)V
    .registers 4

    invoke-direct {p0}, Lio/flutter/embedding/android/d;->j()V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_2d

    iget-boolean v1, p0, Lio/flutter/embedding/android/d;->h:Z

    if-eqz v1, :cond_11

    const/16 v1, 0xa

    if-lt p1, v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->j()Lf0/a;

    move-result-object v0

    invoke-virtual {v0}, Lf0/a;->l()V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->v()Lr0/p;

    move-result-object v0

    invoke-virtual {v0}, Lr0/p;->a()V

    :cond_24
    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->r()Lq0/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lq0/a;->m(I)V

    :cond_2d
    return-void
.end method

.method F()V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/android/d;->j()V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_18

    const-string v0, "Forwarding onUserLeaveHint() to FlutterEngine."

    invoke-static {v1, v0}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Lk0/b;

    move-result-object v0

    invoke-interface {v0}, Lk0/b;->e()V

    goto :goto_1d

    :cond_18
    const-string v0, "onUserLeaveHint() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method

.method G(Z)V
    .registers 4

    invoke-direct {p0}, Lio/flutter/embedding/android/d;->j()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received onWindowFocusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_12

    const-string v1, "true"

    goto :goto_14

    :cond_12
    const-string v1, "false"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterActivityAndFragmentDelegate"

    invoke-static {v1, v0}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->s()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_3d

    if-eqz p1, :cond_36

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->k()Lr0/f;

    move-result-object p1

    invoke-virtual {p1}, Lr0/f;->a()V

    goto :goto_3d

    :cond_36
    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->k()Lr0/f;

    move-result-object p1

    invoke-virtual {p1}, Lr0/f;->f()V

    :cond_3d
    :goto_3d
    return-void
.end method

.method H()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    iput-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    iput-object v0, p0, Lio/flutter/embedding/android/d;->c:Lio/flutter/embedding/android/u;

    iput-object v0, p0, Lio/flutter/embedding/android/d;->d:Lio/flutter/plugin/platform/f;

    return-void
.end method

.method I()V
    .registers 6

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "Setting up FlutterEngine."

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v1}, Lio/flutter/embedding/android/d$d;->t()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    const/4 v3, 0x1

    if-eqz v1, :cond_3b

    invoke-static {}, Lio/flutter/embedding/engine/b;->b()Lio/flutter/embedding/engine/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/b;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/a;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    iput-boolean v3, p0, Lio/flutter/embedding/android/d;->f:Z

    if-eqz v0, :cond_21

    return-void

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The requested cached FlutterEngine did not exist in the FlutterEngineCache: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    iget-object v1, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v1}, Lio/flutter/embedding/android/d$d;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/flutter/embedding/android/d$d;->h(Landroid/content/Context;)Lio/flutter/embedding/engine/a;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    if-eqz v1, :cond_4c

    iput-boolean v3, p0, Lio/flutter/embedding/android/d;->f:Z

    return-void

    :cond_4c
    iget-object v1, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v1}, Lio/flutter/embedding/android/d$d;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_91

    invoke-static {}, Lio/flutter/embedding/engine/e;->b()Lio/flutter/embedding/engine/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/e;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/d;

    move-result-object v0

    if-eqz v0, :cond_77

    new-instance v1, Lio/flutter/embedding/engine/d$b;

    iget-object v2, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v2}, Lio/flutter/embedding/android/d$d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/flutter/embedding/engine/d$b;-><init>(Landroid/content/Context;)V

    :goto_6a
    invoke-direct {p0, v1}, Lio/flutter/embedding/android/d;->e(Lio/flutter/embedding/engine/d$b;)Lio/flutter/embedding/engine/d$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/d;->a(Lio/flutter/embedding/engine/d$b;)Lio/flutter/embedding/engine/a;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    iput-boolean v3, p0, Lio/flutter/embedding/android/d;->f:Z

    return-void

    :cond_77
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The requested cached FlutterEngineGroup did not exist in the FlutterEngineGroupCache: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_91
    const-string v1, "No preferred FlutterEngine was provided. Creating a new FlutterEngine for this FlutterFragment."

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->k:Lio/flutter/embedding/engine/d;

    if-nez v0, :cond_af

    new-instance v0, Lio/flutter/embedding/engine/d;

    iget-object v1, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v1}, Lio/flutter/embedding/android/d$d;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v2}, Lio/flutter/embedding/android/d$d;->J()Lio/flutter/embedding/engine/g;

    move-result-object v2

    invoke-virtual {v2}, Lio/flutter/embedding/engine/g;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/engine/d;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_af
    new-instance v1, Lio/flutter/embedding/engine/d$b;

    iget-object v2, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v2}, Lio/flutter/embedding/android/d$d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/flutter/embedding/engine/d$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lio/flutter/embedding/engine/d$b;->h(Z)Lio/flutter/embedding/engine/d$b;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v2}, Lio/flutter/embedding/android/d$d;->u()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/d$b;->l(Z)Lio/flutter/embedding/engine/d$b;

    move-result-object v1

    goto :goto_6a
.end method

.method J()V
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/android/d;->d:Lio/flutter/plugin/platform/f;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lio/flutter/plugin/platform/f;->C()V

    :cond_7
    return-void
.end method

.method public g()V
    .registers 4

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->r()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->g()V

    return-void

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The internal FlutterEngine created by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has been attached to by another activity. To persist a FlutterEngine beyond the ownership of this activity, explicitly create a FlutterEngine"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic h()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/flutter/embedding/android/d;->k()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public k()Landroid/app/Activity;
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->f()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlutterActivityAndFragmentDelegate\'s getAppComponent should only be queried after onAttach, when the host\'s activity should always be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method l()Lio/flutter/embedding/engine/a;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    return-object v0
.end method

.method m()Z
    .registers 2

    iget-boolean v0, p0, Lio/flutter/embedding/android/d;->i:Z

    return v0
.end method

.method n()Z
    .registers 2

    iget-boolean v0, p0, Lio/flutter/embedding/android/d;->f:Z

    return v0
.end method

.method p(IILandroid/content/Intent;)V
    .registers 7

    invoke-direct {p0}, Lio/flutter/embedding/android/d;->j()V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forwarding onActivityResult() to FlutterEngine:\nrequestCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nresultCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\ndata: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Lk0/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lk0/b;->a(IILandroid/content/Intent;)Z

    goto :goto_3c

    :cond_37
    const-string p1, "onActivityResult() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c
    return-void
.end method

.method q(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lio/flutter/embedding/android/d;->j()V

    iget-object p1, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lio/flutter/embedding/android/d;->I()V

    :cond_a
    iget-object p1, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {p1}, Lio/flutter/embedding/android/d$d;->q()Z

    move-result p1

    if-eqz p1, :cond_28

    const-string p1, "FlutterActivityAndFragmentDelegate"

    const-string v0, "Attaching FlutterEngine to the Activity that owns this delegate."

    invoke-static {p1, v0}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->i()Lk0/b;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->a()Landroidx/lifecycle/f;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lk0/b;->f(Lio/flutter/embedding/android/c;Landroidx/lifecycle/f;)V

    :cond_28
    iget-object p1, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {p1}, Lio/flutter/embedding/android/d$d;->f()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-interface {p1, v0, v1}, Lio/flutter/embedding/android/d$d;->y(Landroid/app/Activity;Lio/flutter/embedding/engine/a;)Lio/flutter/plugin/platform/f;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/embedding/android/d;->d:Lio/flutter/plugin/platform/f;

    iget-object p1, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-interface {p1, v0}, Lio/flutter/embedding/android/d$d;->k(Lio/flutter/embedding/engine/a;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/flutter/embedding/android/d;->i:Z

    return-void
.end method

.method r()V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/android/d;->j()V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_18

    const-string v0, "Forwarding onBackPressed() to FlutterEngine."

    invoke-static {v1, v0}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->n()Lr0/i;

    move-result-object v0

    invoke-virtual {v0}, Lr0/i;->a()V

    goto :goto_1d

    :cond_18
    const-string v0, "Invoked onBackPressed() before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method

.method s(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;IZ)Landroid/view/View;
    .registers 10

    const-string p1, "FlutterActivityAndFragmentDelegate"

    const-string p2, "Creating FlutterView."

    invoke-static {p1, p2}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/d;->j()V

    iget-object p2, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {p2}, Lio/flutter/embedding/android/d$d;->L()Lio/flutter/embedding/android/f0;

    move-result-object p2

    sget-object p3, Lio/flutter/embedding/android/f0;->e:Lio/flutter/embedding/android/f0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p3, :cond_3e

    new-instance p2, Lio/flutter/embedding/android/n;

    iget-object p3, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {p3}, Lio/flutter/embedding/android/d$d;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v2, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v2}, Lio/flutter/embedding/android/d$d;->S()Lio/flutter/embedding/android/j0;

    move-result-object v2

    sget-object v3, Lio/flutter/embedding/android/j0;->f:Lio/flutter/embedding/android/j0;

    if-ne v2, v3, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    invoke-direct {p2, p3, v0}, Lio/flutter/embedding/android/n;-><init>(Landroid/content/Context;Z)V

    iget-object p3, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {p3, p2}, Lio/flutter/embedding/android/d$d;->z(Lio/flutter/embedding/android/n;)V

    new-instance p3, Lio/flutter/embedding/android/u;

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p2}, Lio/flutter/embedding/android/u;-><init>(Landroid/content/Context;Lio/flutter/embedding/android/n;)V

    goto :goto_68

    :cond_3e
    new-instance p2, Lio/flutter/embedding/android/o;

    iget-object p3, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {p3}, Lio/flutter/embedding/android/d$d;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lio/flutter/embedding/android/o;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {p3}, Lio/flutter/embedding/android/d$d;->S()Lio/flutter/embedding/android/j0;

    move-result-object p3

    sget-object v2, Lio/flutter/embedding/android/j0;->e:Lio/flutter/embedding/android/j0;

    if-ne p3, v2, :cond_54

    goto :goto_55

    :cond_54
    const/4 v0, 0x0

    :goto_55
    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    iget-object p3, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {p3, p2}, Lio/flutter/embedding/android/d$d;->U(Lio/flutter/embedding/android/o;)V

    new-instance p3, Lio/flutter/embedding/android/u;

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p2}, Lio/flutter/embedding/android/u;-><init>(Landroid/content/Context;Lio/flutter/embedding/android/o;)V

    :goto_68
    iput-object p3, p0, Lio/flutter/embedding/android/d;->c:Lio/flutter/embedding/android/u;

    iget-object p2, p0, Lio/flutter/embedding/android/d;->c:Lio/flutter/embedding/android/u;

    iget-object p3, p0, Lio/flutter/embedding/android/d;->l:Lq0/b;

    invoke-virtual {p2, p3}, Lio/flutter/embedding/android/u;->m(Lq0/b;)V

    const-string p2, "Attaching FlutterEngine to FlutterView."

    invoke-static {p1, p2}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lio/flutter/embedding/android/d;->c:Lio/flutter/embedding/android/u;

    iget-object p3, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {p2, p3}, Lio/flutter/embedding/android/u;->o(Lio/flutter/embedding/engine/a;)V

    iget-object p2, p0, Lio/flutter/embedding/android/d;->c:Lio/flutter/embedding/android/u;

    invoke-virtual {p2, p4}, Landroid/view/View;->setId(I)V

    iget-object p2, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {p2}, Lio/flutter/embedding/android/d$d;->e()Lio/flutter/embedding/android/h0;

    move-result-object p2

    if-eqz p2, :cond_aa

    const-string p3, "A splash screen was provided to Flutter, but this is deprecated. See flutter.dev/go/android-splash-migration for migration steps."

    invoke-static {p1, p3}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lio/flutter/embedding/android/FlutterSplashView;

    iget-object p3, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {p3}, Lio/flutter/embedding/android/d$d;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lio/flutter/embedding/android/FlutterSplashView;-><init>(Landroid/content/Context;)V

    const p3, 0x1d063b02

    invoke-static {p3}, Lz0/i;->e(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    iget-object p3, p0, Lio/flutter/embedding/android/d;->c:Lio/flutter/embedding/android/u;

    invoke-virtual {p1, p3, p2}, Lio/flutter/embedding/android/FlutterSplashView;->g(Lio/flutter/embedding/android/u;Lio/flutter/embedding/android/h0;)V

    return-object p1

    :cond_aa
    if-eqz p5, :cond_b1

    iget-object p1, p0, Lio/flutter/embedding/android/d;->c:Lio/flutter/embedding/android/u;

    invoke-direct {p0, p1}, Lio/flutter/embedding/android/d;->f(Lio/flutter/embedding/android/u;)V

    :cond_b1
    iget-object p1, p0, Lio/flutter/embedding/android/d;->c:Lio/flutter/embedding/android/u;

    return-object p1
.end method

.method t()V
    .registers 3

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/d;->j()V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lio/flutter/embedding/android/d;->c:Lio/flutter/embedding/android/u;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/d;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/d;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_1c
    iget-object v0, p0, Lio/flutter/embedding/android/d;->c:Lio/flutter/embedding/android/u;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lio/flutter/embedding/android/u;->t()V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->c:Lio/flutter/embedding/android/u;

    iget-object v1, p0, Lio/flutter/embedding/android/d;->l:Lq0/b;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/u;->B(Lq0/b;)V

    :cond_2a
    return-void
.end method

.method u()V
    .registers 4

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onDetach()"

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/d;->j()V

    iget-object v1, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    iget-object v2, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-interface {v1, v2}, Lio/flutter/embedding/android/d$d;->c(Lio/flutter/embedding/engine/a;)V

    iget-object v1, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v1}, Lio/flutter/embedding/android/d$d;->q()Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string v1, "Detaching FlutterEngine from the Activity that owns this Fragment."

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->f()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Lk0/b;

    move-result-object v0

    invoke-interface {v0}, Lk0/b;->g()V

    goto :goto_3d

    :cond_34
    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Lk0/b;

    move-result-object v0

    invoke-interface {v0}, Lk0/b;->h()V

    :cond_3d
    :goto_3d
    iget-object v0, p0, Lio/flutter/embedding/android/d;->d:Lio/flutter/plugin/platform/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lio/flutter/plugin/platform/f;->p()V

    iput-object v1, p0, Lio/flutter/embedding/android/d;->d:Lio/flutter/plugin/platform/f;

    :cond_47
    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->s()Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->k()Lr0/f;

    move-result-object v0

    invoke-virtual {v0}, Lr0/f;->b()V

    :cond_5a
    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->r()Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->g()V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    invoke-static {}, Lio/flutter/embedding/engine/b;->b()Lio/flutter/embedding/engine/b;

    move-result-object v0

    iget-object v2, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v2}, Lio/flutter/embedding/android/d$d;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/flutter/embedding/engine/b;->d(Ljava/lang/String;)V

    :cond_7c
    iput-object v1, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    :cond_7e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/d;->i:Z

    return-void
.end method

.method v(Landroid/content/Intent;)V
    .registers 4

    invoke-direct {p0}, Lio/flutter/embedding/android/d;->j()V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_2d

    const-string v0, "Forwarding onNewIntent() to FlutterEngine and sending pushRouteInformation message."

    invoke-static {v1, v0}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Lk0/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lk0/b;->b(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lio/flutter/embedding/android/d;->o(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->n()Lr0/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr0/i;->b(Ljava/lang/String;)V

    goto :goto_32

    :cond_2d
    const-string p1, "onNewIntent() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    :goto_32
    return-void
.end method

.method w()V
    .registers 3

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/d;->j()V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->s()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->k()Lr0/f;

    move-result-object v0

    invoke-virtual {v0}, Lr0/f;->c()V

    :cond_1d
    return-void
.end method

.method x()V
    .registers 3

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onPostResume()"

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/d;->j()V

    iget-object v1, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lio/flutter/embedding/android/d;->J()V

    goto :goto_17

    :cond_12
    const-string v1, "onPostResume() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v0, v1}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    return-void
.end method

.method y(I[Ljava/lang/String;[I)V
    .registers 7

    invoke-direct {p0}, Lio/flutter/embedding/android/d;->j()V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forwarding onRequestPermissionsResult() to FlutterEngine:\nrequestCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\npermissions: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ngrantResults: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Lk0/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lk0/b;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    goto :goto_44

    :cond_3f
    const-string p1, "onRequestPermissionResult() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_44
    return-void
.end method

.method z(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onRestoreInstanceState. Giving framework and plugins an opportunity to restore state."

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/d;->j()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    const-string v0, "plugins"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "framework"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_1e

    :cond_1d
    move-object p1, v0

    :goto_1e
    iget-object v1, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v1}, Lio/flutter/embedding/android/d$d;->u()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->s()Lr0/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr0/m;->j([B)V

    :cond_2f
    iget-object v0, p0, Lio/flutter/embedding/android/d;->a:Lio/flutter/embedding/android/d$d;

    invoke-interface {v0}, Lio/flutter/embedding/android/d$d;->q()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lio/flutter/embedding/android/d;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Lk0/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lk0/b;->c(Landroid/os/Bundle;)V

    :cond_40
    return-void
.end method
