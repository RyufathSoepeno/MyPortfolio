.class public Lio/flutter/embedding/android/i;
.super Landroidx/fragment/app/j;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/android/i0;
.implements Lio/flutter/embedding/android/g;
.implements Lio/flutter/embedding/android/f;


# static fields
.field public static final B:I


# instance fields
.field private A:Lio/flutter/embedding/android/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x245a3c5c

    invoke-static {v0}, Lz0/i;->e(I)I

    move-result v0

    sput v0, Lio/flutter/embedding/android/i;->B:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/j;-><init>()V

    return-void
.end method

.method private A0()V
    .registers 4

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->E0()Lio/flutter/embedding/android/e;

    move-result-object v0

    sget-object v1, Lio/flutter/embedding/android/e;->f:Lio/flutter/embedding/android/e;

    if-ne v0, v1, :cond_15

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_15
    return-void
.end method

.method private C0()Landroid/view/View;
    .registers 4

    invoke-virtual {p0, p0}, Lio/flutter/embedding/android/i;->I0(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v0

    sget v1, Lio/flutter/embedding/android/i;->B:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private D0()V
    .registers 5

    iget-object v0, p0, Lio/flutter/embedding/android/i;->A:Lio/flutter/embedding/android/h;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->J0()Lio/flutter/embedding/android/h;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/i;->A:Lio/flutter/embedding/android/h;

    :cond_a
    iget-object v0, p0, Lio/flutter/embedding/android/i;->A:Lio/flutter/embedding/android/h;

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->B0()Lio/flutter/embedding/android/h;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/i;->A:Lio/flutter/embedding/android/h;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->p0()Landroidx/fragment/app/x;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/x;->o()Landroidx/fragment/app/g0;

    move-result-object v0

    sget v1, Lio/flutter/embedding/android/i;->B:I

    iget-object v2, p0, Lio/flutter/embedding/android/i;->A:Lio/flutter/embedding/android/h;

    const-string v3, "flutter_fragment"

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/g0;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/g0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/g0;->f()I

    :cond_29
    return-void
.end method

.method private G0()Landroid/graphics/drawable/Drawable;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->F0()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_e

    const-string v2, "io.flutter.embedding.android.SplashScreenDrawable"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroidx/core/content/res/h;->d(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1d} :catch_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1d} :catch_1d

    :catch_1d
    :cond_1d
    return-object v0

    :catch_1e
    move-exception v0

    const-string v1, "FlutterFragmentActivity"

    const-string v2, "Splash screen not found. Ensure the drawable exists and that it\'s valid."

    invoke-static {v1, v2}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private H0()Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private K0()V
    .registers 5

    const-string v0, "FlutterFragmentActivity"

    :try_start_2
    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->F0()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_15

    const-string v2, "io.flutter.embedding.android.NormalTheme"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_20

    invoke-virtual {p0, v1}, Landroid/content/Context;->setTheme(I)V

    goto :goto_20

    :cond_15
    const-string v1, "Using the launch theme as normal theme."

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_20

    :catch_1b
    const-string v1, "Could not read meta-data for FlutterFragmentActivity. Using the launch theme as normal theme."

    invoke-static {v0, v1}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    :goto_20
    return-void
.end method

