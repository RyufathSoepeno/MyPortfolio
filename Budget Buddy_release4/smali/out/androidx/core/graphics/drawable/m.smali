.class final Landroidx/core/graphics/drawable/m;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field a:I

.field b:Landroid/graphics/drawable/Drawable$ConstantState;

.field c:Landroid/content/res/ColorStateList;

.field d:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Landroidx/core/graphics/drawable/m;)V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/graphics/drawable/m;->c:Landroid/content/res/ColorStateList;

    sget-object v0, Landroidx/core/graphics/drawable/k;->k:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/core/graphics/drawable/m;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_1c

    iget v0, p1, Landroidx/core/graphics/drawable/m;->a:I

    iput v0, p0, Landroidx/core/graphics/drawable/m;->a:I

    iget-object v0, p1, Landroidx/core/graphics/drawable/m;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object v0, p0, Landroidx/core/graphics/drawable/m;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v0, p1, Landroidx/core/graphics/drawable/m;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroidx/core/graphics/drawable/m;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Landroidx/core/graphics/drawable/m;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object p1, p0, Landroidx/core/graphics/drawable/m;->d:Landroid/graphics/PorterDuff$Mode;

    :cond_1c
    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    iget-object v0, p0, Landroidx/core/graphics/drawable/m;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    iget v0, p0, Landroidx/core/graphics/drawable/m;->a:I

    iget-object v1, p0, Landroidx/core/graphics/drawable/m;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    or-int/2addr v0, v1

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/graphics/drawable/m;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Landroidx/core/graphics/drawable/l;

    invoke-direct {v0, p0, p1}, Landroidx/core/graphics/drawable/l;-><init>(Landroidx/core/graphics/drawable/m;Landroid/content/res/Resources;)V

    return-object v0
.end method
