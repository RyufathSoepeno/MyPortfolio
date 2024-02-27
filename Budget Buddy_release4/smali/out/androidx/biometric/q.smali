.class public Landroidx/biometric/q;
.super Landroidx/fragment/app/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/q$e;,
        Landroidx/biometric/q$f;
    }
.end annotation


# instance fields
.field private A0:I

.field private B0:Landroid/widget/ImageView;

.field C0:Landroid/widget/TextView;

.field final w0:Landroid/os/Handler;

.field final x0:Ljava/lang/Runnable;

.field y0:Landroidx/biometric/k;

.field private z0:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroidx/fragment/app/e;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/biometric/q;->w0:Landroid/os/Handler;

    new-instance v0, Landroidx/biometric/q$a;

    invoke-direct {v0, p0}, Landroidx/biometric/q$a;-><init>(Landroidx/biometric/q;)V

    iput-object v0, p0, Landroidx/biometric/q;->x0:Ljava/lang/Runnable;

    return-void
.end method

.method private o2()V
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroidx/fragment/app/j;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v1, Landroidx/lifecycle/a0;

    invoke-direct {v1, v0}, Landroidx/lifecycle/a0;-><init>(Landroidx/lifecycle/e0;)V

    const-class v0, Landroidx/biometric/k;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/a0;->a(Ljava/lang/Class;)Landroidx/lifecycle/z;

    move-result-object v0

    check-cast v0, Landroidx/biometric/k;

    iput-object v0, p0, Landroidx/biometric/q;->y0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->s()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Landroidx/biometric/q$c;

    invoke-direct {v1, p0}, Landroidx/biometric/q$c;-><init>(Landroidx/biometric/q;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/i;Landroidx/lifecycle/o;)V

    iget-object v0, p0, Landroidx/biometric/q;->y0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->q()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Landroidx/biometric/q$d;

    invoke-direct {v1, p0}, Landroidx/biometric/q$d;-><init>(Landroidx/biometric/q;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/i;Landroidx/lifecycle/o;)V

    return-void
.end method

