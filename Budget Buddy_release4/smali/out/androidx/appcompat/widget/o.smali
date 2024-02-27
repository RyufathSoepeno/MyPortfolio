.class public Landroidx/appcompat/widget/o;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private final e:Landroidx/appcompat/widget/e;

.field private final f:Landroidx/appcompat/widget/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-static {p1}, Landroidx/appcompat/widget/j1;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Landroidx/appcompat/widget/e;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/o;->e:Landroidx/appcompat/widget/e;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/e;->e(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/n;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/n;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/o;->f:Landroidx/appcompat/widget/n;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/n;->f(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/o;->e:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->b()V

    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/o;->f:Landroidx/appcompat/widget/n;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroidx/appcompat/widget/n;->b()V

    :cond_11
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/o;->e:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->c()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/o;->e:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->d()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/o;->f:Landroidx/appcompat/widget/n;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/appcompat/widget/n;->c()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/o;->f:Landroidx/appcompat/widget/n;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/appcompat/widget/n;->d()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/o;->f:Landroidx/appcompat/widget/n;

    invoke-virtual {v0}, Landroidx/appcompat/widget/n;->e()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-super {p0}, Landroid/widget/ImageView;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/appcompat/widget/o;->e:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/o;->e:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->g(I)V

    :cond_a
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Landroidx/appcompat/widget/o;->f:Landroidx/appcompat/widget/n;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroidx/appcompat/widget/n;->b()V

    :cond_a
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/o;->f:Landroidx/appcompat/widget/n;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroidx/appcompat/widget/n;->b()V

    :cond_a
    return-void
.end method

.method public setImageResource(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/o;->f:Landroidx/appcompat/widget/n;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/n;->g(I)V

    :cond_7
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object p1, p0, Landroidx/appcompat/widget/o;->f:Landroidx/appcompat/widget/n;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroidx/appcompat/widget/n;->b()V

    :cond_a
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/o;->e:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->i(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/o;->e:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->j(Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/o;->f:Landroidx/appcompat/widget/n;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/n;->h(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/o;->f:Landroidx/appcompat/widget/n;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/n;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    return-void
.end method
