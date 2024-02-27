.class public Lio/flutter/embedding/android/h;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/android/d$d;
.implements Landroid/content/ComponentCallbacks2;
.implements Lio/flutter/embedding/android/d$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/h$e;,
        Lio/flutter/embedding/android/h$c;,
        Lio/flutter/embedding/android/h$d;
    }
.end annotation


# static fields
.field public static final k0:I


# instance fields
.field private final g0:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

.field h0:Lio/flutter/embedding/android/d;

.field private i0:Lio/flutter/embedding/android/d$c;

.field private final j0:Landroidx/activity/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0xf1f2

    invoke-static {v0}, Lz0/i;->e(I)I

    move-result v0

    sput v0, Lio/flutter/embedding/android/h;->k0:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lio/flutter/embedding/android/h$a;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/h$a;-><init>(Lio/flutter/embedding/android/h;)V

    iput-object v0, p0, Lio/flutter/embedding/android/h;->g0:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    iput-object p0, p0, Lio/flutter/embedding/android/h;->i0:Lio/flutter/embedding/android/d$c;

    new-instance v0, Lio/flutter/embedding/android/h$b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lio/flutter/embedding/android/h$b;-><init>(Lio/flutter/embedding/android/h;Z)V

    iput-object v0, p0, Lio/flutter/embedding/android/h;->j0:Landroidx/activity/g;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->T1(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic c2(Lio/flutter/embedding/android/h;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/embedding/android/h;->k2(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private k2(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    const/4 v1, 0x0

    const-string v2, " "

    const-string v3, "FlutterFragment "

    const-string v4, "FlutterFragment"

    if-nez v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " called after release."

    :goto_22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2d
    invoke-virtual {v0}, Lio/flutter/embedding/android/d;->m()Z

    move-result v0

    if-nez v0, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " called after detach."

    goto :goto_22

    :cond_4b
    const/4 p1, 0x1

    return p1
.end method

.method public static l2(Ljava/lang/String;)Lio/flutter/embedding/android/h$c;
    .registers 3

    new-instance v0, Lio/flutter/embedding/android/h$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/flutter/embedding/android/h$c;-><init>(Ljava/lang/String;Lio/flutter/embedding/android/h$a;)V

    return-object v0
.end method

.method public static m2()Lio/flutter/embedding/android/h$d;
    .registers 1

    new-instance v0, Lio/flutter/embedding/android/h$d;

    invoke-direct {v0}, Lio/flutter/embedding/android/h$d;-><init>()V

    return-object v0
.end method

.method public static n2(Ljava/lang/String;)Lio/flutter/embedding/android/h$e;
    .registers 2

    new-instance v0, Lio/flutter/embedding/android/h$e;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/h$e;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "app_bundle_path"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public D()Z
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "handle_deeplinking"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public H0(IILandroid/content/Intent;)V
    .registers 5

    const-string v0, "onActivityResult"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/h;->k2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/android/d;->p(IILandroid/content/Intent;)V

    :cond_d
    return-void
.end method

.method public J()Lio/flutter/embedding/engine/g;
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "initialization_args"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/flutter/embedding/engine/g;

    if-eqz v0, :cond_f

    goto :goto_12

    :cond_f
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_12
    invoke-direct {v1, v0}, Lio/flutter/embedding/engine/g;-><init>([Ljava/lang/String;)V

    return-object v1
.end method

.method public J0(Landroid/content/Context;)V
    .registers 5

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->J0(Landroid/content/Context;)V

    iget-object v0, p0, Lio/flutter/embedding/android/h;->i0:Lio/flutter/embedding/android/d$c;

    invoke-interface {v0, p0}, Lio/flutter/embedding/android/d$c;->x(Lio/flutter/embedding/android/d$d;)Lio/flutter/embedding/android/d;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/d;->q(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "should_automatically_handle_on_back_pressed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->M1()Landroidx/fragment/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->n()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/h;->j0:Landroidx/activity/g;

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/lifecycle/i;Landroidx/activity/g;)V

    :cond_28
    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public L()Lio/flutter/embedding/android/f0;
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lio/flutter/embedding/android/f0;->e:Lio/flutter/embedding/android/f0;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flutterview_render_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/embedding/android/f0;->valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/f0;

    move-result-object v0

    return-object v0
.end method

.method public M0(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->M0(Landroid/os/Bundle;)V

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/d;->z(Landroid/os/Bundle;)V

    return-void
.end method

.method public Q0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    sget v4, Lio/flutter/embedding/android/h;->k0:I

    invoke-virtual {p0}, Lio/flutter/embedding/android/h;->j2()Z

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/flutter/embedding/android/d;->s(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public S()Lio/flutter/embedding/android/j0;
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lio/flutter/embedding/android/j0;->f:Lio/flutter/embedding/android/j0;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flutterview_transparency_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/embedding/android/j0;->valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/j0;

    move-result-object v0

    return-object v0
.end method

.method public T0()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->T0()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->O1()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/h;->g0:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    const-string v0, "onDestroyView"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/h;->k2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v0}, Lio/flutter/embedding/android/d;->t()V

    :cond_1d
    return-void
.end method

.method public U(Lio/flutter/embedding/android/o;)V
    .registers 2

    return-void
.end method

.method public U0()V
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->U0()V

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lio/flutter/embedding/android/d;->u()V

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v0}, Lio/flutter/embedding/android/d;->H()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    goto :goto_35

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlutterFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onDetach called after release."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterFragment"

    invoke-static {v1, v0}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    return-void
.end method

.method public b()Z
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "should_automatically_handle_on_back_pressed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroidx/fragment/app/j;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v1, p0, Lio/flutter/embedding/android/h;->j0:Landroidx/activity/g;

    invoke-virtual {v1, v2}, Landroidx/activity/g;->f(Z)V

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->n()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->c()V

    iget-object v0, p0, Lio/flutter/embedding/android/h;->j0:Landroidx/activity/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/activity/g;->f(Z)V

    return v1

    :cond_26
    return v2
.end method

.method public c(Lio/flutter/embedding/engine/a;)V
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroidx/fragment/app/j;

    move-result-object v0

    instance-of v1, v0, Lio/flutter/embedding/android/f;

    if-eqz v1, :cond_d

    check-cast v0, Lio/flutter/embedding/android/f;

    invoke-interface {v0, p1}, Lio/flutter/embedding/android/f;->c(Lio/flutter/embedding/engine/a;)V

    :cond_d
    return-void
.end method

.method public c1()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->c1()V

    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/h;->k2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v0}, Lio/flutter/embedding/android/d;->w()V

    :cond_10
    return-void
.end method

.method public d()V
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroidx/fragment/app/j;

    move-result-object v0

    instance-of v1, v0, Lq0/b;

    if-eqz v1, :cond_d

    check-cast v0, Lq0/b;

    invoke-interface {v0}, Lq0/b;->d()V

    :cond_d
    return-void
.end method

.method public d2()Lio/flutter/embedding/engine/a;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v0}, Lio/flutter/embedding/android/d;->l()Lio/flutter/embedding/engine/a;

    move-result-object v0

    return-object v0
.end method

.method public e()Lio/flutter/embedding/android/h0;
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroidx/fragment/app/j;

    move-result-object v0

    instance-of v1, v0, Lio/flutter/embedding/android/i0;

    if-eqz v1, :cond_f

    check-cast v0, Lio/flutter/embedding/android/i0;

    invoke-interface {v0}, Lio/flutter/embedding/android/i0;->e()Lio/flutter/embedding/android/h0;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method e2()Z
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v0}, Lio/flutter/embedding/android/d;->n()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Landroid/app/Activity;
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->K()Landroidx/fragment/app/j;

    move-result-object v0

    return-object v0
.end method

.method public f2()V
    .registers 2

    const-string v0, "onBackPressed"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/h;->k2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v0}, Lio/flutter/embedding/android/d;->r()V

    :cond_d
    return-void
.end method

.method public g()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlutterFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " connection to the engine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/flutter/embedding/android/h;->d2()Lio/flutter/embedding/engine/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " evicted by another attaching activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterFragment"

    invoke-static {v1, v0}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lio/flutter/embedding/android/d;->t()V

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v0}, Lio/flutter/embedding/android/d;->u()V

    :cond_33
    return-void