.method private z0()V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method protected B0()Lio/flutter/embedding/android/h;
    .registers 10

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->E0()Lio/flutter/embedding/android/e;

    move-result-object v0

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->L()Lio/flutter/embedding/android/f0;

    move-result-object v1

    sget-object v2, Lio/flutter/embedding/android/e;->e:Lio/flutter/embedding/android/e;

    if-ne v0, v2, :cond_f

    sget-object v2, Lio/flutter/embedding/android/j0;->e:Lio/flutter/embedding/android/j0;

    goto :goto_11

    :cond_f
    sget-object v2, Lio/flutter/embedding/android/j0;->f:Lio/flutter/embedding/android/j0;

    :goto_11
    sget-object v3, Lio/flutter/embedding/android/f0;->e:Lio/flutter/embedding/android/f0;

    if-ne v1, v3, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->t()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\nWill attach FlutterEngine to Activity: "

    const-string v6, "\nBackground transparency mode: "

    const-string v7, "FlutterFragmentActivity"

    if-eqz v4, :cond_8d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating FlutterFragment with cached engine:\nCached engine ID: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->t()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\nWill destroy engine when Activity is destroyed: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->r()Z

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->q()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/embedding/android/h;->l2(Ljava/lang/String;)Lio/flutter/embedding/android/h$c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/h$c;->e(Lio/flutter/embedding/android/f0;)Lio/flutter/embedding/android/h$c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/flutter/embedding/android/h$c;->h(Lio/flutter/embedding/android/j0;)Lio/flutter/embedding/android/h$c;

    move-result-object v0

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->D()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/h$c;->d(Ljava/lang/Boolean;)Lio/flutter/embedding/android/h$c;

    move-result-object v0

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/h$c;->f(Z)Lio/flutter/embedding/android/h$c;

    move-result-object v0

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/h$c;->c(Z)Lio/flutter/embedding/android/h$c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lio/flutter/embedding/android/h$c;->g(Z)Lio/flutter/embedding/android/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/android/h$c;->a()Lio/flutter/embedding/android/h;

    move-result-object v0

    return-object v0

    :cond_8d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating FlutterFragment with new engine:\nCached engine group ID: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->l()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nDart entrypoint: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nDart entrypoint library uri: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c0

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->w()Ljava/lang/String;

    move-result-object v0

    goto :goto_c2

    :cond_c0
    const-string v0, "\"\""

    :goto_c2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nInitial route: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nApp bundle path: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->q()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12d

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/embedding/android/h;->n2(Ljava/lang/String;)Lio/flutter/embedding/android/h$e;

    move-result-object v0

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/flutter/embedding/android/h$e;->c(Ljava/lang/String;)Lio/flutter/embedding/android/h$e;

    move-result-object v0

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/flutter/embedding/android/h$e;->e(Ljava/lang/String;)Lio/flutter/embedding/android/h$e;

    move-result-object v0

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->D()Z

    move-result v4

    invoke-virtual {v0, v4}, Lio/flutter/embedding/android/h$e;->d(Z)Lio/flutter/embedding/android/h$e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/h$e;->f(Lio/flutter/embedding/android/f0;)Lio/flutter/embedding/android/h$e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/flutter/embedding/android/h$e;->i(Lio/flutter/embedding/android/j0;)Lio/flutter/embedding/android/h$e;

    move-result-object v0

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/h$e;->g(Z)Lio/flutter/embedding/android/h$e;

    move-result-object v0

    invoke-virtual {v0, v3}, Lio/flutter/embedding/android/h$e;->h(Z)Lio/flutter/embedding/android/h$e;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/android/h$e;->a()Lio/flutter/embedding/android/h;

    move-result-object v0

    return-object v0

    :cond_12d
    invoke-static {}, Lio/flutter/embedding/android/h;->m2()Lio/flutter/embedding/android/h$d;

    move-result-object v0

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/flutter/embedding/android/h$d;->d(Ljava/lang/String;)Lio/flutter/embedding/android/h$d;

    move-result-object v0

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/flutter/embedding/android/h$d;->f(Ljava/lang/String;)Lio/flutter/embedding/android/h$d;

    move-result-object v0

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->p()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/flutter/embedding/android/h$d;->e(Ljava/util/List;)Lio/flutter/embedding/android/h$d;

    move-result-object v0

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/flutter/embedding/android/h$d;->i(Ljava/lang/String;)Lio/flutter/embedding/android/h$d;

    move-result-object v0

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/flutter/embedding/android/h$d;->a(Ljava/lang/String;)Lio/flutter/embedding/android/h$d;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lio/flutter/embedding/engine/g;->a(Landroid/content/Intent;)Lio/flutter/embedding/engine/g;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/flutter/embedding/android/h$d;->g(Lio/flutter/embedding/engine/g;)Lio/flutter/embedding/android/h$d;

    move-result-object v0

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->D()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/flutter/embedding/android/h$d;->h(Ljava/lang/Boolean;)Lio/flutter/embedding/android/h$d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/h$d;->j(Lio/flutter/embedding/android/f0;)Lio/flutter/embedding/android/h$d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/flutter/embedding/android/h$d;->m(Lio/flutter/embedding/android/j0;)Lio/flutter/embedding/android/h$d;

    move-result-object v0

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/h$d;->k(Z)Lio/flutter/embedding/android/h$d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lio/flutter/embedding/android/h$d;->l(Z)Lio/flutter/embedding/android/h$d;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/android/h$d;->b()Lio/flutter/embedding/android/h;

    move-result-object v0

    return-object v0
.end method