.method private p2(II)Landroid/graphics/drawable/Drawable;
    .registers 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string p1, "FingerprintFragment"

    const-string p2, "Unable to get asset. Context is null."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_f
    const/4 v2, 0x1

    if-nez p1, :cond_17

    if-ne p2, v2, :cond_17

    :goto_14
    sget p1, Landroidx/biometric/x;->b:I

    goto :goto_2a

    :cond_17
    const/4 v3, 0x2

    if-ne p1, v2, :cond_1f

    if-ne p2, v3, :cond_1f

    sget p1, Landroidx/biometric/x;->a:I

    goto :goto_2a

    :cond_1f
    if-ne p1, v3, :cond_24

    if-ne p2, v2, :cond_24

    goto :goto_14

    :cond_24
    if-ne p1, v2, :cond_2f

    const/4 p1, 0x3

    if-ne p2, p1, :cond_2f

    goto :goto_14

    :goto_2a
    invoke-static {v0, p1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_2f
    return-object v1
.end method

.method private q2(I)I
    .registers 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroidx/fragment/app/j;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2d

    if-nez v1, :cond_e

    goto :goto_2d

    :cond_e
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v3, Landroid/util/TypedValue;->data:I

    new-array v3, v4, [I

    aput p1, v3, v2

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return v0

    :cond_2d
    :goto_2d
    const-string p1, "FingerprintFragment"

    const-string v0, "Unable to get themed color. Context or activity is null."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method static r2()Landroidx/biometric/q;
    .registers 1

    new-instance v0, Landroidx/biometric/q;

    invoke-direct {v0}, Landroidx/biometric/q;-><init>()V

    return-object v0
.end method

.method private t2(II)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_7

    if-ne p2, v1, :cond_7

    return v0

    :cond_7
    const/4 v2, 0x2

    if-ne p1, v1, :cond_d

    if-ne p2, v2, :cond_d

    return v1

    :cond_d
    if-ne p1, v2, :cond_12

    if-ne p2, v1, :cond_12

    return v1

    :cond_12
    return v0
.end method


# virtual methods
.method public M0(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/e;->M0(Landroid/os/Bundle;)V

    invoke-direct {p0}, Landroidx/biometric/q;->o2()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_17

    invoke-static {}, Landroidx/biometric/q$f;->a()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/biometric/q;->q2(I)I

    move-result p1

    :goto_14
    iput p1, p0, Landroidx/biometric/q;->z0:I

    goto :goto_26

    :cond_17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_24

    sget v0, Landroidx/biometric/w;->a:I

    invoke-static {p1, v0}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result p1

    goto :goto_14

    :cond_24
    const/4 p1, 0x0

    goto :goto_14

    :goto_26
    const p1, 0x1010038

    invoke-direct {p0, p1}, Landroidx/biometric/q;->q2(I)I

    move-result p1

    iput p1, p0, Landroidx/biometric/q;->A0:I

    return-void
.end method

.method public c1()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->c1()V

    iget-object v0, p0, Landroidx/biometric/q;->w0:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public h1()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->h1()V

    iget-object v0, p0, Landroidx/biometric/q;->y0:Landroidx/biometric/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/biometric/k;->X(I)V

    iget-object v0, p0, Landroidx/biometric/q;->y0:Landroidx/biometric/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/biometric/k;->Y(I)V

    iget-object v0, p0, Landroidx/biometric/q;->y0:Landroidx/biometric/k;

    sget v1, Landroidx/biometric/a0;->c:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->s0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/biometric/k;->W(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public i2(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8

    new-instance p1, Landroidx/appcompat/app/a$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->N1()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Landroidx/biometric/q;->y0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->x()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a$a;->i(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$a;

    invoke-virtual {p1}, Landroidx/appcompat/app/a$a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/biometric/z;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Landroidx/biometric/y;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_44

    iget-object v4, p0, Landroidx/biometric/q;->y0:Landroidx/biometric/k;

    invoke-virtual {v4}, Landroidx/biometric/k;->w()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_44

    :cond_3e
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_44
    :goto_44
    sget v1, Landroidx/biometric/y;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_64

    iget-object v4, p0, Landroidx/biometric/q;->y0:Landroidx/biometric/k;

    invoke-virtual {v4}, Landroidx/biometric/k;->p()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_64

    :cond_5e
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_64
    :goto_64
    sget v1, Landroidx/biometric/y;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroidx/biometric/q;->B0:Landroid/widget/ImageView;

    sget v1, Landroidx/biometric/y;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/biometric/q;->C0:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/biometric/q;->y0:Landroidx/biometric/k;

    invoke-virtual {v1}, Landroidx/biometric/k;->f()I

    move-result v1

    invoke-static {v1}, Landroidx/biometric/c;->c(I)Z

    move-result v1

    if-eqz v1, :cond_8b

    sget v1, Landroidx/biometric/a0;->a:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->s0(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_91

    :cond_8b
    iget-object v1, p0, Landroidx/biometric/q;->y0:Landroidx/biometric/k;

    invoke-virtual {v1}, Landroidx/biometric/k;->v()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_91
    new-instance v2, Landroidx/biometric/q$b;

    invoke-direct {v2, p0}, Landroidx/biometric/q$b;-><init>(Landroidx/biometric/q;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/a$a;->f(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a$a;->j(Landroid/view/View;)Landroidx/appcompat/app/a$a;

    invoke-virtual {p1}, Landroidx/appcompat/app/a$a;->a()Landroidx/appcompat/app/a;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCancel(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Landroidx/biometric/q;->y0:Landroidx/biometric/k;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/biometric/k;->U(Z)V

    return-void
.end method

.method s2()V
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "FingerprintFragment"

    const-string v1, "Not resetting the dialog. Context is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-object v1, p0, Landroidx/biometric/q;->y0:Landroidx/biometric/k;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/biometric/k;->Y(I)V

    iget-object v1, p0, Landroidx/biometric/q;->y0:Landroidx/biometric/k;

    sget v2, Landroidx/biometric/a0;->c:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/biometric/k;->W(Ljava/lang/CharSequence;)V

    return-void
.end method

.method u2(I)V
    .registers 5

    iget-object v0, p0, Landroidx/biometric/q;->B0:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2b

    iget-object v0, p0, Landroidx/biometric/q;->y0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->r()I

    move-result v0

    invoke-direct {p0, v0, p1}, Landroidx/biometric/q;->p2(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_18

    return-void

    :cond_18
    iget-object v2, p0, Landroidx/biometric/q;->B0:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v0, p1}, Landroidx/biometric/q;->t2(II)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {v1}, Landroidx/biometric/q$e;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_26
    iget-object v0, p0, Landroidx/biometric/q;->y0:Landroidx/biometric/k;

    invoke-virtual {v0, p1}, Landroidx/biometric/k;->X(I)V

    :cond_2b
    return-void
.end method

.method v2(I)V
    .registers 4

    iget-object v0, p0, Landroidx/biometric/q;->C0:Landroid/widget/TextView;

    if-eqz v0, :cond_14

    const/4 v1, 0x2

    if-ne p1, v1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    if-eqz p1, :cond_f

    iget p1, p0, Landroidx/biometric/q;->z0:I

    goto :goto_11

    :cond_f
    iget p1, p0, Landroidx/biometric/q;->A0:I

    :goto_11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_14
    return-void
.end method

.method w2(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroidx/biometric/q;->C0:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method