.end method

.method public g1(I[Ljava/lang/String;[I)V
    .registers 5

    const-string v0, "onRequestPermissionsResult"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/h;->k2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/android/d;->y(I[Ljava/lang/String;[I)V

    :cond_d
    return-void
.end method

.method public g2(Landroid/content/Intent;)V
    .registers 3

    const-string v0, "onNewIntent"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/h;->k2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/d;->v(Landroid/content/Intent;)V

    :cond_d
    return-void
.end method

.method public h(Landroid/content/Context;)Lio/flutter/embedding/engine/a;
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroidx/fragment/app/j;

    move-result-object p1

    instance-of v0, p1, Lio/flutter/embedding/android/g;

    if-eqz v0, :cond_1a

    const-string v0, "FlutterFragment"

    const-string v1, "Deferring to attached Activity to provide a FlutterEngine."

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lio/flutter/embedding/android/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/embedding/android/g;->h(Landroid/content/Context;)Lio/flutter/embedding/engine/a;

    move-result-object p1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return-object p1
.end method

.method public h1()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->h1()V

    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/h;->k2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v0}, Lio/flutter/embedding/android/d;->A()V

    :cond_10
    return-void
.end method

.method public h2()V
    .registers 2

    const-string v0, "onPostResume"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/h;->k2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v0}, Lio/flutter/embedding/android/d;->x()V

    :cond_d
    return-void
.end method

.method public i()V
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroidx/fragment/app/j;

    move-result-object v0

    instance-of v1, v0, Lq0/b;

    if-eqz v1, :cond_d

    check-cast v0, Lq0/b;

    invoke-interface {v0}, Lq0/b;->i()V

    :cond_d
    return-void
.end method

.method public i1(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->i1(Landroid/os/Bundle;)V

    const-string v0, "onSaveInstanceState"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/h;->k2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/d;->B(Landroid/os/Bundle;)V

    :cond_10
    return-void
.end method

.method public i2()V
    .registers 2

    const-string v0, "onUserLeaveHint"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/h;->k2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v0}, Lio/flutter/embedding/android/d;->F()V

    :cond_d
    return-void
.end method

.method public synthetic j(Z)V
    .registers 2

    invoke-static {p0, p1}, Lio/flutter/plugin/platform/h;->a(Lio/flutter/plugin/platform/f$d;Z)V

    return-void
.end method

.method public j1()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->j1()V

    const-string v0, "onStart"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/h;->k2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v0}, Lio/flutter/embedding/android/d;->C()V

    :cond_10
    return-void
.end method

.method j2()Z
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "should_delay_first_android_view_draw"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public k(Lio/flutter/embedding/engine/a;)V
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroidx/fragment/app/j;

    move-result-object v0

    instance-of v1, v0, Lio/flutter/embedding/android/f;

    if-eqz v1, :cond_d

    check-cast v0, Lio/flutter/embedding/android/f;

    invoke-interface {v0, p1}, Lio/flutter/embedding/android/f;->k(Lio/flutter/embedding/engine/a;)V

    :cond_d
    return-void
.end method

.method public k1()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->k1()V

    const-string v0, "onStop"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/h;->k2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v0}, Lio/flutter/embedding/android/d;->D()V

    :cond_10
    return-void