.method protected C()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/android/i;->H0()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.RUN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    return-object v0

    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method protected D()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->F0()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string v2, "flutter_deeplinking_enabled"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_d

    :catch_d
    :cond_d
    return v0
.end method

.method protected E0()Lio/flutter/embedding/android/e;
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "background_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/embedding/android/e;->valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/e;

    move-result-object v0

    return-object v0

    :cond_19
    sget-object v0, Lio/flutter/embedding/android/e;->e:Lio/flutter/embedding/android/e;

    return-object v0
.end method

.method protected F0()Landroid/os/Bundle;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method protected I0(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .registers 3

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method J0()Lio/flutter/embedding/android/h;
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/j;->p0()Landroidx/fragment/app/x;

    move-result-object v0

    const-string v1, "flutter_fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->j0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/android/h;

    return-object v0
.end method

.method protected L()Lio/flutter/embedding/android/f0;
    .registers 3

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->E0()Lio/flutter/embedding/android/e;

    move-result-object v0

    sget-object v1, Lio/flutter/embedding/android/e;->e:Lio/flutter/embedding/android/e;

    if-ne v0, v1, :cond_b

    sget-object v0, Lio/flutter/embedding/android/f0;->e:Lio/flutter/embedding/android/f0;

    goto :goto_d

    :cond_b
    sget-object v0, Lio/flutter/embedding/android/f0;->f:Lio/flutter/embedding/android/f0;

    :goto_d
    return-object v0
.end method

.method public c(Lio/flutter/embedding/engine/a;)V
    .registers 2

    return-void
.end method

.method public e()Lio/flutter/embedding/android/h0;
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/android/i;->G0()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Lio/flutter/embedding/android/b;

    invoke-direct {v1, v0}, Lio/flutter/embedding/android/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v1

    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public h(Landroid/content/Context;)Lio/flutter/embedding/engine/a;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public k(Lio/flutter/embedding/engine/a;)V
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/android/i;->A:Lio/flutter/embedding/android/h;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lio/flutter/embedding/android/h;->e2()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-static {p1}, Lp0/a;->a(Lio/flutter/embedding/engine/a;)V

    return-void
.end method

.method protected l()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cached_engine_group_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected m()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "route"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    :try_start_16
    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->F0()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_22

    const-string v2, "io.flutter.InitialRoute"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_22} :catch_22

    :catch_22
    :cond_22
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/j;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lio/flutter/embedding/android/i;->A:Lio/flutter/embedding/android/h;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/android/h;->H0(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/android/i;->A:Lio/flutter/embedding/android/h;

    invoke-virtual {v0}, Lio/flutter/embedding/android/h;->f2()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/android/i;->K0()V

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->J0()Lio/flutter/embedding/android/h;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/i;->A:Lio/flutter/embedding/android/h;

    invoke-super {p0, p1}, Landroidx/fragment/app/j;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/i;->A0()V

    invoke-direct {p0}, Lio/flutter/embedding/android/i;->C0()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/i;->z0()V

    invoke-direct {p0}, Lio/flutter/embedding/android/i;->D0()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/android/i;->A:Lio/flutter/embedding/android/h;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/h;->g2(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPostResume()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/j;->onPostResume()V

    iget-object v0, p0, Lio/flutter/embedding/android/i;->A:Lio/flutter/embedding/android/h;

    invoke-virtual {v0}, Lio/flutter/embedding/android/h;->h2()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/j;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    iget-object v0, p0, Lio/flutter/embedding/android/i;->A:Lio/flutter/embedding/android/h;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/android/h;->g1(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onTrimMemory(I)V

    iget-object v0, p0, Lio/flutter/embedding/android/i;->A:Lio/flutter/embedding/android/h;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/h;->onTrimMemory(I)V

    return-void
.end method

.method public onUserLeaveHint()V
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/android/i;->A:Lio/flutter/embedding/android/h;

    invoke-virtual {v0}, Lio/flutter/embedding/android/h;->i2()V

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

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dart_entrypoint_args"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method protected q()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public r()Z
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "destroy_engine_with_activity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected t()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cached_engine_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .registers 4

    const-string v0, "main"

    :try_start_2
    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->F0()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_f

    const-string v2, "io.flutter.Entrypoint"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_e} :catch_13

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_13

    move-object v0, v1

    :catch_13
    :cond_13
    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->F0()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string v2, "io.flutter.EntrypointUri"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_d

    :catch_d
    :cond_d
    return-object v0
.end method
