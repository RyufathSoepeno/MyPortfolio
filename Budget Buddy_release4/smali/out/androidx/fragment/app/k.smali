.class Landroidx/fragment/app/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/k$b;,
        Landroidx/fragment/app/k$a;
    }
.end annotation


# direct methods
.method private static a(Landroidx/fragment/app/Fragment;ZZ)I
    .registers 3

    if-eqz p2, :cond_e

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->i0()I

    move-result p0

    return p0

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->j0()I

    move-result p0

    return p0

    :cond_e
    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->T()I

    move-result p0

    return p0

    :cond_15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->X()I

    move-result p0

    return p0
.end method

.method static b(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/k$a;
    .registers 9

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->e0()I

    move-result v0

    invoke-static {p1, p2, p3}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/Fragment;ZZ)I

    move-result p3

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v1}, Landroidx/fragment/app/Fragment;->S1(IIII)V

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->L:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_1e

    sget v4, Lt/b;->c:I

    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->L:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1e
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->L:Landroid/view/ViewGroup;

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    if-eqz v2, :cond_29

    return-object v3

    :cond_29
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->N0(IZI)Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_35

    new-instance p0, Landroidx/fragment/app/k$a;

    invoke-direct {p0, v2}, Landroidx/fragment/app/k$a;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    :cond_35
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->O0(IZI)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_41

    new-instance p0, Landroidx/fragment/app/k$a;

    invoke-direct {p0, p1}, Landroidx/fragment/app/k$a;-><init>(Landroid/animation/Animator;)V

    return-object p0

    :cond_41
    if-nez p3, :cond_49

    if-eqz v0, :cond_49

    invoke-static {p0, v0, p2}, Landroidx/fragment/app/k;->d(Landroid/content/Context;IZ)I

    move-result p3

    :cond_49
    if-eqz p3, :cond_8b

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "anim"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    :try_start_5b
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_67

    new-instance v0, Landroidx/fragment/app/k$a;

    invoke-direct {v0, p2}, Landroidx/fragment/app/k$a;-><init>(Landroid/view/animation/Animation;)V
    :try_end_66
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5b .. :try_end_66} :catch_6b
    .catch Ljava/lang/RuntimeException; {:try_start_5b .. :try_end_66} :catch_69

    return-object v0

    :cond_67
    const/4 v1, 0x1

    goto :goto_6d

    :catch_69
    nop

    goto :goto_6d

    :catch_6b
    move-exception p0

    throw p0

    :cond_6d
    :goto_6d
    if-nez v1, :cond_8b

    :try_start_6f
    invoke-static {p0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_8b

    new-instance v0, Landroidx/fragment/app/k$a;

    invoke-direct {v0, p2}, Landroidx/fragment/app/k$a;-><init>(Landroid/animation/Animator;)V
    :try_end_7a
    .catch Ljava/lang/RuntimeException; {:try_start_6f .. :try_end_7a} :catch_7b

    return-object v0

    :catch_7b
    move-exception p2

    if-nez p1, :cond_8a

    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_8b

    new-instance p1, Landroidx/fragment/app/k$a;

    invoke-direct {p1, p0}, Landroidx/fragment/app/k$a;-><init>(Landroid/view/animation/Animation;)V

    return-object p1

    :cond_8a
    throw p2

    :cond_8b
    return-object v3
.end method

.method private static c(Landroid/content/Context;I)I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const p1, 0x1030001

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method private static d(Landroid/content/Context;IZ)I
    .registers 4

    const/16 v0, 0x1001

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x2002

    if-eq p1, v0, :cond_36

    const/16 v0, 0x2005

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x1003

    if-eq p1, v0, :cond_24

    const/16 v0, 0x1004

    if-eq p1, v0, :cond_16

    const/4 p0, -0x1

    goto :goto_45

    :cond_16
    if-eqz p2, :cond_1c

    const p1, 0x10100b8

    goto :goto_1f

    :cond_1c
    const p1, 0x10100b9

    :goto_1f
    invoke-static {p0, p1}, Landroidx/fragment/app/k;->c(Landroid/content/Context;I)I

    move-result p0

    goto :goto_45

    :cond_24
    if-eqz p2, :cond_29

    sget p0, Lt/a;->c:I

    goto :goto_45

    :cond_29
    sget p0, Lt/a;->d:I

    goto :goto_45

    :cond_2c
    if-eqz p2, :cond_32

    const p1, 0x10100ba

    goto :goto_1f

    :cond_32
    const p1, 0x10100bb

    goto :goto_1f

    :cond_36
    if-eqz p2, :cond_3b

    sget p0, Lt/a;->a:I

    goto :goto_45

    :cond_3b
    sget p0, Lt/a;->b:I

    goto :goto_45

    :cond_3e
    if-eqz p2, :cond_43

    sget p0, Lt/a;->e:I

    goto :goto_45

    :cond_43
    sget p0, Lt/a;->f:I

    :goto_45
    return p0
.end method
