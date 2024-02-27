.class Lf/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/c$b;,
        Lf/c$c;
    }
.end annotation


# instance fields
.field private e:Lf/c$c;

.field private f:Landroid/graphics/Rect;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:I

.field private j:Z

.field private k:I

.field private l:Z

.field private m:Ljava/lang/Runnable;

.field private n:J

.field private o:J

.field private p:Lf/c$b;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lf/c;->i:I

    const/4 v0, -0x1

    iput v0, p0, Lf/c;->k:I

    return-void
.end method

.method private d(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    iget-object v0, p0, Lf/c;->p:Lf/c$b;

    if-nez v0, :cond_b

    new-instance v0, Lf/c$b;

    invoke-direct {v0}, Lf/c$b;-><init>()V

    iput-object v0, p0, Lf/c;->p:Lf/c$b;

    :cond_b
    iget-object v0, p0, Lf/c;->p:Lf/c$b;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/c$b;->b(Landroid/graphics/drawable/Drawable$Callback;)Lf/c$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :try_start_18
    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    iget v0, v0, Lf/c$c;->A:I

    if-gtz v0, :cond_27

    iget-boolean v0, p0, Lf/c;->j:Z

    if-eqz v0, :cond_27

    iget v0, p0, Lf/c;->i:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_27
    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    iget-boolean v1, v0, Lf/c$c;->E:Z

    if-eqz v1, :cond_33

    iget-object v0, v0, Lf/c$c;->D:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_47

    :cond_33
    iget-boolean v1, v0, Lf/c$c;->H:Z

    if-eqz v1, :cond_3c

    iget-object v0, v0, Lf/c$c;->F:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->n(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_3c
    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    iget-boolean v1, v0, Lf/c$c;->I:Z

    if-eqz v1, :cond_47

    iget-object v0, v0, Lf/c$c;->G:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_47
    :goto_47
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    iget-boolean v0, v0, Lf/c$c;->x:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_78

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Lf/b;->a(Landroid/graphics/drawable/Drawable;I)Z

    :cond_78
    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    iget-boolean v0, v0, Lf/c$c;->C:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v0, p0, Lf/c;->f:Landroid/graphics/Rect;

    if-eqz v0, :cond_8e

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V
    :try_end_8e
    .catchall {:try_start_18 .. :try_end_8e} :catchall_98

    :cond_8e
    iget-object v0, p0, Lf/c;->p:Lf/c$b;

    invoke-virtual {v0}, Lf/c$b;->a()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void

    :catchall_98
    move-exception v0

    iget-object v1, p0, Lf/c;->p:Lf/c$b;

    invoke-virtual {v1}, Lf/c$b;->a()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    throw v0
.end method

.method private e()Z
    .registers 3

    invoke-virtual {p0}, Lf/c;->isAutoMirrored()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method static f(Landroid/content/res/Resources;I)I
    .registers 2

    if-nez p0, :cond_3

    goto :goto_9

    :cond_3
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_9
    if-nez p1, :cond_d

    const/16 p1, 0xa0

    :cond_d
    return p1
.end method


# virtual methods
.method a(Z)V
    .registers 15

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/c;->j:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0xff

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_36

    iget-wide v9, p0, Lf/c;->n:J

    cmp-long v11, v9, v7

    if-eqz v11, :cond_38

    cmp-long v11, v9, v1

    if-gtz v11, :cond_20

    iget v9, p0, Lf/c;->i:I

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_36

    :cond_20
    sub-long/2addr v9, v1

    mul-long v9, v9, v4

    long-to-int v10, v9

    iget-object v9, p0, Lf/c;->e:Lf/c$c;

    iget v9, v9, Lf/c$c;->A:I

    div-int/2addr v10, v9

    rsub-int v9, v10, 0xff

    iget v10, p0, Lf/c;->i:I

    mul-int v9, v9, v10

    div-int/lit16 v9, v9, 0xff

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v3, 0x1

    goto :goto_39

    :cond_36
    :goto_36
    iput-wide v7, p0, Lf/c;->n:J

    :cond_38
    const/4 v3, 0x0

    :goto_39
    iget-object v9, p0, Lf/c;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_61

    iget-wide v10, p0, Lf/c;->o:J

    cmp-long v12, v10, v7

    if-eqz v12, :cond_63

    cmp-long v12, v10, v1

    if-gtz v12, :cond_4e

    invoke-virtual {v9, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lf/c;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_61

    :cond_4e
    sub-long/2addr v10, v1

    mul-long v10, v10, v4

    long-to-int v3, v10

    iget-object v4, p0, Lf/c;->e:Lf/c$c;

    iget v4, v4, Lf/c$c;->B:I

    div-int/2addr v3, v4

    iget v4, p0, Lf/c;->i:I

    mul-int v3, v3, v4

    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_64

    :cond_61
    :goto_61
    iput-wide v7, p0, Lf/c;->o:J

    :cond_63
    move v0, v3

    :goto_64
    if-eqz p1, :cond_70

    if-eqz v0, :cond_70

    iget-object p1, p0, Lf/c;->m:Ljava/lang/Runnable;

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_70
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 3

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    invoke-virtual {v0, p1}, Lf/c$c;->b(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method b()Lf/c$c;
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method c()I
    .registers 2

    iget v0, p0, Lf/c;->k:I

    return v0
.end method

.method public canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    invoke-virtual {v0}, Lf/c$c;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    iget-object v0, p0, Lf/c;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_e
    return-void
.end method

.method g(I)Z
    .registers 11

    iget v0, p0, Lf/c;->k:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    return v1

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    iget v0, v0, Lf/c$c;->B:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-lez v0, :cond_2e

    iget-object v0, p0, Lf/c;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1a
    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_29

    iput-object v0, p0, Lf/c;->h:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    iget v0, v0, Lf/c$c;->B:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf/c;->o:J

    goto :goto_35

    :cond_29
    iput-object v4, p0, Lf/c;->h:Landroid/graphics/drawable/Drawable;

    iput-wide v5, p0, Lf/c;->o:J

    goto :goto_35

    :cond_2e
    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_35

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_35
    :goto_35
    if-ltz p1, :cond_55

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    iget v1, v0, Lf/c$c;->h:I

    if-ge p1, v1, :cond_55

    invoke-virtual {v0, p1}, Lf/c$c;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lf/c;->k:I

    if-eqz v0, :cond_5a

    iget-object p1, p0, Lf/c;->e:Lf/c$c;

    iget p1, p1, Lf/c$c;->A:I

    if-lez p1, :cond_51

    int-to-long v7, p1

    add-long/2addr v2, v7

    iput-wide v2, p0, Lf/c;->n:J

    :cond_51
    invoke-direct {p0, v0}, Lf/c;->d(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5a

    :cond_55
    iput-object v4, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    iput p1, p0, Lf/c;->k:I

    :cond_5a
    :goto_5a
    iget-wide v0, p0, Lf/c;->n:J

    const/4 p1, 0x1

    cmp-long v2, v0, v5

    if-nez v2, :cond_67

    iget-wide v0, p0, Lf/c;->o:J

    cmp-long v2, v0, v5

    if-eqz v2, :cond_79

    :cond_67
    iget-object v0, p0, Lf/c;->m:Ljava/lang/Runnable;

    if-nez v0, :cond_73

    new-instance v0, Lf/c$a;

    invoke-direct {v0, p0}, Lf/c$a;-><init>(Lf/c;)V

    iput-object v0, p0, Lf/c;->m:Ljava/lang/Runnable;

    goto :goto_76

    :cond_73
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :goto_76
    invoke-virtual {p0, p1}, Lf/c;->a(Z)V

    :cond_79
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method

.method public getAlpha()I
    .registers 2

    iget v0, p0, Lf/c;->i:I

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lf/c;->e:Lf/c$c;

    invoke-virtual {v1}, Lf/c$c;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    invoke-virtual {v0}, Lf/c$c;->c()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    invoke-virtual {p0}, Lf/c;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lf/c$c;->d:I

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lf/c;->f:Landroid/graphics/Rect;

    if-eqz v0, :cond_8

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_b

    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    :goto_b
    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    invoke-virtual {v0}, Lf/c$c;->q()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    invoke-virtual {v0}, Lf/c$c;->i()I

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, -0x1

    :goto_19
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    invoke-virtual {v0}, Lf/c$c;->q()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    invoke-virtual {v0}, Lf/c$c;->m()I

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, -0x1

    :goto_19
    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    invoke-virtual {v0}, Lf/c$c;->q()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    invoke-virtual {v0}, Lf/c$c;->j()I

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    invoke-virtual {v0}, Lf/c$c;->q()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    invoke-virtual {v0}, Lf/c$c;->k()I

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public getOpacity()I
    .registers 2

    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_12

    :cond_b
    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    invoke-virtual {v0}, Lf/c$c;->n()I

    move-result v0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, -0x2

    :goto_13
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 3

    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_7
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 5

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    invoke-virtual {v0}, Lf/c$c;->l()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    or-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_29

    :cond_1a
    const/4 v0, 0x0

    goto :goto_29

    :cond_1c
    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_29

    :cond_25
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    :goto_29
    invoke-direct {p0}, Lf/c;->e()Z

    move-result v1

    if-eqz v1, :cond_37

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    :cond_37
    return v0
.end method

.method h(Lf/c$c;)V
    .registers 3

    iput-object p1, p0, Lf/c;->e:Lf/c$c;

    iget v0, p0, Lf/c;->k:I

    if-ltz v0, :cond_11

    invoke-virtual {p1, v0}, Lf/c$c;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_11

    invoke-direct {p0, p1}, Lf/c;->d(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    const/4 p1, 0x0

    iput-object p1, p0, Lf/c;->h:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method final i(Landroid/content/res/Resources;)V
    .registers 3

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    invoke-virtual {v0, p1}, Lf/c$c;->y(Landroid/content/res/Resources;)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lf/c$c;->p()V

    :cond_7
    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_18

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_18
    return-void
.end method

.method public isAutoMirrored()Z
    .registers 2

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    iget-boolean v0, v0, Lf/c$c;->C:Z

    return v0
.end method

.method public jumpToCurrentState()V
    .registers 8

    iget-object v0, p0, Lf/c;->h:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf/c;->h:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget-object v2, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-boolean v2, p0, Lf/c;->j:Z

    if-eqz v2, :cond_20

    iget-object v2, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lf/c;->i:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_20
    iget-wide v2, p0, Lf/c;->o:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2b

    iput-wide v4, p0, Lf/c;->o:J

    const/4 v0, 0x1

    :cond_2b
    iget-wide v2, p0, Lf/c;->n:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_34

    iput-wide v4, p0, Lf/c;->n:J

    goto :goto_35

    :cond_34
    move v1, v0

    :goto_35
    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_3a
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-boolean v0, p0, Lf/c;->l:Z

    if-nez v0, :cond_17

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_17

    invoke-virtual {p0}, Lf/c;->b()Lf/c$c;

    move-result-object v0

    invoke-virtual {v0}, Lf/c$c;->r()V

    invoke-virtual {p0, v0}, Lf/c;->h(Lf/c$c;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/c;->l:Z

    :cond_17
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lf/c;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_7
    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_e
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .registers 4

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    invoke-virtual {p0}, Lf/c;->c()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lf/c$c;->w(II)Z

    move-result p1

    return p1
.end method

.method protected onLevelChange(I)Z
    .registers 3

    iget-object v0, p0, Lf/c;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    :cond_9
    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method protected onStateChange([I)Z
    .registers 3

    iget-object v0, p0, Lf/c;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_9
    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6

    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_11
    return-void
.end method

.method public setAlpha(I)V
    .registers 8

    iget-boolean v0, p0, Lf/c;->j:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lf/c;->i:I

    if-eq v0, p1, :cond_21

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/c;->j:Z

    iput p1, p0, Lf/c;->i:I

    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21

    iget-wide v1, p0, Lf/c;->n:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1d

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_21

    :cond_1d
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lf/c;->a(Z)V

    :cond_21
    :goto_21
    return-void
.end method

.method public setAutoMirrored(Z)V
    .registers 4

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    iget-boolean v1, v0, Lf/c$c;->C:Z

    if-eq v1, p1, :cond_f

    iput-boolean p1, v0, Lf/c$c;->C:Z

    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;Z)V

    :cond_f
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lf/c$c;->E:Z

    iget-object v1, v0, Lf/c$c;->D:Landroid/graphics/ColorFilter;

    if-eq v1, p1, :cond_12

    iput-object p1, v0, Lf/c$c;->D:Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_12
    return-void
.end method

.method public setDither(Z)V
    .registers 4

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    iget-boolean v1, v0, Lf/c$c;->x:Z

    if-eq v1, p1, :cond_f

    iput-boolean p1, v0, Lf/c$c;->x:Z

    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_f
    return-void
.end method

.method public setHotspot(FF)V
    .registers 4

    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/a;->j(Landroid/graphics/drawable/Drawable;FF)V

    :cond_7
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6

    iget-object v0, p0, Lf/c;->f:Landroid/graphics/Rect;

    if-nez v0, :cond_c

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lf/c;->f:Landroid/graphics/Rect;

    goto :goto_f

    :cond_c
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_f
    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/a;->k(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_16
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lf/c$c;->H:Z

    iget-object v1, v0, Lf/c$c;->F:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_10

    iput-object p1, v0, Lf/c$c;->F:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->n(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_10
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    iget-object v0, p0, Lf/c;->e:Lf/c$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lf/c$c;->I:Z

    iget-object v1, v0, Lf/c$c;->G:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_10

    iput-object p1, v0, Lf/c$c;->G:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_10
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    iget-object v1, p0, Lf/c;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_b
    iget-object v1, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_12

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_12
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lf/c;->g:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method