.end method

.method public l()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cached_engine_group_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l1(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->l1(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lio/flutter/embedding/android/h;->g0:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method public m()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "initial_route"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTrimMemory(I)V
    .registers 3

    const-string v0, "onTrimMemory"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/h;->k2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/d;->E(I)V

    :cond_d
    return-void
.end method

.method public p()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dart_entrypoint_args"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "should_attach_engine_to_activity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public r()Z
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "destroy_engine_with_fragment"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lio/flutter/embedding/android/h;->t()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_23

    iget-object v2, p0, Lio/flutter/embedding/android/h;->h0:Lio/flutter/embedding/android/d;

    invoke-virtual {v2}, Lio/flutter/embedding/android/d;->n()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_23

    :cond_1a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_23
    :goto_23
    return v0
.end method

.method public s()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public t()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cached_engine_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "enable_state_restoration"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_15
    invoke-virtual {p0}, Lio/flutter/embedding/android/h;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    return v0

    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public v()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dart_entrypoint"

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dart_entrypoint_uri"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x(Lio/flutter/embedding/android/d$d;)Lio/flutter/embedding/android/d;
    .registers 3

    new-instance v0, Lio/flutter/embedding/android/d;

    invoke-direct {v0, p1}, Lio/flutter/embedding/android/d;-><init>(Lio/flutter/embedding/android/d$d;)V

    return-object v0
.end method

.method public y(Landroid/app/Activity;Lio/flutter/embedding/engine/a;)Lio/flutter/plugin/platform/f;
    .registers 4

    if-eqz p1, :cond_10

    new-instance p1, Lio/flutter/plugin/platform/f;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroidx/fragment/app/j;

    move-result-object v0

    invoke-virtual {p2}, Lio/flutter/embedding/engine/a;->o()Lr0/j;

    move-result-object p2

    invoke-direct {p1, v0, p2, p0}, Lio/flutter/plugin/platform/f;-><init>(Landroid/app/Activity;Lr0/j;Lio/flutter/plugin/platform/f$d;)V

    return-object p1

    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method public z(Lio/flutter/embedding/android/n;)V
    .registers 2

    return-void
.end method
